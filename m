Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5D93691B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 14:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 410D360DEE;
	Fri, 23 Apr 2021 12:04:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYqUPTnlwbNM; Fri, 23 Apr 2021 12:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35DF2605DF;
	Fri, 23 Apr 2021 12:04:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C9CE1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 765074040D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rdUtPw7vTi4v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 12:04:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47847403F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:04:19 +0000 (UTC)
IronPort-SDR: vI9Nd5jCQgch7WWPa949V+EAKQsNhhRtHGWDuxx7yM6vcL/NKFpEMJghCeqnC9jKvNaF63y0mz
 xQMAVWPBmhxw==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="196116294"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="196116294"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 05:04:19 -0700
IronPort-SDR: OfSPyRr9Mc6qMOLTOWeuxuRoSy35VGQNYyqd/9CDrxM9o2EVFiaKiJk19anWb6BrfaoL/A9cr7
 rqzxg7FcA9sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="456200164"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 23 Apr 2021 05:04:17 -0700
Date: Fri, 23 Apr 2021 13:49:33 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20210423114933.GA64904@ranger.igk.intel.com>
References: <20210423095955.15207-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423095955.15207-1-magnus.karlsson@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH intel-net] i40e: fix broken XDP support
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
Cc: Jesper Dangaard Brouer <brouer@redhat.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 23, 2021 at 11:59:55AM +0200, Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") broke
> XDP support in the i40e driver. That commit was fixing a sparse error
> in the code by introducing a new variable xdp_res instead of
> overloading this into the skb pointer. The problem is that the code

'this' means the result of xdp program, right?

> later uses the skb pointer in if statements and these where not
> extended to also test for the new xdp_res variable. Fix this by adding
> the correct tests for xdp_res in these places.

Let's be more specific what was happening. Would be good to mention what
these if statements were actually about.

i40e_cleanup_headers() had a check that based on the skb value that was
adequate to what we stored there (ERR_PTR(-result)) on exit from
i40e_run_xdp() made a whole napi processing loop not to advance with the
logic which would in turn pass the skb to the stack, but rather start to
process the next descriptor. IOW that point was the end of the XDP data
path for result != XDP_PASS.

Given that we mask the XDP_PASS internally to I40E_XDP_PASS which is 0, we
simply introduce the test against xdp_res and drop the IS_ERR(skb) from
i40e_cleanup_headers() since it's not legit anymore.

Without your change, we probably were terminating the whole loop over
here:
		/* exit if we failed to retrieve a buffer */
		if (!skb) {
			rx_ring->rx_stats.alloc_buff_failed++;
			rx_buffer->pagecnt_bias++;
			break;
		}

For XDP actions as the skb wasn't set anymore. So check you're adding
would make us skip the above for correct cases but then we need also the
next changes around i40e_cleanup_headers() as otherwise we would be
passing the NULL skb to the stack AFAICT :/

Would be also good to hear about the rationale behind initialization of
xdp_res per each loop iteration.

Can you send a v2 with improved commit message? So that in future we would
be aware what was fixed. Probably not the best write up from my side, but
I wanted to make it more clear.

> 
> Fixes: 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 06b4271219b1..46355c6bdc8f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1961,10 +1961,6 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
>  				 union i40e_rx_desc *rx_desc)
>  
>  {
> -	/* XDP packets use error pointer so abort at this point */
> -	if (IS_ERR(skb))
> -		return true;
> -
>  	/* ERR_MASK will only have valid bits if EOP set, and
>  	 * what we are doing here is actually checking
>  	 * I40E_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
> @@ -2447,7 +2443,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>  	unsigned int xdp_xmit = 0;
>  	bool failure = false;
>  	struct xdp_buff xdp;
> -	int xdp_res = 0;
>  
>  #if (PAGE_SIZE < 8192)
>  	frame_sz = i40e_rx_frame_truesize(rx_ring, 0);
> @@ -2459,6 +2454,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>  		union i40e_rx_desc *rx_desc;
>  		int rx_buffer_pgcnt;
>  		unsigned int size;
> +		int xdp_res = 0;
>  		u64 qword;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
> @@ -2534,7 +2530,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>  		}
>  
>  		/* exit if we failed to retrieve a buffer */
> -		if (!skb) {
> +		if (!xdp_res && !skb) {
>  			rx_ring->rx_stats.alloc_buff_failed++;
>  			rx_buffer->pagecnt_bias++;
>  			break;
> @@ -2547,7 +2543,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
>  		if (i40e_is_non_eop(rx_ring, rx_desc))
>  			continue;
>  
> -		if (i40e_cleanup_headers(rx_ring, skb, rx_desc)) {
> +		if (xdp_res || i40e_cleanup_headers(rx_ring, skb, rx_desc)) {
>  			skb = NULL;
>  			continue;
>  		}
> 
> base-commit: bb556de79f0a9e647e8febe15786ee68483fa67b
> -- 
> 2.29.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
