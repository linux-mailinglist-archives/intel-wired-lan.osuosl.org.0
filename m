Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CB57FDC12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 16:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EB724171C;
	Wed, 29 Nov 2023 15:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EB724171C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701273500;
	bh=Ve7+aOJWwLItig4YTlfx5M/xtAUoV7EQeUsgRgxZdAg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=V0QNh43IKs8u4FxGJp/xYfRK7hBCsI3xFKpDsUXABGDQhyPH5HRC/p2ArOOfnY+3d
	 PzIjCtb9T5AVK2dmjt0tbnYKXbClgnCcGwBseDlmKUMcGWqz00FHB9sK3Q/5si7cPz
	 HKoai/IE5yr/uVfpZnI79egUQcnn8icpyQngpWU3x5wk0wdNEZ2hHy8YlCkrlKzYgV
	 Fd+Cli5AkhDudD3/QZV9JRlpKRakZV5ybXPBixiTXVsoluljSdjML8lGYGVp/rb7yB
	 Xi1jMRZhok1vJj5f85LqEdsTGKmz9pB0gRrVgqNuKVAlmX8F2KRR8NaKzsk+BviyID
	 lUZc7xLf7Hx7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-ssuwCUw4SD; Wed, 29 Nov 2023 15:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 563C1416CD;
	Wed, 29 Nov 2023 15:58:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 563C1416CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 430631BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 08:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1811F4059D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 08:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1811F4059D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acjJcCWzmUsK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 08:27:35 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 29 Nov 2023 08:27:35 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9456C40272
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9456C40272
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 08:27:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="98874"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="98874"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 00:20:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="1100415108"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="1100415108"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2023 00:20:25 -0800
Received: from localhost.localdomain (unknown [10.123.220.123])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2B4A436830;
 Wed, 29 Nov 2023 08:20:24 +0000 (GMT)
From: Jan Glaza <jan.glaza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Nov 2023 02:36:11 -0500
Message-Id: <20231129073611.8816-1-jan.glaza@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Nov 2023 15:58:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701246455; x=1732782455;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JB7QfYr2IVIshrpOKCBYxoSTbkG8kwKxU6DQNDmaM/0=;
 b=P7veGN2eTqBFX2jhqXfnpkEEwvdBOkgKRVNyFTbxCTShybHi2DxPGVgO
 Kb+07cDUKsvKc2x9t72XOisk8Zq10O6vh3LiF6AfcSq4M/jVi8ptHhDCo
 zf8LbFa7h4Q8+fojJchSchJOP3Pqe5um/OFAKx/R0HMoZk0JCMrZc1qjO
 0m2RUwGPXQjSaMCzxow2RxqqFfLPBKoqkqdhSx7m6U789xeMrb3JP2pCO
 4HZw8x9wW0EqkfpNZ/iSSiJYWEtiXic3AStMcKvLVHeD3WXbKKGGVVeaV
 5mCANPZTf4UZBfhL2gh6JcMo8hUOj34ZSyiN4583r4f1/KS2tnRrM+G2m
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P7veGN2e
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: ice_base.c: Add const
 modifier to params and vars
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
Cc: netdev@vger.kernel.org, Sachin Bahadur <sachin.bahadur@intel.com>,
 Jan Glaza <jan.glaza@intel.com>, Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add const modifier to function parameters and variables where appropriate
in ice_base.c and corresponding declarations in ice_base.h.

The reason for starting the change is that read-only pointers should be
marked as const when possible to allow for smoother and more optimal code
generation and optimization as well as allowing the compiler to warn the
developer about potentially unwanted modifications, while not carrying
noticable negative impact.

Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
Reviewed-by: Sachin Bahadur <sachin.bahadur@intel.com>
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
---
This change is done in one file to get comment feedback and, if positive,
will be rolled out across the entire ice driver code.
---
 drivers/net/ethernet/intel/ice/ice_base.c | 6 +++---
 drivers/net/ethernet/intel/ice/ice_base.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 7fa43827a3f0..5ca323ac36ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -278,7 +278,7 @@ static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8
  */
 static u16 ice_eswitch_calc_txq_handle(struct ice_tx_ring *ring)
 {
-	struct ice_vsi *vsi = ring->vsi;
+	const struct ice_vsi *vsi = ring->vsi;
 	int i;
 
 	ice_for_each_txq(vsi, i) {
@@ -960,7 +960,7 @@ ice_cfg_rxq_interrupt(struct ice_vsi *vsi, u16 rxq, u16 msix_idx, u16 itr_idx)
  * @hw: pointer to the HW structure
  * @q_vector: interrupt vector to trigger the software interrupt for
  */
-void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector *q_vector)
+void ice_trigger_sw_intr(struct ice_hw *hw, const struct ice_q_vector *q_vector)
 {
 	wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx),
 	     (ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S) |
@@ -1035,7 +1035,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
  * are needed for stopping Tx queue
  */
 void
-ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_tx_ring *ring,
+ice_fill_txq_meta(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		  struct ice_txq_meta *txq_meta)
 {
 	struct ice_channel *ch = ring->ch;
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index b67dca417acb..17321ba75602 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -22,12 +22,12 @@ void
 ice_cfg_txq_interrupt(struct ice_vsi *vsi, u16 txq, u16 msix_idx, u16 itr_idx);
 void
 ice_cfg_rxq_interrupt(struct ice_vsi *vsi, u16 rxq, u16 msix_idx, u16 itr_idx);
-void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector *q_vector);
+void ice_trigger_sw_intr(struct ice_hw *hw, const struct ice_q_vector *q_vector);
 int
 ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 		     u16 rel_vmvf_num, struct ice_tx_ring *ring,
 		     struct ice_txq_meta *txq_meta);
 void
-ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_tx_ring *ring,
+ice_fill_txq_meta(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		  struct ice_txq_meta *txq_meta);
 #endif /* _ICE_BASE_H_ */
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
