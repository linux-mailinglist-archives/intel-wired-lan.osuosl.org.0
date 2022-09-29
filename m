Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A41D5EF007
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 10:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4816E82F76;
	Thu, 29 Sep 2022 08:09:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4816E82F76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664438951;
	bh=eYevXJdCe/chKj0ufKOcdHXvRLLhB4s3k4shDs1oWwY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ll+I1X+eMAC5gosCrpTVva6OJGDQ5ENIiqZX3M+3bXJ0cMXIpjyDA162e4NEFxIcj
	 MyGfPRzm72rz90QaSkXx14EhZefIePsfUwDPj0si7sbEUpFLBc0X30+o8Ns8h+hiJe
	 4gaxWA6C3+3+gkRqdcZSosZBRzhusEOk44bKF69ZmrQ9MEyWoqMG9gIIZcrA+aiAAR
	 N6viGabYbrDAMb0oi0xyIvxCFUC/KSdUxj5uLLfXRXDj1OtUxZDRGmNi7cnZPzg9I0
	 OTz/uqW+uuf6lWUtb5sWg/MHTdn5yQ4Haz9leg2mz7WIaXsucNsVurCLqffVGX75WG
	 UBe9Ka0M5y/xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyX5hZLA86W3; Thu, 29 Sep 2022 08:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE1E082F6F;
	Thu, 29 Sep 2022 08:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE1E082F6F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56DDD1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 08:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DC9682F76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 08:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DC9682F76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9ySMRjgCeQA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 08:09:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4003182F49
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4003182F49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 08:09:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="300545219"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="300545219"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 01:09:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="764621716"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="764621716"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2022 01:09:02 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Sep 2022 11:08:59 +0300
Message-Id: <20220929080859.2912497-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664438944; x=1695974944;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=koADB5agfcB1t23ynlI7tRNAlTb72Fal651f+2MnP8U=;
 b=C6iQ2HUqJ3/kqc+1PuIo+ur7av++v2PJ9wn/gv6hCWmGMU08qWiPXDYy
 tQ9Vo6FxTHRof3hx94BOl2C/fHw6lC4Fx3HCTns5OjoqgF44hCtqv+Qrx
 Tsk6Xp4sOnIoR4NCx+zksFtICSSBp0TDCIa+uSQ2tqBnXb9G8mNhzx/eg
 KpBUKYTlRgoy8loOjTfFIBpEXXVDz6d6HScIBAx3QRxhoQCaOO0yhkjVZ
 tuT5ht9TJalB7FgzRcOOGHK4QFta4YZ/SyW3vxD6vgvpe/vxmPsav6+rS
 //2OP7dlCnnG8jysKsVudE6FsKjpVeE2o5jMCpz1lJY5sqgj/kCdWNsnC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C6iQ2HUq
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for the next
 LOM generation
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

Add devices IDs for the next LOM generations that will be available on the
next Intel Client platforms.
This patch provides the initial support for these devices.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c |  2 ++
 drivers/net/ethernet/intel/e1000e/hw.h      |  9 +++++++++
 drivers/net/ethernet/intel/e1000e/ich8lan.c |  7 +++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++++++
 drivers/net/ethernet/intel/e1000e/ptp.c     |  1 +
 5 files changed, 29 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 51a5afe9df2f..59e82d131d88 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -908,6 +908,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		mask |= BIT(18);
 		break;
 	default:
@@ -1575,6 +1576,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		fext_nvm11 = er32(FEXTNVM11);
 		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
 		ew32(FEXTNVM11, fext_nvm11);
diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index bcf680e83811..29f9fae35f42 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -114,6 +114,14 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_LNP_I219_V20		0x550F
 #define E1000_DEV_ID_PCH_LNP_I219_LM21		0x5510
 #define E1000_DEV_ID_PCH_LNP_I219_V21		0x5511
+#define E1000_DEV_ID_PCH_ARL_I219_LM24		0x57A0
+#define E1000_DEV_ID_PCH_ARL_I219_V24		0x57A1
+#define E1000_DEV_ID_PCH_PTP_I219_LM25		0x57B3
+#define E1000_DEV_ID_PCH_PTP_I219_V25		0x57B4
+#define E1000_DEV_ID_PCH_PTP_I219_LM26		0x57B5
+#define E1000_DEV_ID_PCH_PTP_I219_V26		0x57B6
+#define E1000_DEV_ID_PCH_PTP_I219_LM27		0x57B7
+#define E1000_DEV_ID_PCH_PTP_I219_V27		0x57B8
 
 #define E1000_REVISION_4	4
 
@@ -141,6 +149,7 @@ enum e1000_mac_type {
 	e1000_pch_adp,
 	e1000_pch_mtp,
 	e1000_pch_lnp,
+	e1000_pch_ptp,
 };
 
 enum e1000_media_type {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index e8f7cb9d8724..0c7fd10312c8 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -322,6 +322,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -468,6 +469,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 		case e1000_pch_adp:
 		case e1000_pch_mtp:
 		case e1000_pch_lnp:
+		case e1000_pch_ptp:
 			/* In case the PHY needs to be in mdio slow mode,
 			 * set slow mode and try to get the PHY id again.
 			 */
@@ -714,6 +716,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 	case e1000_pchlan:
 		/* check management mode */
 		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
@@ -1681,6 +1684,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		rc = e1000_init_phy_params_pchlan(hw);
 		break;
 	default:
@@ -2137,6 +2141,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
 		break;
 	default:
@@ -3182,6 +3187,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		bank1_offset = nvm->flash_bank_size;
 		act_offset = E1000_ICH_NVM_SIG_WORD;
 
@@ -4122,6 +4128,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		word = NVM_COMPAT;
 		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 91f8b70639c0..edf9d4e47328 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3555,6 +3555,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
 			incperiod = INCPERIOD_24MHZ;
@@ -4070,6 +4071,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		fc->refresh_time = 0xFFFF;
 		fc->pause_time = 0xFFFF;
 
@@ -7922,6 +7924,14 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V21), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_LM24), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ARL_I219_V24), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM25), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V25), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM26), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V26), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27), board_pch_mtp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 0e488e4fa5c1..dadf247d5439 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -297,6 +297,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_adp:
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
+	case e1000_pch_ptp:
 		if ((hw->mac.type < e1000_pch_lpt) ||
 		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
 			adapter->ptp_clock_info.max_adj = 24000000 - 1;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
