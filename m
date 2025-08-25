Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA8FB34F73
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 01:00:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B17B342CD6;
	Mon, 25 Aug 2025 23:00:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s81WBixhTalJ; Mon, 25 Aug 2025 23:00:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0D8342CD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756162838;
	bh=Jo3iZgrsox/lqtdJLZWIoVQfH/yfGriRycy6pIck6Rs=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RU+Or5bhB2ahcNaHxlOsDJUkzpS2IzyxMQ8his+8vif50J6JKQufDsUYLTe5G4FF+
	 fZoC831Z1jIzE+K3c9UPKJkj3xSi0pzItBJ7cH8hIUBxgUmeIohukHfjlACVJFnS+c
	 z8+LY72u3RNvSejc4BUKAfAbtPJFapPZE0FLWRsUhU0qh5VmOznDIAF0d4HMbRUiXJ
	 vTLz5vpwGqF2XTNT0yzSa1uCvzvLhSIl2bkUwiVlnFkh21lUAO8mXkoi+KnLPzKK6a
	 wpALFDkekzt2ExFIcND5nidaWBlQPA8sejFW2J2q/EHo4958HaSMPdsDSsJEf8tFLV
	 VMhMoC5J78AQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0D8342CD1;
	Mon, 25 Aug 2025 23:00:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DB9FCD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5327B84B68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:00:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y5EryohNsY6i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 23:00:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BF4B84B63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BF4B84B63
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BF4B84B63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 23:00:35 +0000 (UTC)
X-CSE-ConnectionGUID: 6kK/TaE4SeS3RiqX1FxjYA==
X-CSE-MsgGUID: pOzhvBEcR/uTLj2McZnxaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="61022208"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="61022208"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:00:35 -0700
X-CSE-ConnectionGUID: u3dooMfCTOCwYssk7BoSLQ==
X-CSE-MsgGUID: wEUVuv17SV2/uc6cqoneXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="168918555"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 16:00:35 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 25 Aug 2025 16:00:14 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
X-B4-Tracking: v=1; b=H4sIAP7qrGgC/3XNTQ6CMBAF4KuQrh3TFrHgynsYF7UdZOTPtKRiC
 He3aVywYfny5n2zMI+O0LNLtjCHgTyNQwzykDHT6OGJQDZmJrksuOIlvFogg1DTDG6GHnvoULe
 Q61yWaM1JVYrF8dthPEnwjdGngwEndo9FQ34a3Tc9DCLVf7vas4MAAaa2ViGirnhxpWHC7mjGP
 pFBbhghdhkZmVrnZy3QPnSJW2Zd1x9BB7jjDAEAAA==
X-Change-ID: 20250708-jk-ice-fix-rx-mem-leak-3a328edc4797
To: Michal Kubiak <michal.kubiak@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Christoph Petrausch <christoph.petrausch@deepl.com>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=13826;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=CTQpC9/qrqiqQGGak1GR3W4R+JkV7OKIxboCaX+IbbM=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhow1r4Wafu/b4XrY1P9X5DlRRS6e5qzMtWtrGqdYni28x
 DajtCu1o5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgIm4eDIyPA3+vX9Z/qF5zyJ+
 fVy6UXT37NOv6tzPdeazB7Xt/1v+dw7DH86a0gtu33Y9VBE1vyZ4+NrfNGFR1m3Ps2qXKp64xsY
 7lR0A
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756162836; x=1787698836;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=CTQpC9/qrqiqQGGak1GR3W4R+JkV7OKIxboCaX+IbbM=;
 b=CbDi1AnNnLa/SBjROZknx87C+QA+qmygny0KtVazTKlZeTvH/hYF3IgS
 8LMOMUzBO2I+SgmZdl/M7CipCG07CYPJ3BEeDu/wlpSexFsvWtryziucG
 AkFqKa0hHb3Z3X7HVaZsJ7Ng3SaHA2uarY1JtE8TIqVZRtEZ920d0tqnR
 73sW9py4IoIiTaMjh2VOu2qx7EFwoWNg9vqRzAwM66aUVpAQg+TytDrII
 8mcm2eu7fhSixzXcCUxE/1naZ0j9Z8BKEOMSvy5LNRy6ZjCDo3PVXdvwB
 hABIAzELS/q3r1hL4XsfrWwU43F9E4Q3Y2F3hk52j+j8iZVqhp/yvQLKb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CbDi1AnN
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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

The ice_put_rx_mbuf() function handles calling ice_put_rx_buf() for each
buffer in the current frame. This function was introduced as part of
handling multi-buffer XDP support in the ice driver.

It works by iterating over the buffers from first_desc up to 1 plus the
total number of fragments in the frame, cached from before the XDP program
was executed.

If the hardware posts a descriptor with a size of 0, the logic used in
ice_put_rx_mbuf() breaks. Such descriptors get skipped and don't get added
as fragments in ice_add_xdp_frag. Since the buffer isn't counted as a
fragment, we do not iterate over it in ice_put_rx_mbuf(), and thus we don't
call ice_put_rx_buf().

Because we don't call ice_put_rx_buf(), we don't attempt to re-use the
page or free it. This leaves a stale page in the ring, as we don't
increment next_to_alloc.

The ice_reuse_rx_page() assumes that the next_to_alloc has been incremented
properly, and that it always points to a buffer with a NULL page. Since
this function doesn't check, it will happily recycle a page over the top
of the next_to_alloc buffer, losing track of the old page.

Note that this leak only occurs for multi-buffer frames. The
ice_put_rx_mbuf() function always handles at least one buffer, so a
single-buffer frame will always get handled correctly. It is not clear
precisely why the hardware hands us descriptors with a size of 0 sometimes,
but it happens somewhat regularly with "jumbo frames" used by 9K MTU.

To fix ice_put_rx_mbuf(), we need to make sure to call ice_put_rx_buf() on
all buffers between first_desc and next_to_clean. Borrow the logic of a
similar function in i40e used for this same purpose. Use the same logic
also in ice_get_pgcnts().

Instead of iterating over just the number of fragments, use a loop which
iterates until the current index reaches to the next_to_clean element just
past the current frame. Unlike i40e, the ice_put_rx_mbuf() function does
call ice_put_rx_buf() on the last buffer of the frame indicating the end of
packet.

For non-linear (multi-buffer) frames, we need to take care when adjusting
the pagecnt_bias. An XDP program might release fragments from the tail of
the frame, in which case that fragment page is already released. Only
update the pagecnt_bias for the first descriptor and fragments still
remaining post-XDP program. Take care to only access the shared info for
fragmented buffers, as this avoids a significant cache miss.

The xdp_xmit value only needs to be updated if an XDP program is run, and
only once per packet. Drop the xdp_xmit pointer argument from
ice_put_rx_mbuf(). Instead, set xdp_xmit in the ice_clean_rx_irq() function
directly. This avoids needing to pass the argument and avoids an extra
bit-wise OR for each buffer in the frame.

Move the increment of the ntc local variable to ensure its updated *before*
all calls to ice_get_pgcnts() or ice_put_rx_mbuf(), as the loop logic
requires the index of the element just after the current frame.

Now that we use an index pointer in the ring to identify the packet, we no
longer need to track or cache the number of fragments in the rx_ring.

Cc: Christoph Petrausch <christoph.petrausch@deepl.com>
Cc: Jesper Dangaard Brouer <hawk@kernel.org>
Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Closes: https://lore.kernel.org/netdev/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com/
Fixes: 743bbd93cf29 ("ice: put Rx buffers after being done with current frame")
Tested-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
I've tested this in a setup with MTU 9000, using a combination of iperf3
and wrk generated traffic.

I tested this in a couple of ways. First, I check memory allocations using
/proc/allocinfo:

  awk '/ice_alloc_mapped_page/ { printf("%s %s\n", $1, $2) }' /proc/allocinfo | numfmt --to=iec

Second, I ported some stats from i40e written by Joe Damato to track the
page allocation and busy counts. I consistently saw that the allocate stat
increased without the busy or waive stats increasing. I also added a stat
to track directly when we overwrote a page pointer that was non-NULL in
ice_reuse_rx_page(), and saw it increment consistently.

With this fix, all of these indicators are fixed. I've tested both 1500
byte and 9000 byte MTU and no longer see the leak. With the counters I was
able to immediately see a leak within a few minutes of iperf3, so I am
confident that I've resolved the leak with this fix.

I've now also tested with xdp-bench and confirm that XDP_TX and XDP_REDIR work
properly with the fix for updating xdp_xmit.

This version (v2) avoids the cache miss regression reported by Jesper. I
refactored a bit to only check the shared info if the XDP buffer is
fragmented. I considered adding a helper function to do this to the XDP
header file. However, I scanned several drivers and noticed that only ice
and i40e access the nr_frags in this way. The ice variation I believe will
be removed with the conversion to page pool, so I don't think the addition
of a helper is warranted.

XDP_DROP performance has been tested for this version, thanks to work from
Michal Kubiak. The results are quite promising, with 3 versions being
compared:

* baseline net-next tree
* v1 applied
* v2 applied

Michal said:

  I run the XDP_DROP performance comparison tests on my setup in the way I
  usually do. I didn't have the pktgen configured on my link partner, but I
  used 6 instances of the xdpsock running in Tx-only mode to generate
  high-bandwith traffic. Also, I tried to replicate the conditions according
  to Jesper's description, making sure that all the traffic is directed to a
  single Rx queue and one CPU is 100% loaded.

The performance hit from v1 is replicated, and shown to be gone in v2, with
our results showing even an increase compared to baseline instead of a
drop. I've included the relative packet per second deltas compared against
a baseline test with neither v1 or v2.

baseline to v1, no-touch:
  -8,387,677 packets per second (17%) decrease.

baseline to v2, no-touch:
  +4,057,000 packets per second (8%) increase!

baseline to v1, read data:
  -411,709 packets per second (1%) decrease.

baseline to v2, read data:
  +4,331,857 packets per second (11%) increase!
---
Changes in v2:
- Only access shared info for fragmented frames
- Link to v1: https://lore.kernel.org/netdev/20250815204205.1407768-4-anthony.l.nguyen@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 drivers/net/ethernet/intel/ice/ice_txrx.c | 80 +++++++++++++------------------
 2 files changed, 34 insertions(+), 47 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index fef750c5f288..2fd8e78178a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -358,7 +358,6 @@ struct ice_rx_ring {
 	struct ice_tx_ring *xdp_ring;
 	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
 	struct xsk_buff_pool *xsk_pool;
-	u32 nr_frags;
 	u16 max_frame;
 	u16 rx_buf_len;
 	dma_addr_t dma;			/* physical address of ring */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 29e0088ab6b2..fc92d7a66ad0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -894,10 +894,6 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
 				   rx_buf->page_offset, size);
 	sinfo->xdp_frags_size += size;
-	/* remember frag count before XDP prog execution; bpf_xdp_adjust_tail()
-	 * can pop off frags but driver has to handle it on its own
-	 */
-	rx_ring->nr_frags = sinfo->nr_frags;
 
 	if (page_is_pfmemalloc(rx_buf->page))
 		xdp_buff_set_frag_pfmemalloc(xdp);
@@ -968,20 +964,20 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
 /**
  * ice_get_pgcnts - grab page_count() for gathered fragments
  * @rx_ring: Rx descriptor ring to store the page counts on
+ * @ntc: the next to clean element (not included in this frame!)
  *
  * This function is intended to be called right before running XDP
  * program so that the page recycling mechanism will be able to take
  * a correct decision regarding underlying pages; this is done in such
  * way as XDP program can change the refcount of page
  */
-static void ice_get_pgcnts(struct ice_rx_ring *rx_ring)
+static void ice_get_pgcnts(struct ice_rx_ring *rx_ring, unsigned int ntc)
 {
-	u32 nr_frags = rx_ring->nr_frags + 1;
 	u32 idx = rx_ring->first_desc;
 	struct ice_rx_buf *rx_buf;
 	u32 cnt = rx_ring->count;
 
-	for (int i = 0; i < nr_frags; i++) {
+	while (idx != ntc) {
 		rx_buf = &rx_ring->rx_buf[idx];
 		rx_buf->pgcnt = page_count(rx_buf->page);
 
@@ -1154,62 +1150,51 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 }
 
 /**
- * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
+ * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in frame
  * @rx_ring: Rx ring with all the auxiliary data
  * @xdp: XDP buffer carrying linear + frags part
- * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
- * @ntc: a current next_to_clean value to be stored at rx_ring
+ * @ntc: the next to clean element (not included in this frame!)
  * @verdict: return code from XDP program execution
  *
- * Walk through gathered fragments and satisfy internal page
- * recycle mechanism; we take here an action related to verdict
- * returned by XDP program;
+ * Called after XDP program is completed, or on error with verdict set to
+ * ICE_XDP_CONSUMED.
+ *
+ * Walk through buffers from first_desc to the end of the frame, releasing
+ * buffers and satisfying internal page recycle mechanism. The action depends
+ * on verdict from XDP program.
  */
 static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
-			    u32 *xdp_xmit, u32 ntc, u32 verdict)
+			    u32 ntc, u32 verdict)
 {
-	u32 nr_frags = rx_ring->nr_frags + 1;
 	u32 idx = rx_ring->first_desc;
 	u32 cnt = rx_ring->count;
-	u32 post_xdp_frags = 1;
 	struct ice_rx_buf *buf;
-	int i;
+	u32 xdp_frags = 0;
+	int i = 0;
 
 	if (unlikely(xdp_buff_has_frags(xdp)))
-		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
+		xdp_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
 
-	for (i = 0; i < post_xdp_frags; i++) {
+	while (idx != ntc) {
 		buf = &rx_ring->rx_buf[idx];
+		if (++idx == cnt)
+			idx = 0;
 
-		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+		/* An XDP program could release fragments from the end of the
+		 * buffer. For these, we need to keep the pagecnt_bias as-is.
+		 * To do this, only adjust pagecnt_bias for fragments up to
+		 * the total remaining after the XDP program has run.
+		 */
+		if (verdict != ICE_XDP_CONSUMED)
 			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
-			*xdp_xmit |= verdict;
-		} else if (verdict & ICE_XDP_CONSUMED) {
+		else if (i++ <= xdp_frags)
 			buf->pagecnt_bias++;
-		} else if (verdict == ICE_XDP_PASS) {
-			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
-		}
 
 		ice_put_rx_buf(rx_ring, buf);
-
-		if (++idx == cnt)
-			idx = 0;
-	}
-	/* handle buffers that represented frags released by XDP prog;
-	 * for these we keep pagecnt_bias as-is; refcount from struct page
-	 * has been decremented within XDP prog and we do not have to increase
-	 * the biased refcnt
-	 */
-	for (; i < nr_frags; i++) {
-		buf = &rx_ring->rx_buf[idx];
-		ice_put_rx_buf(rx_ring, buf);
-		if (++idx == cnt)
-			idx = 0;
 	}
 
 	xdp->data = NULL;
 	rx_ring->first_desc = ntc;
-	rx_ring->nr_frags = 0;
 }
 
 /**
@@ -1317,6 +1302,10 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		/* retrieve a buffer from the ring */
 		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
 
+		/* Increment ntc before calls to ice_put_rx_mbuf() */
+		if (++ntc == cnt)
+			ntc = 0;
+
 		if (!xdp->data) {
 			void *hard_start;
 
@@ -1325,24 +1314,23 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 			xdp_buff_clear_frags_flag(xdp);
 		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
-			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
+			ice_put_rx_mbuf(rx_ring, xdp, ntc, ICE_XDP_CONSUMED);
 			break;
 		}
-		if (++ntc == cnt)
-			ntc = 0;
 
 		/* skip if it is NOP desc */
 		if (ice_is_non_eop(rx_ring, rx_desc))
 			continue;
 
-		ice_get_pgcnts(rx_ring);
+		ice_get_pgcnts(rx_ring, ntc);
 		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
 		if (xdp_verdict == ICE_XDP_PASS)
 			goto construct_skb;
 		total_rx_bytes += xdp_get_buff_len(xdp);
 		total_rx_pkts++;
 
-		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
+		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
+		xdp_xmit |= xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR);
 
 		continue;
 construct_skb:
@@ -1355,7 +1343,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
 			xdp_verdict = ICE_XDP_CONSUMED;
 		}
-		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
+		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
 
 		if (!skb)
 			break;

---
base-commit: ec79003c5f9d2c7f9576fc69b8dbda80305cbe3a
change-id: 20250708-jk-ice-fix-rx-mem-leak-3a328edc4797

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

