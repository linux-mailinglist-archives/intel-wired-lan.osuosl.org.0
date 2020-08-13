Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2002435FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Aug 2020 10:34:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38D5F22775;
	Thu, 13 Aug 2020 08:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BVC-MgAU5Z4Q; Thu, 13 Aug 2020 08:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D728721548;
	Thu, 13 Aug 2020 08:34:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C67471BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 08:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41B5B864D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 08:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nGEyPk5MwGcK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Aug 2020 08:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2130586294
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Aug 2020 08:34:11 +0000 (UTC)
IronPort-SDR: fo3iRtwWwBS+uXB2hqrJxTHOEun0tWCIW7nb5IX+F/wt1vnHqAp2NDNVjZ7xUVCajTYcUG3cPV
 A0bfVk/fTJWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9711"; a="218518994"
X-IronPort-AV: E=Sophos;i="5.76,307,1592895600"; d="scan'208";a="218518994"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 01:34:10 -0700
IronPort-SDR: BEDPyiY5Xney56yGCSZUS+smWrxRlBIPPXClkcA7/d+uBSKCkZzwPjluyTvGA7b9JGWcnNiM1k
 kOj2K52tFqzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,307,1592895600"; d="scan'208";a="295359278"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.161.198])
 by orsmga006.jf.intel.com with ESMTP; 13 Aug 2020 01:34:09 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Aug 2020 11:34:06 +0300
Message-Id: <20200813083406.2857904-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.18.4
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for Meteor Lake
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add devices ID's for the next LOM generations that will be
available on the next Intel Client platform (Meteor Lake)
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
index 64f684dc6c7a..e570de91a09b 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -895,6 +895,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		mask |= BIT(18);
 		break;
 	default:
@@ -1560,6 +1561,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		fext_nvm11 = er32(FEXTNVM11);
 		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
 		ew32(FEXTNVM11, fext_nvm11);
diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index b1447221669e..69a2329ea463 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -102,6 +102,10 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_ADP_I219_V16		0x1A1F
 #define E1000_DEV_ID_PCH_ADP_I219_LM17		0x1A1C
 #define E1000_DEV_ID_PCH_ADP_I219_V17		0x1A1D
+#define E1000_DEV_ID_PCH_MTP_I219_LM18		0x550A
+#define E1000_DEV_ID_PCH_MTP_I219_V18		0x550B
+#define E1000_DEV_ID_PCH_MTP_I219_LM19		0x550C
+#define E1000_DEV_ID_PCH_MTP_I219_V19		0x550D
 
 #define E1000_REVISION_4	4
 
@@ -127,6 +131,7 @@ enum e1000_mac_type {
 	e1000_pch_cnp,
 	e1000_pch_tgp,
 	e1000_pch_adp,
+	e1000_pch_mtp,
 };
 
 enum e1000_media_type {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 3956a0cdd989..1fa1436032b5 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -321,6 +321,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -465,6 +466,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 		case e1000_pch_cnp:
 		case e1000_pch_tgp:
 		case e1000_pch_adp:
+		case e1000_pch_mtp:
 			/* In case the PHY needs to be in mdio slow mode,
 			 * set slow mode and try to get the PHY id again.
 			 */
@@ -709,6 +711,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 	case e1000_pchlan:
 		/* check management mode */
 		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
@@ -1649,6 +1652,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		rc = e1000_init_phy_params_pchlan(hw);
 		break;
 	default:
@@ -2103,6 +2107,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
 		break;
 	default:
@@ -3142,6 +3147,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		bank1_offset = nvm->flash_bank_size;
 		act_offset = E1000_ICH_NVM_SIG_WORD;
 
@@ -4087,6 +4093,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		word = NVM_COMPAT;
 		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 63dde3bcf5bc..ee6a5f0cb16c 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3570,6 +3570,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
 			incperiod = INCPERIOD_24MHZ;
@@ -4082,6 +4083,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 		fallthrough;
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		fc->refresh_time = 0xFFFF;
 		fc->pause_time = 0xFFFF;
 
@@ -7854,6 +7856,10 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_cnp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 34b988d70488..b0c7a0cff98d 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -297,6 +297,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
+	case e1000_pch_mtp:
 		if ((hw->mac.type < e1000_pch_lpt) ||
 		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
 			adapter->ptp_clock_info.max_adj = 24000000 - 1;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
