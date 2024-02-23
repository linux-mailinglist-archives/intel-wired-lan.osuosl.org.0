Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DE98616EB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 17:06:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0E1341CA8;
	Fri, 23 Feb 2024 16:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFmKnUWhkxxq; Fri, 23 Feb 2024 16:06:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C142441C94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708704400;
	bh=mQbF3P9wKta5XfpEGOrV6eIDrmtdxdpmpMKpWIDqJr0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pHmjBSpiuCJX9jm4uNuk/ab1Uc4kZt8uaLZSklD3XJiKBQDjhmHFKQHjDZsf0K/sP
	 t89wxQrgneRlxXD81UM3XIdQPLz3M9qDmxvDe2tlGkDuxN2+WTg0Es641n2AKmw6Jl
	 efpcT6x6E0esdYYf1UdfmE6rY7br0GVhvKro7ZXQx3Qqty/HZuvZmD5if1i1aVs0pS
	 4Bi7OvdsAV/PsMtEtvNkcWuVAY7SxYVWjcQE0CBwf8Wgx+tElUVlkKv6HlfEaNtXt5
	 SneUYhuGQ3xXVWxhUdFazyxnx2ySgr4jr+3jJ/plsfCIi1/yPa3uGNdHKcIjJ78AMK
	 KyguvKUgwOdAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C142441C94;
	Fri, 23 Feb 2024 16:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7218C1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F64960909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pj4rlR8okKfc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 16:06:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9EDD6608D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EDD6608D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EDD6608D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 16:06:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="14454670"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="14454670"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 08:06:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="6161961"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa006.fm.intel.com with ESMTP; 23 Feb 2024 08:06:35 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Feb 2024 17:06:27 +0100
Message-Id: <20240223160629.729433-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
References: <20240223160629.729433-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708704397; x=1740240397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BW7wwqyKxArUwiSHVbXejxxx5q8h4BjX8WMNFKPPFU4=;
 b=Rf1LeraQmZlAKxP7Leot8C02af24vEdD6rLn13yt60WgKF2L7rvw4m3S
 U6OSI5YIMSF4c5UmMg1n4xa0bO3/l7RUTea6L++cjycd29LvUN2Gu6BJD
 rMELxjWieNhkWJxfJx1XBPvpmq727YbcrloSrqxvVKgcrDY5h+Rremu4n
 FePJqvmmXTDKcnNcu2y5I1R47Gqxk6LgvOfbMChM1BHKIXbNzZo7XfoGN
 dgHAeBCbRF2cMdWbEpRmAyfn6wCa2FqDcS2YobJ5XmBwp8UH27XJ/nmQP
 TLnmoLEaYTZgLtF/Q7H1Ofcfrdnif+ABCU3jlPUy0aPtrnmJwIlk121YR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rf1LeraQ
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] ice: do not disable Tx
 queues twice in ice_down()
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_down() clears QINT_TQCTL_CAUSE_ENA_M bit twice, which is not
necessary. First clearing happens in ice_vsi_dis_irq() and second in
ice_vsi_stop_tx_ring() - remove the first one.

While at it, make ice_vsi_dis_irq() static as ice_down() is the only
current caller of it.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 55 -----------------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  2 -
 drivers/net/ethernet/intel/ice/ice_main.c | 44 ++++++++++++++++++
 3 files changed, 44 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 9be724291ef8..9323bc1d4bdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2848,61 +2848,6 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 	}
 }
 
-/**
- * ice_vsi_dis_irq - Mask off queue interrupt generation on the VSI
- * @vsi: the VSI being un-configured
- */
-void ice_vsi_dis_irq(struct ice_vsi *vsi)
-{
-	struct ice_pf *pf = vsi->back;
-	struct ice_hw *hw = &pf->hw;
-	u32 val;
-	int i;
-
-	/* disable interrupt causation from each queue */
-	if (vsi->tx_rings) {
-		ice_for_each_txq(vsi, i) {
-			if (vsi->tx_rings[i]) {
-				u16 reg;
-
-				reg = vsi->tx_rings[i]->reg_idx;
-				val = rd32(hw, QINT_TQCTL(reg));
-				val &= ~QINT_TQCTL_CAUSE_ENA_M;
-				wr32(hw, QINT_TQCTL(reg), val);
-			}
-		}
-	}
-
-	if (vsi->rx_rings) {
-		ice_for_each_rxq(vsi, i) {
-			if (vsi->rx_rings[i]) {
-				u16 reg;
-
-				reg = vsi->rx_rings[i]->reg_idx;
-				val = rd32(hw, QINT_RQCTL(reg));
-				val &= ~QINT_RQCTL_CAUSE_ENA_M;
-				wr32(hw, QINT_RQCTL(reg), val);
-			}
-		}
-	}
-
-	/* disable each interrupt */
-	ice_for_each_q_vector(vsi, i) {
-		if (!vsi->q_vectors[i])
-			continue;
-		wr32(hw, GLINT_DYN_CTL(vsi->q_vectors[i]->reg_idx), 0);
-	}
-
-	ice_flush(hw);
-
-	/* don't call synchronize_irq() for VF's from the host */
-	if (vsi->type == ICE_VSI_VF)
-		return;
-
-	ice_for_each_q_vector(vsi, i)
-		synchronize_irq(vsi->q_vectors[i]->irq.virq);
-}
-
 /**
  * ice_queue_set_napi - Set the napi instance for the queue
  * @dev: device to which NAPI and queue belong
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 71bd27244941..c394fe9abba4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -114,8 +114,6 @@ void
 ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio,
 			bool ena_ts);
 
-void ice_vsi_dis_irq(struct ice_vsi *vsi);
-
 void ice_vsi_free_irq(struct ice_vsi *vsi);
 
 void ice_vsi_free_rx_rings(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index dd4a9bc0dfdc..2358977324fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7059,6 +7059,50 @@ static void ice_napi_disable_all(struct ice_vsi *vsi)
 	}
 }
 
+/**
+ * ice_vsi_dis_irq - Mask off queue interrupt generation on the VSI
+ * @vsi: the VSI being un-configured
+ */
+static void ice_vsi_dis_irq(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u32 val;
+	int i;
+
+	/* disable interrupt causation from each Rx queue; Tx queues are
+	 * handled in ice_vsi_stop_tx_ring()
+	 */
+	if (vsi->rx_rings) {
+		ice_for_each_rxq(vsi, i) {
+			if (vsi->rx_rings[i]) {
+				u16 reg;
+
+				reg = vsi->rx_rings[i]->reg_idx;
+				val = rd32(hw, QINT_RQCTL(reg));
+				val &= ~QINT_RQCTL_CAUSE_ENA_M;
+				wr32(hw, QINT_RQCTL(reg), val);
+			}
+		}
+	}
+
+	/* disable each interrupt */
+	ice_for_each_q_vector(vsi, i) {
+		if (!vsi->q_vectors[i])
+			continue;
+		wr32(hw, GLINT_DYN_CTL(vsi->q_vectors[i]->reg_idx), 0);
+	}
+
+	ice_flush(hw);
+
+	/* don't call synchronize_irq() for VF's from the host */
+	if (vsi->type == ICE_VSI_VF)
+		return;
+
+	ice_for_each_q_vector(vsi, i)
+		synchronize_irq(vsi->q_vectors[i]->irq.virq);
+}
+
 /**
  * ice_down - Shutdown the connection
  * @vsi: The VSI being stopped
-- 
2.34.1

