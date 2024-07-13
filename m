Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C1393071C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jul 2024 21:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4FDE8206D;
	Sat, 13 Jul 2024 19:02:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JKXNh2d5xani; Sat, 13 Jul 2024 19:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEE238206F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720897336;
	bh=rXb0G3Vjtbgm2BprKl7IqBrn9LB01zQA0NsCRPL4hOU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=u7+IbngeJQwCDCUuqwzveyrcqQEMa75xOyokETNkTZ6+8B9ArUDCfIhNonyfHRmXF
	 ldzMaDtAtyMUVi/IAvj6p6ky0cAajhjOgMt6zxoK79T+EScbeBn3YbO1qg8WFJ5qz8
	 EyuaYCejDdWTgim70Acv0Hs2iaA5e7AJM3Qa3V0rCxoJeaD6Yxv+6R8eKr49iXnD2N
	 +XyGy1Fo9UpAe5/gftYF3Ly4ajuW8kxEoOndAENUzkcRm6R0OYr8pe836WdP7a4FiW
	 nt6zY8GqLk/w1w3/G9PzXNNYJwfh094dGEagTJ4g/uBk8Wc1goTXY74XDs+KrPkv0x
	 qoUQVlXY9tuKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEE238206F;
	Sat, 13 Jul 2024 19:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76D861BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jul 2024 19:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F711400BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jul 2024 19:02:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_9kV6_5y8ds for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Jul 2024 19:02:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0C8BD401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C8BD401D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C8BD401D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jul 2024 19:02:12 +0000 (UTC)
X-CSE-ConnectionGUID: mMRTZ7nmS/aWtfwwisHn5A==
X-CSE-MsgGUID: GyccTqTTRQG7uxu/Ze6OMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11132"; a="40853810"
X-IronPort-AV: E=Sophos;i="6.09,206,1716274800"; d="scan'208";a="40853810"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2024 12:02:12 -0700
X-CSE-ConnectionGUID: qrN3ArTzSpqIy7p41FYcnA==
X-CSE-MsgGUID: sthlpvofTwGNMaXNJBInEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,206,1716274800"; d="scan'208";a="49301266"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa010.fm.intel.com with ESMTP; 13 Jul 2024 12:02:10 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 13 Jul 2024 22:02:09 +0300
Message-Id: <20240713190209.3742789-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720897333; x=1752433333;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u4ikXKWNbIDt1trh/pA9wQZzhKV08JwTWvtcBdCGz0c=;
 b=YPTxn0o1LgjL3gR4Bbttr17Kc8R/tzSPUsuGSiNj8bj0MeeoaWXRq3QQ
 QrUVlxmaXmfwLxdJ+py7vdyF9wQRzCCoVHvJL5POSXaH+rGxBTaAi8mGB
 7AXs9MHniGYLtLlihILKE8LPV+K0nWVf0ALFHRzoVY/1jcxayGkwTjypI
 +aCDZLkkjb9M/COGiug69Tdk6+6zhjm6MvGWE8a43vG6t86ktEEHXRfN6
 qaeLA2W/Jq0NPiMI2u32rKHR0mLGZdyXFJ7tlyzvqIItF4HQpEqTANaPp
 UFD8K5/f6WdX2+/JHag+dJ4DX0UP/+MrX/XzdAranVXzwSzfaL7lTSKiJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YPTxn0o1
Subject: [Intel-wired-lan] [iwl-next v1 1/1] igc: Add Energy Efficient
 Ethernet ability
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

According to the IEEE standard report the EEE ability (registers 7.60 and
7.62) and the EEE Link Partner ability (registers 7.61 and 7.63). Use the
kernel's 'ethtool_keee' structure and report EEE link modes.

Example:
ethtool --show-eee <device>

Before:
Advertised EEE link modes:  Not reported
Link partner advertised EEE link modes:  Not reported

After:
	Advertised EEE link modes:  100baseT/Full
	                            1000baseT/Full
	                            2500baseT/Full
	Link partner advertised EEE link modes:  100baseT/Full
	                                         1000baseT/Full
	                                         2500baseT/Full

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 10 +++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 73 +++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  7 ++
 3 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 58f6631bfdd5..262d0808fed0 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -646,6 +646,16 @@
 #define IGC_MDIC_READY		0x10000000
 #define IGC_MDIC_ERROR		0x40000000
 
+/* EEE Link Ability */
+#define IGC_EEE_2500BT_MASK	BIT(0)
+#define IGC_EEE_1000BT_MASK	BIT(2)
+#define IGC_EEE_100BT_MASK	BIT(1)
+
+/* EEE Link-Partner Ability */
+#define IGC_LP_EEE_2500BT_MASK	BIT(0)
+#define IGC_LP_EEE_1000BT_MASK	BIT(2)
+#define IGC_LP_EEE_100BT_MASK	BIT(1)
+
 #define IGC_N0_QUEUE		-1
 
 #define IGC_MAX_MAC_HDR_LEN	127
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 201588ca61c4..0f9c24483171 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1631,8 +1631,11 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct igc_hw *hw = &adapter->hw;
-	u32 eeer;
+	struct igc_phy_info *phy = &hw->phy;
+	u16 eee_advert, eee_lp_advert;
+	u32 eeer, ret_val;
 
+	/* EEE supported */
 	linkmode_set_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
 			 edata->supported);
 	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
@@ -1640,6 +1643,74 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
 			 edata->supported);
 
+	/* EEE Advertisement 1 - reg 7.60 */
+	ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
+				    MMD_DEVADDR_SHIFT) |
+				    IGC_ANEG_EEE_AB1,
+				    &eee_advert);
+	if (ret_val) {
+		netdev_err(adapter->netdev,
+			   "Failed to read IEEE 7.60 register\n");
+		return -EINVAL;
+	}
+
+	if (eee_advert & IGC_EEE_1000BT_MASK)
+		linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+				 edata->advertised);
+
+	if (eee_advert & IGC_EEE_100BT_MASK)
+		linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+				 edata->advertised);
+
+	/* EEE Advertisement 2 - reg 7.62 */
+	ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
+				    MMD_DEVADDR_SHIFT) |
+				    IGC_ANEG_EEE_AB2,
+				    &eee_advert);
+	if (ret_val) {
+		netdev_err(adapter->netdev,
+			   "Failed to read IEEE 7.62 register\n");
+		return -EINVAL;
+	}
+
+	if (eee_advert & IGC_EEE_2500BT_MASK)
+		linkmode_set_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+				 edata->advertised);
+
+	/* EEE Link-Partner Ability 1 - reg 7.61 */
+	ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
+				    MMD_DEVADDR_SHIFT) |
+				    IGC_ANEG_EEE_LP_AB1,
+				    &eee_lp_advert);
+	if (ret_val) {
+		netdev_err(adapter->netdev,
+			   "Failed to read IEEE 7.61 register\n");
+		return -EINVAL;
+	}
+
+	if (eee_lp_advert & IGC_LP_EEE_1000BT_MASK)
+		linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+				 edata->lp_advertised);
+
+	if (eee_lp_advert & IGC_LP_EEE_100BT_MASK)
+		linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+				 edata->lp_advertised);
+
+	/* EEE Link-Partner Ability 2 - reg 7.63 */
+	ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
+				    MMD_DEVADDR_SHIFT) |
+				    IGC_ANEG_EEE_LP_AB2,
+				    &eee_lp_advert);
+	if (ret_val) {
+		netdev_err(adapter->netdev,
+			   "Failed to read IEEE 7.63 register\n");
+		return -EINVAL;
+	}
+
+	if (eee_lp_advert & IGC_LP_EEE_2500BT_MASK)
+		linkmode_set_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+				 edata->lp_advertised);
+
 	eeer = rd32(IGC_EEER);
 
 	/* EEE status on negotiated link */
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index c83c723f7c7e..bb6f37f5d3a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -310,6 +310,13 @@
 #define IGC_IPCNFG	0x0E38 /* Internal PHY Configuration */
 #define IGC_EEE_SU	0x0E34 /* EEE Setup */
 
+/* EEE ANeg Advertisement Register - reg 7.60 and reg 7.62 */
+#define IGC_ANEG_EEE_AB1	0x003c
+#define IGC_ANEG_EEE_AB2	0x003e
+/* EEE ANeg Link-Partner Advertisement Register - reg 7.61 and reg 7.63 */
+#define IGC_ANEG_EEE_LP_AB1	0x003d
+#define IGC_ANEG_EEE_LP_AB2	0x003f
+
 /* LTR registers */
 #define IGC_LTRC	0x01A0 /* Latency Tolerance Reporting Control */
 #define IGC_LTRMINV	0x5BB0 /* LTR Minimum Value */
-- 
2.34.1

