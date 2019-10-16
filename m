Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D81A5D8A87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2019 10:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4792C23077;
	Wed, 16 Oct 2019 08:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mmXFAn+Kchqz; Wed, 16 Oct 2019 08:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 161DE23018;
	Wed, 16 Oct 2019 08:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38C691BF82B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 08:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 33184204D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 08:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Irk2vzg2JTqI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2019 08:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 560D6204A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 08:08:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 01:08:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="202007078"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Oct 2019 01:08:38 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Oct 2019 11:08:38 +0300
Message-Id: <20191016080838.25648-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Tiger Lake
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
available on the next Intel Client platform (Tiger Lake)
This patch provides the initial support for these devices

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 4 +++-
 drivers/net/ethernet/intel/e1000e/hw.h      | 6 ++++++
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 8 ++++++++
 drivers/net/ethernet/intel/e1000e/ptp.c     | 2 ++
 5 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index de8c5818a305..adce7e319b9e 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -894,8 +894,9 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	case e1000_pch2lan:
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
-		/* fall through */
 	case e1000_pch_cnp:
+		/* fall through */
+	case e1000_pch_tgp:
 		mask |= BIT(18);
 		break;
 	default:
@@ -1559,6 +1560,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 	switch (hw->mac.type) {
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		fext_nvm11 = er32(FEXTNVM11);
 		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
 		ew32(FEXTNVM11, fext_nvm11);
diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 11fdc27faa82..f556163481cb 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -92,6 +92,11 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_CMP_I219_V11		0x0D4D
 #define E1000_DEV_ID_PCH_CMP_I219_LM12		0x0D53
 #define E1000_DEV_ID_PCH_CMP_I219_V12		0x0D55
+#define E1000_DEV_ID_PCH_TGP_I219_LM13		0x15FB
+#define E1000_DEV_ID_PCH_TGP_I219_V13		0x15FC
+#define E1000_DEV_ID_PCH_TGP_I219_LM14		0x15F9
+#define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
+#define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
 
 #define E1000_REVISION_4	4
 
@@ -115,6 +120,7 @@ enum e1000_mac_type {
 	e1000_pch_lpt,
 	e1000_pch_spt,
 	e1000_pch_cnp,
+	e1000_pch_tgp,
 };
 
 enum e1000_media_type {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index a1fab77b2096..b4135c50e905 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -316,6 +316,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -458,6 +459,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 		case e1000_pch_lpt:
 		case e1000_pch_spt:
 		case e1000_pch_cnp:
+		case e1000_pch_tgp:
 			/* In case the PHY needs to be in mdio slow mode,
 			 * set slow mode and try to get the PHY id again.
 			 */
@@ -700,6 +702,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 	case e1000_pchlan:
 		/* check management mode */
 		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
@@ -1638,6 +1641,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		rc = e1000_init_phy_params_pchlan(hw);
 		break;
 	default:
@@ -2090,6 +2094,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
 		break;
 	default:
@@ -3127,6 +3132,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 	switch (hw->mac.type) {
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		bank1_offset = nvm->flash_bank_size;
 		act_offset = E1000_ICH_NVM_SIG_WORD;
 
@@ -4070,6 +4076,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		word = NVM_COMPAT;
 		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 2dedeed74cd4..f73253b53469 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3538,6 +3538,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 		adapter->cc.shift = shift;
 		break;
 	case e1000_pch_cnp:
+	case e1000_pch_tgp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
 			incperiod = INCPERIOD_24MHZ;
@@ -4049,6 +4050,8 @@ void e1000e_reset(struct e1000_adapter *adapter)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+		/* fall-through */
+	case e1000_pch_tgp:
 		fc->refresh_time = 0xFFFF;
 		fc->pause_time = 0xFFFF;
 
@@ -7759,6 +7762,11 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V11), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_LM12), board_pch_spt },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V12), board_pch_spt },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM13), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V13), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_cnp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 1a4c65d9feb4..eaa5a0fb99f0 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -295,6 +295,8 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
+		/* fall-through */
+	case e1000_pch_tgp:
 		if ((hw->mac.type < e1000_pch_lpt) ||
 		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
 			adapter->ptp_clock_info.max_adj = 24000000 - 1;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
