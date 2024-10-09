Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ADA996D1C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 16:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC5F14077C;
	Wed,  9 Oct 2024 14:02:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DWIwsaVUUsqu; Wed,  9 Oct 2024 14:02:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC4BD40773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728482562;
	bh=1KAYJqZOPzzmCrSWe2UPevuA7JRqIAIDPgwbzwdSHyQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SlECoFbuUuQ0IPfy9uaU3AWaEU3ginw1eH4+fwZu6RMZHYYJr0wKNB6w0cQlGgDU1
	 9OCIgCUqd6vKPy3XnPrdXT0z5FWvbcIJo72CgDTopWJELvQXkNwPkcqmbajqezIp5s
	 eULZQfLPy5NJ0+Q4pVf9So5yoRBtLVBswiIWVouWWRz1v+c6buXW9eONXHS1/x3TK3
	 qAWErG4a4VMKSKIPytBTfSfsma3nLXsG9ICIR/q0Hr8VDN9VIDqcAa7IkDwaANKvOG
	 vhGQw2UfT+S9JbhG4a9XCvUB3Zeaf/eZahNKBUEVusulPEzeMmogOmrSrMNF0awANV
	 E0n7pOJrci/Uw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC4BD40773;
	Wed,  9 Oct 2024 14:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4593A1BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E68E40092
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HdvMSLWgMAmt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 14:02:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A3A240768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A3A240768
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A3A240768
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:02:37 +0000 (UTC)
X-CSE-ConnectionGUID: eJAeDmNMTq+G0ZwSVa1WUw==
X-CSE-MsgGUID: uCjMtYciSCSdZ837fRxCTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31483956"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31483956"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:02:37 -0700
X-CSE-ConnectionGUID: uo5oXEVjT+CBiPz4BiMSbw==
X-CSE-MsgGUID: A8/fOvR7RAaPDor1MkbLOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76210801"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by orviesa009.jf.intel.com with ESMTP; 09 Oct 2024 07:02:36 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2024 15:59:29 +0200
Message-ID: <20241009140223.1918687-5-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241009140223.1918687-1-karol.kolacinski@intel.com>
References: <20241009140223.1918687-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728482557; x=1760018557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SUNS12LxCmi7sveNB4uhbH0YlvCG4988FTlhm1QDktg=;
 b=QftU6V6X/XY8eYZ5MfB9KupJbb8QSR3c9nnRZPmT+lhIHixTNHg4yWNQ
 R7IRScikVcShUuvOl0v3FZevDTC9k4hCItXyMxikfSVATUXTJ2mW1ARfU
 nTQV923lxrZKTM2bioxorP015Oy+Jj21cS9BMDlwWdEu2A7nI2vio0kw2
 XMsMfennEMH7pdF52rVHBtTdX3KwAyQJrwd5eu1f/ca2yfAa4WDrZIl/r
 QGbwv317h0K3bEP0pR+4ctMTdiU+geO1XYMIg9L6K2jCDiEfoN5xPERCA
 7x32LNRmoV5sWRm09OgwKeflqrErv4dKNDNVQp7P8z0R36WB1ZY2dVd6h
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QftU6V6X
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 4/4] ice: Add correct PHY lane
 assignment
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Driver always naively assumes, that for PTP purposes, PHY lane to
configure is corresponding to PF ID.

This is not true for some port configurations, e.g.:
- 2x50G per quad, where lanes used are 0 and 2 on each quad, but PF IDs
  are 0 and 1
- 100G per quad on 2 quads, where lanes used are 0 and 4, but PF IDs are
  0 and 1

Use correct PHY lane assignment by getting and parsing port options.
This is read from the NVM by the FW and provided to the driver with
the indication of active port split.

Remove ice_is_muxed_topo(), which is no longer needed.

Fixes: 4409ea1726cb ("ice: Adjust PTP init for 2x50G E825C devices")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 40 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c   |  6 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 23 +++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  4 +--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 ------------
 drivers/net/ethernet/intel/ice/ice_type.h   |  1 -
 7 files changed, 55 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0eb7f828ed3a..618259f8abdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4065,6 +4065,46 @@ ice_aq_set_port_option(struct ice_hw *hw, u8 lport, u8 lport_valid,
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
 
+/**
+ * ice_get_phy_lane_number - Get PHY lane number for current adapter
+ * @hw: pointer to the hw struct
+ *
+ * Return: PHY lane number on success, negative error code otherwise.
+ */
+int ice_get_phy_lane_number(struct ice_hw *hw)
+{
+	struct ice_aqc_get_port_options_elem *options __free(kfree);
+	unsigned int lport = 0;
+	unsigned int lane;
+	int err;
+
+	options = kcalloc(ICE_AQC_PORT_OPT_MAX, sizeof(*options), GFP_KERNEL);
+	if (!options)
+		return -ENOMEM;
+
+	for (lane = 0; lane < ICE_MAX_PORT_PER_PCI_DEV; lane++) {
+		u8 options_count = ICE_AQC_PORT_OPT_MAX;
+		bool active_valid, pending_valid;
+		u8 active_idx, pending_idx;
+
+		err = ice_aq_get_port_options(hw, options, &options_count, lane,
+					      true, &active_idx, &active_valid,
+					      &pending_idx, &pending_valid);
+		if (err)
+			return err;
+
+		if (!active_valid)
+			continue;
+
+		if (hw->pf_id == lport)
+			return lane;
+		lport++;
+	}
+
+	/* PHY lane not found */
+	return -ENXIO;
+}
+
 /**
  * ice_aq_sff_eeprom
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 27208a60cece..fe6f88cfd948 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -193,6 +193,7 @@ ice_aq_get_port_options(struct ice_hw *hw,
 int
 ice_aq_set_port_option(struct ice_hw *hw, u8 lport, u8 lport_valid,
 		       u8 new_option);
+int ice_get_phy_lane_number(struct ice_hw *hw);
 int
 ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		  u16 mem_addr, u8 page, u8 set_page, u8 *data, u8 length,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b1e7727b8677..72ef1b15b100 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1144,7 +1144,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
-	ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
+	ice_ptp_link_change(pf, link_up);
 
 	if (ice_is_dcb_active(pf)) {
 		if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
@@ -6742,7 +6742,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
-		ice_ptp_link_change(pf, pf->hw.pf_id, true);
+		ice_ptp_link_change(pf, true);
 	}
 
 	/* Perform an initial read of the statistics registers now to
@@ -7212,7 +7212,7 @@ int ice_down(struct ice_vsi *vsi)
 
 	if (vsi->netdev) {
 		vlan_err = ice_vsi_del_vlan_zero(vsi);
-		ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
+		ice_ptp_link_change(vsi->back, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ef2e858f49bb..da7b57684d32 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1454,10 +1454,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 /**
  * ice_ptp_link_change - Reconfigure PTP after link status change
  * @pf: Board private structure
- * @port: Port for which the PHY start is set
  * @linkup: Link is up or down
  */
-void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
+void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 {
 	struct ice_ptp_port *ptp_port;
 	struct ice_hw *hw = &pf->hw;
@@ -1465,14 +1464,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	if (pf->ptp.state != ICE_PTP_READY)
 		return;
 
-	if (WARN_ON_ONCE(port >= hw->ptp.num_lports))
-		return;
-
 	ptp_port = &pf->ptp.port;
-	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
-		port *= 2;
-	if (WARN_ON_ONCE(ptp_port->port_num != port))
-		return;
 
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
@@ -3339,10 +3331,17 @@ void ice_ptp_init(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
-	int err;
+	int lane_num, err;
 
 	ptp->state = ICE_PTP_INITIALIZING;
 
+	lane_num = ice_get_phy_lane_number(hw);
+	if (lane_num < 0) {
+		err = lane_num;
+		goto err;
+	}
+
+	ptp->port.port_num = (u8)lane_num;
 	ice_ptp_init_hw(hw);
 
 	ice_ptp_init_tx_interrupt_mode(pf);
@@ -3356,10 +3355,6 @@ void ice_ptp_init(struct ice_pf *pf)
 			goto err;
 	}
 
-	ptp->port.port_num = hw->pf_id;
-	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
-		ptp->port.port_num = hw->pf_id * 2;
-
 	err = ice_ptp_init_port(pf, &ptp->port);
 	if (err)
 		goto err;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 2db2257a0fb2..44a05c8d2113 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -331,7 +331,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf,
 			       enum ice_reset_req reset_type);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
-void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
+void ice_ptp_link_change(struct ice_pf *pf, bool linkup);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 static inline int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 {
@@ -379,7 +379,7 @@ static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf,
 }
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
-static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
+static inline void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 {
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2c02e28f3b86..86da0525d281 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2695,26 +2695,6 @@ static int ice_get_phy_tx_tstamp_ready_eth56g(struct ice_hw *hw, u8 port,
 	return 0;
 }
 
-/**
- * ice_is_muxed_topo - detect breakout 2x50G topology for E825C
- * @hw: pointer to the HW struct
- *
- * Return: true if it's 2x50 breakout topology, false otherwise
- */
-static bool ice_is_muxed_topo(struct ice_hw *hw)
-{
-	u8 link_topo;
-	bool mux;
-	u32 val;
-
-	val = rd32(hw, GLGEN_SWITCH_MODE_CONFIG);
-	mux = FIELD_GET(GLGEN_SWITCH_MODE_CONFIG_25X4_QUAD_M, val);
-	val = rd32(hw, GLGEN_MAC_LINK_TOPO);
-	link_topo = FIELD_GET(GLGEN_MAC_LINK_TOPO_LINK_TOPO_M, val);
-
-	return (mux && link_topo == ICE_LINK_TOPO_UP_TO_2_LINKS);
-}
-
 /**
  * ice_ptp_init_phy_e825 - initialize PHY parameters
  * @hw: pointer to the HW struct
@@ -2739,8 +2719,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw *hw)
 	err = ice_read_phy_eth56g(hw, hw->pf_id, PHY_REG_REVISION, &phy_rev);
 	if (err || phy_rev != PHY_REVISION_ETH56G)
 		ptp->phy_model = ICE_PHY_UNSUP;
-
-	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
 }
 
 /* E822 family functions
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 479227bdff75..609f31e0dfde 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -880,7 +880,6 @@ struct ice_ptp_hw {
 	union ice_phy_params phy;
 	u8 num_lports;
 	u8 ports_per_phy;
-	bool is_2x50g_muxed_topo;
 };
 
 /* Port hardware description */
-- 
2.46.2

