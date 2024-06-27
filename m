Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6592F91A7AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1796360E25;
	Thu, 27 Jun 2024 13:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXzEOBae_q00; Thu, 27 Jun 2024 13:18:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45CE860E2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494328;
	bh=YEgYktHx0N1/H4sV/mOBuk38xMYk6aBvT5fP1jU/2+8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XTVvmpQna4x2+ZoUqQAeFmYTVkIzX71C6CC72Ix14Ce19qETYldBEYuyoZnZPMXEH
	 c64ulqmMsPuKtRkuLNLJcG8jsXhRLQqdxFX3BZ2Uf0NgEyeXTOkwLnYdQtI7xd8lUA
	 dkzquR6F56D9RANA0gwb98tK7JJNy8wgjkGCvusW3b51Imjvy3niu6IKaDE4L3MVq9
	 XSKlZ/Bio0xVFm4nWGX97Kx81Ytdmdl9jd7CbqxOuBFoRKPbzVkQM7JALISWcBc+MI
	 tLE5I5Tc4G8q1fgUtD4amX+kaohR8MYyDq5pHiGoS5F0jS4vJ2jYS9DPMyHm9yasY9
	 YIdj1V7/A/j+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45CE860E2A;
	Thu, 27 Jun 2024 13:18:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72BBE1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F19D402AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x7cT2jh4sO3y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 31BAA402AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31BAA402AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31BAA402AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:45 +0000 (UTC)
X-CSE-ConnectionGUID: 0TcZZIH+ReOkAOwP1qPGCQ==
X-CSE-MsgGUID: ICi1VUjhRS6Pg5mJKAtO3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452337"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452337"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:18:45 -0700
X-CSE-ConnectionGUID: d3lXf33ZTJuUUMaUDmNR1Q==
X-CSE-MsgGUID: xnVpY13KSZ2cCPjHQiHCBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315367"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:42 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:50 +0200
Message-Id: <20240627131757.144991-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494326; x=1751030326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iQ/9HbZUPqxoVo1bdBIyY2nG6c2SzdJzTrMSU2GD4eE=;
 b=F8Z0nzQd3GpnhKuJyFN8qPLo0dCdBAh9Sajqic9RCc83NBv/0EwtjPuO
 TkZFere1bdYjaZQFvopGDF077l4BwOmsCarIfkqy52kK2XUCAFmq0/i9S
 drW24hjR63ilqGUQlCGkPQhmrn3Pq7TqrMEbxClhfbd4lnh0O/qdNYR2c
 teaFTgWr6orzaT1JFFsBXq76MoKaR9YxwM7XA3d8zzDZ5h1HzrIvL2wIp
 /SIFw02lbSk5OS+0Id0E0GGYU22M3H37m9yeYPTTEfSjrw/bA+tz85Ftk
 DDhKba4bYgOc9m33+4ZxGsKp5XDC98pbtOnf0g8MC2JP6PZlQn2E5hRjL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F8Z0nzQd
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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

From: Michal Kubiak <michal.kubiak@intel.com>

Address a scenario in which XSK ZC Tx produces descriptors to XDP Tx
ring when link is either not yet fully initialized or process of
stopping the netdev has already started. To avoid this, add checks
against carrier readiness in ice_xsk_wakeup() and in ice_xmit_zc().
One could argue that bailing out early in ice_xsk_wakeup() would be
sufficient but given the fact that we produce Tx descriptors on behalf
of NAPI that is triggered for Rx traffic, the latter is also needed.

Bringing link up is an asynchronous event executed within
ice_service_task so even though interface has been brought up there is
still a time frame where link is not yet ok.

Without this patch, when AF_XDP ZC Tx is used simultaneously with stack
Tx, Tx timeouts occur after going through link flap (admin brings
interface down then up again). HW seem to be unable to transmit
descriptor to the wire after HW tail register bump which in turn causes
bit __QUEUE_STATE_STACK_XOFF to be set forever as
netdev_tx_completed_queue() sees no cleaned bytes on the input.

Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a65955eb23c0..72738b8b8a68 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
 
 	ice_clean_xdp_irq_zc(xdp_ring);
 
+	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
+	    !netif_running(xdp_ring->vsi->netdev))
+		return true;
+
 	budget = ICE_DESC_UNUSED(xdp_ring);
 	budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
 
@@ -1091,7 +1095,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_tx_ring *ring;
 
-	if (test_bit(ICE_VSI_DOWN, vsi->state))
+	if (test_bit(ICE_VSI_DOWN, vsi->state) || !netif_carrier_ok(netdev))
 		return -ENETDOWN;
 
 	if (!ice_is_xdp_ena_vsi(vsi))
-- 
2.34.1

