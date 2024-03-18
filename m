Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5732787EAFE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 15:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A456405C6;
	Mon, 18 Mar 2024 14:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oC_386Hb_FUk; Mon, 18 Mar 2024 14:31:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 980B9405C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710772291;
	bh=vQZXNVyZu0WSGh4NASypClU3bS3FTyECK464OaQui/8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IUDMIqO35+ROhHkq+QcUDnw6e1axZHTxTGTGbYZz5caJe9+S20m+dIaUSLOZG0ezT
	 RBerNY3ZBU2+4eLrkgn4ROiYdyghM/JkA02VFso83c0FcLesHvZV0xe3yoSFfZrUFS
	 MKmSr3M/gC80ml3t5X67f3/MjrznS0jcdGDkZffQpvJ3K2cksorkQ9xPhUzqo/ABHH
	 xQPX50iPo9hpQNq711SKJnI9ERdDZyrj2MT/XoAJmDDJkUqimj3pXZQjzmLvJuFSka
	 XNmKVkbWJVc/HCjTnDV1DSI0yLWMal5SJhyVJxAqJhF/pZnrAGks9l39gGlqaph2aW
	 ECKVfp5qnAF0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 980B9405C2;
	Mon, 18 Mar 2024 14:31:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABDD01BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96DF140204
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrRFgUJXfw6s for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 14:31:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A45D0409EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A45D0409EB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A45D0409EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 14:31:25 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-345-wRCjYqtSNuawUApmu45OJg-1; Mon,
 18 Mar 2024 10:31:19 -0400
X-MC-Unique: wRCjYqtSNuawUApmu45OJg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 916BA1C04196;
 Mon, 18 Mar 2024 14:31:17 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 38670112131D;
 Mon, 18 Mar 2024 14:31:16 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Mar 2024 15:30:50 +0100
Message-ID: <20240318143058.287014-7-ivecera@redhat.com>
In-Reply-To: <20240318143058.287014-1-ivecera@redhat.com>
References: <20240318143058.287014-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710772284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vQZXNVyZu0WSGh4NASypClU3bS3FTyECK464OaQui/8=;
 b=BTMgSWY030124Q8ysiHwHjvCL92Jm09YrYdGV3zxURVWk2TqVexw0kfGC2e44n285Ug7D2
 2GRtZ1drfMcOAXfEj22uAMD3wXPVmVxe/RBwt/eb/FH4UL4qkRGe2iTA14uHTdRVbZ/U9d
 shk87eNiOVVhYS/xlXBFZtbQNNGFroc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BTMgSWY0
Subject: [Intel-wired-lan] [PATCH iwl-next 6/7] i40e: Add helper to access
 main VEB
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a helper to access main VEB:

i40e_pf_get_main_veb(pf) replaces 'pf->veb[pf->lan_veb]'

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        | 11 ++++++++
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  9 +++----
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 27 ++++++++++++-------
 3 files changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index fb0b913692e1..2f135db416cf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1401,4 +1401,15 @@ i40e_pf_get_veb_by_seid(struct i40e_pf *pf, u16 seid)
 	return NULL;
 }
 
+/**
+ * i40e_pf_get_main_veb - get pointer to main VEB
+ * @pf: pointer to a PF
+ *
+ * Return pointer to main VEB or NULL if it does not exist
+ **/
+static inline struct i40e_veb *i40e_pf_get_main_veb(struct i40e_pf *pf)
+{
+	return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] : NULL;
+}
+
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 5cd0d1b45f01..4e28785c9fb2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2425,14 +2425,11 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 	if (vsi->type != I40E_VSI_MAIN || pf->hw.partition_id != 1)
 		goto check_data_pointer;
 
-	veb_stats = ((pf->lan_veb != I40E_NO_VEB) &&
-		     (pf->lan_veb < I40E_MAX_VEB) &&
-		     test_bit(I40E_FLAG_VEB_STATS_ENA, pf->flags));
+	veb = i40e_pf_get_main_veb(pf);
+	veb_stats = veb && test_bit(I40E_FLAG_VEB_STATS_ENA, pf->flags);
 
-	if (veb_stats) {
-		veb = pf->veb[pf->lan_veb];
+	if (veb_stats)
 		i40e_update_veb_stats(veb);
-	}
 
 	/* If veb stats aren't enabled, pass NULL instead of the veb so that
 	 * we initialize stats to zero and update the data pointer
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d6dbd0fd79eb..2e1955064abb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2480,7 +2480,7 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 	int aq_ret;
 
 	if (vsi->type == I40E_VSI_MAIN &&
-	    pf->lan_veb != I40E_NO_VEB &&
+	    i40e_pf_get_main_veb(pf) &&
 	    !test_bit(I40E_FLAG_MFP_ENA, pf->flags)) {
 		/* set defport ON for Main VSI instead of true promisc
 		 * this way we will get all unicast/multicast and VLAN
@@ -9916,6 +9916,7 @@ static void i40e_veb_link_event(struct i40e_veb *veb, bool link_up)
 static void i40e_link_event(struct i40e_pf *pf)
 {
 	struct i40e_vsi *vsi = i40e_pf_get_main_vsi(pf);
+	struct i40e_veb *veb = i40e_pf_get_main_veb(pf);
 	u8 new_link_speed, old_link_speed;
 	bool new_link, old_link;
 	int status;
@@ -9955,8 +9956,8 @@ static void i40e_link_event(struct i40e_pf *pf)
 	/* Notify the base of the switch tree connected to
 	 * the link.  Floating VEBs are not notified.
 	 */
-	if (pf->lan_veb < I40E_MAX_VEB && pf->veb[pf->lan_veb])
-		i40e_veb_link_event(pf->veb[pf->lan_veb], new_link);
+	if (veb)
+		i40e_veb_link_event(veb, new_link);
 	else
 		i40e_vsi_link_event(vsi, new_link);
 
@@ -14892,7 +14893,8 @@ static void i40e_setup_pf_switch_element(struct i40e_pf *pf,
 		/* Main VEB? */
 		if (uplink_seid != pf->mac_seid)
 			break;
-		if (pf->lan_veb >= I40E_MAX_VEB) {
+		veb = i40e_pf_get_main_veb(pf);
+		if (!veb) {
 			int v;
 
 			/* find existing or else empty VEB */
@@ -14906,12 +14908,15 @@ static void i40e_setup_pf_switch_element(struct i40e_pf *pf,
 				pf->lan_veb = v;
 			}
 		}
-		if (pf->lan_veb >= I40E_MAX_VEB)
+
+		/* Try to get again main VEB as pf->lan_veb may have changed */
+		veb = i40e_pf_get_main_veb(pf);
+		if (!veb)
 			break;
 
-		pf->veb[pf->lan_veb]->seid = seid;
-		pf->veb[pf->lan_veb]->uplink_seid = pf->mac_seid;
-		pf->veb[pf->lan_veb]->pf = pf;
+		veb->seid = seid;
+		veb->uplink_seid = pf->mac_seid;
+		veb->pf = pf;
 		break;
 	case I40E_SWITCH_ELEMENT_TYPE_VSI:
 		if (num_reported != 1)
@@ -15056,13 +15061,15 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 	/* first time setup */
 	main_vsi = i40e_pf_get_main_vsi(pf);
 	if (!main_vsi || reinit) {
+		struct i40e_veb *veb;
 		u16 uplink_seid;
 
 		/* Set up the PF VSI associated with the PF's main VSI
 		 * that is already in the HW switch
 		 */
-		if (pf->lan_veb < I40E_MAX_VEB && pf->veb[pf->lan_veb])
-			uplink_seid = pf->veb[pf->lan_veb]->seid;
+		veb = i40e_pf_get_main_veb(pf);
+		if (veb)
+			uplink_seid = veb->seid;
 		else
 			uplink_seid = pf->mac_seid;
 		if (!main_vsi)
-- 
2.43.0

