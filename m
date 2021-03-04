Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DF732CDB5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 08:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F7D7431D0;
	Thu,  4 Mar 2021 07:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0mZWZ5hiI7aA; Thu,  4 Mar 2021 07:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE5F043115;
	Thu,  4 Mar 2021 07:38:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA791BF299
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 07:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF4B183422
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 07:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dXCKWSmwXq-f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 07:38:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF01082F77
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 07:38:26 +0000 (UTC)
IronPort-SDR: 3ym/3onSMbUFsRoYuQd0qN1nmH7FTuJvPMymy2bYcK6JPkth4UnL5EOcSKM+oKnxkmMnwm+Qu9
 GqGzAfjhznhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="183985215"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="183985215"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 23:38:23 -0800
IronPort-SDR: jW/fYaC8XlDxCI/4xO8ZfvFktGVio3bQY0gG4TA65av6gL/PG5vydFThmlbrTXuK+w6DW5va0o
 4vERNPyyUO6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="435706446"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Mar 2021 23:38:21 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, anna.kostyukovsky@intel.com,
 dvorax.fuxbrumer@linux.intel.com
Date: Thu,  4 Mar 2021 09:38:13 +0200
Message-Id: <20210304073813.2741545-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for Lunar Lake
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add devices IDs for the next LOM generations that will be
available on the next Intel Client platform (Lunar Lake)
This patch provides the initial support for these devices

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
 drivers/net/ethernet/intel/e1000e/hw.h      | 5 +++++
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 6 ++++++
 drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
 5 files changed, 21 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 06442e6bef73..7256b43b7a65 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -903,6 +903,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		mask |= BIT(18);
 		break;
 	default:
@@ -1569,6 +1570,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		fext_nvm11 = er32(FEXTNVM11);
 		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
 		ew32(FEXTNVM11, fext_nvm11);
diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 69a2329ea463..d02aebf65554 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -106,6 +106,10 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_MTP_I219_V18		0x550B
 #define E1000_DEV_ID_PCH_MTP_I219_LM19		0x550C
 #define E1000_DEV_ID_PCH_MTP_I219_V19		0x550D
+#define E1000_DEV_ID_PCH_LNP_I219_LM20		0x550E
+#define E1000_DEV_ID_PCH_LNP_I219_V20		0x550F
+#define E1000_DEV_ID_PCH_LNP_I219_LM21		0x5510
+#define E1000_DEV_ID_PCH_LNP_I219_V21		0x5511
 
 #define E1000_REVISION_4	4
 
@@ -132,6 +136,7 @@ enum e1000_mac_type {
 	e1000_pch_tgp,
 	e1000_pch_adp,
 	e1000_pch_mtp,
+	e1000_pch_lnp,
 };
 
 enum e1000_media_type {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 0ac8d79a7987..8c5aaa523b01 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -321,6 +321,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -466,6 +467,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 		case e1000_pch_tgp:
 		case e1000_pch_adp:
 		case e1000_pch_mtp:
+		case e1000_pch_lnp:
 			/* In case the PHY needs to be in mdio slow mode,
 			 * set slow mode and try to get the PHY id again.
 			 */
@@ -711,6 +713,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 	case e1000_pchlan:
 		/* check management mode */
 		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
@@ -1663,6 +1666,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		rc = e1000_init_phy_params_pchlan(hw);
 		break;
 	default:
@@ -2118,6 +2122,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
 		break;
 	default:
@@ -3162,6 +3167,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		bank1_offset = nvm->flash_bank_size;
 		act_offset = E1000_ICH_NVM_SIG_WORD;
 
@@ -4101,6 +4107,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		word = NVM_COMPAT;
 		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f1c9debd9f3b..ecbe91cb95ed 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3550,6 +3550,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
 			incperiod = INCPERIOD_24MHZ;
@@ -4068,6 +4069,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		fc->refresh_time = 0xFFFF;
 		fc->pause_time = 0xFFFF;
 
@@ -7855,6 +7857,10 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_cnp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index f3f671311855..41213baee050 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -298,6 +298,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
+	case e1000_pch_lnp:
 		if ((hw->mac.type < e1000_pch_lpt) ||
 		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
 			adapter->ptp_clock_info.max_adj = 24000000 - 1;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
