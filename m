Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D842BBB32
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C599D86FDB;
	Sat, 21 Nov 2020 00:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWGCJ9urN4_y; Sat, 21 Nov 2020 00:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 491FE86FD5;
	Sat, 21 Nov 2020 00:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E71331BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E3DBA86E7F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4VuIEzFufK-5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0559186E92
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
IronPort-SDR: HP6fALGndZDmeFrrgfoQdbiS91PRDFlWamDRSuvu9I35OgpzU6JIuKSD1O06VbS0pFljhDHGiZ
 RDY+Aihyq6EQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="170782303"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="170782303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:45:33 -0800
IronPort-SDR: AHBaTTuSI3z98TNbJ4tAUkdUDLb08m/rzZi8C3PZJ3iUWAZBJ49tNoOhJImpgWKvSQUPKzDAow
 vcWoJI5v5N9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369396470"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 16:45:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:38:34 -0800
Message-Id: <20201121003835.48424-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 5/6] ice: use correct xdp_ring with XDP_TX
 action
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

XDP queue number for XDP_TX action is used inconsistently
and may result with no packets transmitted. Fix queue number
used by the driver when doing XDP_TX, i.e. use receive queue
number as in ice_finalize_xdp_rx.

Also, using smp_processor_id() is wrong here and won't
work with less queues.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a6793147dc00..f34dd4806d5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -546,7 +546,7 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 	case XDP_PASS:
 		break;
 	case XDP_TX:
-		xdp_ring = rx_ring->vsi->xdp_rings[smp_processor_id()];
+		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->q_index];
 		result = ice_xmit_xdp_buff(xdp, xdp_ring);
 		break;
 	case XDP_REDIRECT:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
