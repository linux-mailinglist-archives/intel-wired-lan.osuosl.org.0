Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37A43E1F45
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 01:14:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC92A402AB;
	Thu,  5 Aug 2021 23:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZHW0aXJqp8M; Thu,  5 Aug 2021 23:14:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A978F400C9;
	Thu,  5 Aug 2021 23:14:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7AEC1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 23:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E797400F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 23:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RNXkJJZkvaF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 23:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE47B400C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 23:14:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="236245702"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="236245702"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 16:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="503591621"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 05 Aug 2021 16:14:13 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Aug 2021 01:00:43 +0200
Message-Id: <20210805230046.28715-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210805230046.28715-1-maciej.fijalkowski@intel.com>
References: <20210805230046.28715-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 intel-next 3/6] ice: do not create
 xdp_frame on XDP_TX
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
Cc: joamaki@gmail.com, alexandr.lobakin@intel.com, netdev@vger.kernel.org,
 toke@redhat.com, bjorn@kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

xdp_frame is not needed for XDP_TX data path in ice driver case.
For this data path cleaning of sent descriptor will not happen anywhere
outside of the driver, which means that carrying the information about
the underlying memory model via xdp_frame will not be used. Therefore,
this conversion can be simply dropped, which would relieve CPU a bit.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index fca5aca1ffae..3bb851481f3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -552,7 +552,7 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 		return ICE_XDP_PASS;
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[smp_processor_id()];
-		result = ice_xmit_xdp_buff(xdp, xdp_ring);
+		result = ice_xmit_xdp_ring(xdp->data, xdp->data_end - xdp->data, xdp_ring);
 		if (result == ICE_XDP_CONSUMED)
 			goto out_failure;
 		return result;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
