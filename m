Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFACF92760B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 14:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 911FC408DE;
	Thu,  4 Jul 2024 12:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYezBOhSTuLW; Thu,  4 Jul 2024 12:31:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87E2A40977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720096269;
	bh=qrzN4O3/wIV1ifSziqEnSmrnbFPMGL5x1aNaukpBMNQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L5Vc3Aja6flKEqIxaIvlHuoRPY/0LMYcPdLA5yk8RLFC7x/S4vcfexc9IwGoP+B6A
	 xTWzNQtHziwYBOSGNXrigXx4orzq9NUhgVS93AsRx/ivMcADTSB1oze3t7+CzYci/P
	 12kqRFOVlywdvcrbYfJN3pOmHEuFc+0G6PXZCr6rcTOOa4k2CEr1jxNJ4VycBAWKjy
	 1bGXMeob0HLbHOAf2a/ebhYN6c5mF6yrPosBfz6ENSYsbEMmrRYuCwEiynUAoeOvua
	 WwyZYtZHBZhfBBWhtEoXqPARAImw5ujYLBrSGdKcv9pUUOEV0Psh/egtWldaNf9vUd
	 71WQrZTdjEhNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87E2A40977;
	Thu,  4 Jul 2024 12:31:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD561BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC1DB60777
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n81V0APf9edc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2024 12:31:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 241CD60649
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 241CD60649
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 241CD60649
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 12:31:05 +0000 (UTC)
X-CSE-ConnectionGUID: 4b+KLVf5SwmagoXI8lCOgw==
X-CSE-MsgGUID: WqdWhJUSSTepC6D5sqMduA==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="17484184"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="17484184"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 05:31:05 -0700
X-CSE-ConnectionGUID: jqy05Jk7ThGIPvzpkeXKpQ==
X-CSE-MsgGUID: cxROYWy1S3mtzOCvwg2uVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46550379"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.245.117.61])
 by fmviesa008.fm.intel.com with ESMTP; 04 Jul 2024 05:31:04 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Jul 2024 14:26:54 +0200
Message-ID: <20240704122655.39671-7-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
References: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720096265; x=1751632265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ViJi5LT9bPKrg94X7l1BDGhB5umTPGs9z+xanq6/kLU=;
 b=ONWKhS73aIM39JDXgRaq8OhyTtzJ4MY6u0lb/Q+vQFmtw3uF1eCz3ii7
 3SsiqMCgGZoJIHnQGEpQyjIftuI8QLRfuB2mJJC6S5tExh44GTnm/Q2hj
 pfQ6G1ta1cSSCK0n0bmINk/UA5Mh/9imdebo+u7cPLvIF1Nye7QeJWJlK
 +9AAHhmCm6MrmOQ+uztlTuzlu8MZkO4tEkSdlyuQk93hlU+qP0sFW1bTZ
 VojHk9+Ra1ygcLHMKLgi5insSO7Cd82WwM5PTy0mSkEa52bCTJGyUjm8A
 QR8KmUQzK697DD4WbZQkDybhD8bD8ATVMRyGRxcu2aX+jqwlaReOPb/5s
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ONWKhS73
Subject: [Intel-wired-lan] [PATCH iwl-next v8 6/7] ixgbe: Clean up the E610
 link management related code
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Required for enabling the link management in E610 device.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 17 +++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 12 ++++++------
 2 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 094653e..d18c46c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -236,6 +236,9 @@ static int ixgbe_get_parent_bus_info(struct ixgbe_adapter *adapter)
  * bandwidth details should be gathered from the parent bus instead of from the
  * device. Used to ensure that various locations all have the correct device ID
  * checks.
+ *
+ * Return: true if information should be collected from the parent bus, false
+ *         otherwise
  */
 static inline bool ixgbe_pcie_from_parent(struct ixgbe_hw *hw)
 {
@@ -5534,7 +5537,9 @@ static void ixgbe_sfp_link_config(struct ixgbe_adapter *adapter)
  * ixgbe_non_sfp_link_config - set up non-SFP+ link
  * @hw: pointer to private hardware struct
  *
- * Returns 0 on success, negative on failure
+ * Configure non-SFP link.
+ *
+ * Return: 0 on success, negative on failure
  **/
 static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 {
@@ -7223,11 +7228,11 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	for (i = 0; i < 16; i++) {
 		hwstats->qptc[i] += IXGBE_READ_REG(hw, IXGBE_QPTC(i));
 		hwstats->qprc[i] += IXGBE_READ_REG(hw, IXGBE_QPRC(i));
-		if ((hw->mac.type == ixgbe_mac_82599EB) ||
-		    (hw->mac.type == ixgbe_mac_X540) ||
-		    (hw->mac.type == ixgbe_mac_X550) ||
-		    (hw->mac.type == ixgbe_mac_X550EM_x) ||
-		    (hw->mac.type == ixgbe_mac_x550em_a)) {
+		if (hw->mac.type == ixgbe_mac_82599EB ||
+		    hw->mac.type == ixgbe_mac_X540 ||
+		    hw->mac.type == ixgbe_mac_X550 ||
+		    hw->mac.type == ixgbe_mac_X550EM_x ||
+		    hw->mac.type == ixgbe_mac_x550em_a) {
 			hwstats->qbtc[i] += IXGBE_READ_REG(hw, IXGBE_QBTC_L(i));
 			IXGBE_READ_REG(hw, IXGBE_QBTC_H(i)); /* to clear */
 			hwstats->qbrc[i] += IXGBE_READ_REG(hw, IXGBE_QBRC_L(i));
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index a5f6449..7eeafc9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -3504,13 +3504,13 @@ static int ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 	return status;
 }
 
-/** ixgbe_set_ethertype_anti_spoofing_X550 - Enable/Disable Ethertype
+/** ixgbe_set_ethertype_anti_spoofing_x550 - Enable/Disable Ethertype
  *	anti-spoofing
  *  @hw:  pointer to hardware structure
  *  @enable: enable or disable switch for Ethertype anti-spoofing
  *  @vf: Virtual Function pool - VF Pool to set for Ethertype anti-spoofing
  **/
-static void ixgbe_set_ethertype_anti_spoofing_X550(struct ixgbe_hw *hw,
+static void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
 						   bool enable, int vf)
 {
 	int vf_target_reg = vf >> 3;
@@ -3526,12 +3526,12 @@ static void ixgbe_set_ethertype_anti_spoofing_X550(struct ixgbe_hw *hw,
 	IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg), pfvfspoof);
 }
 
-/** ixgbe_set_source_address_pruning_X550 - Enable/Disbale src address pruning
+/** ixgbe_set_source_address_pruning_x550 - Enable/Disable src address pruning
  *  @hw: pointer to hardware structure
  *  @enable: enable or disable source address pruning
  *  @pool: Rx pool to set source address pruning for
  **/
-static void ixgbe_set_source_address_pruning_X550(struct ixgbe_hw *hw,
+static void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
 						  bool enable,
 						  unsigned int pool)
 {
@@ -3830,9 +3830,9 @@ static int ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 	.set_mac_anti_spoofing		= &ixgbe_set_mac_anti_spoofing, \
 	.set_vlan_anti_spoofing		= &ixgbe_set_vlan_anti_spoofing, \
 	.set_source_address_pruning	= \
-				&ixgbe_set_source_address_pruning_X550, \
+				&ixgbe_set_source_address_pruning_x550, \
 	.set_ethertype_anti_spoofing	= \
-				&ixgbe_set_ethertype_anti_spoofing_X550, \
+				&ixgbe_set_ethertype_anti_spoofing_x550, \
 	.disable_rx_buff		= &ixgbe_disable_rx_buff_generic, \
 	.enable_rx_buff			= &ixgbe_enable_rx_buff_generic, \
 	.get_thermal_sensor_data	= NULL, \
-- 
2.43.0

