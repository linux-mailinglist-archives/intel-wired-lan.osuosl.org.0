Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF8762C5C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 01:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C9B085BEC;
	Mon,  8 Jul 2019 23:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V_S8UrTrXuzu; Mon,  8 Jul 2019 23:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23B1785B5B;
	Mon,  8 Jul 2019 23:12:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6B3C1BF967
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A438920356
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNkOc3iNbN1c for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 56435214F6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:12:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="192484784"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2019 16:12:39 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  8 Jul 2019 16:12:22 -0700
Message-Id: <20190708231236.20516-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
In-Reply-To: <20190708231236.20516-1-jacob.e.keller@intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 05/19] fm10k: reduce the scope of the
 q_idx local variable
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

Reduce the scope of the q_idx local variable in the fm10k_cache_ring_qos
function.

This was detected by cppcheck and resolves the following style warning
produced by that tool:

[fm10k_main.c:2016]: (style) The scope of the variable 'q_idx' can be
reduced.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_main.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 90270b4a1682..3bacf35fbfad 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #include <linux/types.h>
 #include <linux/module.h>
@@ -17,7 +17,7 @@ const char fm10k_driver_version[] = DRV_VERSION;
 char fm10k_driver_name[] = "fm10k";
 static const char fm10k_driver_string[] = DRV_SUMMARY;
 static const char fm10k_copyright[] =
-	"Copyright(c) 2013 - 2018 Intel Corporation.";
+	"Copyright(c) 2013 - 2019 Intel Corporation.";
 
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
@@ -1869,7 +1869,7 @@ static int fm10k_init_msix_capability(struct fm10k_intfc *interface)
 static bool fm10k_cache_ring_qos(struct fm10k_intfc *interface)
 {
 	struct net_device *dev = interface->netdev;
-	int pc, offset, rss_i, i, q_idx;
+	int pc, offset, rss_i, i;
 	u16 pc_stride = interface->ring_feature[RING_F_QOS].mask + 1;
 	u8 num_pcs = netdev_get_num_tc(dev);
 
@@ -1879,7 +1879,8 @@ static bool fm10k_cache_ring_qos(struct fm10k_intfc *interface)
 	rss_i = interface->ring_feature[RING_F_RSS].indices;
 
 	for (pc = 0, offset = 0; pc < num_pcs; pc++, offset += rss_i) {
-		q_idx = pc;
+		int q_idx = pc;
+
 		for (i = 0; i < rss_i; i++) {
 			interface->tx_ring[offset + i]->reg_idx = q_idx;
 			interface->tx_ring[offset + i]->qos_pc = pc;
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
