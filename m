Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC861758218
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 18:29:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8915A403B4;
	Tue, 18 Jul 2023 16:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8915A403B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689697755;
	bh=pnIjr8gZppDIRljZofQX84udV9WlnPim+zdm41MDbWU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aByKn1nELVW5uVCHNYJiZGVILzxlsfQ0fmD+XbfE+AEDJ1qYidEDNbAk2sPTSOAKC
	 tYaj7q1zy2CLyGGLuCZfvIQc9SWYqEh0ADFHveqE6zIlQA8jQnNaGLtLOehNgALw2l
	 JQ1INuA1GBdvDlL2fYxS+uzC83FZZB/NzCuPQG83V4xGMCfa1NituDBSfnDmdTm0kl
	 ntGRGQsDT6d/iQiUTVspcOBoGBlpdiNVoFf9i3A9A3g6Zpy2orPxWdel0xYdsLuy1V
	 yMXoCBUDpOgZ3wcsBykJtmm+qBUvKMK84aEigumUqBj3Xsc3KV3h2HbVLTPx+z3VTd
	 xzcPGCcXVSnyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guGe3El3NbID; Tue, 18 Jul 2023 16:29:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB0E14054A;
	Tue, 18 Jul 2023 16:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB0E14054A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18F991BF31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 16:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDA7841487
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 16:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDA7841487
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gp95piFrUGg7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 16:29:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 828E541481
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 828E541481
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 16:29:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="368895647"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="368895647"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 09:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970294628"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="970294628"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jul 2023 09:29:04 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jul 2023 19:28:57 +0300
Message-Id: <20230718162857.3566306-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689697746; x=1721233746;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3m9ZTqf5wpxYlpl9X8GblpH0N8npC++C9IolVfIsGfw=;
 b=XNBkuQRH8stDVZbf2ppstU14YIriV2eLUyo1B3srsOFKsbuTXUp+mM1A
 F5GgdeKua6GbvZsPsWBUqNzi2u7hRjTwZNJWHnY/JX+cts9Gn2tAG0zI1
 9SJGDe2e4zMOburM2P7zSeR8k94klrS2A6gS+W98ev0BEgvcpZJoaUBzz
 15zYnGdZeIzxIKNewYH25tcMrRyVcW2yuLZbVgII3LAPERgCAicLdqJfZ
 OLKu9vDk7l/kR+hAwXs/T+wNaR8+XcXz34Y+r3oc8Y5sjuPbZ0vhubinw
 9L/mLZi0IFzG/FtZDJX7KiSNWxjz8UoqkTeMsKfha5niIab7qExQZrwI+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XNBkuQRH
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Add support for
 the next LOM generation
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
next Intel Client platforms. This patch provides the initial support for
these devices.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
 drivers/net/ethernet/intel/e1000e/hw.h      | 3 +++
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 4 ++++
 drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
 5 files changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 721f86fd5802..9835e6a90d56 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -917,6 +917,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		mask |= BIT(18);
 		break;
 	default:
@@ -1585,6 +1586,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		fext_nvm11 = er32(FEXTNVM11);
 		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
 		ew32(FEXTNVM11, fext_nvm11);
diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 29f9fae35f42..1fef6bb5a5fb 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -122,6 +122,8 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_PTP_I219_V26		0x57B6
 #define E1000_DEV_ID_PCH_PTP_I219_LM27		0x57B7
 #define E1000_DEV_ID_PCH_PTP_I219_V27		0x57B8
+#define E1000_DEV_ID_PCH_NVL_I219_LM29		0x57B9
+#define E1000_DEV_ID_PCH_NVL_I219_V29		0x57BA
 
 #define E1000_REVISION_4	4
 
@@ -150,6 +152,7 @@ enum e1000_mac_type {
 	e1000_pch_mtp,
 	e1000_pch_lnp,
 	e1000_pch_ptp,
+	e1000_pch_nvp,
 };
 
 enum e1000_media_type {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 0c7fd10312c8..39e9fc601bf5 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -323,6 +323,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
 
@@ -470,6 +471,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 		case e1000_pch_mtp:
 		case e1000_pch_lnp:
 		case e1000_pch_ptp:
+		case e1000_pch_nvp:
 			/* In case the PHY needs to be in mdio slow mode,
 			 * set slow mode and try to get the PHY id again.
 			 */
@@ -717,6 +719,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 	case e1000_pchlan:
 		/* check management mode */
 		mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;
@@ -1685,6 +1688,7 @@ static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		rc = e1000_init_phy_params_pchlan(hw);
 		break;
 	default:
@@ -2142,6 +2146,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG_ICH8M;
 		break;
 	default:
@@ -3188,6 +3193,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		bank1_offset = nvm->flash_bank_size;
 		act_offset = E1000_ICH_NVM_SIG_WORD;
 
@@ -4129,6 +4135,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		word = NVM_COMPAT;
 		valid_csum_mask = NVM_COMPAT_VALID_CSUM;
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 18a5e73b8680..f536c856727c 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3545,6 +3545,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
 			/* Stable 24MHz frequency */
 			incperiod = INCPERIOD_24MHZ;
@@ -4061,6 +4062,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		fc->refresh_time = 0xFFFF;
 		fc->pause_time = 0xFFFF;
 
@@ -7913,6 +7915,8 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V26), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_LM27), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_PTP_I219_V27), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_LM29), board_pch_mtp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_NVL_I219_V29), board_pch_mtp },
 
 	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
 };
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index def4566a916f..02d871bc112a 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -288,6 +288,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_mtp:
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
+	case e1000_pch_nvp:
 		if ((hw->mac.type < e1000_pch_lpt) ||
 		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
 			adapter->ptp_clock_info.max_adj = 24000000 - 1;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
