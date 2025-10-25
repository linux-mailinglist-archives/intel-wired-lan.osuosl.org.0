Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A80C092F1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 18:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCBF04092E;
	Sat, 25 Oct 2025 16:09:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fwx-vB7aMzPH; Sat, 25 Oct 2025 16:09:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B197409C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761408577;
	bh=BJNq94ibhVR8WJ0ofFH1OfdNmPilyDduaegXdu81zYs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ioIe7P/Cdy2lFBSPLyRDqRXICkjiYXZDDZrRMGjrhxzn7sz3j3QslakI+36pNgD+3
	 405bEo3HhvKjUwsZt5YIhksLfa2V9YZVq8UL/pFJ0uoE5U2ebSGdsvnuSVKONU1dna
	 xk7cLdCSHTqZUBOPD+ecrQL+T6zFCQp0rg6TsbYjf8oQPeqjs5DrRfhCgE20TTT1+k
	 bfR/UAVCKppboSp8ps4+LGpcai9pYkWm2Xe+u0ziAdC1na4nmHRutc1ahY7le6PKDF
	 vgg60UY7jfllYzeJ0OQMabEOfD6Rpy67aR1YEvmY8wz0eRNIodbCU3PikmF32QIqEE
	 8y0lha94KVNLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B197409C4;
	Sat, 25 Oct 2025 16:09:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B41AD7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71A7F4028E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NbJFUuSwOqBb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 16:09:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCF854027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCF854027C
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCF854027C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:09:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C0C3843CE9;
 Sat, 25 Oct 2025 16:09:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B015C4CEF5;
 Sat, 25 Oct 2025 16:09:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Brahmajit Das <listout@listout.xyz>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Date: Sat, 25 Oct 2025 11:54:01 -0400
Message-ID: <20251025160905.3857885-10-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025160905.3857885-1-sashal@kernel.org>
References: <20251025160905.3857885-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.17.5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761408573;
 bh=l2p8ytWrsCQMp25+omQ8DepULd7IcPVXRE79VUYC7ak=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i4lEsNUqjBPucKKBhvir4obMU3Cc8mAZrYUT/PRmEapvawVMtKIo88hVSuFjfRfby
 jYZOfVw9AlnVX963s4l49S3nKos7DEgOg8zVS3LzWTeTWJl3NTOYqvgI227F6e4LZ0
 uIkBVzwGZy5iQ3Naa92uOHIp8AOONRw2ps+ZUMi+Y9YNI7exCGEsnPKgQ3AYIaZ/To
 EI8FSiAs25fqSoOWG6g7jq18XgsbfJMex6TF804An+OML8GzedaNemLCRIuWIGWQC1
 i13iLYkmdoQOBBl6YzVpVgrFvH3PW6PH6DOmLHDhyuSZtDYn9MnHPPnnA1WfYDzZyb
 duZ2utQPKmOlw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=i4lEsNUq
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.17-5.4] net: intel: fm10k: Fix
 parameter idx set but not used
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brahmajit Das <listout@listout.xyz>

[ Upstream commit 99e9c5ffbbee0f258a1da4eadf602b943f8c8300 ]

Variable idx is set in the loop, but is never used resulting in dead
code. Building with GCC 16, which enables
-Werror=unused-but-set-parameter= by default results in build error.
This patch removes the idx parameter, since all the callers of the
fm10k_unbind_hw_stats_q as 0 as idx anyways.

Suggested-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Brahmajit Das <listout@listout.xyz>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

YES – dropping the unused `idx` argument fixes a real build break while
leaving runtime behaviour unchanged.

- `fm10k_unbind_hw_stats_q` now only walks the passed queue array and
  clears the cached indices
  (`drivers/net/ethernet/intel/fm10k/fm10k_common.c:455`), so the dead
  `idx++` expression that triggered GCC 16’s default `-Werror=unused-
  but-set-parameter` is gone; this restores the ability to build the
  driver with upcoming toolchains.
- The header signature is updated accordingly
  (`drivers/net/ethernet/intel/fm10k/fm10k_common.h:43-46`), and the
  only in-tree callers—PF/VF rebind paths—are adjusted to match
  (`drivers/net/ethernet/intel/fm10k/fm10k_pf.c:1392`,
  `drivers/net/ethernet/intel/fm10k/fm10k_vf.c:468`); all of them
  already passed `0`, so no logic changes.
- `fm10k_hw_stats_q` only carries the `rx_stats_idx`/`tx_stats_idx`
  fields that this helper zeros
  (`drivers/net/ethernet/intel/fm10k/fm10k_type.h:419-426`); no other
  state depends on the removed parameter, and no additional callers
  exist (confirmed by tree-wide search).
- The patch is tiny, self-contained, and purely defensive: it keeps
  released stable kernels buildable with newer GCC without touching live
  datapaths, so regression risk is minimal and it meets the stable
  backport guidelines for important build fixes.

 drivers/net/ethernet/intel/fm10k/fm10k_common.c | 5 ++---
 drivers/net/ethernet/intel/fm10k/fm10k_common.h | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c     | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c     | 2 +-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_common.c b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
index f51a63fca513e..1f919a50c7653 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_common.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
@@ -447,17 +447,16 @@ void fm10k_update_hw_stats_q(struct fm10k_hw *hw, struct fm10k_hw_stats_q *q,
 /**
  *  fm10k_unbind_hw_stats_q - Unbind the queue counters from their queues
  *  @q: pointer to the ring of hardware statistics queue
- *  @idx: index pointing to the start of the ring iteration
  *  @count: number of queues to iterate over
  *
  *  Function invalidates the index values for the queues so any updates that
  *  may have happened are ignored and the base for the queue stats is reset.
  **/
-void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 idx, u32 count)
+void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 count)
 {
 	u32 i;
 
-	for (i = 0; i < count; i++, idx++, q++) {
+	for (i = 0; i < count; i++, q++) {
 		q->rx_stats_idx = 0;
 		q->tx_stats_idx = 0;
 	}
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_common.h b/drivers/net/ethernet/intel/fm10k/fm10k_common.h
index 4c48fb73b3e78..13fca6a91a01b 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_common.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_common.h
@@ -43,6 +43,6 @@ u32 fm10k_read_hw_stats_32b(struct fm10k_hw *hw, u32 addr,
 void fm10k_update_hw_stats_q(struct fm10k_hw *hw, struct fm10k_hw_stats_q *q,
 			     u32 idx, u32 count);
 #define fm10k_unbind_hw_stats_32b(s) ((s)->base_h = 0)
-void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 idx, u32 count);
+void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 count);
 s32 fm10k_get_host_state_generic(struct fm10k_hw *hw, bool *host_ready);
 #endif /* _FM10K_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index b9dd7b7198324..3394645a18fe8 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1389,7 +1389,7 @@ static void fm10k_rebind_hw_stats_pf(struct fm10k_hw *hw,
 	fm10k_unbind_hw_stats_32b(&stats->nodesc_drop);
 
 	/* Unbind Queue Statistics */
-	fm10k_unbind_hw_stats_q(stats->q, 0, hw->mac.max_queues);
+	fm10k_unbind_hw_stats_q(stats->q, hw->mac.max_queues);
 
 	/* Reinitialize bases for all stats */
 	fm10k_update_hw_stats_pf(hw, stats);
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
index 7fb1961f29210..6861a0bdc14e1 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
@@ -465,7 +465,7 @@ static void fm10k_rebind_hw_stats_vf(struct fm10k_hw *hw,
 				     struct fm10k_hw_stats *stats)
 {
 	/* Unbind Queue Statistics */
-	fm10k_unbind_hw_stats_q(stats->q, 0, hw->mac.max_queues);
+	fm10k_unbind_hw_stats_q(stats->q, hw->mac.max_queues);
 
 	/* Reinitialize bases for all stats */
 	fm10k_update_hw_stats_vf(hw, stats);
-- 
2.51.0

