Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C247316B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 13:33:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9DBC408B5;
	Thu, 15 Jun 2023 11:33:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9DBC408B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686828820;
	bh=DedF4x6xP0C2bmSPXAvPKHvxB3yqokbCWgdd0yhzFEo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v1pxMBZ46i58278L+24uafK1CbxD4mrhTL3xJcPYl53czvcj3oAX4d2mH6ZMT0my1
	 oU6QeP1A2Dcoo6NWNQhWIAlfh9S6Drwak6tBxdnvyhkHKRTC7Vep3bQ/LIgAg3pPxV
	 Y1/VsZO8ynWIdpKljUIg1HBQavm0uyJLEt2zHUtvd8LusZRO/8XnoK0+MR1cGxHbKr
	 CbdN4zc5MzwuSX4kV2XBUMyF8CQIvCC0ZRCRPqHdIcQzC6fTBQt4uOfO1WLhw8Zi4C
	 OnBUBhY/rIJ2j7jXL0uCxdn8xCyk+PCMVbmTiF0ECDadlCZMoUfy6DNVRBmUwvhm9C
	 aecSauaQcIOUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUhYRRPLjlQe; Thu, 15 Jun 2023 11:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BBC140858;
	Thu, 15 Jun 2023 11:33:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BBC140858
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2B61BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D0CD4054C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D0CD4054C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DrJ1agLXJed1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 11:33:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 153E4404BF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 153E4404BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 11:33:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="362267419"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="362267419"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 04:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="1042627105"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="1042627105"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2023 04:33:29 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 13:33:26 +0200
Message-Id: <20230615113326.347770-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686828812; x=1718364812;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=swnICab9eS1LzbQCd0/9UolOAetCs1RLm9JzSgAZ1Zo=;
 b=UJ2BCJPvTWMRtW6bAUDJA/uiAvGy9nO+k7HlC/2oWH9CvSoYDnTb+KxB
 Vi1xn6pMVc8AM4u0rn9wzWlyQg/VWeiJ8DAUd9Nn1DZQS+zdCCeTPEt0X
 +RAmCWJYLOejxEcjaPBM+c00XZn7tLsP0Vr/ZuBya3Iun4SLXQU2tBt7n
 wJhJKy9+7jkNX/Ya3o3cLhBFWLVkg31qYgw5gk2XmJS9tz2HxPJR1qnUt
 NY2+KMC0eqbaxKDUEOET2nc6mzjduy4WOVfuFahbOCt8bgWGavwCTwFES
 1zittQW085eLn+icxA9QbjS1uJc9JRLlNldh9gLZDhbTB9lugDWdfOfMX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UJ2BCJPv
Subject: [Intel-wired-lan] [PATCH v3 iwl-next] ice: allow hot-swapping XDP
 programs
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
Cc: toke@kernel.org, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, fred@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently ice driver's .ndo_bpf callback brings interface down and up
independently of XDP resources' presence. This is only needed when
either these resources have to be configured or removed. It means that
if one is switching XDP programs on-the-fly with running traffic,
packets will be dropped.

To avoid this, compare early on ice_xdp_setup_prog() state of incoming
bpf_prog pointer vs the bpf_prog pointer that is already assigned to
VSI. Do the swap in case VSI has bpf_prog and incoming one are non-NULL.

Lastly, while at it, put old bpf_prog *after* the update of Rx ring's
bpf_prog pointer. In theory previous code could expose us to a state
where Rx ring's bpf_prog would still be referring to old_prog that got
released with earlier bpf_prog_put().

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---

v2->v3:
- move bpf_prog_put() after ice_rx_ring::xdp_prog update [Toke, Olek]
v1->v2:
- fix missing brace (sigh)

 drivers/net/ethernet/intel/ice/ice_main.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 62e91512aeab..a7c76fded603 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2633,11 +2633,11 @@ static void ice_vsi_assign_bpf_prog(struct ice_vsi *vsi, struct bpf_prog *prog)
 	int i;
 
 	old_prog = xchg(&vsi->xdp_prog, prog);
-	if (old_prog)
-		bpf_prog_put(old_prog);
-
 	ice_for_each_rxq(vsi, i)
 		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
+
+	if (old_prog)
+		bpf_prog_put(old_prog);
 }
 
 /**
@@ -2922,6 +2922,12 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		}
 	}
 
+	/* hot swap progs and avoid toggling link */
+	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
+		ice_vsi_assign_bpf_prog(vsi, prog);
+		return 0;
+	}
+
 	/* need to stop netdev while setting up the program for Rx rings */
 	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
 		ret = ice_down(vsi);
@@ -2954,13 +2960,6 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		xdp_ring_err = ice_realloc_zc_buf(vsi, false);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Rx resources failed");
-	} else {
-		/* safe to call even when prog == vsi->xdp_prog as
-		 * dev_xdp_install in net/core/dev.c incremented prog's
-		 * refcount so corresponding bpf_prog_put won't cause
-		 * underflow
-		 */
-		ice_vsi_assign_bpf_prog(vsi, prog);
 	}
 
 	if (if_running)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
