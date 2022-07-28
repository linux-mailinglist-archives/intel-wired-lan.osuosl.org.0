Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD12F58408E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 16:07:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14AB0419FD;
	Thu, 28 Jul 2022 14:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14AB0419FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659017258;
	bh=6I8bRMDUUmXsqyd0Jiyla4rX25hwVFb0gZ+gjxTZD/E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HPbsfrNQmA2zRnwoL36OdlgLHBJzB8a7wbUIYB0Mn/gHL62aQjeSIppd2J0Gj4gRY
	 REMt8koelfvmQWfjvMF7auLpKwTA1y45JoW0mkPI2qMgt5DmbrokfZN/n5iY//O/sQ
	 +HODqFagPk6z+Pcy/C+YVKDyshhalZF12pybeAu7HJ1IRtVnoqtADTIH2g4906cOLx
	 X0Ra8P4JzVJp8dhFVJ6c4EvuVgSG9scHR9KvljOTcqjqACoNeWDyQiTWY13cyWCj3M
	 WKUFJ91TUEOOs2C+XyMRIdUffNoFLC2HT9JcLB1gI8fyc2RSZeMI09RFerS8ifgQqG
	 Opzsg/5zYQPdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3n9SGzC7bgv7; Thu, 28 Jul 2022 14:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D5644192D;
	Thu, 28 Jul 2022 14:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D5644192D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8411BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45E54409EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45E54409EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TY9zbPpEHUHq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 14:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C2EE4046B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C2EE4046B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289289236"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="289289236"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 07:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="690328049"
Received: from propan.igk.intel.com ([10.211.8.82])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2022 07:07:25 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Jul 2022 16:04:25 +0200
Message-Id: <20220728140426.664140-3-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
References: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659017246; x=1690553246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QpX6PrpT3XW7Wu6Eo6XvOv4xepf5T/DhehbNJEURn60=;
 b=guqRitXafH4xEYsto1tn4UPhY/dG610Zu/wcLJSqxrHtA53VQodBPT60
 RXPP/llIX2jeAuSkHqVE81hAcNoLd7uoRvtoA/JrQCxriD4e1EfQfn4v/
 K2yPIlQBGXsQmDnPPcr77n/ozB50rdUKOnb8YxHn5qzZYn2ZDN1ThgTXJ
 D9T4AaK10CogG73mPsBFuCQ9FmD86zO9JsK36pTljiyDn8VRONOuK3k4W
 7/9bEoOqLMA5zy6i9GB7cS6I+uIdSDvIDFO6f7/fZxBTUHcW35U/CxdOT
 PgbSjpfZ7YmHwtrj3j8dNiA9X5/wrrjsrVWE3gbpp91H2Sup9cnYWRMbm
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=guqRitXa
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ice: Get DCBX config from
 LLDP MIB change event
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

LLDP MIB Change Event (opcode 0x0A01) already contains MIB, which has
been changed. Add ice_dcb_process_lldp_set_mib_change() function, which
will set local/remote DCBX config from LLDP MIB Change Event's buffer.

This will save redundant Get LLDP MIB (opcode 0x0A00) AQ calls.

Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c     | 36 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb.h     |  2 ++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 30 +++++-----------
 3 files changed, 46 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index ca95f8753cee..f5d9533e61cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -966,6 +966,42 @@ int ice_get_dcb_cfg(struct ice_port_info *pi)
 	return ret;
 }
 
+/**
+ * ice_get_dcb_cfg_from_mib_change
+ * @pi: port information structure
+ * @event: pointer to the admin queue receive event
+ *
+ * Set DCB configuration from received MIB Change event
+ */
+void ice_get_dcb_cfg_from_mib_change(struct ice_port_info *pi,
+				     struct ice_rq_event_info *event)
+{
+	struct ice_dcbx_cfg *dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
+	struct ice_aqc_lldp_get_mib *mib;
+	u8 change_type, dcbx_mode;
+
+	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
+
+	change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M,  mib->type);
+	if (change_type == ICE_AQ_LLDP_MIB_REMOTE)
+		dcbx_cfg = &pi->qos_cfg.remote_dcbx_cfg;
+
+	dcbx_mode = FIELD_GET(ICE_AQ_LLDP_DCBX_M, mib->type);
+
+	switch (dcbx_mode) {
+	case ICE_AQ_LLDP_DCBX_IEEE:
+		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_IEEE;
+		ice_lldp_to_dcb_cfg(event->msg_buf, dcbx_cfg);
+		break;
+
+	case ICE_AQ_LLDP_DCBX_CEE:
+		pi->qos_cfg.desired_dcbx_cfg = pi->qos_cfg.local_dcbx_cfg;
+		ice_cee_to_dcb_cfg((struct ice_aqc_get_cee_dcb_cfg_resp *)
+				   event->msg_buf, pi);
+		break;
+	}
+}
+
 /**
  * ice_init_dcb
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index 6abf28a14291..be34650a77d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -144,6 +144,8 @@ ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 		   struct ice_dcbx_cfg *dcbcfg);
 int ice_get_dcb_cfg(struct ice_port_info *pi);
 int ice_set_dcb_cfg(struct ice_port_info *pi);
+void ice_get_dcb_cfg_from_mib_change(struct ice_port_info *pi,
+				     struct ice_rq_event_info *event);
 int ice_init_dcb(struct ice_hw *hw, bool enable_mib_change);
 int
 ice_query_port_ets(struct ice_port_info *pi,
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index add90e75f05c..1c54eb643b6f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -963,41 +963,27 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	pi = pf->hw.port_info;
 	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
 	/* Ignore if event is not for Nearest Bridge */
-	mib_type = ((mib->type >> ICE_AQ_LLDP_BRID_TYPE_S) &
-		    ICE_AQ_LLDP_BRID_TYPE_M);
+	mib_type = FIELD_GET(ICE_AQ_LLDP_BRID_TYPE_M, mib->type);
 	dev_dbg(dev, "LLDP event MIB bridge type 0x%x\n", mib_type);
 	if (mib_type != ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID)
 		return;
 
 	/* Check MIB Type and return if event for Remote MIB update */
-	mib_type = mib->type & ICE_AQ_LLDP_MIB_TYPE_M;
+	mib_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type);
 	dev_dbg(dev, "LLDP event mib type %s\n", mib_type ? "remote" : "local");
 	if (mib_type == ICE_AQ_LLDP_MIB_REMOTE) {
 		/* Update the remote cached instance and return */
-		ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
-					 ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID,
-					 &pi->qos_cfg.remote_dcbx_cfg);
-		if (ret) {
-			dev_err(dev, "Failed to get remote DCB config\n");
-			return;
-		}
+		ice_get_dcb_cfg_from_mib_change(pi, event);
+		return;
 	}
 
 	mutex_lock(&pf->tc_mutex);
 
 	/* store the old configuration */
-	tmp_dcbx_cfg = pf->hw.port_info->qos_cfg.local_dcbx_cfg;
-
-	/* Reset the old DCBX configuration data */
-	memset(&pi->qos_cfg.local_dcbx_cfg, 0,
-	       sizeof(pi->qos_cfg.local_dcbx_cfg));
+	tmp_dcbx_cfg = pi->qos_cfg.local_dcbx_cfg;
 
-	/* Get updated DCBX data from firmware */
-	ret = ice_get_dcb_cfg(pf->hw.port_info);
-	if (ret) {
-		dev_err(dev, "Failed to get DCB config\n");
-		goto out;
-	}
+	/* Update DCBX data from MIB Change event's buffer */
+	ice_get_dcb_cfg_from_mib_change(pi, event);
 
 	/* No change detected in DCBX configs */
 	if (!memcmp(&tmp_dcbx_cfg, &pi->qos_cfg.local_dcbx_cfg,
@@ -1027,7 +1013,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	/* disable VSIs affected by DCB changes */
 	ice_dcb_ena_dis_vsi(pf, false, true);
 
-	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
+	ret = ice_query_port_ets(pi, &buf, sizeof(buf), NULL);
 	if (ret) {
 		dev_err(dev, "Query Port ETS failed\n");
 		goto unlock_rtnl;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
