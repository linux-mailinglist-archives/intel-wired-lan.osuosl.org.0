Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB62D9ACE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86506868DC;
	Mon, 14 Dec 2020 15:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0WkKqSbcIOcM; Mon, 14 Dec 2020 15:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECFBD868CF;
	Mon, 14 Dec 2020 15:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 531A61BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 500428747B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SF91GsQlHW6C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:23:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF6CA870D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:02 +0000 (UTC)
IronPort-SDR: AcjoiMMYmEKoYWdDPRdIFjKkTtedkEcpV0/GDEeIyeoIFQ/TRHQyc460xd6RGC5Q4OaQNqE3JR
 QZrl4CQgrr2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="236308496"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="236308496"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:23:02 -0800
IronPort-SDR: M6G2TaFF9s87TaSaPSevh93XG4Rn07MkCpFxSneFdo9n3Elgqvd+9ZyT+5Ax9vAgaMVgYRM5+a
 ZHlg00IxDeKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411285711"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2020 07:23:00 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 16:13:04 +0100
Message-Id: <20201214151308.15275-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
References: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 4/8] ice: simplify ice_run_xdp
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There's no need for 'result' variable, we can directly return the
internal status based on action returned by xdp prog.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 77d5eae6b4c2..8b5d23436904 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -537,22 +537,20 @@ static int
 ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 	    struct bpf_prog *xdp_prog)
 {
-	int err, result = ICE_XDP_PASS;
 	struct ice_ring *xdp_ring;
+	int err;
 	u32 act;
 
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 	switch (act) {
 	case XDP_PASS:
-		break;
+		return ICE_XDP_PASS;
 	case XDP_TX:
 		xdp_ring = rx_ring->vsi->xdp_rings[smp_processor_id()];
-		result = ice_xmit_xdp_buff(xdp, xdp_ring);
-		break;
+		return ice_xmit_xdp_buff(xdp, xdp_ring);
 	case XDP_REDIRECT:
 		err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
-		result = !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
-		break;
+		return !err ? ICE_XDP_REDIR : ICE_XDP_CONSUMED;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
@@ -560,11 +558,8 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough;
 	case XDP_DROP:
-		result = ICE_XDP_CONSUMED;
-		break;
+		return ICE_XDP_CONSUMED;
 	}
-
-	return result;
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
