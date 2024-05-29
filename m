Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369FD8D3573
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:23:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 756AD40A87;
	Wed, 29 May 2024 11:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HFrHW1yRscQG; Wed, 29 May 2024 11:23:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8D3B40512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981831;
	bh=mTbdhkWKCBWq0NeriZ4NyNui0RqyO6NdlCWR8T5VaDk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tvpSLknFhtMvL8In1MbGECq7e3deqFj0rEamWQH/KsJwqXxtOgNp9FxA/sFEQXnKi
	 s8kaesgeDP62pbs84eg0BhJX+1ZbPRVP2vRlo7HstLYWZlAV/V7eu9BtwnsDXXIRc0
	 hxVsxx+KIuma3unZF4GbHDd1A/JHPjAsDImtqNe7edDT99W6fkO8yGntdJCsRYrRP+
	 GGJncd+Wpg94oJZpYup5PXjQCtH+fcQKpUY9dF4WUwCi/yMTCmaXhIXpnsjspgMhev
	 uJtO32r7+bNAHCJN54HVQzobUqmbz0hlqX8Ru2A+baq/L1v7bodMAXPqyKdoX8zXRf
	 6LN9ZbU5B2bVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8D3B40512;
	Wed, 29 May 2024 11:23:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE6161D3494
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7F6A607E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDAMqu4MbZFP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 11:23:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 31503605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31503605CD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 31503605CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:48 +0000 (UTC)
X-CSE-ConnectionGUID: A7wvyJvGQTClZVsTH5ZixA==
X-CSE-MsgGUID: P1ofE0GmRnKGztOqb69zUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17169243"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17169243"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:23:48 -0700
X-CSE-ConnectionGUID: EUxb2xOGTrmru1djNZ0m1g==
X-CSE-MsgGUID: 0wMy7eFdTOShbSuYwBGt9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="66277177"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 29 May 2024 04:23:46 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 13:23:32 +0200
Message-Id: <20240529112337.3639084-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716981828; x=1748517828;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k+t6/dW0a7XTqHTJyIkOeGq6uYftDeoAQY5f4RgHSbU=;
 b=WXPm8C32fw5MRHX2BAbVj3cN9L77eiE2sOpjoKcc2dfDBB6blyeMvJh7
 pHq7ogkwCleGlbBEG+yyv+zjzGxv6uA/hXO14S43fgFjL1P//Q5FlaL+a
 euwYLAK7vKS6HZWsUDRcB+wGCSF5DqUzp2HlANT8qkE+ULCovJmowtlgP
 FpQjql3+uG5SyfIgbnzMTBx3JxzpQHZdHiVClP0LpbZCb89rrZA1G7Jjm
 haZZAkuL0bFn3r0wnwSKz7rvi319FrY9hl8XpfxSZ8D4W3wzkYup2bGQ0
 Kl97l6zUtsSX7aDcKcF4gP4t+zY1vN0bGIncG9QFvp701ztplmXvkfBzM
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WXPm8C32
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 3/8] ice: replace
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

