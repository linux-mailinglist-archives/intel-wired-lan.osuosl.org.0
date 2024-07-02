Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F489249FF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 23:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B203605D9;
	Tue,  2 Jul 2024 21:39:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FCjx7IbPI4II; Tue,  2 Jul 2024 21:39:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7894F60BF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719956344;
	bh=lCVbbOn2HIPGqTGtAkrmLepM+LQ11eHzgdkAIKJTAC4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MN3V7tNO0VPVgjFhsIdyOOAf6EVAgsYYsIuWPuGIE9qrTcmdph2M08GFCok7HI/CQ
	 tdJa/VBaKDt8fGPMqBOhwBIPSEoq50wQNb6lc2yHP5UwqAuo0kZU6Fh0ny/2t/Qe0P
	 MeTkOC9uXBeqreL/8DAe5C2DjD/1oLCC7UNoqS27WLibjAf7sjdE+7jjZg6yYVtcvt
	 IzzenQ3oT7zurO01Dcrj2B+gbJ2wI5ENa/n6vwe4GVcH/9Eyo8iW40WNTTxLGPwqkm
	 o8ohslqmmXWJU5+R6/G+DUXLrRuQyTJGK8dzDyr50XF/QY4wWerzL8fDMnYOdL7nSM
	 UJY/TXyS+9Sbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7894F60BF3;
	Tue,  2 Jul 2024 21:39:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F60E1BF301
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 21:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AB1E80F53
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 21:39:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TPnmP8GHRvWS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 21:39:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA3A580E91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA3A580E91
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA3A580E91
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 21:38:58 +0000 (UTC)
X-CSE-ConnectionGUID: u26vRFcmQCStBfuESwPPtw==
X-CSE-MsgGUID: MTU5iXwrRWGluALjhThEhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="28550557"
X-IronPort-AV: E=Sophos;i="6.09,180,1716274800"; d="scan'208";a="28550557"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 14:38:59 -0700
X-CSE-ConnectionGUID: fFKZyTvUQe+I8yYhzIvEUg==
X-CSE-MsgGUID: p5b6jI0JSfiLBH13SrGcfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,180,1716274800"; d="scan'208";a="46093829"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by fmviesa010.fm.intel.com with ESMTP; 02 Jul 2024 14:38:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 14:38:46 -0700
Message-ID: <20240702213847.2607508-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719956340; x=1751492340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BY5hwhcpE37pxq/X6ecBfaFvvcJpnYryH56eLJZKpOQ=;
 b=ZhKCGeiExJdcRub/R0uYCJZzWvHNvvun/Z/irbXy1pRTZxuqQ1L6r4BB
 oJv5Pv0LFqX3HG5u1PUmxVmKcnK1/rHEYTCK9DlAqbtmSAwAkvLLKxR1a
 rsHFyquzvbSLHJyTjjZuCOaLnAMG9bgbB/o9kBhrFf42BDoWUV4v/JgnL
 0cferI3IHxzdPSy81YXOmm/AXe47xIsqHwWD35eiwQo0vpoedkaeIiCXE
 RhlcIsJtb0vL2A3gnjG8Qhr/y7XlbgS2Raurf7IX4Vjw8nbQkF6qAXB4U
 30l/r1boKNSNmqinZ8PocRj76L4CU0MbfHKVPsbUPIxMSOXrPGHw9XawR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZhKCGeiE
Subject: [Intel-wired-lan] [PATCH iwl-next] net: intel: Remove MODULE_AUTHORs
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We are moving away from the Sourceforge email address. Rather than
removing or updating the email for the affected entries, remove the
MODULE_AUTHOR altogether as its usage is incorrect [1].

Link: https://lore.kernel.org/netdev/20200626115236.7f36d379@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com/ [1]
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com> # libeth, libie
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/e100.c                 | 1 -
 drivers/net/ethernet/intel/e1000/e1000_main.c     | 1 -
 drivers/net/ethernet/intel/e1000e/netdev.c        | 1 -
 drivers/net/ethernet/intel/fm10k/fm10k_main.c     | 1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c       | 1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c       | 1 -
 drivers/net/ethernet/intel/ice/ice_main.c         | 1 -
 drivers/net/ethernet/intel/igb/igb_main.c         | 1 -
 drivers/net/ethernet/intel/igbvf/netdev.c         | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c         | 1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 1 -
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 1 -
 drivers/net/ethernet/intel/libeth/rx.c            | 1 -
 drivers/net/ethernet/intel/libie/rx.c             | 1 -
 14 files changed, 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 9b068d40778d..aa139b67a55b 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -161,7 +161,6 @@
 #define FIRMWARE_D102E		"e100/d102e_ucode.bin"
 
 MODULE_DESCRIPTION(DRV_DESCRIPTION);
-MODULE_AUTHOR(DRV_COPYRIGHT);
 MODULE_LICENSE("GPL v2");
 MODULE_FIRMWARE(FIRMWARE_D101M);
 MODULE_FIRMWARE(FIRMWARE_D101S);
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 60fff9a6c53e..ab7ae418d294 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -187,7 +187,6 @@ static struct pci_driver e1000_driver = {
 	.err_handler = &e1000_err_handler
 };
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) PRO/1000 Network Driver");
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 3cd161c6672b..360ee26557f7 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7969,7 +7969,6 @@ static void __exit e1000_exit_module(void)
 }
 module_exit(e1000_exit_module);
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) PRO/1000 Network Driver");
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index fc373472e4e1..142f07ca8bc0 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -17,7 +17,6 @@ static const char fm10k_driver_string[] = DRV_SUMMARY;
 static const char fm10k_copyright[] =
 	"Copyright(c) 2013 - 2019 Intel Corporation.";
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 310513d9321b..cbcfada7b357 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -98,7 +98,6 @@ static int debug = -1;
 module_param(debug, uint, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all), Debug mask (0x8XXXXXXX)");
 
-MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Ethernet Connection XL710 Network Driver");
 MODULE_IMPORT_NS(LIBIE);
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f46865f2ab56..d012ade3324a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -45,7 +45,6 @@ static const struct pci_device_id iavf_pci_tbl[] = {
 MODULE_DEVICE_TABLE(pci, iavf_pci_tbl);
 
 MODULE_ALIAS("i40evf");
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) Ethernet Adaptive Virtual Function Network Driver");
 MODULE_IMPORT_NS(LIBETH);
 MODULE_IMPORT_NS(LIBIE);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 59c4264d8f9b..e2990993b16f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -36,7 +36,6 @@ static const char ice_copyright[] = "Copyright (c) 2018, Intel Corporation.";
 #define ICE_DDP_PKG_PATH	"intel/ice/ddp/"
 #define ICE_DDP_PKG_FILE	ICE_DDP_PKG_PATH "ice.pkg"
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS(LIBIE);
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 3af03a211c3c..11be39f435f3 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -203,7 +203,6 @@ static const struct pci_error_handlers igb_err_handler = {
 
 static void igb_init_dmac(struct igb_adapter *adapter, u32 pba);
 
-MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Gigabit Ethernet Network Driver");
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 7661edd7d0f2..925d7286a8ee 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -3001,7 +3001,6 @@ static void __exit igbvf_exit_module(void)
 }
 module_exit(igbvf_exit_module);
 
-MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Gigabit Virtual Function Network Driver");
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 13a7782a211b..19e20844e472 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -32,7 +32,6 @@
 
 static int debug = -1;
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
 module_param(debug, int, 0);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 094653e81b97..8057cef61f39 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -162,7 +162,6 @@ static int debug = -1;
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit PCI Express Network Driver");
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index b938dc06045d..149911e3002a 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -76,7 +76,6 @@ static const struct pci_device_id ixgbevf_pci_tbl[] = {
 };
 MODULE_DEVICE_TABLE(pci, ixgbevf_pci_tbl);
 
-MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit Virtual Function Network Driver");
 MODULE_LICENSE("GPL v2");
 
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index d0b158b6e55b..f20926669318 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -255,6 +255,5 @@ EXPORT_SYMBOL_NS_GPL(libeth_rx_pt_gen_hash_type, LIBETH);
 
 /* Module */
 
-MODULE_AUTHOR("Intel Corporation");
 MODULE_DESCRIPTION("Common Ethernet library");
 MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index 38201ee1e891..aceb8d8813c4 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -118,7 +118,6 @@ const struct libeth_rx_pt libie_rx_pt_lut[LIBIE_RX_PT_NUM] = {
 };
 EXPORT_SYMBOL_NS_GPL(libie_rx_pt_lut, LIBIE);
 
-MODULE_AUTHOR("Intel Corporation");
 MODULE_DESCRIPTION("Intel(R) Ethernet common library");
 MODULE_IMPORT_NS(LIBETH);
 MODULE_LICENSE("GPL");
-- 
2.41.0

