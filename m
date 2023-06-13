Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 278E372EFD9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 01:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F093040BC2;
	Tue, 13 Jun 2023 23:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F093040BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686698146;
	bh=lZcMcFi/gyjK5PimAQDrX/15bvnpRllMxEoPFxzCpnk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=27U4TBxp27yrFwTCk8cWH3woWnaf4lsteLuhRf735zj5DdKF2AtKimVQ8NF+iuj7p
	 AgjFirbtfcICg8lJwJXqooHk/+E+WwFaZZg9m2SGZsv21pICl+iEfZftVlQe/i3TGc
	 dyF1/kpJIJ8FGVZinUsd/vJA/FVbfeyKB1T/1J72Q7r3fZOTynPpSr2J00C/Oi/qcv
	 Q81qgDOsgk7Ys7b/scYSEUfTUfCy5ggtFHCoHcwsQmnf85s13ju1Hrm1Y8fXdp85iq
	 h4sUCYk6+42ZqtavI2upRdLbVnBLvmCDE3GLxDV0Rlk6eTLyrJGb5Zlt7Ts+rCVStw
	 UMM/FO8nWyF4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K__ss1ao2-E9; Tue, 13 Jun 2023 23:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B22241557;
	Tue, 13 Jun 2023 23:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B22241557
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5591BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 23:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3250D408B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 23:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3250D408B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWz6yfLILvFN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 23:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D0734088D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D0734088D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 23:15:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="357352000"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="357352000"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 16:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="714973982"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="714973982"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jun 2023 16:15:31 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Jun 2023 01:15:23 +0200
Message-Id: <20230613231523.339413-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686698135; x=1718234135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mYYNP4k9twgj8XoiNUIUeugOakpKuUCeGbaX+iQExnE=;
 b=CrvnaZc0bYOMnLtM2KeBJNsBSawdl6TBujgqf9mn+RliAwxuviWYOjwu
 2lowq54EKV9yCWWKulJDOMVhvxmfmdRKWYwm5lDrtjc2EBXgTq0aOlmlt
 /9BZkNpZJWusIomIR1+Rgs91+nYfjaD5jsvd8k6y3Nwi+ECtcWlrpIddA
 M3fqRZLjN5KX5VDL7kKh//E9uxESjxpcVj/ArdNBdVn4FDP/EDYBQEe0W
 0DxOILgU/oLbWI0ERrlh8wYYDRc1yBcHIqa81zqKPiW/ftejo0Gh2r1py
 Ndg5YW/v6Jwc8q2JgHRpDtL1m6/8o7GMDkEmPFm2cAx7eIk0pv0tcpk0g
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CrvnaZc0
Subject: [Intel-wired-lan] [PATCH v2 iwl-next] ice: allow hot-swapping XDP
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, fred@cloudflare.com,
 magnus.karlsson@intel.com
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

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---

v1->v2:
- fix missing brace (sigh)

 drivers/net/ethernet/intel/ice/ice_main.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..dba1f7709e8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2924,6 +2924,12 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
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
@@ -2956,13 +2962,6 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
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
