Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF6B46F20B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 18:34:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3BE842167;
	Thu,  9 Dec 2021 17:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxztV64CoMZG; Thu,  9 Dec 2021 17:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E11F4215F;
	Thu,  9 Dec 2021 17:34:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51CC01BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 17:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D97C61510
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 17:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ot0jLrwKvlgZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 17:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DAEC614F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 17:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639071246; x=1670607246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OYyTJBH2NAkzB8yRuWaFmgipZaneXGsYztwNU9Ombj0=;
 b=DJ2kDjvCKQNaliUSfLs+AFFeilBrg1PUinp3NBVITSfutpTEzNjbe0j1
 b2S2jRJRTxndfq0GzuHyNngfBJxax2L0SLxRDGuV9AM1mabOjJC8Lxzpz
 kyTNWBQnNd8YnbayfPe+6VjEjcwl3BuSRqVH17R9pW9f9Mx2nlOViSgrE
 4sFUV2ZZ50/q3YVfYTY8OtVmmjSINB9OaLt6Fh62Fms1JCSHMzbt6GZLd
 0RyxIBovatRJw6m3P88ZOA2w5AvnSZjwTGKVqw3RZsFZsoCgjGuyR3Unn
 pFmsgB1+m+nK8VCFuOjdW6Z0gwQdt8fWTIncMYJT79RapwcGrS0rRK5VH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218186377"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="218186377"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="658829667"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2021 09:33:42 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1B9HXeqB013050; Thu, 9 Dec 2021 17:33:40 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Thu,  9 Dec 2021 18:33:07 +0100
Message-Id: <20211209173307.5003-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <da317f39-8679-96f7-ec6f-309216b02f33@redhat.com>
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-2-alexandr.lobakin@intel.com>
 <da317f39-8679-96f7-ec6f-309216b02f33@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 1/9] i40e: don't reserve
 excessive XDP_PACKET_HEADROOM on XSK Rx to skb
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, Yonghong Song <yhs@fb.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Thu, 9 Dec 2021 09:19:46 +0100

> On 08/12/2021 15.06, Alexander Lobakin wrote:
> > {__,}napi_alloc_skb() allocates and reserves additional NET_SKB_PAD
> > + NET_IP_ALIGN for any skb.
> > OTOH, i40e_construct_skb_zc() currently allocates and reserves
> > additional `xdp->data - xdp->data_hard_start`, which is
> > XDP_PACKET_HEADROOM for XSK frames.
> > There's no need for that at all as the frame is post-XDP and will
> > go only to the networking stack core.
> 
> I disagree with this assumption, that headroom is not needed by netstack.
> Why "no need for that at all" for netstack?

napi_alloc_skb() in our particular case will reserve 64 bytes, it is
sufficient for {TCP,UDP,SCTP,...}/IPv{4,6} etc.

> 
> Having headroom is important for netstack in general.  When packet will 
> grow we avoid realloc of SKB.  Use-case could also be cpumap or veth 
> redirect, or XDP-generic, that expect this headroom.

Well, those are not common cases at all.
Allocating 256 bytes more for some hypothetical usecases (and having
320 in total) is more expensive than expanding headroom in-place.
I don't know any other drivers or ifaces which reserve
XDP_PACKET_HEADROOM just for the case of using both driver-side
and generic XDP at the same time. To be more precise, I can't
remember any driver which would check whether generic XDP is enabled
for its netdev(s).

As a second option, I was trying to get exactly XDP_PACKET_HEADROOM
of headroom, but this involves either __alloc_skb() which is slower
than napi_alloc_skb(), or

	skb = napi_alloc_skb(napi, xdp->data_end -
				   xdp->data_hard_start -
				   NET_SKB_PAD);
	skb_reserve(skb, xdp->data_meta - xdp->data_hard_start -
			 NET_SKB_PAD);

Doesn't look good for me.

We could probably introduce a version of napi_alloc_skb() which
wouldn't reserve any headroom for you to have more control over it,
but that's more global material than these local fixes I'd say.

> 
> 
> > Pass the size of the actual data only to __napi_alloc_skb() and
> > don't reserve anything. This will give enough headroom for stack
> > processing.
> > 
> > Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
> > Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index f08d19b8c554..9564906b7da8 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -245,13 +245,11 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
> >   	struct sk_buff *skb;
> >   
> >   	/* allocate a skb to store the frags */
> > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> > -			       xdp->data_end - xdp->data_hard_start,
> > +	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize,
> >   			       GFP_ATOMIC | __GFP_NOWARN);
> >   	if (unlikely(!skb))
> >   		goto out;
> >   
> > -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> >   	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> >   	if (metasize)
> >   		skb_metadata_set(skb, metasize);

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
