Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220963A81C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jun 2021 16:05:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0441402EF;
	Tue, 15 Jun 2021 14:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ZY2OzP3UavE; Tue, 15 Jun 2021 14:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0E544037A;
	Tue, 15 Jun 2021 14:05:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35AC21BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 03:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FA5440536
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 03:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6lLCBmtxelK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jun 2021 03:41:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from out30-56.freemail.mail.aliyun.com
 (out30-56.freemail.mail.aliyun.com [115.124.30.56])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DCB44047E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 03:41:29 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R351e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400; MF=xuanzhuo@linux.alibaba.com;
 NM=1; PH=DS; RN=14; SR=0; TI=SMTPD_---0UcTPzyT_1623728486; 
Received: from localhost(mailfrom:xuanzhuo@linux.alibaba.com
 fp:SMTPD_---0UcTPzyT_1623728486) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 15 Jun 2021 11:41:26 +0800
MIME-Version: 1.0
Message-Id: <1623728367.8497236-1-xuanzhuo@linux.alibaba.com>
Date: Tue, 15 Jun 2021 11:39:27 +0800
From: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <20210611151245.GA31289@ranger.igk.intel.com>
X-Mailing-List: bpf@vger.kernel.org
X-Mailman-Approved-At: Tue, 15 Jun 2021 14:05:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: xsk: fix for metasize when
 construct skb by xdp_buff
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Jun 2021 17:12:45 +0200, Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:
> On Wed, Jun 09, 2021 at 08:22:44PM +0800, Xuan Zhuo wrote:
> > We should copy data_meta to the skb space.  Then use __skb_pull to
> > correct skb->data
>
> This looks like a bug that has been sitting over here for sometime. Have
> you encountered this during your virtio-net's AF_XDP ZC work? I'm all ears
> how you spotted this.
>
> Anyway, other drivers needs such fixing too. Are you willing to do that or
> should we take it on our side?

You are right, I didn't pay attention to other drivers before. I have already
submitted the patch.

	[PATCH net] xdp, net: fix for construct skb by xdp inside xsk zc rx

Thanks!


>
> Magnus is OOO today, I'd like to get his final ack on that.
>
> From me:
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>
> Thanks!
>
> >
> > Fixes: d0bcacd0a1309 ("ixgbe: add AF_XDP zero-copy Rx support")
> > Signed-off-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index f72d2978263b..ee88107fa57a 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -204,7 +204,7 @@ static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
> >  					      struct ixgbe_rx_buffer *bi)
> >  {
> >  	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
> > -	unsigned int datasize = bi->xdp->data_end - bi->xdp->data;
> > +	unsigned int datasize = bi->xdp->data_end - bi->xdp->data_meta;
> >  	struct sk_buff *skb;
> >
> >  	/* allocate a skb to store the frags */
> > @@ -214,10 +214,12 @@ static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
> >  	if (unlikely(!skb))
> >  		return NULL;
> >
> > -	skb_reserve(skb, bi->xdp->data - bi->xdp->data_hard_start);
> > -	memcpy(__skb_put(skb, datasize), bi->xdp->data, datasize);
> > -	if (metasize)
> > +	skb_reserve(skb, bi->xdp->data_meta - bi->xdp->data_hard_start);
> > +	memcpy(__skb_put(skb, datasize), bi->xdp->data_meta, datasize);
> > +	if (metasize) {
> > +		__skb_pull(skb, metasize);
> >  		skb_metadata_set(skb, metasize);
> > +	}
> >
> >  	xsk_buff_free(bi->xdp);
> >  	bi->xdp = NULL;
> > --
> > 2.31.0
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
