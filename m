Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CF424C3D3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Aug 2020 18:57:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0634869D7;
	Thu, 20 Aug 2020 16:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8uszoSsaJN_i; Thu, 20 Aug 2020 16:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 171B8869D9;
	Thu, 20 Aug 2020 16:57:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5461BF355
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 16:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 76ECC869C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 16:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Md0snOKFGZY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Aug 2020 16:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89B24869AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 16:57:04 +0000 (UTC)
IronPort-SDR: kuHbukSeiDUFX2VA4fdnFsaJI2QUVR99UE/drb3Q0OttUbMgJlkKLe4238EZ5KoSvDxQ+wI7zH
 KclaIbuIuNGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="143152358"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="143152358"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 09:57:03 -0700
IronPort-SDR: SpP52+PYmcCRug9mKPMauRqpa/+6bVTp0UbJXDXI+SH1r31Fuado2jXXguhRUVQPAgklb6yl74
 Vs8oBgYUQLxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="498214383"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga005.fm.intel.com with ESMTP; 20 Aug 2020 09:57:00 -0700
Date: Thu, 20 Aug 2020 18:51:21 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20200820165121.GA9731@ranger.igk.intel.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
 <CAJ+HfNjybUeN9v6N-pnupi32088PL+ZXu8CKWGWmowOaH4nmOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ+HfNjybUeN9v6N-pnupi32088PL+ZXu8CKWGWmowOaH4nmOw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 0/2] intel/xdp fixes for fliping rx
 buffer
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
Cc: Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 Li RongQing <lirongqing@baidu.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 20, 2020 at 05:13:16PM +0200, Bj=F6rn T=F6pel wrote:
> On Tue, 18 Aug 2020 at 16:04, Bj=F6rn T=F6pel <bjorn.topel@gmail.com> wro=
te:
> >
> > On Fri, 17 Jul 2020 at 08:24, Li RongQing <lirongqing@baidu.com> wrote:
> > >
> > > This fixes ice/i40e/ixgbe/ixgbevf_rx_buffer_flip in
> > > copy mode xdp that can lead to data corruption.
> > >
> > > I split two patches, since i40e/xgbe/ixgbevf supports xsk
> > > receiving from 4.18, put their fixes in a patch
> > >
> >
> > Li, sorry for the looong latency. I took a looong vacation. :-P
> >
> > Thanks for taking a look at this, but I believe this is not a bug.
> >
> =

> Ok, dug a bit more into this. I had an offlist discussion with Li, and
> there are two places (AFAIK) where Li experience a BUG() in
> tcp_collapse():
> =

>             BUG_ON(offset < 0);
> and
>                 if (skb_copy_bits(skb, offset, skb_put(nskb, size), size))
>                     BUG();
> =

> (Li, please correct me if I'm wrong.)
> =

> I still claim that the page-flipping mechanism is correct, but I found
> some weirdness in the build_skb() call.
> =

> In drivers/net/ethernet/intel/i40e/i40e_txrx.c, build_skb() is invoked as:
>     skb =3D build_skb(xdp->data_hard_start, truesize);
> =

> For the setup Li has truesize is 2048 (half a page), but the
> rx_buf_len is 1536. In the driver a packet is layed out as:
> =

> | padding 192 | packet data 1536 | skb shared info 320 |
> =

> build_skb() assumes that the second argument (frag_size) is max packet
> size + SKB_DATA_ALIGN(sizeof(struct skb_shared_info)). In other words,
> frag_size should not include the padding (192 above). In build_skb(),

Not sure I am buying that reasoning. It assumes the padding + packet_data
and we use skb_reserve() to tell the skb about the padding.

__build_skb_around() subtracts sizeof(struct skb_shared_info) from size
that we are providing, so now we are with padding + packet_data.
Then it is used to calculate the skb->end.

Back to i40e_build_skb(), we use the skb_reserve() to advance the
skb->data and skb->tail so that they point to packet_data. Finally
__skb_put() will move the skb->tail to the end of packet_data.

Wouldn't your approach disallow having the headroom at all in the linear
part of skb?

> frag_size is used to compute the skb truesize and skb end. i40e passes

IMHO skb->end is correct. For skb->truesize I would assume that the
headroom should also be taken into account for tracking how many bytes a
particular skb consumes, no?

> a too large buffer, and can therefore potentially corrupt the skb, and
> maybe this is the reason for tcp_collapse() splatting.
> =

> Li, could you test if you get the splat with this patch:
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 3e5c566ceb01..acfb4ad9b506 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2065,7 +2065,8 @@ static struct sk_buff *i40e_build_skb(struct
> i40e_ring *rx_ring,
>  {
>      unsigned int metasize =3D xdp->data - xdp->data_meta;
>  #if (PAGE_SIZE < 8192)
> -    unsigned int truesize =3D i40e_rx_pg_size(rx_ring) / 2;
> +    unsigned int truesize =3D rx_ring->rx_buf_len +
> +                SKB_DATA_ALIGN(sizeof(struct skb_shared_info));

This will actually break the page flipping scheme. We need a separate
variable for that and use the old truesize to bump the page_offset.

>  #else
>      unsigned int truesize =3D SKB_DATA_ALIGN(sizeof(struct skb_shared_in=
fo)) +
>                  SKB_DATA_ALIGN(xdp->data_end -
> =

> I'll have a look in the other Intel drivers, and see if there are
> similar issues. I'll cook a patch.
> =

> =

> Bj=F6rn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
