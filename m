Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964498616EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 17:06:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EBCD41CB4;
	Fri, 23 Feb 2024 16:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7aWUFgPflA9c; Fri, 23 Feb 2024 16:06:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CABB41CAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708704403;
	bh=wlIP5SjA3B2naeMY2CXebItmlmRAiBJvGBk2W9BgPuE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4drAhcEHjjIwWXGjSAKs35g599Il1yd+R/1XIU8GHLibkkrcn/TYUiW5ft7G4OBml
	 zQp+dKrdnZ0X1X8xtSoNWuACpgo/PkBdlJ/2/La+2nJG9I5GzYMXbEVQRPGtjXYodZ
	 8oAgb4PhE8nY+ec7hfYiGVh7XmRcLqouDliOY1vaVU61F4AoTbxZXeRpNw/foJhhpD
	 l1rjwMHUkLnyCAFgA3CJllH3HOUF1UTf31zX+hh0hmqgbsevGamp8FlWEVrHERIwla
	 0HwLQ8H2HSAGfkqNh9EXLcQt8q9qdUPSsngDLN+qaY12POVqFaH7RaKGYbdemgd7oE
	 CdMKfOifZ33NA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CABB41CAA;
	Fri, 23 Feb 2024 16:06:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B6711BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 489B560909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6T17iFJ-R6j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 16:06:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6229E608D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6229E608D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6229E608D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="14454678"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="14454678"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 08:06:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="6161967"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa006.fm.intel.com with ESMTP; 23 Feb 2024 08:06:36 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Feb 2024 17:06:28 +0100
Message-Id: <20240223160629.729433-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
References: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708704399; x=1740240399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0iiCC+b5YFY1rm3bvCk7VuHahm1aDlPhHiz0U2+D2yQ=;
 b=nxYMEKsdz38pFo0hSoSsa5V05Ini2QWN9M1WFo3sW4hmp6vPyDtuTPSz
 Yr56ZWG3dvkbuBnzSGfBwwGPuC5usq3D1yj38c8gc/EFcA7FX36d42/1o
 bTj9A+X3h+yvCLxlOE0hnVyyQWHh2BUb9A5f7fzfdsSV+k6jZMGnC9CGT
 SB0xoNFy8Q36MHHobeGgqMTva43KMqo77J9qxAxWbDNtJ7tBa/Pc/v2mm
 N+a0dnIfPGRHdktBrbI6Z60aSv/jKbbC5MVWdTUnfPP6506lofMcz0OG5
 GgI4ndbqaNKeZv+mtikOpC7LNzNP6yktn0raHic52rPi9XzyOYy3FU/Kv
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nxYMEKsd
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] ice: avoid unnecessary
 devm_ usage
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

1. pcaps are free'd right after AQ routines are done, no need for
   devm_'s
2. a test frame for loopback test in ethtool -t is destroyed at the end
   of the test so we don't need devm_ here either.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 34 +++++++-------------
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++----
 2 files changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 10c32cd80fff..a987dc063946 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -965,9 +965,9 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
  */
 int ice_init_hw(struct ice_hw *hw)
 {
-	struct ice_aqc_get_phy_caps_data *pcaps;
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
+	void *mac_buf __free(kfree);
 	u16 mac_buf_len;
-	void *mac_buf;
 	int status;
 
 	/* Set MAC type based on DeviceID */
@@ -1045,7 +1045,7 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_sched;
 
-	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps) {
 		status = -ENOMEM;
 		goto err_unroll_sched;
@@ -1055,7 +1055,6 @@ int ice_init_hw(struct ice_hw *hw)
 	status = ice_aq_get_phy_caps(hw->port_info, false,
 				     ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
 				     NULL);
-	devm_kfree(ice_hw_to_dev(hw), pcaps);
 	if (status)
 		dev_warn(ice_hw_to_dev(hw), "Get PHY capabilities failed status = %d, continuing anyway\n",
 			 status);
@@ -1082,18 +1081,15 @@ int ice_init_hw(struct ice_hw *hw)
 
 	/* Get MAC information */
 	/* A single port can report up to two (LAN and WoL) addresses */
-	mac_buf = devm_kcalloc(ice_hw_to_dev(hw), 2,
-			       sizeof(struct ice_aqc_manage_mac_read_resp),
-			       GFP_KERNEL);
-	mac_buf_len = 2 * sizeof(struct ice_aqc_manage_mac_read_resp);
-
+	mac_buf = kcalloc(2, sizeof(struct ice_aqc_manage_mac_read_resp),
+			  GFP_KERNEL);
 	if (!mac_buf) {
 		status = -ENOMEM;
 		goto err_unroll_fltr_mgmt_struct;
 	}
 
+	mac_buf_len = 2 * sizeof(struct ice_aqc_manage_mac_read_resp);
 	status = ice_aq_manage_mac_read(hw, mac_buf, mac_buf_len, NULL);
-	devm_kfree(ice_hw_to_dev(hw), mac_buf);
 
 	if (status)
 		goto err_unroll_fltr_mgmt_struct;
@@ -3240,19 +3236,14 @@ int ice_update_link_info(struct ice_port_info *pi)
 		return status;
 
 	if (li->link_info & ICE_AQ_MEDIA_AVAILABLE) {
-		struct ice_aqc_get_phy_caps_data *pcaps;
-		struct ice_hw *hw;
+		struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
 
-		hw = pi->hw;
-		pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps),
-				     GFP_KERNEL);
+		pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 		if (!pcaps)
 			return -ENOMEM;
 
 		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 					     pcaps, NULL);
-
-		devm_kfree(ice_hw_to_dev(hw), pcaps);
 	}
 
 	return status;
@@ -3393,8 +3384,8 @@ ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 int
 ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 {
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
 	struct ice_aqc_set_phy_cfg_data cfg = { 0 };
-	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_hw *hw;
 	int status;
 
@@ -3404,7 +3395,7 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 	*aq_failures = 0;
 	hw = pi->hw;
 
-	pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return -ENOMEM;
 
@@ -3456,7 +3447,6 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 	}
 
 out:
-	devm_kfree(ice_hw_to_dev(hw), pcaps);
 	return status;
 }
 
@@ -3535,7 +3525,7 @@ int
 ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		enum ice_fec_mode fec)
 {
-	struct ice_aqc_get_phy_caps_data *pcaps;
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
 	struct ice_hw *hw;
 	int status;
 
@@ -3604,8 +3594,6 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 	}
 
 out:
-	kfree(pcaps);
-
 	return status;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a19b06f18e40..8a260a468a81 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -801,7 +801,7 @@ static int ice_lbtest_create_frame(struct ice_pf *pf, u8 **ret_data, u16 size)
 	if (!pf)
 		return -EINVAL;
 
-	data = devm_kzalloc(ice_pf_to_dev(pf), size, GFP_KERNEL);
+	data = kzalloc(size, GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
@@ -944,11 +944,9 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	int num_frames, valid_frames;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	struct device *dev;
-	u8 *tx_frame;
+	u8 *tx_frame __free(kfree);
 	int i;
 
-	dev = ice_pf_to_dev(pf);
 	netdev_info(netdev, "loopback test\n");
 
 	test_vsi = ice_lb_vsi_setup(pf, pf->hw.port_info);
@@ -993,7 +991,7 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	for (i = 0; i < num_frames; i++) {
 		if (ice_diag_send(tx_ring, tx_frame, ICE_LB_FRAME_SIZE)) {
 			ret = 8;
-			goto lbtest_free_frame;
+			goto remove_mac_filters;
 		}
 	}
 
@@ -1003,8 +1001,6 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	else if (valid_frames != num_frames)
 		ret = 10;
 
-lbtest_free_frame:
-	devm_kfree(dev, tx_frame);
 remove_mac_filters:
 	if (ice_fltr_remove_mac(test_vsi, broadcast, ICE_FWD_TO_VSI))
 		netdev_err(netdev, "Could not remove MAC filter for the test VSI\n");
-- 
2.34.1

