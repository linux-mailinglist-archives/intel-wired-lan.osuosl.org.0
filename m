Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1C891A7B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:18:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABAEF60E30;
	Thu, 27 Jun 2024 13:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OTKgDEDHDCDM; Thu, 27 Jun 2024 13:18:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E777E60E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494333;
	bh=BcLkE4GR4v7X6bjfgYUwnH9qlpwOJfITKkvFzjFixZQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HwzeO6ikyhHb1yXrhdccylxWFXpm0MQRZlvFNM0cXtjrU4fnPU7fcYgdgmogP4zoN
	 F7GjZzSKon+8hxSaztENOTX6JY7KBWZ7gyKAcb25fzMgRe+bwh7MSi6drIuD7ANDXF
	 3xwJX8WfkyNLChIBYjYgh/TwXUnIn4AwhTQQnSMrbhsqQng4/G7DXE1Y2hfk4QZ8bp
	 acFeRkUjply5YFwKP+3CgQlqvk8uFtXEDzfxjvv2Zi4zHQTda9a0BBZuM+wC3/3DTQ
	 T8Atpm6TIYULdCpc4gR2acQygH4L1KX6jARf4zqUfRYPrQg6lGfK4BXa1oI6GQDW6M
	 YQv0t3crWG6lg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E777E60E34;
	Thu, 27 Jun 2024 13:18:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 460811BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32D7B402AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nN2ZE9cYuVEr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 44FDB402AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44FDB402AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44FDB402AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:50 +0000 (UTC)
X-CSE-ConnectionGUID: /j6akdY6RCu/RxLZpPaRcg==
X-CSE-MsgGUID: 9SAIMIIIRgCbbXN0oHblDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452347"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452347"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:18:51 -0700
X-CSE-ConnectionGUID: s3RCCzWCRau1ixNO7Jg5Aw==
X-CSE-MsgGUID: RNXYHP2ZTz+RtQe7/At6zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315387"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:48 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:52 +0200
Message-Id: <20240627131757.144991-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494331; x=1751030331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=viO5XI96M+PbIpbkreqWu8b1pRiHeRHqbTu9yjFxQ64=;
 b=bFagaGMNwsKyko8AfdW2qBn4nuFDNTvV8a2z1HtBjbUKwaot0IYtGTYF
 uYXg9l3SovLQ87y2ppBPefjrQ+oZiXPrMZsrEz20o3Lum/0syhwS2g03t
 FMsinK7rE9lLBaiZPeOMn+lMB8J9sQeIOy2PYKwAHNhhKu9I+9GjQ3mA/
 adVe2fmfGLSyd5T5a8pkIxPR4F4A+ACb4TzczvcdTO69u3pDC56f5yYzp
 J0TL240hCWBotbfUBvWBrYy1yK4m2TdAdyidGXl9Ld+Ys3jANDd17sCw2
 nydA8xw0niJ0SayoiC/68TRlcjhgVZgWkvg7tG5Fjz+PyOTyXf4CcW/pp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bFagaGMN
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 3/8] ice: replace
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
 netdev@vger.kernel.org, aleksander.lobakin@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>, magnus.karlsson@intel.com,
 Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Given that ice_qp_dis() is called under rtnl_lock, synchronize_net() can
be called instead of synchronize_rcu() so that XDP rings can finish its
job in a faster way. Also let us do this as earlier in XSK queue disable
flow.

Additionally, turn off regular Tx queue before disabling irqs and NAPI.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 3104a5657b83..ba50af9a5929 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -52,10 +52,8 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
 {
 	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
-	if (ice_is_xdp_ena_vsi(vsi)) {
-		synchronize_rcu();
+	if (ice_is_xdp_ena_vsi(vsi))
 		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
-	}
 	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
 }
 
@@ -180,11 +178,12 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
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

