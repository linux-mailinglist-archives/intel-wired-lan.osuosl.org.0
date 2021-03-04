Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF4432CFDD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 10:41:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C754D43146;
	Thu,  4 Mar 2021 09:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hmEP1WyIIfa; Thu,  4 Mar 2021 09:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7E8442FC4;
	Thu,  4 Mar 2021 09:41:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31C561BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 09:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 202174EBB7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 09:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDkZMaPvqdLk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 09:41:12 +0000 (UTC)
X-Greylist: delayed 00:06:17 by SQLgrey-1.8.0
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 865C84CACF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 09:41:11 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-n91mDkkYOB2zYhgZMcrV0w-1; Thu, 04 Mar 2021 04:34:49 -0500
X-MC-Unique: n91mDkkYOB2zYhgZMcrV0w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16BB21005D4A;
 Thu,  4 Mar 2021 09:34:48 +0000 (UTC)
Received: from p50.redhat.com (ovpn-112-217.ams2.redhat.com [10.36.112.217])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5DAC7100E113;
 Thu,  4 Mar 2021 09:34:45 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Mar 2021 10:34:30 +0100
Message-Id: <20210304093430.42421-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH] i40e: improve locking of mac_filter_hash
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: pabeni@redhat.com, netdev@vger.kernel.org, sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i40e_config_vf_promiscuous_mode() calls
i40e_getnum_vf_vsi_vlan_filters() without acquiring the
mac_filter_hash_lock spinlock.

This is unsafe because mac_filter_hash may get altered in another thread
while i40e_getnum_vf_vsi_vlan_filters() traverses the hashes.

Simply adding the spinlock in i40e_getnum_vf_vsi_vlan_filters() is not
possible as it already gets called in i40e_get_vlan_list_sync() with the
spinlock held. Therefore adding a wrapper that acquires the spinlock and
call the correct function where appropriate.

Fixes: 37d318d7805f ("i40e: Remove scheduling while atomic possibility")
Fix-suggested-by: Paolo Abeni <pabeni@redhat.com>
Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 23 ++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 1b6ec9be155a..61d3e9a00f65 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1101,12 +1101,12 @@ static int i40e_quiesce_vf_pci(struct i40e_vf *vf)
 }
 
 /**
- * i40e_getnum_vf_vsi_vlan_filters
+ * __i40e_getnum_vf_vsi_vlan_filters
  * @vsi: pointer to the vsi
  *
  * called to get the number of VLANs offloaded on this VF
  **/
-static int i40e_getnum_vf_vsi_vlan_filters(struct i40e_vsi *vsi)
+static int __i40e_getnum_vf_vsi_vlan_filters(struct i40e_vsi *vsi)
 {
 	struct i40e_mac_filter *f;
 	u16 num_vlans = 0, bkt;
@@ -1119,6 +1119,23 @@ static int i40e_getnum_vf_vsi_vlan_filters(struct i40e_vsi *vsi)
 	return num_vlans;
 }
 
+/**
+ * i40e_getnum_vf_vsi_vlan_filters
+ * @vsi: pointer to the vsi
+ *
+ * wrapper for __i40e_getnum_vf_vsi_vlan_filters() with spinlock held
+ **/
+static int i40e_getnum_vf_vsi_vlan_filters(struct i40e_vsi *vsi)
+{
+	int num_vlans;
+
+	spin_lock_bh(&vsi->mac_filter_hash_lock);
+	num_vlans = __i40e_getnum_vf_vsi_vlan_filters(vsi);
+	spin_unlock_bh(&vsi->mac_filter_hash_lock);
+
+	return num_vlans;
+}
+
 /**
  * i40e_get_vlan_list_sync
  * @vsi: pointer to the VSI
@@ -1136,7 +1153,7 @@ static void i40e_get_vlan_list_sync(struct i40e_vsi *vsi, u16 *num_vlans,
 	int bkt;
 
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
-	*num_vlans = i40e_getnum_vf_vsi_vlan_filters(vsi);
+	*num_vlans = __i40e_getnum_vf_vsi_vlan_filters(vsi);
 	*vlan_list = kcalloc(*num_vlans, sizeof(**vlan_list), GFP_ATOMIC);
 	if (!(*vlan_list))
 		goto err;
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
