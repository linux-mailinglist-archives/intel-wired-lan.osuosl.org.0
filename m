Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 632778D1C54
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3529682011;
	Tue, 28 May 2024 13:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8t19XaGIiFcR; Tue, 28 May 2024 13:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5896282051
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902139;
	bh=mTbdhkWKCBWq0NeriZ4NyNui0RqyO6NdlCWR8T5VaDk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f8+Mgwa62Qb8HFMeMNkA31X3xY3y51yB2CnD7Uc7D7WN5g0lKgwqGNYGDRM422xbU
	 mY4o2KDhfVHc9gFKA8bYUE8kOzJVKXL5QBZxMc7iDRxqZ4YQJp8bmGDrdVhSF98rFd
	 jxeGdE5YH/EtiqG+/1wHrr/+2te7WBGT9NWQCzeTc+nLc5766Vo5H3Ah2rqOqAXL+d
	 sU3XHrKK1vmUeeIPgRtbsWlbuG4qP5Q6kybCheGajiWbLK6kLbbPSI0pFmS5Cq1bsf
	 OE+YSeCaIar2XlAQwVKGGny3Ei0SrM/NwlvtWsnB7IycO+Naia/QsTfFM14TEkNiia
	 2eRUmvjc+cUzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5896282051;
	Tue, 28 May 2024 13:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5FE11D281C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB2648203A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4nBv3lTIXgTI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:15:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C42F582017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C42F582017
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C42F582017
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:34 +0000 (UTC)
X-CSE-ConnectionGUID: Ru8q9OHJRNyh93gZ+zL+FA==
X-CSE-MsgGUID: 2y8mgeU8TGObpNlvmODgvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193532"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193532"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:35 -0700
X-CSE-ConnectionGUID: w43hokqDTl68StL9KdAGiA==
X-CSE-MsgGUID: iIOK/ey0Sx+/bDS+xpjKyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891117"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:33 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:21 +0200
Message-Id: <20240528131429.3012910-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902135; x=1748438135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k+t6/dW0a7XTqHTJyIkOeGq6uYftDeoAQY5f4RgHSbU=;
 b=ljdslKUqp6eK1I3oYWPok+Xwk9PwEjujkFOSHjC1RHQIFsLmburCW5Rq
 n+IOhvORetp9OyOJSTo7UCp3FVxKSjHV/Bpxo+aQUu+xL6kjQ1Ju/QbP+
 +lEF0qfAzwnDc2vaNHi8StNnyOVYXNNf91u/eoEbcnbhnbXSNAQUMtGd6
 b0txhPCtdX0b4FldrUyb1yziKGGywLPJTXNX3oXtCZoU8cTiK17Rixf0X
 J0UlCiXvr9ZDT8iywJtlqtmH+nkjfeJES6021NEdl127qjJsqs7F8dCWf
 uFM68/osRCpvm2BqvUl3d9huL8aHtxjteaB6XwWk7FyXtL9t+oNbado2q
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ljdslKUq
Subject: [Intel-wired-lan] [PATCH iwl-net 03/11] ice: replace
 synchronize_rcu with synchronize_net
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Given that ice_qp_dis() is called under rtnl_lock, synchronize_net() can
be called instead of synchronize_rcu() so that XDP rings can finish its
job in a faster way. Also let us do this as earlier in XSK queue disable
flow.

Additionally, turn off regular Tx queue before disabling irqs and NAPI.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 4f606a1055b0..e93cb0ca4106 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -53,7 +53,6 @@ static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
 {
 	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
 	if (ice_is_xdp_ena_vsi(vsi)) {
-		synchronize_rcu();
 		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
 	}
 	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
@@ -180,11 +179,12 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		usleep_range(1000, 2000);
 	}
 
+	synchronize_net();
+	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+
 	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
 	ice_qvec_toggle_napi(vsi, q_vector, false);
 
-	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
-
 	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
 	if (err)
-- 
2.34.1

