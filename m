Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B4FAFF177
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 21:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D39B740954;
	Wed,  9 Jul 2025 19:08:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlak88kxE8Be; Wed,  9 Jul 2025 19:08:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B3734095A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752088106;
	bh=DULmfiJkv8BvwL9eTq5ikHm2wp6g0TA8qg7gkzxngfA=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0FlxIVknaN3mQ+VNassGLE77jqOWmteTw0D0YW+4uWWskMigRlC5v/c3Zo4u5EKiM
	 7qvjiGwaaSUHUTuRK9I9CBbYVGZccp6gDq1WB1OP9o4SZsyh7a+Xh1AZN2Dsz5BKKn
	 VFLcPqhX0j+jjZGbZlrO9W8FUNCMcogVQXCqaRL0gOC0r8NrO8h48eYXpttKf5VAy2
	 BYThRrSu6B/EM5QT3lDhwLsIM++JxeQHIEYWM0M8bOBlyNRn1oGSS0QX0ei/3l2Jnc
	 EfE+nYDpfkfYR6Z3zEeB/m+no9HLe1L/LESG65GxfoSm/5LOgJ6jxxHP0ASswBsvH5
	 c+qiV9Tt3pNxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B3734095A;
	Wed,  9 Jul 2025 19:08:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B5CD12E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 19:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51E256078E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 19:08:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VcQKNfVywqBt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 19:08:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 587FE606FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 587FE606FA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 587FE606FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 19:08:24 +0000 (UTC)
X-CSE-ConnectionGUID: Yl1WKMbGT/CDvjPw7M02zw==
X-CSE-MsgGUID: H33/8E+NS3WetdVXmQ2EPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="64616843"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="64616843"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 12:08:24 -0700
X-CSE-ConnectionGUID: 9eXdvXbKSNGfVlzHpbJacA==
X-CSE-MsgGUID: j2apNVoWRtC7bt/eooERYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="186828588"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 12:08:23 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 09 Jul 2025 12:07:30 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-jk-ice-fix-rx-mem-leak-v1-1-cfdd7eeea905@intel.com>
X-B4-Tracking: v=1; b=H4sIAPK9bmgC/x2MywrCMBQFf6XctQdiakn1V6SLkB7b20eURLRQ+
 u8GlwMzs0tmUma5VbskfjTrMxY4nyoJo48DoX1hscY2xpkW0wwNxEM3pA0rVyz0M2pf25Z9uLi
 rkxK/EovyH99Fvwsi39Idxw9QEEnycQAAAA==
X-Change-ID: 20250708-jk-ice-fix-rx-mem-leak-3a328edc4797
To: maciej.fijalkowski@intel.com, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Joe Damato <jdamato@fastly.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Christoph Petrausch <christoph.petrausch@deepl.com>, 
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-2503c
X-Developer-Signature: v=1; a=openpgp-sha256; l=10401;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=zFU6F6R+koiqOtUxHIYQ8eIgap9mv25G25XLnH53hgk=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoy8fXJyLfU3PVT+9y26u+5CR1BiOxfTkWsfA+489b7Zs
 DnF9ZdJRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABN5o87wT6OgwWGD56qP789N
 2L3EfI1zo8Kx9jdvl/H7L3mYmK1pwc3wz3KB9hlu46u7dp5u8AtsEPmn2GK82vnddc4XNdMLg7n
 n8wAA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752088105; x=1783624105;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=zFU6F6R+koiqOtUxHIYQ8eIgap9mv25G25XLnH53hgk=;
 b=Hu6SxGUPuFo+ar3XPWgimB+Mj3GMu3kTgcV48bU9iXpsZqnLKQgJkm1x
 G6zLYNZ04S1WBW93SvRsSA7SIlRcuMzX8TwXZ3wXuuUxBZ8kzQUV2VjYn
 6Jt05Cbxt89x4ki+BoHi2QDHShA4/Ac+r7jBF/THPUrh/fEcxAQqMBSDv
 IFVUIafw4hzOBOQpt3CYsMXKZXp/6qV9e5bICeZ6HD0vWU1CkbNehaDTs
 uo60e3ykdt9UE+MJSj4MZtj7OzWUq+tAcFeMC+yUB3QUT0vBUxlWT6ZnP
 OsXp/KiZeIKJWIyc04UMpSFVZF43c02lnAKSsbNlK4PXmmxWPjMKLUnv+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hu6SxGUP
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix Rx page leak on
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
past the current frame. Check the current number of fragments (post XDP
program). For all buffers up 1 more than the number of fragments, we'll
update the pagecnt_bias. For any buffers past this, pagecnt_bias is left
as-is. This ensures that fragments released by the XDP program, as well as
any buffers with zero-size won't have their pagecnt_bias updated
incorrectly. Unlike i40e, the ice_put_rx_mbuf() function does call
ice_put_rx_buf() on the last buffer of the frame indicating end of packet.

Move the increment of the ntc local variable to ensure its updated *before*
all calls to ice_get_pgcnts() or ice_put_rx_mbuf(), as the loop logic
requires the index of the element just after the current frame.

This has the advantage that we also no longer need to track or cache the
number of fragments in the rx_ring, which saves a few bytes in the ring.

Cc: Christoph Petrausch <christoph.petrausch@deepl.com>
Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Closes: https://lore.kernel.org/netdev/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com/
Fixes: 743bbd93cf29 ("ice: put Rx buffers after being done with current frame")
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
---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 drivers/net/ethernet/intel/ice/ice_txrx.c | 71 ++++++++++++-------------------
 2 files changed, 28 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index a4b1e9514632..07155e615f75 100644
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
index 0e5107fe62ad..b139066b6f0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -865,10 +865,6 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
 				   rx_buf->page_offset, size);
 	sinfo->xdp_frags_size += size;
-	/* remember frag count before XDP prog execution; bpf_xdp_adjust_tail()
-	 * can pop off frags but driver has to handle it on its own
-	 */
-	rx_ring->nr_frags = sinfo->nr_frags;
 
 	if (page_is_pfmemalloc(rx_buf->page))
 		xdp_buff_set_frag_pfmemalloc(xdp);
@@ -939,20 +935,20 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
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
 
@@ -1125,62 +1121,49 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 }
 
 /**
- * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
+ * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in frame
  * @rx_ring: Rx ring with all the auxiliary data
  * @xdp: XDP buffer carrying linear + frags part
  * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
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
 			    u32 *xdp_xmit, u32 ntc, u32 verdict)
 {
-	u32 nr_frags = rx_ring->nr_frags + 1;
+	u32 nr_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
 	u32 idx = rx_ring->first_desc;
 	u32 cnt = rx_ring->count;
-	u32 post_xdp_frags = 1;
 	struct ice_rx_buf *buf;
-	int i;
+	int i = 0;
 
-	if (unlikely(xdp_buff_has_frags(xdp)))
-		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
-
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
+		else if (i++ <= nr_frags)
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
@@ -1260,6 +1243,10 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		/* retrieve a buffer from the ring */
 		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
 
+		/* Increment ntc before calls to ice_put_rx_mbuf() */
+		if (++ntc == cnt)
+			ntc = 0;
+
 		if (!xdp->data) {
 			void *hard_start;
 
@@ -1271,14 +1258,12 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
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

---
base-commit: 31ec70afaaad11fb08970bd1b0dc9ebae3501e16
change-id: 20250708-jk-ice-fix-rx-mem-leak-3a328edc4797

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

