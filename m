Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 893858D1C60
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CF978201D;
	Tue, 28 May 2024 13:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gMRJ1RC8Nr-5; Tue, 28 May 2024 13:16:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 491058201C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902166;
	bh=GoFqC/x0qQ7t7wsAIy3b/zpdp7qde8VI/Nl6kaEW6OY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lc2A9DMydaeJRGKI8sKiLfv4SAO7AWuHJTSFAj0Ak0ACiHda7ApQ/c+Il/PL7k0/c
	 S2t3+GcPWFJcdclwLin1ifu3iyW59i0J6WEknj9w272Xk0AUNaNg2De1CRlNobtJ7f
	 0F24rN/eHh1bXe3+PbMqt2ffvaJD1OeG3GgrmCkYFeZw8o6tP4iBjRsjYWgei8uW/C
	 LoSc0Md4dGDt0LEsdGEgLH0Z2uTzB7qkHoNXWYlLwwcz6Lb1qx4B86w0WorG/ZHqAd
	 GLnAJ3deBRkPjDzmWcGx/oZ2PnRyU722kBwPXRD60nd5TKi6Lo/bq8En0hV3qaWBNG
	 oBagMuNHMW4/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 491058201C;
	Tue, 28 May 2024 13:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9FE1D2818
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6C378201D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:16:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SJhUaMkX3X3W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 24D878201C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24D878201C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 24D878201C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:16:02 +0000 (UTC)
X-CSE-ConnectionGUID: 8ep3VY+kQ5uSVDc+PbwWZw==
X-CSE-MsgGUID: IGxqXm3pQ1uB07vC4kaSkw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193570"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193570"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:48 -0700
X-CSE-ConnectionGUID: 9YdYx1YpRYOPzJySl5u6Uw==
X-CSE-MsgGUID: eUBxHCQ4SluH2zrAs3gsfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891171"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:46 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:27 +0200
Message-Id: <20240528131429.3012910-10-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902164; x=1748438164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ibL8cpkE1BEVaC2RFbojcJo454wmbd9a09sM9ZH/l0=;
 b=d1YyAQTiAvFPFRW41s9YrO7en5v1cL8zwQtWglRSz2EXhTMsMaGDTXk6
 Me/Lha/kAZaTy8x6nRNjBY/VJ4D+3mQl+78/zWMTJU+YJXobioBvhRpN0
 jRIpgI3hGZbc1hn0WHEDQdsAoslsXvLeEjL9XNFhKEwfRI3r9c4vVs9jT
 eYhOlxHhcFS0p2c+2b9HR/mavjOrZef92BkqubQW1WnLyrRhr1mK9kCUW
 JTL4wpx+/rRWp8E7XZtvmcMuCWJ1rdoLY8e0LdMPOBd7kP3fEgGZgJ5/o
 nJPVWqNnFxeNg3XOw5GNljCJgISLMKnXdScFmPDHM7LX81nzlXQndPIo7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d1YyAQTi
Subject: [Intel-wired-lan] [PATCH iwl-net 09/11] ice: move locking outside
 of ice_qp_ena and ice_qp_dis
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
Cc: netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, larysa.zaremba@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Larysa Zaremba <larysa.zaremba@intel.com>

Currently, ice_qp_ena() is called, even if ICE_CFG_BUSY could not be
acquired by ice_qp_dis(), in such case there is nothing to undo.
Move locking logic out of these functions, so:
* we immediately return, if the lock could not be acquired
* ice_qp_ena() does not operate in an unsafe context
* ice_qp_ena() does not clear ICE_CFG_BUSY, when it is not held

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 3135fc0aaf73..fe4aa4b537dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -165,7 +165,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	struct ice_q_vector *q_vector;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	int timeout = 50;
 	int fail = 0;
 	int err;
 
@@ -176,13 +175,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	rx_ring = vsi->rx_rings[q_idx];
 	q_vector = rx_ring->q_vector;
 
-	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
-		timeout--;
-		if (!timeout)
-			return -EBUSY;
-		usleep_range(1000, 2000);
-	}
-
 	synchronize_net();
 	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
@@ -257,7 +249,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	synchronize_net();
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 	netif_carrier_on(vsi->netdev);
-	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return fail;
 }
@@ -390,6 +381,14 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 
 	if (if_running) {
 		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
+		int timeout = 50;
+
+		while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
+			timeout--;
+			if (!timeout)
+				return -EBUSY;
+			usleep_range(1000, 2000);
+		}
 
 		ret = ice_qp_dis(vsi, qid);
 		if (ret) {
@@ -412,6 +411,7 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 			napi_schedule(&vsi->rx_rings[qid]->xdp_ring->q_vector->napi);
 		else if (ret)
 			netdev_err(vsi->netdev, "ice_qp_ena error = %d\n", ret);
+		clear_bit(ICE_CFG_BUSY, vsi->state);
 	}
 
 failure:
-- 
2.34.1

