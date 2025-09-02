Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81174B40859
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 17:02:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 275D040FA0;
	Tue,  2 Sep 2025 15:02:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RMcrScVoiGj8; Tue,  2 Sep 2025 15:02:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72C1E40FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756825374;
	bh=FJo80hbPCPbCCJKX0571Juj5yIIkXR1ClDqsjuHHfa0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sQ5mkORwaQ6ljsd1bsQqtbKXWKUYbslnCcDShRTRHoJYaIfe2lBPS4C+n3NiMYK9y
	 ZG73C/GPeOjQHuXpfcx5aP2GUTQAj28+vc0MkhGqTqfJOXitSb409/p92RbZQ/d+Ef
	 fXhf2Su2C3CssKzD8TjGXlPqB+RKM6ybts121dOTXn93hDMIT5y9BK6pti/VWfrdY6
	 sDUI8Os6cfDXBBfTTJUNmB172O8imrVQIEFWLD+RyrkPEC/3qfNR94RsMJx1GKeL5m
	 VyVnFthsBWxnKT2dO8/hmx8Wf8qveYwBAteTu7XfF/0LLZ42Q9nD6/gnyKTYCJ/Vsk
	 iHCKOK8HdoHjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72C1E40FBC;
	Tue,  2 Sep 2025 15:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C7A56D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ADD4040B94
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:24:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0wgkKqGjo1s6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 07:24:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.241.56.151;
 helo=mout-p-101.mailbox.org; envelope-from=listout@listout.xyz;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A2D0E4021F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2D0E4021F
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2D0E4021F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:24:50 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4cGHLh5SN2z9spY;
 Tue,  2 Sep 2025 09:24:44 +0200 (CEST)
From: Brahmajit Das <listout@listout.xyz>
To: vadim.fedorenko@linux.dev
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, listout@listout.xyz,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
Date: Tue,  2 Sep 2025 12:54:22 +0530
Message-ID: <20250902072422.603237-1-listout@listout.xyz>
In-Reply-To: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
References: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 02 Sep 2025 15:02:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=listout.xyz; s=MBO0001; t=1756797884;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FJo80hbPCPbCCJKX0571Juj5yIIkXR1ClDqsjuHHfa0=;
 b=Sgo1G0NG6jbVsILifTC4DIswvCE0Z0Z6NBRjSx3oWpI6CtS6wS9ywaXAEdDigzESiep1zN
 5pFKy/h4z35DynMlcZ38fJxcwrcFp8T1HXh+gKeZ/67oiNbZgUm4whs/IGKC+PGDVz4HTe
 SpRyCD/3iWjxEFSkXwI4YWds+zHntEL/LQcFe8zARUF6Lc26LjGwcO394bjmlywrwCIkGe
 Jm2DOqTTdt8OsIeZmeFFQOyrxbSO2KQKnF/rfkqU5g47qfMCeTdQMXP15XRg0KCBU1aif2
 xAYTGR8Z7bsdZQUjhx9U3Vp+RYQDZg2vSxgT0jJhhaT55ujUfx2ktrffi2bndQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=listout.xyz
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=listout.xyz header.i=@listout.xyz header.a=rsa-sha256
 header.s=MBO0001 header.b=Sgo1G0NG
Subject: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter idx
 set but not used
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

Variable idx is set in the loop, but is never used resulting in dead
code. Building with GCC 16, which enables
-Werror=unused-but-set-parameter= by default results in build error.
This patch removes the idx parameter, since all the callers of the
fm10k_unbind_hw_stats_q as 0 as idx anyways.

Suggested-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Brahmajit Das <listout@listout.xyz>
---
changes in v2:
	- Removed the idx parameter, since all callers of
	fm10k_unbind_hw_stats_q passes idx as 0 anyways.
---
 drivers/net/ethernet/intel/fm10k/fm10k_common.c | 5 ++---
 drivers/net/ethernet/intel/fm10k/fm10k_common.h | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c     | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c     | 2 +-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_common.c b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
index f51a63fca513..1f919a50c765 100644
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
index 4c48fb73b3e7..13fca6a91a01 100644
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
index b9dd7b719832..3394645a18fe 100644
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
index 7fb1961f2921..6861a0bdc14e 100644
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

