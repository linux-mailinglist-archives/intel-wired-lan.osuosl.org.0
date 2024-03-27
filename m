Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B44088D7CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 08:48:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DF34813FE;
	Wed, 27 Mar 2024 07:48:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3_IggrNYurN; Wed, 27 Mar 2024 07:48:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 456F3812C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711525736;
	bh=N+vJ4y8728T3L9n2yO+KxzjgFoRPr4ko2Xa6mIcSVO4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O7UIJOoPK3qIpg+ALzZ6uVvRRoXRSESHknoioLPkU6quUpViYRRMrx++DezYn+8T5
	 VsEtcDkDn4K2o65kfsaj/o690/qCjEiT/VLJUrztHkwiKoFSvCJynwyTseAtVHAXYn
	 eAzpytOApWHCD1B/Vo8prhnVKmOq2bgEejrpvsI8hGSZHRoAZ9j5SuH6UD4fZILTmj
	 2HwbQ/yZUk6p/qY2/knh3ikbb6iTeNdl1S4+ZUYw38UjC7hPaohoOTiixKIwbeKU7Q
	 LNcBAI8nAkWRd4ljWEQjCk0W7TxVmyd8fLe29apqr+ueB66ZmF9+Baw0FXAcas3j4q
	 Gb8s1iyw7bj2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 456F3812C4;
	Wed, 27 Mar 2024 07:48:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 191261BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02C8D81263
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YK3jMihuaGEV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 07:48:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E88F78134B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E88F78134B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E88F78134B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 07:48:51 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-475-YkeoPfo2OTKuRZZgk9uOHg-1; Wed, 27 Mar 2024 03:48:44 -0400
X-MC-Unique: YkeoPfo2OTKuRZZgk9uOHg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B20DC80180A;
 Wed, 27 Mar 2024 07:48:43 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F1B0D492BDD;
 Wed, 27 Mar 2024 07:48:41 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 08:48:27 +0100
Message-ID: <20240327074833.8701-3-ivecera@redhat.com>
In-Reply-To: <20240327074833.8701-1-ivecera@redhat.com>
References: <20240327074833.8701-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1711525730;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N+vJ4y8728T3L9n2yO+KxzjgFoRPr4ko2Xa6mIcSVO4=;
 b=Or+/AeE1z354R2ke/JDiAStZoEjT8LE3OoG0YurPwqd3fVSLRz438KxiXGUD7CJ7ARbujL
 zPSQHojnSxj70FoCbnWMbxWTm33kJw5rTIq7ZaIPsLeQQ8NRLr0DUPEVaYfPsHz6/v9zid
 GJe8J9pisAXyZjTubfkWNIiozcPptlQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Or+/AeE1
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/8] i40e: Remove flags field
 from i40e_veb
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 Kalesh AP <kalesh-anakkur.purayil@broadcom.com>, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The field is initialized always to zero and it is never read.
Remove it.

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Kalesh AP <kalesh-anakkur.purayil@broadcom.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  3 +--
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 13 +++++--------
 3 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 2fbabcdb5bb5..5248e78f7849 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -788,7 +788,6 @@ struct i40e_veb {
 	u16 stats_idx;		/* index of VEB parent */
 	u8  enabled_tc;
 	u16 bridge_mode;	/* Bridge Mode (VEB/VEPA) */
-	u16 flags;
 	u16 bw_limit;
 	u8  bw_max_quanta;
 	bool is_abs_credits;
@@ -1213,7 +1212,7 @@ void i40e_vsi_stop_rings(struct i40e_vsi *vsi);
 void i40e_vsi_stop_rings_no_wait(struct  i40e_vsi *vsi);
 int i40e_vsi_wait_queues_disabled(struct i40e_vsi *vsi);
 int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count);
-struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16 uplink_seid,
+struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 uplink_seid,
 				u16 downlink_seid, u8 enabled_tc);
 void i40e_veb_release(struct i40e_veb *veb);
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index f9ba45f596c9..6147c5f128e8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -867,7 +867,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			goto command_write_done;
 		}
 
-		veb = i40e_veb_setup(pf, 0, uplink_seid, vsi_seid, enabled_tc);
+		veb = i40e_veb_setup(pf, uplink_seid, vsi_seid, enabled_tc);
 		if (veb)
 			dev_info(&pf->pdev->dev, "added relay %d\n", veb->seid);
 		else
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 663b2237eb4e..2f1604ae78c7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13138,7 +13138,7 @@ static int i40e_ndo_bridge_setlink(struct net_device *dev,
 
 		/* Insert a new HW bridge */
 		if (!veb) {
-			veb = i40e_veb_setup(pf, 0, vsi->uplink_seid, vsi->seid,
+			veb = i40e_veb_setup(pf, vsi->uplink_seid, vsi->seid,
 					     vsi->tc_config.enabled_tc);
 			if (veb) {
 				veb->bridge_mode = mode;
@@ -14394,10 +14394,10 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 		}
 
 		if (vsi->uplink_seid == pf->mac_seid)
-			veb = i40e_veb_setup(pf, 0, pf->mac_seid, vsi->seid,
+			veb = i40e_veb_setup(pf, pf->mac_seid, vsi->seid,
 					     vsi->tc_config.enabled_tc);
 		else if ((vsi->flags & I40E_VSI_FLAG_VEB_OWNER) == 0)
-			veb = i40e_veb_setup(pf, 0, vsi->uplink_seid, vsi->seid,
+			veb = i40e_veb_setup(pf, vsi->uplink_seid, vsi->seid,
 					     vsi->tc_config.enabled_tc);
 		if (veb) {
 			if (vsi->seid != pf->vsi[pf->lan_vsi]->seid) {
@@ -14791,7 +14791,6 @@ static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
 /**
  * i40e_veb_setup - Set up a VEB
  * @pf: board private structure
- * @flags: VEB setup flags
  * @uplink_seid: the switch element to link to
  * @vsi_seid: the initial VSI seid
  * @enabled_tc: Enabled TC bit-map
@@ -14804,9 +14803,8 @@ static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
  * Returns pointer to the successfully allocated VEB sw struct on
  * success, otherwise returns NULL on failure.
  **/
-struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags,
-				u16 uplink_seid, u16 vsi_seid,
-				u8 enabled_tc)
+struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 uplink_seid,
+				u16 vsi_seid, u8 enabled_tc)
 {
 	struct i40e_vsi *vsi = NULL;
 	struct i40e_veb *veb;
@@ -14837,7 +14835,6 @@ struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags,
 	if (veb_idx < 0)
 		goto err_alloc;
 	veb = pf->veb[veb_idx];
-	veb->flags = flags;
 	veb->uplink_seid = uplink_seid;
 	veb->enabled_tc = (enabled_tc ? enabled_tc : 0x1);
 
-- 
2.43.0

