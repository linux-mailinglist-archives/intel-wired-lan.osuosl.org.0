Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC8462C69
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 01:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 32B0C20356;
	Mon,  8 Jul 2019 23:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 00tz3yWp68iO; Mon,  8 Jul 2019 23:12:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 65BE521511;
	Mon,  8 Jul 2019 23:12:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 418F81BF962
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 39C7A85B09
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYx3g34Ckzla for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A88D85A00
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2019 23:12:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:12:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="192484829"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jul 2019 16:12:41 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  8 Jul 2019 16:12:35 -0700
Message-Id: <20190708231236.20516-19-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.22.0.214.g8dca754b1e87
In-Reply-To: <20190708231236.20516-1-jacob.e.keller@intel.com>
References: <20190708231236.20516-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 18/19] fm10k: convert NON_Q_VECTORS(hw)
 into NON_Q_VECTORS
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

The driver currently uses a macro to decide whether we should use
NON_Q_VECTORS_PF or NON_Q_VECTORS_VF.

However, we also define NON_Q_VECTORS_VF to the same value as
NON_Q_VECTORS_PF. This means that the macro NON_Q_VECTORS(hw) will
always return the same value.

Let's just remove this macro, and replace it directly with an enum value
on the enum non_q_vectors.

This was detected by cppcheck and fixes the following warnings when
building with BUILD=KERNEL

[fm10k_ethtool.c:1123]: (style) Same value in both branches of ternary
operator.

[fm10k_ethtool.c:1142]: (style) Same value in both branches of ternary
operator.

[fm10k_main.c:1826]: (style) Same value in both branches of ternary
operator.

[fm10k_main.c:1849]: (style) Same value in both branches of ternary
operator.

[fm10k_main.c:1858]: (style) Same value in both branches of ternary
operator.

[fm10k_pci.c:901]: (style) Same value in both branches of ternary
operator.

[fm10k_pci.c:1040]: (style) Same value in both branches of ternary
operator.

[fm10k_pci.c:1726]: (style) Same value in both branches of ternary
operator.

[fm10k_pci.c:1763]: (style) Same value in both branches of ternary
operator.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k.h         | 10 +++-------
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c |  6 ++----
 drivers/net/ethernet/intel/fm10k/fm10k_main.c    |  4 ++--
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c     |  9 ++++-----
 4 files changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index 7d42582ed48d..b14441944b4b 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2019 Intel Corporation. */
 
 #ifndef _FM10K_H_
 #define _FM10K_H_
@@ -177,14 +177,10 @@ static inline struct netdev_queue *txring_txq(const struct fm10k_ring *ring)
 #define MIN_Q_VECTORS	1
 enum fm10k_non_q_vectors {
 	FM10K_MBX_VECTOR,
-#define NON_Q_VECTORS_VF NON_Q_VECTORS_PF
-	NON_Q_VECTORS_PF
+	NON_Q_VECTORS
 };
 
-#define NON_Q_VECTORS(hw)	(((hw)->mac.type == fm10k_mac_pf) ? \
-						NON_Q_VECTORS_PF : \
-						NON_Q_VECTORS_VF)
-#define MIN_MSIX_COUNT(hw)	(MIN_Q_VECTORS + NON_Q_VECTORS(hw))
+#define MIN_MSIX_COUNT(hw)	(MIN_Q_VECTORS + NON_Q_VECTORS)
 
 struct fm10k_q_vector {
 	struct fm10k_intfc *interface;
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 1f7e4a8f4557..c681d2d28107 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -1114,13 +1114,12 @@ static void fm10k_get_channels(struct net_device *dev,
 			       struct ethtool_channels *ch)
 {
 	struct fm10k_intfc *interface = netdev_priv(dev);
-	struct fm10k_hw *hw = &interface->hw;
 
 	/* report maximum channels */
 	ch->max_combined = fm10k_max_channels(dev);
 
 	/* report info for other vector */
-	ch->max_other = NON_Q_VECTORS(hw);
+	ch->max_other = NON_Q_VECTORS;
 	ch->other_count = ch->max_other;
 
 	/* record RSS queues */
@@ -1132,14 +1131,13 @@ static int fm10k_set_channels(struct net_device *dev,
 {
 	struct fm10k_intfc *interface = netdev_priv(dev);
 	unsigned int count = ch->combined_count;
-	struct fm10k_hw *hw = &interface->hw;
 
 	/* verify they are not requesting separate vectors */
 	if (!count || ch->rx_count || ch->tx_count)
 		return -EINVAL;
 
 	/* verify other_count has not changed */
-	if (ch->other_count != NON_Q_VECTORS(hw))
+	if (ch->other_count != NON_Q_VECTORS)
 		return -EINVAL;
 
 	/* verify the number of channels does not exceed hardware limits */
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index cf87812bdf4a..701f83325c49 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -1823,7 +1823,7 @@ static int fm10k_init_msix_capability(struct fm10k_intfc *interface)
 	v_budget = min_t(u16, v_budget, num_online_cpus());
 
 	/* account for vectors not related to queues */
-	v_budget += NON_Q_VECTORS(hw);
+	v_budget += NON_Q_VECTORS;
 
 	/* At the same time, hardware can only support a maximum of
 	 * hw.mac->max_msix_vectors vectors.  With features
@@ -1855,7 +1855,7 @@ static int fm10k_init_msix_capability(struct fm10k_intfc *interface)
 	}
 
 	/* record the number of queues available for q_vectors */
-	interface->num_q_vectors = v_budget - NON_Q_VECTORS(hw);
+	interface->num_q_vectors = v_budget - NON_Q_VECTORS;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index 082e68354643..1dfa9eaea368 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -898,7 +898,7 @@ static void fm10k_configure_tx_ring(struct fm10k_intfc *interface,
 
 	/* Map interrupt */
 	if (ring->q_vector) {
-		txint = ring->q_vector->v_idx + NON_Q_VECTORS(hw);
+		txint = ring->q_vector->v_idx + NON_Q_VECTORS;
 		txint |= FM10K_INT_MAP_TIMER0;
 	}
 
@@ -1037,7 +1037,7 @@ static void fm10k_configure_rx_ring(struct fm10k_intfc *interface,
 
 	/* Map interrupt */
 	if (ring->q_vector) {
-		rxint = ring->q_vector->v_idx + NON_Q_VECTORS(hw);
+		rxint = ring->q_vector->v_idx + NON_Q_VECTORS;
 		rxint |= FM10K_INT_MAP_TIMER1;
 	}
 
@@ -1720,10 +1720,9 @@ int fm10k_mbx_request_irq(struct fm10k_intfc *interface)
 void fm10k_qv_free_irq(struct fm10k_intfc *interface)
 {
 	int vector = interface->num_q_vectors;
-	struct fm10k_hw *hw = &interface->hw;
 	struct msix_entry *entry;
 
-	entry = &interface->msix_entries[NON_Q_VECTORS(hw) + vector];
+	entry = &interface->msix_entries[NON_Q_VECTORS + vector];
 
 	while (vector) {
 		struct fm10k_q_vector *q_vector;
@@ -1760,7 +1759,7 @@ int fm10k_qv_request_irq(struct fm10k_intfc *interface)
 	unsigned int ri = 0, ti = 0;
 	int vector, err;
 
-	entry = &interface->msix_entries[NON_Q_VECTORS(hw)];
+	entry = &interface->msix_entries[NON_Q_VECTORS];
 
 	for (vector = 0; vector < interface->num_q_vectors; vector++) {
 		struct fm10k_q_vector *q_vector = interface->q_vector[vector];
-- 
2.22.0.214.g8dca754b1e87

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
