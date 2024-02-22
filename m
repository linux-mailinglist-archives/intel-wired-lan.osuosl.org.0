Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B35485FB95
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 15:50:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0F86418FF;
	Thu, 22 Feb 2024 14:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-N6F2kARcnQ; Thu, 22 Feb 2024 14:50:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4D614056F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708613439;
	bh=mQbF3P9wKta5XfpEGOrV6eIDrmtdxdpmpMKpWIDqJr0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yb5CYES3dq2UqB0pqCfb70/WM6BLzSBL5pHm2BhX83Vq6lAv+o1yTU0ANb0z32jfb
	 u7FmnJimozJPzExAt/LWOvCzFQFCub0zweh2chtYIKQUBWt8POBK9Sxh+VdtdNgaIU
	 hIBqI5AWSBnxtMPJNbRhrRFvydRNckk0hmYYR//Xl5WcEkoif9RXoGuHlEMIVP7j9t
	 QqvcU7MP/8isYSzbCYJy4xbhpx+aFP01UYxDiIb/R3sIYWEH6r8dApEaJcmYh/YAlP
	 KpdeoFFFuJ6vz6ELVFCVXwP0D5FCxjbSCWNzRb9SK3K0C1tLp8xBCLTti2yUuIOAdu
	 Y289by0D6qEhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4D614056F;
	Thu, 22 Feb 2024 14:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 007911BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E210D81D73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0GLuQYbIwsMI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E21281A39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E21281A39
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E21281A39
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 14:50:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2949298"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2949298"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:50:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5670933"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa008.fm.intel.com with ESMTP; 22 Feb 2024 06:50:33 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 15:50:23 +0100
Message-Id: <20240222145025.722515-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
References: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708613435; x=1740149435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BW7wwqyKxArUwiSHVbXejxxx5q8h4BjX8WMNFKPPFU4=;
 b=TKCOyKJN7kCZfX1gpHkT+cHI4TDyihpZW+LH39RKLwVTKBxxMkQhTIML
 k6hv9fO9CEe9/qjzS3kIZkcJtnuvRSI631YjKusflduSOo0pvPMtdFX/0
 T1Gr4O9839Nm92VR23Uh9Z/mWkKObeAxWDaTdW3Zfkix3XY8XvJrRuTBv
 J+y58G+renU1dYlQsi5LNqOn7aiSfmE5jckhYWtALK8lKYT4a6Dz/coVE
 VQStnOwsEFt64LfByuk/hlPS4DtidOTKjhZL6DYnHmYWyuf8gC3ZDGQ5m
 X/shR6hfRHX5CDryvVLabwCnapXMY0Nb01mnxTl/0O+/A4145V6uBbqM2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TKCOyKJN
Subject: [Intel-wired-lan] [PATCH iwl-next 1/3] ice: do not disable Tx
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
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
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

