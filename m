Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEC691A7B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B63D6069A;
	Thu, 27 Jun 2024 13:18:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OvvWG-K-VqN8; Thu, 27 Jun 2024 13:18:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF53460E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494338;
	bh=DoNC9cxTfzmTI9DPsPcxGngpLxF1pOrFu83lkH3B+QE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jJoVSOuNWfKNZWyxaC9yGB4//M6pqRJjpWiq7gEWEVvnc/+LDAzYYIbp9KJ//aMQy
	 +NNXqiqPrygBfaI5OEqrgNoCJwwpPhHZdKfXyni8ajetcWXA6xSQH6fKsnDa3Nuy7B
	 phBLEFjXO2fy8L+oLZUUcPNihXhk/NrK7M0f1iz2nIwPD4YVimz5H804m/ARZYv/24
	 AlrMA9//KNij6Ita9r6d18P0LkVu7GLeUfu8/9CEZ/xvtzaft0wyVTmd9bg8S7K0h6
	 nLjXxKEzeXwK6eFOvR7H8/tZ7jRCUdz1w4Vpm3XF7AOxAC17UyXxzdrWNPuPc0rCTc
	 mYFWuiByNhHig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF53460E41;
	Thu, 27 Jun 2024 13:18:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2DAC1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFE4E402AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpWYl-HylV7b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DCA0D402AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCA0D402AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DCA0D402AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:55 +0000 (UTC)
X-CSE-ConnectionGUID: JMuwLsopQWS/TyV3p0mUGA==
X-CSE-MsgGUID: Ly/9PpldSb2lkh+XSLwsuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452360"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452360"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:18:56 -0700
X-CSE-ConnectionGUID: Xkyb8akdQ8+TYntViXcjWg==
X-CSE-MsgGUID: sa0QjsZzRcyFeI2mjpfxLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315399"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:53 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:54 +0200
Message-Id: <20240627131757.144991-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494337; x=1751030337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XvoRlqGncktv1xgCjbELElNoarbRYtEIlGwUPaqFV50=;
 b=AtujqorrO0J3rC9lGOPEVTe6AG6PgiHPOsmjWm4BxJ15IKnQQT86iWva
 K4JS17M7JI4tsak0PGhxg+3fQz1mzOFr5OVTkxVByjj7Cn80hUO23tsGR
 UruJeKIF40uQWtBGtsnsJm7AcFeV0imaRyPf/G/4EKrF5pBDwjXaMslQi
 PsFT3zIyNGHulSWBh5Bp72JoHVHMgurlyqR3NPPHv35dGUyFghGTsU402
 rQldwbmrHzgEPnP2amuT0uuWzaSIYpUixMGp2bawl8mP0xbJtUXPkBA9r
 8ZUmIwOqjqWsghZoWpozzoi21YjicQn1OebRZDCOgJgesR2uSzefdfsrA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Atujqorr
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 5/8] ice: toggle netif_carrier
 when setting up XSK pool
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

This so we prevent Tx timeout issues. One of conditions checked on
running in the background dev_watchdog() is netif_carrier_ok(), so let
us turn it off when we disable the queues that belong to a q_vector
where XSK pool is being configured. Turn carrier on in ice_qp_ena()
only when ice_get_link_status() tells us that physical link is up.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 902096b000f5..3fbe4cfadfbf 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -180,6 +180,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	}
 
 	synchronize_net();
+	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 
 	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
@@ -218,6 +219,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 {
 	struct ice_q_vector *q_vector;
 	int fail = 0;
+	bool link_up;
 	int err;
 
 	err = ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx);
@@ -248,7 +250,11 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
-	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+	ice_get_link_status(vsi->port_info, &link_up);
+	if (link_up) {
+		netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+		netif_carrier_on(vsi->netdev);
+	}
 	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return fail;
-- 
2.34.1

