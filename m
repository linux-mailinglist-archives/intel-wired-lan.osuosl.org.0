Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB27959F905
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Aug 2022 14:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AE4E40B5E;
	Wed, 24 Aug 2022 12:07:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AE4E40B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661342871;
	bh=iHFXW73fnMZK4PjIdD2ElCkPqvCZV4rXfVpqscJcKbc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lf/JYhLLmxd/NsQ7yQWGkdd4NqYGN9ygUVJw2BKckX1amXDZGvHkMAT5xhlKpgPZO
	 VG9aVtE9NlFq5+oqhjLdD4KoQ7DwnS89KdH7I6ji4vyCYgFoxckmHX3SGcGJ+J0V/R
	 htgFlqB/Zse+CNaD3j+EwubT91v4DLgrsCXlQ4K92NPbVxXkbmA2nuEY7JmZib04xM
	 FtH6jsL8+H6a7EngcpItGT4u0B8NWOOzHNxConst0uT+Wqb91+pxa41T1uTbM38isM
	 xdUXlxdIDzOKfj88KXtJwWu1HuYGf1J8BHlRo0IB4GiM1QU4j1NKtTnqN00MMdleHK
	 a6vEYV8F0YEig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USuRkgo-OvMO; Wed, 24 Aug 2022 12:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF7C440B54;
	Wed, 24 Aug 2022 12:07:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF7C440B54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20E241BF29A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F065381B52
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F065381B52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpAS8e5bDY6n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Aug 2022 12:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2022481B7B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2022481B7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="320004518"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="320004518"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 05:07:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="678021271"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2022 05:07:38 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Aug 2022 14:07:28 +0200
Message-Id: <20220824120728.1384453-3-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
References: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661342859; x=1692878859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=StNl3+d9/Y+nEJGin+v7VirDjrKBrkoatyWlRBMwvDE=;
 b=KYY7xtsjIgTs52YlOsd47csNZIxdcHgCvsG0kjnBAtEyiDzmbgyAhHCa
 KaHQ4j7n00k1GQP3PQ3QvFGvSBKMGnRx0jTKj2fhTFM2ipHR8E7dj65IV
 wYZ6pov+7ruYXDdc5rAv0yh5CPNU6ZcHEKmECJ6waePh9NXYOYY8LNCkl
 k3myQo+PATxd4Hd8pg4IfBn3+tBXoXNjJp8fXsN6+SKCtox0z2s0V5Zej
 AsGaTxxayhJZHjxdAKrK6DqxQbqxcD/x/GKTb7AUdTpBgk1lLXKgvq3A8
 +RLx7dtYqR7yr4/NvPUfCLJl4DANHMHocLSBeYO4IlVK3out5TUee1IE3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KYY7xtsj
Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Handle LLDP MIB
 Pending change
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

If the number of Traffic Classes (TC) is decreased, the FW will no
longer remove TC nodes, but will send a pending change notification. This
will allow RDMA to destroy corresponding Control QP markers. After RDMA
finishes outstanding operations, the ice driver will send an execute MIB
Pending change admin queue command to FW to finish DCB configuration
change.

The FW will buffer all incoming Pending changes, so there can be only
one active Pending change.

RDMA driver guarantees to remove Control QP markers within 5000 ms.
Hence, LLDP response timeout txTTL (default 30 sec) will be met.

In the case of a Pending change, LLDP MIB Change Event (opcode 0x0A01) will
contain the whole new MIB. But Get LLDP MIB (opcode 0x0A00) AQ call would
still return an old MIB, as the Pending change hasn't been applied yet.
Add ice_get_dcb_cfg_from_mib_change() function to retrieve DCBX config
from LLDP MIB Change Event's buffer for Pending changes.

Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v2: Remove inline hint for ice_dcb_is_mib_change_pending()
v3: Handle only local LLDP MIB Pending change
v4: Use the old way to get MIB content for non-Pending changes, because
	the MIB Change event will not always contain a correct MIB.
---
 drivers/net/ethernet/intel/ice/ice_dcb.c     | 36 +++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 68 +++++++++++++++-----
 3 files changed, 91 insertions(+), 15 deletions(-)

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
index add90e75f05c..5e6d168bac48 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -933,6 +933,16 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	}
 }
 
+/**
+ * ice_dcb_is_mib_change_pending - Check if MIB change is pending
+ * @state: MIB change state
+ */
+static bool ice_dcb_is_mib_change_pending(u8 state)
+{
+	return ICE_AQ_LLDP_MIB_CHANGE_PENDING ==
+		FIELD_GET(ICE_AQ_LLDP_MIB_CHANGE_STATE_M, state);
+}
+
 /**
  * ice_dcb_process_lldp_set_mib_change - Process MIB change
  * @pf: ptr to ice_pf
@@ -946,6 +956,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_aqc_lldp_get_mib *mib;
 	struct ice_dcbx_cfg tmp_dcbx_cfg;
+	bool pending_handled = true;
 	bool need_reconfig = false;
 	struct ice_port_info *pi;
 	u8 mib_type;
@@ -962,41 +973,58 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 
 	pi = pf->hw.port_info;
 	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
+
 	/* Ignore if event is not for Nearest Bridge */
-	mib_type = ((mib->type >> ICE_AQ_LLDP_BRID_TYPE_S) &
-		    ICE_AQ_LLDP_BRID_TYPE_M);
+	mib_type = FIELD_GET(ICE_AQ_LLDP_BRID_TYPE_M, mib->type);
 	dev_dbg(dev, "LLDP event MIB bridge type 0x%x\n", mib_type);
 	if (mib_type != ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID)
 		return;
 
+	/* A pending change event contains accurate config information, and
+	 * the FW setting has not been updaed yet, so detect if change is
+	 * pending to determine where to pull config information from
+	 * (FW vs event)
+	 */
+	if (ice_dcb_is_mib_change_pending(mib->state))
+		pending_handled = false;
+
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
+		if (!pending_handled) {
+			ice_get_dcb_cfg_from_mib_change(pi, event);
+		} else {
+			ret =
+			  ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
+					     ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID,
+					     &pi->qos_cfg.remote_dcbx_cfg);
+			if (ret)
+				dev_dbg(dev, "Failed to get remote DCB config\n");
 		}
+		return;
 	}
 
+	/* That a DCB change has happened is now determined */
 	mutex_lock(&pf->tc_mutex);
 
 	/* store the old configuration */
-	tmp_dcbx_cfg = pf->hw.port_info->qos_cfg.local_dcbx_cfg;
+	tmp_dcbx_cfg = pi->qos_cfg.local_dcbx_cfg;
 
 	/* Reset the old DCBX configuration data */
 	memset(&pi->qos_cfg.local_dcbx_cfg, 0,
 	       sizeof(pi->qos_cfg.local_dcbx_cfg));
 
 	/* Get updated DCBX data from firmware */
-	ret = ice_get_dcb_cfg(pf->hw.port_info);
-	if (ret) {
-		dev_err(dev, "Failed to get DCB config\n");
-		goto out;
+	if (!pending_handled) {
+		ice_get_dcb_cfg_from_mib_change(pi, event);
+	} else {
+		ret = ice_get_dcb_cfg(pi);
+		if (ret) {
+			dev_err(dev, "Failed to get DCB config\n");
+			goto out;
+		}
 	}
 
 	/* No change detected in DCBX configs */
@@ -1023,11 +1051,17 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	}
 
+	/* Send Execute Pending MIB Change event if it is a Pending event */
+	if (!pending_handled) {
+		ice_lldp_execute_pending_mib(&pf->hw);
+		pending_handled = true;
+	}
+
 	rtnl_lock();
 	/* disable VSIs affected by DCB changes */
 	ice_dcb_ena_dis_vsi(pf, false, true);
 
-	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
+	ret = ice_query_port_ets(pi, &buf, sizeof(buf), NULL);
 	if (ret) {
 		dev_err(dev, "Query Port ETS failed\n");
 		goto unlock_rtnl;
@@ -1042,4 +1076,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	rtnl_unlock();
 out:
 	mutex_unlock(&pf->tc_mutex);
+
+	/* Send Execute Pending MIB Change event if it is a Pending event */
+	if (!pending_handled)
+		ice_lldp_execute_pending_mib(&pf->hw);
 }
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
