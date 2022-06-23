Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF4C557775
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jun 2022 12:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 489CF424BC;
	Thu, 23 Jun 2022 10:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 489CF424BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655978959;
	bh=yhiWdZloq2l5NLZiOnYBZ6apX5t6/UXJlS/zwgIAWGU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aLG+V6z7s5UBUbzoz0rv8jNwW+M4c/3x5JEMqIH1kv5XABC/mAHW+XIq/60vZOFQv
	 S9xUmXOCTW5eezJoTQf+866Ix/JQgLXc3Yt7oVIgCdLJv83ZbQ6OWrb0MnB678lOhX
	 yUMlRzKvx/DcMv+P+OuMdQh1I1oH7WBLoFyQkVYcmSQQY92PffLfqgkpCvE7Q7gL9J
	 9mIt5IPe2FgXd6rfA8Bk4aj7SovsdnkuUq/D/HSk2uM3rcB+SbUKJ4Gs7pqSMi5RgK
	 jbNVsaCQ0I2KV1o5Zaqaqr6gxyitRQLkwzGsFCe5OIsh3nalZfw/r0zMnyi7iW3azy
	 yGPtonYKsGeHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6ED57ELmlDT; Thu, 23 Jun 2022 10:09:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D6DB424BB;
	Thu, 23 Jun 2022 10:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D6DB424BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A3E71BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 10:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32A4A84727
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 10:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32A4A84727
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hIZ5joAJdjjM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jun 2022 10:09:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC61884720
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC61884720
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jun 2022 10:09:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="278227995"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="278227995"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 03:09:07 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="915126988"
Received: from silpixa00401086.ir.intel.com ([10.55.128.124])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 03:09:04 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 kuba@kernel.org
Date: Thu, 23 Jun 2022 10:08:52 +0000
Message-Id: <20220623100852.7867-1-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655978950; x=1687514950;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jA77PzIoNXk7nFImbHRx1GPrP2Ro2H86IsqPha9kQtg=;
 b=VoW3VFu2DILkLua4F3ETZFWINSPZKLaP+tsB3EvpS/OcRKoPihHBavWa
 ND5unV6OoniP6QTlrBL6vRKuLqFjVBn0SOm8kal7J0egMGEi83bRXMNMU
 6fWLkci8g7lc0DXJXfmQgDjiSmMnYixp+23Nj1Vz5OEtJGUFBjBCxo8AJ
 V09Oq8n8nAsBGAOWORDzD7vscU/EjXEMgdFnkr7JT0vF/pKL5LePXF7ME
 8UvtA/B2kXvn5KTmCF0umPM7whWJCXBaOa0oKYygozHRVD9tJviLWC/0l
 4ke86elu7CntarIcJM0srpMe0OVAp66BM0QhXkS8QFvODmclTBsqXKgOd
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VoW3VFu2
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: read the XDP program
 once per NAPI
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Similar to how it's done in the ice driver since 'eb087cd82864 ("ice:
propagate xdp_ring onto rx_ring")', read the XDP program once per NAPI
instead of once per descriptor cleaned. I measured an improvement in
throughput of 2% for the AF_XDP xdpsock l2fwd benchmark for zero copy mode
and 1% for copy mode.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 ++++++-----
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 17 ++++++++++-------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index dadef56e5f9b..a327189deda0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2289,16 +2289,14 @@ int i40e_xmit_xdp_tx_ring(struct xdp_buff *xdp, struct i40e_ring *xdp_ring)
  * i40e_run_xdp - run an XDP program
  * @rx_ring: Rx ring being processed
  * @xdp: XDP buffer containing the frame
+ * @xdp_prog: XDP program to run
  **/
-static int i40e_run_xdp(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
+static int i40e_run_xdp(struct i40e_ring *rx_ring, struct xdp_buff *xdp, struct bpf_prog *xdp_prog)
 {
 	int err, result = I40E_XDP_PASS;
 	struct i40e_ring *xdp_ring;
-	struct bpf_prog *xdp_prog;
 	u32 act;
 
-	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
-
 	if (!xdp_prog)
 		goto xdp_out;
 
@@ -2443,6 +2441,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 	unsigned int offset = rx_ring->rx_offset;
 	struct sk_buff *skb = rx_ring->skb;
 	unsigned int xdp_xmit = 0;
+	struct bpf_prog *xdp_prog;
 	bool failure = false;
 	struct xdp_buff xdp;
 	int xdp_res = 0;
@@ -2452,6 +2451,8 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 #endif
 	xdp_init_buff(&xdp, frame_sz, &rx_ring->xdp_rxq);
 
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		struct i40e_rx_buffer *rx_buffer;
 		union i40e_rx_desc *rx_desc;
@@ -2512,7 +2513,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = i40e_rx_frame_truesize(rx_ring, size);
 #endif
-			xdp_res = i40e_run_xdp(rx_ring, &xdp);
+			xdp_res = i40e_run_xdp(rx_ring, &xdp, xdp_prog);
 		}
 
 		if (xdp_res) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index af3e7e6afc85..6d4009e0cbd6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -143,20 +143,17 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
  * i40e_run_xdp_zc - Executes an XDP program on an xdp_buff
  * @rx_ring: Rx ring
  * @xdp: xdp_buff used as input to the XDP program
+ * @xdp_prog: XDP program to run
  *
  * Returns any of I40E_XDP_{PASS, CONSUMED, TX, REDIR}
  **/
-static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
+static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp,
+			   struct bpf_prog *xdp_prog)
 {
 	int err, result = I40E_XDP_PASS;
 	struct i40e_ring *xdp_ring;
-	struct bpf_prog *xdp_prog;
 	u32 act;
 
-	/* NB! xdp_prog will always be !NULL, due to the fact that
-	 * this path is enabled by setting an XDP program.
-	 */
-	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 
 	if (likely(act == XDP_REDIRECT)) {
@@ -339,9 +336,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	u16 next_to_clean = rx_ring->next_to_clean;
 	u16 count_mask = rx_ring->count - 1;
 	unsigned int xdp_res, xdp_xmit = 0;
+	struct bpf_prog *xdp_prog;
 	bool failure = false;
 	u16 cleaned_count;
 
+	/* NB! xdp_prog will always be !NULL, due to the fact that
+	 * this path is enabled by setting an XDP program.
+	 */
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union i40e_rx_desc *rx_desc;
 		unsigned int rx_packets;
@@ -378,7 +381,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		xsk_buff_set_size(bi, size);
 		xsk_buff_dma_sync_for_cpu(bi, rx_ring->xsk_pool);
 
-		xdp_res = i40e_run_xdp_zc(rx_ring, bi);
+		xdp_res = i40e_run_xdp_zc(rx_ring, bi, xdp_prog);
 		i40e_handle_xdp_result_zc(rx_ring, bi, rx_desc, &rx_packets,
 					  &rx_bytes, size, xdp_res, &failure);
 		if (failure)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
