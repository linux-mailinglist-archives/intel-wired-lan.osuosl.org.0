Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A1DB356E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 10:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDB5084A1F;
	Tue, 26 Aug 2025 08:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r2yKicjNv5Sd; Tue, 26 Aug 2025 08:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C9EC84A5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756197019;
	bh=vywKPFGcST6YCNgBZHlwIcbKDYY1Igg5NJLJr9mzDts=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N8yHj/an4ErIaCB1KfPu00oq2IkpINgIjmDldufUw+F6htqZq4PDVa5hrarcAXYLN
	 8QH0FJb9uMixIuNg/ePXlKwnU15G/QIrG9rJnK52I2Ljll5CD4K7IYciVyTLDys/O4
	 YWkQgKPcwnTnyi5Wq46wQph3JaxII+DpgU2cLSghw9gZornM9APD++UpOp51JgBxX8
	 DYxDIhC7UAtHx0iyZITOAFTErc/YPwnRC4FxrYKiNv0j8KaM7Klo5CZxiuLlQ0BD3v
	 hibVQ9xojlr32ND3zeikyQNEVXpoLh6VasQSGuzvAc/EM5m4LfXgTAk1PnB139KwJE
	 ch8WrqlaE/mNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C9EC84A5D;
	Tue, 26 Aug 2025 08:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20130B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 08:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11F05614E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 08:30:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RgxHl-FH-ltY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 08:30:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA5AF61474
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA5AF61474
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA5AF61474
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 08:30:15 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9D6186028826F;
 Tue, 26 Aug 2025 10:29:49 +0200 (CEST)
Message-ID: <d79129fc-a798-49a8-9a61-564488b95b00@molgen.mpg.de>
Date: Tue, 26 Aug 2025 10:29:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Michal Kubiak <michal.kubiak@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Christoph Petrausch <christoph.petrausch@deepl.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
References: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
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

Dear Jacob,


Thank you for your patch.

Am 26.08.25 um 01:00 schrieb Jacob Keller:
> The ice_put_rx_mbuf() function handles calling ice_put_rx_buf() for each
> buffer in the current frame. This function was introduced as part of
> handling multi-buffer XDP support in the ice driver.
> 
> It works by iterating over the buffers from first_desc up to 1 plus the
> total number of fragments in the frame, cached from before the XDP program
> was executed.
> 
> If the hardware posts a descriptor with a size of 0, the logic used in
> ice_put_rx_mbuf() breaks. Such descriptors get skipped and don't get added
> as fragments in ice_add_xdp_frag. Since the buffer isn't counted as a
> fragment, we do not iterate over it in ice_put_rx_mbuf(), and thus we don't
> call ice_put_rx_buf().
> 
> Because we don't call ice_put_rx_buf(), we don't attempt to re-use the
> page or free it. This leaves a stale page in the ring, as we don't
> increment next_to_alloc.
> 
> The ice_reuse_rx_page() assumes that the next_to_alloc has been incremented
> properly, and that it always points to a buffer with a NULL page. Since
> this function doesn't check, it will happily recycle a page over the top
> of the next_to_alloc buffer, losing track of the old page.
> 
> Note that this leak only occurs for multi-buffer frames. The
> ice_put_rx_mbuf() function always handles at least one buffer, so a
> single-buffer frame will always get handled correctly. It is not clear
> precisely why the hardware hands us descriptors with a size of 0 sometimes,
> but it happens somewhat regularly with "jumbo frames" used by 9K MTU.
> 
> To fix ice_put_rx_mbuf(), we need to make sure to call ice_put_rx_buf() on
> all buffers between first_desc and next_to_clean. Borrow the logic of a
> similar function in i40e used for this same purpose. Use the same logic
> also in ice_get_pgcnts().
> 
> Instead of iterating over just the number of fragments, use a loop which
> iterates until the current index reaches to the next_to_clean element just
> past the current frame. Unlike i40e, the ice_put_rx_mbuf() function does
> call ice_put_rx_buf() on the last buffer of the frame indicating the end of
> packet.
> 
> For non-linear (multi-buffer) frames, we need to take care when adjusting
> the pagecnt_bias. An XDP program might release fragments from the tail of
> the frame, in which case that fragment page is already released. Only
> update the pagecnt_bias for the first descriptor and fragments still
> remaining post-XDP program. Take care to only access the shared info for
> fragmented buffers, as this avoids a significant cache miss.
> 
> The xdp_xmit value only needs to be updated if an XDP program is run, and
> only once per packet. Drop the xdp_xmit pointer argument from
> ice_put_rx_mbuf(). Instead, set xdp_xmit in the ice_clean_rx_irq() function
> directly. This avoids needing to pass the argument and avoids an extra
> bit-wise OR for each buffer in the frame.
> 
> Move the increment of the ntc local variable to ensure its updated *before*
> all calls to ice_get_pgcnts() or ice_put_rx_mbuf(), as the loop logic
> requires the index of the element just after the current frame.
> 
> Now that we use an index pointer in the ring to identify the packet, we no
> longer need to track or cache the number of fragments in the rx_ring.
> 
> Cc: Christoph Petrausch <christoph.petrausch@deepl.com>
> Cc: Jesper Dangaard Brouer <hawk@kernel.org>
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Closes: https://lore.kernel.org/netdev/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com/
> Fixes: 743bbd93cf29 ("ice: put Rx buffers after being done with current frame")
> Tested-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I've tested this in a setup with MTU 9000, using a combination of iperf3
> and wrk generated traffic.
> 
> I tested this in a couple of ways. First, I check memory allocations using
> /proc/allocinfo:
> 
>    awk '/ice_alloc_mapped_page/ { printf("%s %s\n", $1, $2) }' /proc/allocinfo | numfmt --to=iec
> 
> Second, I ported some stats from i40e written by Joe Damato to track the
> page allocation and busy counts. I consistently saw that the allocate stat
> increased without the busy or waive stats increasing. I also added a stat
> to track directly when we overwrote a page pointer that was non-NULL in
> ice_reuse_rx_page(), and saw it increment consistently.
> 
> With this fix, all of these indicators are fixed. I've tested both 1500
> byte and 9000 byte MTU and no longer see the leak. With the counters I was
> able to immediately see a leak within a few minutes of iperf3, so I am
> confident that I've resolved the leak with this fix.
> 
> I've now also tested with xdp-bench and confirm that XDP_TX and XDP_REDIR work
> properly with the fix for updating xdp_xmit.
> 
> This version (v2) avoids the cache miss regression reported by Jesper. I
> refactored a bit to only check the shared info if the XDP buffer is
> fragmented. I considered adding a helper function to do this to the XDP
> header file. However, I scanned several drivers and noticed that only ice
> and i40e access the nr_frags in this way. The ice variation I believe will
> be removed with the conversion to page pool, so I don't think the addition
> of a helper is warranted.
> 
> XDP_DROP performance has been tested for this version, thanks to work from
> Michal Kubiak. The results are quite promising, with 3 versions being
> compared:
> 
> * baseline net-next tree
> * v1 applied
> * v2 applied
> 
> Michal said:
> 
>    I run the XDP_DROP performance comparison tests on my setup in the way I
>    usually do. I didn't have the pktgen configured on my link partner, but I
>    used 6 instances of the xdpsock running in Tx-only mode to generate
>    high-bandwith traffic. Also, I tried to replicate the conditions according
>    to Jesper's description, making sure that all the traffic is directed to a
>    single Rx queue and one CPU is 100% loaded.
> 
> The performance hit from v1 is replicated, and shown to be gone in v2, with
> our results showing even an increase compared to baseline instead of a
> drop. I've included the relative packet per second deltas compared against
> a baseline test with neither v1 or v2.
> 
> baseline to v1, no-touch:
>    -8,387,677 packets per second (17%) decrease.
> 
> baseline to v2, no-touch:
>    +4,057,000 packets per second (8%) increase!
> 
> baseline to v1, read data:
>    -411,709 packets per second (1%) decrease.
> 
> baseline to v2, read data:
>    +4,331,857 packets per second (11%) increase!

I would love to see this in the commit message.

> ---
> Changes in v2:
> - Only access shared info for fragmented frames
> - Link to v1: https://lore.kernel.org/netdev/20250815204205.1407768-4-anthony.l.nguyen@intel.com/
> ---
>   drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>   drivers/net/ethernet/intel/ice/ice_txrx.c | 80 +++++++++++++------------------
>   2 files changed, 34 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index fef750c5f288..2fd8e78178a2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -358,7 +358,6 @@ struct ice_rx_ring {
>   	struct ice_tx_ring *xdp_ring;
>   	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
>   	struct xsk_buff_pool *xsk_pool;
> -	u32 nr_frags;
>   	u16 max_frame;
>   	u16 rx_buf_len;
>   	dma_addr_t dma;			/* physical address of ring */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 29e0088ab6b2..fc92d7a66ad0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -894,10 +894,6 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>   	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
>   				   rx_buf->page_offset, size);
>   	sinfo->xdp_frags_size += size;
> -	/* remember frag count before XDP prog execution; bpf_xdp_adjust_tail()
> -	 * can pop off frags but driver has to handle it on its own
> -	 */
> -	rx_ring->nr_frags = sinfo->nr_frags;
>   
>   	if (page_is_pfmemalloc(rx_buf->page))
>   		xdp_buff_set_frag_pfmemalloc(xdp);
> @@ -968,20 +964,20 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
>   /**
>    * ice_get_pgcnts - grab page_count() for gathered fragments
>    * @rx_ring: Rx descriptor ring to store the page counts on
> + * @ntc: the next to clean element (not included in this frame!)
>    *
>    * This function is intended to be called right before running XDP
>    * program so that the page recycling mechanism will be able to take
>    * a correct decision regarding underlying pages; this is done in such
>    * way as XDP program can change the refcount of page
>    */
> -static void ice_get_pgcnts(struct ice_rx_ring *rx_ring)
> +static void ice_get_pgcnts(struct ice_rx_ring *rx_ring, unsigned int ntc)
>   {
> -	u32 nr_frags = rx_ring->nr_frags + 1;
>   	u32 idx = rx_ring->first_desc;
>   	struct ice_rx_buf *rx_buf;
>   	u32 cnt = rx_ring->count;
>   
> -	for (int i = 0; i < nr_frags; i++) {
> +	while (idx != ntc) {
>   		rx_buf = &rx_ring->rx_buf[idx];
>   		rx_buf->pgcnt = page_count(rx_buf->page);
>   
> @@ -1154,62 +1150,51 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
>   }
>   
>   /**
> - * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
> + * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in frame
>    * @rx_ring: Rx ring with all the auxiliary data
>    * @xdp: XDP buffer carrying linear + frags part
> - * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
> - * @ntc: a current next_to_clean value to be stored at rx_ring
> + * @ntc: the next to clean element (not included in this frame!)
>    * @verdict: return code from XDP program execution
>    *
> - * Walk through gathered fragments and satisfy internal page
> - * recycle mechanism; we take here an action related to verdict
> - * returned by XDP program;
> + * Called after XDP program is completed, or on error with verdict set to
> + * ICE_XDP_CONSUMED.
> + *
> + * Walk through buffers from first_desc to the end of the frame, releasing
> + * buffers and satisfying internal page recycle mechanism. The action depends
> + * on verdict from XDP program.
>    */
>   static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> -			    u32 *xdp_xmit, u32 ntc, u32 verdict)
> +			    u32 ntc, u32 verdict)
>   {
> -	u32 nr_frags = rx_ring->nr_frags + 1;
>   	u32 idx = rx_ring->first_desc;
>   	u32 cnt = rx_ring->count;
> -	u32 post_xdp_frags = 1;
>   	struct ice_rx_buf *buf;
> -	int i;
> +	u32 xdp_frags = 0;
> +	int i = 0;
>   
>   	if (unlikely(xdp_buff_has_frags(xdp)))
> -		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
> +		xdp_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
>   
> -	for (i = 0; i < post_xdp_frags; i++) {
> +	while (idx != ntc) {
>   		buf = &rx_ring->rx_buf[idx];
> +		if (++idx == cnt)
> +			idx = 0;
>   
> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> +		/* An XDP program could release fragments from the end of the
> +		 * buffer. For these, we need to keep the pagecnt_bias as-is.
> +		 * To do this, only adjust pagecnt_bias for fragments up to
> +		 * the total remaining after the XDP program has run.
> +		 */
> +		if (verdict != ICE_XDP_CONSUMED)
>   			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -			*xdp_xmit |= verdict;
> -		} else if (verdict & ICE_XDP_CONSUMED) {
> +		else if (i++ <= xdp_frags)
>   			buf->pagecnt_bias++;
> -		} else if (verdict == ICE_XDP_PASS) {
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		}
>   
>   		ice_put_rx_buf(rx_ring, buf);
> -
> -		if (++idx == cnt)
> -			idx = 0;
> -	}
> -	/* handle buffers that represented frags released by XDP prog;
> -	 * for these we keep pagecnt_bias as-is; refcount from struct page
> -	 * has been decremented within XDP prog and we do not have to increase
> -	 * the biased refcnt
> -	 */
> -	for (; i < nr_frags; i++) {
> -		buf = &rx_ring->rx_buf[idx];
> -		ice_put_rx_buf(rx_ring, buf);
> -		if (++idx == cnt)
> -			idx = 0;
>   	}
>   
>   	xdp->data = NULL;
>   	rx_ring->first_desc = ntc;
> -	rx_ring->nr_frags = 0;
>   }
>   
>   /**
> @@ -1317,6 +1302,10 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   		/* retrieve a buffer from the ring */
>   		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
>   
> +		/* Increment ntc before calls to ice_put_rx_mbuf() */
> +		if (++ntc == cnt)
> +			ntc = 0;
> +
>   		if (!xdp->data) {
>   			void *hard_start;
>   
> @@ -1325,24 +1314,23 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
>   			xdp_buff_clear_frags_flag(xdp);
>   		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
> -			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
> +			ice_put_rx_mbuf(rx_ring, xdp, ntc, ICE_XDP_CONSUMED);
>   			break;
>   		}
> -		if (++ntc == cnt)
> -			ntc = 0;
>   
>   		/* skip if it is NOP desc */
>   		if (ice_is_non_eop(rx_ring, rx_desc))
>   			continue;
>   
> -		ice_get_pgcnts(rx_ring);
> +		ice_get_pgcnts(rx_ring, ntc);
>   		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
>   		if (xdp_verdict == ICE_XDP_PASS)
>   			goto construct_skb;
>   		total_rx_bytes += xdp_get_buff_len(xdp);
>   		total_rx_pkts++;
>   
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> +		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
> +		xdp_xmit |= xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR);
>   
>   		continue;
>   construct_skb:
> @@ -1355,7 +1343,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>   			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
>   			xdp_verdict = ICE_XDP_CONSUMED;
>   		}
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> +		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
>   
>   		if (!skb)
>   			break;

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
