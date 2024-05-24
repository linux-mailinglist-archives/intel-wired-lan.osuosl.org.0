Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB6E8CE769
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 16:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB9B7409DF;
	Fri, 24 May 2024 14:56:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kntgIiBb0XNw; Fri, 24 May 2024 14:56:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0F09409C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716562581;
	bh=MbVG1vi5W/yQDxsr/v3H7RAlE8cDnUj9R5Ing2m0ZBg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IeuzPHq7NqCswju/jFt2YVzVbPrMc8e44kxKJNax83RyNNJ3PEHoTm+FoLkrrCZHj
	 IKsbwtpx5yZuP+UK0/0AnaV09eHWwsrcKxbzOsiy50dj3dVmA6bJ3e+f+3EgDV1qMk
	 yat7XxF/5d3u7lZqAfhsvt4zD9tKupHqS+33rHPLuRGEAI4wa4peZ1NdT6+yyeOFkL
	 hzR4qXpSdJc1q35vHNB3YonSXnr+q523W8qDYLZxHhFAWLAr/IzN3KCw6Qkm/FZr0y
	 mIljf6NkO2mQuNaiWYF5mMrFnsMk9TS40FXOTJ/LyopQxcGml8h0wDW+0gBFFgYcu4
	 C5AO6k32TMLrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0F09409C9;
	Fri, 24 May 2024 14:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 896B11BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 14:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72D69409D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 14:56:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TTm2oW1gV2hY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 14:56:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7177F409C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7177F409C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7177F409C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 14:56:18 +0000 (UTC)
X-CSE-ConnectionGUID: zqPxsJwMQDmnEa7eQXXSFQ==
X-CSE-MsgGUID: GO0V6FVbRS+6rQJuh5jI/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="24070394"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="24070394"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 07:56:19 -0700
X-CSE-ConnectionGUID: 2/atqZhbSWK5dF/WpagUyA==
X-CSE-MsgGUID: zrhwY4i2SFm8ei5EWwkoYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="33946105"
Received: from amlin-018-251.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.251])
 by orviesa010.jf.intel.com with ESMTP; 24 May 2024 07:56:17 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 May 2024 17:13:10 +0200
Message-Id: <20240524151311.78939-7-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240524151311.78939-1-piotr.kwapulinski@intel.com>
References: <20240524151311.78939-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716562579; x=1748098579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LNv5+PnKBbxKylq6fersx+vw7g/rlKN2GQLokdFKFOg=;
 b=Qj3B3xr3g84J7LkGXXU4SBz1LW+1+/F4v/0ib/Xnu+p+Z4Nik3Rcugnj
 oyslhl4opHV6uD5QXRW5rZVQgwNyHtPfTlhVs9YZRBSBkxKnahbNPwa+o
 hepzcb5BMu4nRj2E8h2YD6TrcRjcZICI0iE6l5nXxb+zVJYhMCA2tG9KQ
 oPjs+/uw6N+DUStoCtB/TkrLWh4bSusSIdOUvGCkKpZGhvN3hx0JNfhLa
 TKNyHzQ76Mwr/UFsXE2U7F+mDiGwGxGo479wGxdyvKZjY2axWik2eznXa
 0VQNXuLHiJT71YYE8Gd4u9WOO+49aTZBQNyJvE2fJ/oceq5kEAIcTu8ts
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qj3B3xr3
Subject: [Intel-wired-lan] [PATCH iwl-next v6 6/7] ixgbe: Clean up the E610
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
 pmenzel@molgen.mpg.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Required for enabling the link management in E610 device.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 17 +++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 12 ++++++------
 2 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 43e7e75..c776686 100644
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
index 2decb07..9bd82895 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -3554,13 +3554,13 @@ static int ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
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
@@ -3576,12 +3576,12 @@ static void ixgbe_set_ethertype_anti_spoofing_X550(struct ixgbe_hw *hw,
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
@@ -3880,9 +3880,9 @@ static int ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
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
2.31.1

