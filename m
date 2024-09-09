Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5851F97258F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 01:08:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C455060824;
	Mon,  9 Sep 2024 23:08:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e3gALfzyhn7w; Mon,  9 Sep 2024 23:07:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 396CF60828
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725923279;
	bh=uZoa3BwJLO9WLHzQ0b0hmmNF0/YcEmdyK1AzSZR+G5s=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UXCIC4ADSVZ7VcoY/Z24B5DldFlt/PXK6HWpPsuOHKK2ZO/j9Ai4MQ4MfGfTbboYj
	 b3UTBOeN2x4Bqd7yqzuQQ3JW/FLio+OPhYlORwd+VGxhxinjqJepE4+4X6/IwUQGVd
	 64tL5+Xvhv71qbRnK5odSZkLFREVZH8JJD1J9ZkveJfA77JkVjyfYkDHvbR39/Rg79
	 a8YzyqOKdj2cjpMoHzAJ+BX8L3eDFPu/HArRsNn4dytzZ8qYcJpGS+yVxxEHhqmfO4
	 vt+Y2LWOg1WVgZBwWHkPJF9NtWVY19pOghxcoEXkjCE6rDgz0eIh9uKTtTxQg4lBjX
	 B44KPM1Nm+GmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 396CF60828;
	Mon,  9 Sep 2024 23:07:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3B51BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B4C160828
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mO1ZZUtXMa_u for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3FFD660829
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FFD660829
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FFD660829
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 23:07:55 +0000 (UTC)
X-CSE-ConnectionGUID: xoWQowujQ9KQgMiLKsyxBA==
X-CSE-MsgGUID: mSIbIvLESJKO+gkfDaTaFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="13448222"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="13448222"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:07:55 -0700
X-CSE-ConnectionGUID: 7hzupRWuRP6eDc07K1yjLQ==
X-CSE-MsgGUID: glQb4LubSXuZwMgRIq0UzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="70940072"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 16:07:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 09 Sep 2024 16:07:44 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-1-f955205bc78f@intel.com>
References: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
In-Reply-To: <20240909-e810-live-migration-jk-per-queue-max-frame-rx-buf-len-v1-0-f955205bc78f@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725923275; x=1757459275;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=hDCH3/E89gpwlVEYnztZMbxoWTL25K2/5A9Wmv3S5MA=;
 b=G02h8FHjkYMKkt7EkDAA4/HsTeDHENmA4LlrkeVYrnipoOw4a0ZEx3NJ
 YvN/57aZWg54paHS70RKW4JJAgMFk4KrJ9OuHRpsXiyvmvnz6H1/ZIqXk
 LBuBdXFiZGgQbZeQrkdTRP7SohFmZiSGEP6lgNkpLomqkC9QFodXbuSlB
 xiXHNL2Djy2cE3BEM1XkK0t+5oL5GGLehmpLWJjpqlJwZZSf7vQygddXj
 +yzdWLOGIOr2/85odUCyG8Uh1CRys+gqz8a4Ay5buNiRBCZfH+QEo3kL4
 vS7mY1McymXLG3FVAoLZrOrWvvPc7lJEyJevs9yIRx1cnsEF+gfpRIynX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G02h8FHj
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: consistently use q_idx
 in ice_vc_cfg_qs_msg()
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vc_cfg_qs_msg() function is used to configure VF queues in response
to a VIRTCHNL_OP_CONFIG_VSI_QUEUES command.

The virtchnl command contains an array of queue pair data for configuring
Tx and Rx queues. This data includes a queue ID. When configuring the
queues, the driver generally uses this queue ID to determine which Tx and
Rx ring to program. However, a handful of places use the index into the
queue pair data from the VF. While most VF implementations appear to send
this data in order, it is not mandated by the virtchnl and it is not
verified that the queue pair data comes in order.

Fix the driver to consistently use the q_idx field instead of the 'i'
iterator value when accessing the rings. For the Rx case, introduce a local
ring variable to keep lines short.

Fixes: 7ad15440acf8 ("ice: Refactor VIRTCHNL_OP_CONFIG_VSI_QUEUES handling")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 59f62306b9cb..b6ec01f6fa73 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1715,8 +1715,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 
 		/* copy Tx queue info from VF into VSI */
 		if (qpi->txq.ring_len > 0) {
-			vsi->tx_rings[i]->dma = qpi->txq.dma_ring_addr;
-			vsi->tx_rings[i]->count = qpi->txq.ring_len;
+			vsi->tx_rings[q_idx]->dma = qpi->txq.dma_ring_addr;
+			vsi->tx_rings[q_idx]->count = qpi->txq.ring_len;
 
 			/* Disable any existing queue first */
 			if (ice_vf_vsi_dis_single_txq(vf, vsi, q_idx))
@@ -1725,7 +1725,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			/* Configure a queue with the requested settings */
 			if (ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx)) {
 				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure TX queue %d\n",
-					 vf->vf_id, i);
+					 vf->vf_id, q_idx);
 				goto error_param;
 			}
 		}
@@ -1733,24 +1733,23 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		/* copy Rx queue info from VF into VSI */
 		if (qpi->rxq.ring_len > 0) {
 			u16 max_frame_size = ice_vc_get_max_frame_size(vf);
+			struct ice_rx_ring *ring = vsi->rx_rings[q_idx];
 			u32 rxdid;
 
-			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
-			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
+			ring->dma = qpi->rxq.dma_ring_addr;
+			ring->count = qpi->rxq.ring_len;
 
 			if (qpi->rxq.crc_disable)
-				vsi->rx_rings[q_idx]->flags |=
-					ICE_RX_FLAGS_CRC_STRIP_DIS;
+				ring->flags |= ICE_RX_FLAGS_CRC_STRIP_DIS;
 			else
-				vsi->rx_rings[q_idx]->flags &=
-					~ICE_RX_FLAGS_CRC_STRIP_DIS;
+				ring->flags &= ~ICE_RX_FLAGS_CRC_STRIP_DIS;
 
 			if (qpi->rxq.databuffer_size != 0 &&
 			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
 			     qpi->rxq.databuffer_size < 1024))
 				goto error_param;
 			vsi->rx_buf_len = qpi->rxq.databuffer_size;
-			vsi->rx_rings[i]->rx_buf_len = vsi->rx_buf_len;
+			ring->rx_buf_len = vsi->rx_buf_len;
 			if (qpi->rxq.max_pkt_size > max_frame_size ||
 			    qpi->rxq.max_pkt_size < 64)
 				goto error_param;
@@ -1765,7 +1764,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 
 			if (ice_vsi_cfg_single_rxq(vsi, q_idx)) {
 				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure RX queue %d\n",
-					 vf->vf_id, i);
+					 vf->vf_id, q_idx);
 				goto error_param;
 			}
 

-- 
2.46.0.124.g2dc1a81c8933

