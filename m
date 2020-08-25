Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A34D251752
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 738FF22D2D;
	Tue, 25 Aug 2020 11:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RlnHVYtFePXK; Tue, 25 Aug 2020 11:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF16E22888;
	Tue, 25 Aug 2020 11:19:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F94F1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6AA06882CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLJBumE3Ccjf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:19:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1511F8823B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:19:46 +0000 (UTC)
IronPort-SDR: jQpU4jRh9fgEo9OCDiJowWe2pgWXJBc78EgwZLrahqEilvWM2bmmrS3S7NIQWTl3FPk0j9d6zs
 K8q/P+ry1rGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="174125913"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="174125913"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 04:19:45 -0700
IronPort-SDR: hl3u8cl7uonhVfGcM9X+cchEn2K1GdSLpiX3AbBcM9vl72QDiLmk1WnCUlciRPe8J3O5qo5Aa1
 I6jYs7bmpoCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="322722010"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2020 04:19:42 -0700
Date: Tue, 25 Aug 2020 13:13:36 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20200825111336.GA38865@ranger.igk.intel.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-2-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825091629.12949-2-bjorn.topel@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] i40e: avoid premature Rx
 buffer reuse
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
Cc: netdev@vger.kernel.org, maciej.machnikowski@intel.com, lirongqing@baidu.com,
 intel-wired-lan@lists.osuosl.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 25, 2020 at 11:16:27AM +0200, Bj=F6rn T=F6pel wrote:
> From: Bj=F6rn T=F6pel <bjorn.topel@intel.com>
> =

> The page recycle code, incorrectly, relied on that a page fragment
> could not be freed inside xdp_do_redirect(). This assumption leads to
> that page fragments that are used by the stack/XDP redirect can be
> reused and overwritten.
> =

> To avoid this, store the page count prior invoking xdp_do_redirect().
> =

> Longer explanation:
> =

> Intel NICs have a recycle mechanism. The main idea is that a page is
> split into two parts. One part is owned by the driver, one part might
> be owned by someone else, such as the stack.
> =

> t0: Page is allocated, and put on the Rx ring
>               +---------------
> used by NIC ->| upper buffer
> (rx_buffer)   +---------------
>               | lower buffer
>               +---------------
>   page count  =3D=3D USHRT_MAX
>   rx_buffer->pagecnt_bias =3D=3D USHRT_MAX
> =

> t1: Buffer is received, and passed to the stack (e.g.)
>               +---------------
>               | upper buff (skb)
>               +---------------
> used by NIC ->| lower buffer
> (rx_buffer)   +---------------
>   page count  =3D=3D USHRT_MAX
>   rx_buffer->pagecnt_bias =3D=3D USHRT_MAX - 1
> =

> t2: Buffer is received, and redirected
>               +---------------
>               | upper buff (skb)
>               +---------------
> used by NIC ->| lower buffer
> (rx_buffer)   +---------------
> =

> Now, prior calling xdp_do_redirect():
>   page count  =3D=3D USHRT_MAX
>   rx_buffer->pagecnt_bias =3D=3D USHRT_MAX - 2
> =

> This means that buffer *cannot* be flipped/reused, because the skb is
> still using it.
> =

> The problem arises when xdp_do_redirect() actually frees the
> segment. Then we get:
>   page count  =3D=3D USHRT_MAX - 1
>   rx_buffer->pagecnt_bias =3D=3D USHRT_MAX - 2
> =

> From a recycle perspective, the buffer can be flipped and reused,
> which means that the skb data area is passed to the Rx HW ring!
> =

> To work around this, the page count is stored prior calling
> xdp_do_redirect().
> =

> Note that this is not optimal, since the NIC could actually reuse the
> "lower buffer" again. However, then we need to track whether
> XDP_REDIRECT consumed the buffer or not.
> =

> Fixes: d9314c474d4f ("i40e: add support for XDP_REDIRECT")
> Reported-by: Li RongQing <lirongqing@baidu.com>
> Signed-off-by: Bj=F6rn T=F6pel <bjorn.topel@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 28 +++++++++++++++------
>  1 file changed, 21 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/et=
hernet/intel/i40e/i40e_txrx.c
> index 3e5c566ceb01..5e446dc39190 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1873,7 +1873,8 @@ static inline bool i40e_page_is_reusable(struct pag=
e *page)
>   *
>   * In either case, if the page is reusable its refcount is increased.
>   **/
> -static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer)
> +static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
> +				   int rx_buffer_pgcnt)
>  {
>  	unsigned int pagecnt_bias =3D rx_buffer->pagecnt_bias;
>  	struct page *page =3D rx_buffer->page;
> @@ -1884,7 +1885,7 @@ static bool i40e_can_reuse_rx_page(struct i40e_rx_b=
uffer *rx_buffer)
>  =

>  #if (PAGE_SIZE < 8192)
>  	/* if we are only owner of page we can reuse it */
> -	if (unlikely((page_count(page) - pagecnt_bias) > 1))
> +	if (unlikely((rx_buffer_pgcnt - pagecnt_bias) > 1))
>  		return false;
>  #else
>  #define I40E_LAST_OFFSET \
> @@ -1939,6 +1940,15 @@ static void i40e_add_rx_frag(struct i40e_ring *rx_=
ring,
>  #endif
>  }
>  =

> +static int i40e_rx_buffer_page_count(struct i40e_rx_buffer *rx_buffer)
> +{
> +#if (PAGE_SIZE < 8192)
> +	return page_count(rx_buffer->page);
> +#else
> +	return 0;
> +#endif
> +}
> +
>  /**
>   * i40e_get_rx_buffer - Fetch Rx buffer and synchronize data for use
>   * @rx_ring: rx descriptor ring to transact packets on
> @@ -1948,11 +1958,13 @@ static void i40e_add_rx_frag(struct i40e_ring *rx=
_ring,
>   * for use by the CPU.
>   */
>  static struct i40e_rx_buffer *i40e_get_rx_buffer(struct i40e_ring *rx_ri=
ng,
> -						 const unsigned int size)
> +						 const unsigned int size,
> +						 int *rx_buffer_pgcnt)
>  {
>  	struct i40e_rx_buffer *rx_buffer;
>  =

>  	rx_buffer =3D i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
> +	*rx_buffer_pgcnt =3D i40e_rx_buffer_page_count(rx_buffer);

What i previously meant was:

#if (PAGE_SIZE < 8192)
	*rx_buffer_pgcnt =3D page_count(rx_buffer->page);
#endif

and see below

>  	prefetchw(rx_buffer->page);
>  =

>  	/* we are reusing so sync this buffer for CPU use */
> @@ -2112,9 +2124,10 @@ static struct sk_buff *i40e_build_skb(struct i40e_=
ring *rx_ring,
>   * either recycle the buffer or unmap it and free the associated resourc=
es.
>   */
>  static void i40e_put_rx_buffer(struct i40e_ring *rx_ring,
> -			       struct i40e_rx_buffer *rx_buffer)
> +			       struct i40e_rx_buffer *rx_buffer,
> +			       int rx_buffer_pgcnt)
>  {
> -	if (i40e_can_reuse_rx_page(rx_buffer)) {
> +	if (i40e_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
>  		/* hand second half of page back to the ring */
>  		i40e_reuse_rx_page(rx_ring, rx_buffer);
>  	} else {
> @@ -2319,6 +2332,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_r=
ing, int budget)
>  	unsigned int xdp_xmit =3D 0;
>  	bool failure =3D false;
>  	struct xdp_buff xdp;
> +	int rx_buffer_pgcnt;

you could move scope this variable only for the

while (likely(total_rx_packets < (unsigned int)budget))

loop and init this to 0. then you could drop the helper function you've
added. and BTW the page_count is not being used for big pages but i agree
that it's better to have it set to 0.

>  =

>  #if (PAGE_SIZE < 8192)
>  	xdp.frame_sz =3D i40e_rx_frame_truesize(rx_ring, 0);
> @@ -2370,7 +2384,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_r=
ing, int budget)
>  			break;
>  =

>  		i40e_trace(clean_rx_irq, rx_ring, rx_desc, skb);
> -		rx_buffer =3D i40e_get_rx_buffer(rx_ring, size);
> +		rx_buffer =3D i40e_get_rx_buffer(rx_ring, size, &rx_buffer_pgcnt);
>  =

>  		/* retrieve a buffer from the ring */
>  		if (!skb) {
> @@ -2413,7 +2427,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_r=
ing, int budget)
>  			break;
>  		}
>  =

> -		i40e_put_rx_buffer(rx_ring, rx_buffer);
> +		i40e_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
>  		cleaned_count++;
>  =

>  		if (i40e_is_non_eop(rx_ring, rx_desc, skb))
> -- =

> 2.25.1
> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
