Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBF584E44
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2019 16:09:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A111848FA;
	Wed,  7 Aug 2019 14:09:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCH28Yr1enSC; Wed,  7 Aug 2019 14:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D861F869E2;
	Wed,  7 Aug 2019 14:09:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E05C1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 14:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5423D82404
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 14:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DqinTfq9b2KQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 14:09:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 721718214C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 14:09:02 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so40861223pls.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2019 07:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RHmn9mfN9Ho5+JueelIGD+C+QT8BlT+9YzaJxqkb8rU=;
 b=cVOMwCoBg5/OHadih51SVdOUk2I/WyOTRrKY5s96431M7mEd3bLfTXIpMle6b9PPbE
 u7tCXb//3s4+Y6OTKL7EsMF/nphKGSVZMF2htHkg6CuFwHAkc5fEimclbwXsSSXquxwt
 ZkREmfuLKaGXN3HBKxukvWbj1DiEnX2aAe8OjibAEg1kzp3LVc94Sd1Kd1ujwpeQPU4v
 SAmbGJAbg9Ge/AvFzcMtDrDz4IrR2uy48pNCQzxR5pmfe0v1tQJTILqmKMqANLFvTTqW
 496A1zqussxB3dUOQE45TcaGEu0dC7VW02oAPC1o7hepqXfnbaukM/QBQL8zHrXtn//s
 JsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RHmn9mfN9Ho5+JueelIGD+C+QT8BlT+9YzaJxqkb8rU=;
 b=A+LJVoFfyRov2PFCN0ef3Lz92qCKKo+fV9D6PdLZtHh7B2qElm34VrqdoS6GYe2xPN
 RVO91PW6EMzR02SzkE/bFY6cIkXvnnpRU1sUcfWV81nrY51nYZ7n0GHUNzBfrtsFtPtE
 iFA8xx90B9Vk0iSnoEs7fYmqR2nHF4XXfcnBlH3I44rdRoJFA17cwVwrFUrUiyjq/Lsy
 YgTCrjYOCDq7BJY6sNcdn/bXlg+updRXdHuS61VDY2+36k0aVUuNFVtx4ztqJxnfsEN9
 Ele/YD3Gft+vXRAlJdEg3eLXExCPNF9Of5XZUl2ccmGGfK8KtSdqIG7CH6fUFrF4+zQ9
 KTnA==
X-Gm-Message-State: APjAAAVoBLzuOXQOOFvLKVPg3UXuoYvhtUGr9j/cmQKS/KxljdKR5YIf
 ggQsczMIcCFs5HNfq7/Z+ag=
X-Google-Smtp-Source: APXvYqz+Nq5SLVZCJZSOg4EweEDSH7G7KPosSHNFxo8T/mIklsEKXG0fpLBTchRzYPdLOS3wyAa6OQ==
X-Received: by 2002:a65:68d9:: with SMTP id k25mr7949726pgt.337.1565186941860; 
 Wed, 07 Aug 2019 07:09:01 -0700 (PDT)
Received: from localhost ([192.55.54.45])
 by smtp.gmail.com with ESMTPSA id f20sm105778095pgg.56.2019.08.07.07.08.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 07:09:01 -0700 (PDT)
Date: Wed, 7 Aug 2019 16:08:53 +0200
From: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>
To: Firo Yang <firo.yang@suse.com>
Message-ID: <20190807160853.00001d71@gmail.com>
In-Reply-To: <20190807083831.GA6811@linux-6qg8>
References: <20190807024917.27682-1-firo.yang@suse.com>
 <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
 <20190807083831.GA6811@linux-6qg8>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: sync the first fragment
 unconditionally
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
Cc: "  <linux-kernel@vger.kernel.org>, "@osuosl.org,
 "  <intel-wired-lan@lists.osuosl.org>, "@osuosl.org,
 "  <netdev@vger.kernel.org>"@osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jacob Wen <jian.w.wen@oracle.com>,
 "alexander.h.duyck@linux.intel.com\" <alexander.h.duyck@linux.intel.com>,
 "@osuosl.org, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 7 Aug 2019 08:38:43 +0000
Firo Yang <firo.yang@suse.com> wrote:

> The 08/07/2019 15:56, Jacob Wen wrote:
> > I think the description is not correct. Consider using something like below.  
> Thank you for comments. 
> 
> > 
> > In Xen environment, due to memory fragmentation ixgbe may allocate a 'DMA'
> > buffer with pages that are not physically contiguous.  
> Actually, I didn't look into the reason why ixgbe got a DMA buffer which
> was mapped to Xen-swiotlb area.

I think that neither of these descriptions are telling us what was truly
broken. They lack what Alexander wrote on v1 thread of this patch.

ixgbe_dma_sync_frag is called only on case when the current descriptor has EOP
bit set, skb was already allocated and you'll be adding a current buffer as a
frag. DMA unmapping for the first frag was intentionally skipped and we will be
unmapping it here, in ixgbe_dma_sync_frag. As Alex said, we're using the
DMA_ATTR_SKIP_CPU_SYNC attribute which obliges us to perform a sync manually
and it was missing.

So IMHO the commit description should include descriptions from both xen and
ixgbe worlds, the v2 lacks info about ixgbe case.

BTW Alex, what was the initial reason for holding off with unmapping the first
buffer? Asking because IIRC the i40e and ice behave a bit different here. We
don't look there for EOP at all when building/constructing skb and not delaying
the unmap of non-eop buffers.

Thanks,
Maciej

> 
> But I don't think this issue relates to phsical memory contiguity because, in
> our case, one ixgbe_rx_buffer only associates at most one page.
> 
> If you take a look at the related code, you will find there are several reasons
> for mapping a DMA buffer to Xen-swiotlb area:
> static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
>          */
>         if (dma_capable(dev, dev_addr, size) &&
>             !range_straddles_page_boundary(phys, size) &&
>                 !xen_arch_need_swiotlb(dev, phys, dev_addr) &&
>                 swiotlb_force != SWIOTLB_FORCE)
>                 goto done;
> 
> // Firo
> > 
> > A NIC doesn't support directly write such buffer. So xen-swiotlb would use
> > the pages, which are physically contiguous, from the swiotlb buffer for the
> > NIC.
> > 
> > The unmap operation is used to copy the swiotlb buffer to the pages that are
> > allocated by ixgbe.
> > 
> > On 8/7/19 10:49 AM, Firo Yang wrote:  
> > > In Xen environment, if Xen-swiotlb is enabled, ixgbe driver
> > > could possibly allocate a page, DMA memory buffer, for the first
> > > fragment which is not suitable for Xen-swiotlb to do DMA operations.
> > > Xen-swiotlb have to internally allocate another page for doing DMA
> > > operations. It requires syncing between those two pages. However,
> > > since commit f3213d932173 ("ixgbe: Update driver to make use of DMA
> > > attributes in Rx path"), the unmap operation is performed with
> > > DMA_ATTR_SKIP_CPU_SYNC. As a result, the sync is not performed.
> > > 
> > > To fix this problem, always sync before possibly performing a page
> > > unmap operation.
> > > 
> > > Fixes: f3213d932173 ("ixgbe: Update driver to make use of DMA
> > > attributes in Rx path")
> > > Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > > Signed-off-by: Firo Yang <firo.yang@suse.com>
> > > ---
> > > 
> > > Changes from v1:
> > >   * Imporved the patch description.
> > >   * Added Reviewed-by: and Fixes: as suggested by Alexander Duyck
> > > 
> > >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 +++++++++-------
> > >   1 file changed, 9 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > index cbaf712d6529..200de9838096 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > @@ -1825,13 +1825,7 @@ static void ixgbe_pull_tail(struct ixgbe_ring *rx_ring,
> > >   static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
> > >   				struct sk_buff *skb)
> > >   {
> > > -	/* if the page was released unmap it, else just sync our portion */
> > > -	if (unlikely(IXGBE_CB(skb)->page_released)) {
> > > -		dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
> > > -				     ixgbe_rx_pg_size(rx_ring),
> > > -				     DMA_FROM_DEVICE,
> > > -				     IXGBE_RX_DMA_ATTR);
> > > -	} else if (ring_uses_build_skb(rx_ring)) {
> > > +	if (ring_uses_build_skb(rx_ring)) {
> > >   		unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;
> > >   		dma_sync_single_range_for_cpu(rx_ring->dev,
> > > @@ -1848,6 +1842,14 @@ static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
> > >   					      skb_frag_size(frag),
> > >   					      DMA_FROM_DEVICE);
> > >   	}
> > > +
> > > +	/* If the page was released, just unmap it. */
> > > +	if (unlikely(IXGBE_CB(skb)->page_released)) {
> > > +		dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
> > > +				     ixgbe_rx_pg_size(rx_ring),
> > > +				     DMA_FROM_DEVICE,
> > > +				     IXGBE_RX_DMA_ATTR);
> > > +	}
> > >   }
> > >   /**  
> >   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
