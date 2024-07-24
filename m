Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F11D93B55E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A205940E11;
	Wed, 24 Jul 2024 16:58:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xKBeyuJFtAkO; Wed, 24 Jul 2024 16:58:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA78340E0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721840319;
	bh=+dP4gJ6Hirj93WnOiXhIQQD59/wJqOygrwpyzMy+IWY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gzoXl0xcon8qOFj6jZ1ZW65zaYzWa/ksWF/nZ5vp2ehlFejl9S0w8eTmTPkI27j3n
	 x5ocrxsDK/9EnUXZxVMHHQgGR0OFUdPIVLATt0mo3rIsIilLjW2sXvPU4YbD17AlI/
	 4wgeDxhELtHJDv46HAAJf0OKKZjXeho+lE+QUwEsZP1vX2TXR2qFamK3+mchhqlbl7
	 WmtgZzSuCxBOIcu/5Hm3drWhWcCnH1vmDFIy8aMfAxtu9eGjQ8Q0C2zAkLWQAS6IxT
	 PDaKJ4nd7sZg+NuY+DvwdQA9+GQV+3S6CRGdO+TXrGsRUp7njutqWA/qhkD7JsIq+w
	 t81voFKaDk5YA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA78340E0F;
	Wed, 24 Jul 2024 16:58:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E49081BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0857814B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ODnjbv5Tp10c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1A7F813ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1A7F813ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1A7F813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:58:36 +0000 (UTC)
X-CSE-ConnectionGUID: GhN0smahS4iLR3N4wmu6Qg==
X-CSE-MsgGUID: SHErQOKSQTWj6OqknUIgZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30679768"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30679768"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:58:37 -0700
X-CSE-ConnectionGUID: Ess2i/1MQ2qdYiKVZ+HnTg==
X-CSE-MsgGUID: S+/2s54iSXK1WZvIw4xnZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56960628"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 24 Jul 2024 09:58:32 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A4DC728785;
 Wed, 24 Jul 2024 17:58:30 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 18:48:34 +0200
Message-ID: <20240724164840.2536605-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724164840.2536605-1-larysa.zaremba@intel.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721840318; x=1753376318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cT1Kj1K6jRTUq1zs62UgziJq07v54DlsZyX8m8oK/is=;
 b=NMoNNMK/r44supE3R++O1hsM6jgsJQOMWFY6NdOM2Hji2WO7eX6JYs74
 YOPZdzTqiFsX+daKS9MdJ1cPJApkpRWnm/X/YN8jkprmH2yeVQkZPf7q4
 EIvxuGNPafxjVK9VE2n5lqxwSCpzMOq1pE4NHi3HTvKCAD/tAkkm+OhO3
 /q8Up1ZM/fzBNuxMhbnao17S+ovVT189D+0JHNeBMuWuvO9YIwpHyJ9YI
 mjgUpN5zGWjzydSYsCXQYhlXGcLTGOrygpS6kmLhKI1i7azEPryC7n+nn
 niixKwjW7TK0H84QyTxIlPWyL4F7aMdJj5DQOKof2PLJVuBfqoFXfjbGk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NMoNNMK/
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ice: check for XDP rings
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
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
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index bbef5ec67cae..f9852f1a136e 100644
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
index e50526b491fc..d7cc641643f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7244,7 +7244,7 @@ int ice_down(struct ice_vsi *vsi)
 	if (tx_err)
 		netdev_err(vsi->netdev, "Failed stop Tx rings, VSI %d error %d\n",
 			   vsi->vsi_num, tx_err);
-	if (!tx_err && ice_is_xdp_ena_vsi(vsi)) {
+	if (!tx_err && vsi->xdp_rings) {
 		tx_err = ice_vsi_stop_xdp_tx_rings(vsi);
 		if (tx_err)
 			netdev_err(vsi->netdev, "Failed stop XDP rings, VSI %d error %d\n",
@@ -7261,7 +7261,7 @@ int ice_down(struct ice_vsi *vsi)
 	ice_for_each_txq(vsi, i)
 		ice_clean_tx_ring(vsi->tx_rings[i]);
 
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		ice_for_each_xdp_txq(vsi, i)
 			ice_clean_tx_ring(vsi->xdp_rings[i]);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 2c1a843ba200..5dd50a2866cc 100644
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
-	if (ice_is_xdp_ena_vsi(vsi)) {
+	if (vsi->xdp_rings) {
 		synchronize_rcu();
 		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
 	}
@@ -189,7 +189,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
 	if (err)
 		return err;
-	if (ice_is_xdp_ena_vsi(vsi)) {
+	if (vsi->xdp_rings) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
 		memset(&txq_meta, 0, sizeof(txq_meta));
-- 
2.43.0

