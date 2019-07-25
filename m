Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB9756C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04F05874D4;
	Thu, 25 Jul 2019 18:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rb+ZONqOzl-m; Thu, 25 Jul 2019 18:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D1A78745D;
	Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FC131BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D42A86582
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pF9aymy8qHhC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57ECC86591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897601"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:17 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:53 -0700
Message-Id: <20190725095401.24590-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 04/12] ice: Fix ethtool port and PFC
 stats for 4x25G cards
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

From: Usha Ketineni <usha.k.ketineni@intel.com>

This patch fixes the issue where port and PFC statistics counters are
incrementing at the wrong port with 4x25G cards.
Read the GLPRT port registers using lport parameter instead of pf_id to
update the statistics otherwise the pf_ids are flipped for ports 2 and 3
when read from the HW register PF_FUNC_RID and this is expected as per
hardware specification.

Signed-off-by: Usha Ketineni <usha.k.ketineni@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 13 ++--
 drivers/net/ethernet/intel/ice/ice_main.c    | 76 ++++++++++----------
 2 files changed, 45 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 21405958aa63..34c9d1e01529 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -505,30 +505,31 @@ void ice_update_dcb_stats(struct ice_pf *pf)
 {
 	struct ice_hw_port_stats *prev_ps, *cur_ps;
 	struct ice_hw *hw = &pf->hw;
-	u8 pf_id = hw->pf_id;
+	u8 port;
 	int i;
 
+	port = hw->port_info->lport;
 	prev_ps = &pf->stats_prev;
 	cur_ps = &pf->stats;
 
 	for (i = 0; i < 8; i++) {
-		ice_stat_update32(hw, GLPRT_PXOFFRXC(pf_id, i),
+		ice_stat_update32(hw, GLPRT_PXOFFRXC(port, i),
 				  pf->stat_prev_loaded,
 				  &prev_ps->priority_xoff_rx[i],
 				  &cur_ps->priority_xoff_rx[i]);
-		ice_stat_update32(hw, GLPRT_PXONRXC(pf_id, i),
+		ice_stat_update32(hw, GLPRT_PXONRXC(port, i),
 				  pf->stat_prev_loaded,
 				  &prev_ps->priority_xon_rx[i],
 				  &cur_ps->priority_xon_rx[i]);
-		ice_stat_update32(hw, GLPRT_PXONTXC(pf_id, i),
+		ice_stat_update32(hw, GLPRT_PXONTXC(port, i),
 				  pf->stat_prev_loaded,
 				  &prev_ps->priority_xon_tx[i],
 				  &cur_ps->priority_xon_tx[i]);
-		ice_stat_update32(hw, GLPRT_PXOFFTXC(pf_id, i),
+		ice_stat_update32(hw, GLPRT_PXOFFTXC(port, i),
 				  pf->stat_prev_loaded,
 				  &prev_ps->priority_xoff_tx[i],
 				  &cur_ps->priority_xoff_tx[i]);
-		ice_stat_update32(hw, GLPRT_RXON2OFFCNT(pf_id, i),
+		ice_stat_update32(hw, GLPRT_RXON2OFFCNT(port, i),
 				  pf->stat_prev_loaded,
 				  &prev_ps->priority_xon_2_xoff[i],
 				  &cur_ps->priority_xon_2_xoff[i]);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 072771543582..920122443c0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3298,25 +3298,25 @@ void ice_update_pf_stats(struct ice_pf *pf)
 {
 	struct ice_hw_port_stats *prev_ps, *cur_ps;
 	struct ice_hw *hw = &pf->hw;
-	u8 pf_id;
+	u8 port;
 
+	port = hw->port_info->lport;
 	prev_ps = &pf->stats_prev;
 	cur_ps = &pf->stats;
-	pf_id = hw->pf_id;
 
-	ice_stat_update40(hw, GLPRT_GORCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_GORCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.rx_bytes,
 			  &cur_ps->eth.rx_bytes);
 
-	ice_stat_update40(hw, GLPRT_UPRCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_UPRCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.rx_unicast,
 			  &cur_ps->eth.rx_unicast);
 
-	ice_stat_update40(hw, GLPRT_MPRCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_MPRCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.rx_multicast,
 			  &cur_ps->eth.rx_multicast);
 
-	ice_stat_update40(hw, GLPRT_BPRCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_BPRCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.rx_broadcast,
 			  &cur_ps->eth.rx_broadcast);
 
@@ -3324,109 +3324,109 @@ void ice_update_pf_stats(struct ice_pf *pf)
 			  &prev_ps->eth.rx_discards,
 			  &cur_ps->eth.rx_discards);
 
-	ice_stat_update40(hw, GLPRT_GOTCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_GOTCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.tx_bytes,
 			  &cur_ps->eth.tx_bytes);
 
-	ice_stat_update40(hw, GLPRT_UPTCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_UPTCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.tx_unicast,
 			  &cur_ps->eth.tx_unicast);
 
-	ice_stat_update40(hw, GLPRT_MPTCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_MPTCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.tx_multicast,
 			  &cur_ps->eth.tx_multicast);
 
-	ice_stat_update40(hw, GLPRT_BPTCL(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_BPTCL(port), pf->stat_prev_loaded,
 			  &prev_ps->eth.tx_broadcast,
 			  &cur_ps->eth.tx_broadcast);
 
-	ice_stat_update32(hw, GLPRT_TDOLD(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_TDOLD(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_dropped_link_down,
 			  &cur_ps->tx_dropped_link_down);
 
-	ice_stat_update40(hw, GLPRT_PRC64L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC64L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_64, &cur_ps->rx_size_64);
 
-	ice_stat_update40(hw, GLPRT_PRC127L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC127L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_127, &cur_ps->rx_size_127);
 
-	ice_stat_update40(hw, GLPRT_PRC255L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC255L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_255, &cur_ps->rx_size_255);
 
-	ice_stat_update40(hw, GLPRT_PRC511L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC511L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_511, &cur_ps->rx_size_511);
 
-	ice_stat_update40(hw, GLPRT_PRC1023L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC1023L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_1023, &cur_ps->rx_size_1023);
 
-	ice_stat_update40(hw, GLPRT_PRC1522L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC1522L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_1522, &cur_ps->rx_size_1522);
 
-	ice_stat_update40(hw, GLPRT_PRC9522L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PRC9522L(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_size_big, &cur_ps->rx_size_big);
 
-	ice_stat_update40(hw, GLPRT_PTC64L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC64L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_64, &cur_ps->tx_size_64);
 
-	ice_stat_update40(hw, GLPRT_PTC127L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC127L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_127, &cur_ps->tx_size_127);
 
-	ice_stat_update40(hw, GLPRT_PTC255L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC255L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_255, &cur_ps->tx_size_255);
 
-	ice_stat_update40(hw, GLPRT_PTC511L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC511L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_511, &cur_ps->tx_size_511);
 
-	ice_stat_update40(hw, GLPRT_PTC1023L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC1023L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_1023, &cur_ps->tx_size_1023);
 
-	ice_stat_update40(hw, GLPRT_PTC1522L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC1522L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_1522, &cur_ps->tx_size_1522);
 
-	ice_stat_update40(hw, GLPRT_PTC9522L(pf_id), pf->stat_prev_loaded,
+	ice_stat_update40(hw, GLPRT_PTC9522L(port), pf->stat_prev_loaded,
 			  &prev_ps->tx_size_big, &cur_ps->tx_size_big);
 
-	ice_stat_update32(hw, GLPRT_LXONRXC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_LXONRXC(port), pf->stat_prev_loaded,
 			  &prev_ps->link_xon_rx, &cur_ps->link_xon_rx);
 
-	ice_stat_update32(hw, GLPRT_LXOFFRXC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_LXOFFRXC(port), pf->stat_prev_loaded,
 			  &prev_ps->link_xoff_rx, &cur_ps->link_xoff_rx);
 
-	ice_stat_update32(hw, GLPRT_LXONTXC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_LXONTXC(port), pf->stat_prev_loaded,
 			  &prev_ps->link_xon_tx, &cur_ps->link_xon_tx);
 
-	ice_stat_update32(hw, GLPRT_LXOFFTXC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_LXOFFTXC(port), pf->stat_prev_loaded,
 			  &prev_ps->link_xoff_tx, &cur_ps->link_xoff_tx);
 
 	ice_update_dcb_stats(pf);
 
-	ice_stat_update32(hw, GLPRT_CRCERRS(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_CRCERRS(port), pf->stat_prev_loaded,
 			  &prev_ps->crc_errors, &cur_ps->crc_errors);
 
-	ice_stat_update32(hw, GLPRT_ILLERRC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_ILLERRC(port), pf->stat_prev_loaded,
 			  &prev_ps->illegal_bytes, &cur_ps->illegal_bytes);
 
-	ice_stat_update32(hw, GLPRT_MLFC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_MLFC(port), pf->stat_prev_loaded,
 			  &prev_ps->mac_local_faults,
 			  &cur_ps->mac_local_faults);
 
-	ice_stat_update32(hw, GLPRT_MRFC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_MRFC(port), pf->stat_prev_loaded,
 			  &prev_ps->mac_remote_faults,
 			  &cur_ps->mac_remote_faults);
 
-	ice_stat_update32(hw, GLPRT_RLEC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_RLEC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_len_errors, &cur_ps->rx_len_errors);
 
-	ice_stat_update32(hw, GLPRT_RUC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_RUC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_undersize, &cur_ps->rx_undersize);
 
-	ice_stat_update32(hw, GLPRT_RFC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_RFC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_fragments, &cur_ps->rx_fragments);
 
-	ice_stat_update32(hw, GLPRT_ROC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_ROC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_oversize, &cur_ps->rx_oversize);
 
-	ice_stat_update32(hw, GLPRT_RJC(pf_id), pf->stat_prev_loaded,
+	ice_stat_update32(hw, GLPRT_RJC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_jabber, &cur_ps->rx_jabber);
 
 	pf->stat_prev_loaded = true;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
