Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6F195C9EB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 12:08:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABDE481EC0;
	Fri, 23 Aug 2024 10:08:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U9aVBTBBOtd1; Fri, 23 Aug 2024 10:08:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9288D81EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724407690;
	bh=x7kCav3xWLfcFzEfh/nei1yZyMaMXd160uHNJvjoHVo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SJ0+rrGyPwQg4C+xwUk0jgTNo9BkkRZ9pjohEIDU1/HEPCNwL6WPksclZnT8LIJYR
	 LaOupebpVgZWthZPdeMCaVld3eaQO7WoqP1EuuU4hYyc6USeiPs6YFpGsebi4uMoq8
	 3bgmMVU8hV+zSVrycovcYv6v47mTk0VuBbV0cls0ZC8atpWaufvXOasJkxhz2ktrjR
	 INzqyZD9ddWx11oGSZWvvFUDngcuyayILKVrn4vJmuJGzx0+fEe+1HjaOCPlnfvCKC
	 EbFdfnBjB6QssbdrXXY8ZGJ9Zl0mvTkKAcQtWViR9GL3AUA0kFtBcMiJY0FMVI7JW7
	 3/PfX5M7ms0EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9288D81EC4;
	Fri, 23 Aug 2024 10:08:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 128411BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F418340FB7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fz7V9mfmCvIb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 10:08:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B27954035D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B27954035D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B27954035D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:07 +0000 (UTC)
X-CSE-ConnectionGUID: R4HAzl/4SUmLZvPPa54MeQ==
X-CSE-MsgGUID: oKeno3RPQoisfktAbAoC3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34285032"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="34285032"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:08:07 -0700
X-CSE-ConnectionGUID: dJ7G8nysTCygrGZAgyj2nA==
X-CSE-MsgGUID: 1Byt8J05TpSeYLMFLfmSYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62478959"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 23 Aug 2024 03:08:03 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2153833BD8;
 Fri, 23 Aug 2024 11:08:00 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 23 Aug 2024 11:59:28 +0200
Message-ID: <20240823095933.17922-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240823095933.17922-1-larysa.zaremba@intel.com>
References: <20240823095933.17922-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407688; x=1755943688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y0LUtyZs59VwUVPWCpleR70Oi1lBSR4WLtL87bh7IJo=;
 b=SJjmPTQ/xQ6ZSveoJzaATulRVIyDH/qyR1qreQqlwYGJ7u0gpfF7r6pq
 8GcNar1Gn0k4/04kuXX/1RLqMGytcMxsU+Z802CDCa1XKqsWwx1+bEN0b
 1UmcxkJlHecSmp3PQXHDKKcvJeHPm6KQRIWGK4FxDFWsOQkMKEtyzn7ph
 g+OfKBlB+E0zZ8vmbn/Rf6ViptJCUEJC+5g/mcEdleFYnt1cGq71btKhu
 LaR9fisz/qhx51EfafS0jk790TyO6qqZZ7EiB3eBwOGQBvJEdYvfLSXNr
 sgtuXHRR9zyVkuNc0D8XmlvrqAEE0WQDuD4audXsGM3md5ZJrKD3hYdJN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SJjmPTQ/
Subject: [Intel-wired-lan] [PATCH iwl-net v4 3/6] ice: check for XDP rings
 instead of bpf program when unconfiguring
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
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, przemyslaw.kitszel@intel.com,
 John Fastabend <john.fastabend@gmail.com>, anirudh.venkataramanan@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, sridhar.samudrala@intel.com, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If VSI rebuild is pending, .ndo_bpf() can attach/detach the XDP program on
VSI without applying new ring configuration. When unconfiguring the VSI, we
can encounter the state in which there is an XDP program but no XDP rings
to destroy or there will be XDP rings that need to be destroyed, but no XDP
program to indicate their presence.

When unconfiguring, rely on the presence of XDP rings rather then XDP
program, as they better represent the current state that has to be
destroyed.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 9978bbcb2401..14257e036d4b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2419,7 +2419,7 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 		dev_err(ice_pf_to_dev(pf), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
 			vsi->vsi_num, err);
 
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		/* return value check can be skipped here, it always returns
 		 * 0 if reset is in progress
 		 */
@@ -2521,7 +2521,7 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 		for (q = 0; q < q_vector->num_ring_tx; q++) {
 			ice_write_itr(&q_vector->tx, 0);
 			wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), 0);
-			if (ice_is_xdp_ena_vsi(vsi)) {
+			if (vsi->xdp_rings) {
 				u32 xdp_txq = txq + vsi->num_xdp_txq;
 
 				wr32(hw, QINT_TQCTL(vsi->txq_map[xdp_txq]), 0);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e92f43850671..a718763d2370 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7228,7 +7228,7 @@ int ice_down(struct ice_vsi *vsi)
 	if (tx_err)
 		netdev_err(vsi->netdev, "Failed stop Tx rings, VSI %d error %d\n",
 			   vsi->vsi_num, tx_err);
-	if (!tx_err && ice_is_xdp_ena_vsi(vsi)) {
+	if (!tx_err && vsi->xdp_rings) {
 		tx_err = ice_vsi_stop_xdp_tx_rings(vsi);
 		if (tx_err)
 			netdev_err(vsi->netdev, "Failed stop XDP rings, VSI %d error %d\n",
@@ -7245,7 +7245,7 @@ int ice_down(struct ice_vsi *vsi)
 	ice_for_each_txq(vsi, i)
 		ice_clean_tx_ring(vsi->tx_rings[i]);
 
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		ice_for_each_xdp_txq(vsi, i)
 			ice_clean_tx_ring(vsi->xdp_rings[i]);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a659951fa987..8693509efbe7 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -39,7 +39,7 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 	       sizeof(vsi_stat->rx_ring_stats[q_idx]->rx_stats));
 	memset(&vsi_stat->tx_ring_stats[q_idx]->stats, 0,
 	       sizeof(vsi_stat->tx_ring_stats[q_idx]->stats));
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		memset(&vsi->xdp_rings[q_idx]->ring_stats->stats, 0,
 		       sizeof(vsi->xdp_rings[q_idx]->ring_stats->stats));
 }
@@ -52,7 +52,7 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
 {
 	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
 	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
 }
@@ -194,7 +194,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
 	if (!fail)
 		fail = err;
-	if (ice_is_xdp_ena_vsi(vsi)) {
+	if (vsi->xdp_rings) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
 		memset(&txq_meta, 0, sizeof(txq_meta));
-- 
2.43.0

