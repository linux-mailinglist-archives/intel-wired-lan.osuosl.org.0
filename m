Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02781867AE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 19:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B1053204C1;
	Thu,  8 Aug 2019 17:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81ZbSSfVmfeQ; Thu,  8 Aug 2019 17:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDA26204DA;
	Thu,  8 Aug 2019 17:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D34551BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 15:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C71BC86538
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 15:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OvEImBYke6UW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 15:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16F7F864C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 15:05:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:05:23 -0700
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="258385779"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:05:23 -0700
Message-ID: <0b82b3b5b4b33e5fdf66fc7a0ff5aae5b927f510.camel@linux.intel.com>
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>, Firo Yang
 <firo.yang@suse.com>
Date: Wed, 07 Aug 2019 08:05:23 -0700
In-Reply-To: <20190807160853.00001d71@gmail.com>
References: <20190807024917.27682-1-firo.yang@suse.com>
 <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
 <20190807083831.GA6811@linux-6qg8> <20190807160853.00001d71@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 08 Aug 2019 17:07:05 +0000
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
Cc: "<netdev@vger.kernel.org> <netdev@vger.kernel.org>" <>,
 "<linux-kernel@vger.kernel.org>" <linux-kernel@vger.kernel.org>,
 "<intel-wired-lan@lists.osuosl.org>" <intel-wired-lan@lists.osuosl.org>,
 Jacob Wen <jian.w.wen@oracle.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "<alexander.h.duyck@linux.intel.com>" <" <alexander.h.duyck"@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2019-08-07 at 16:08 +0200, Maciej Fijalkowski wrote:
> On Wed, 7 Aug 2019 08:38:43 +0000
> Firo Yang <firo.yang@suse.com> wrote:
> 
> > The 08/07/2019 15:56, Jacob Wen wrote:
> > > I think the description is not correct. Consider using something like below.  
> > Thank you for comments. 
> > 
> > > In Xen environment, due to memory fragmentation ixgbe may allocate a 'DMA'
> > > buffer with pages that are not physically contiguous.  
> > Actually, I didn't look into the reason why ixgbe got a DMA buffer which
> > was mapped to Xen-swiotlb area.
> 
> I think that neither of these descriptions are telling us what was truly
> broken. They lack what Alexander wrote on v1 thread of this patch.
> 
> ixgbe_dma_sync_frag is called only on case when the current descriptor has EOP
> bit set, skb was already allocated and you'll be adding a current buffer as a
> frag. DMA unmapping for the first frag was intentionally skipped and we will be
> unmapping it here, in ixgbe_dma_sync_frag. As Alex said, we're using the
> DMA_ATTR_SKIP_CPU_SYNC attribute which obliges us to perform a sync manually
> and it was missing.
> 
> So IMHO the commit description should include descriptions from both xen and
> ixgbe worlds, the v2 lacks info about ixgbe case.
> 
> BTW Alex, what was the initial reason for holding off with unmapping the first
> buffer? Asking because IIRC the i40e and ice behave a bit different here. We
> don't look there for EOP at all when building/constructing skb and not delaying
> the unmap of non-eop buffers.
> 
> Thanks,
> Maciej
> 

The reason why we have to hold off on unmapping the first buffer is
because in the case of Receive Side Coalescing (RSC), also known as Large
Receive Offload (LRO), the header of the packet is updated for each
additional frame that is added. As such you can end up with the device
writing data, header, data, header, data, header where each data write
would update a new descriptor, but the header will only ever update the
first descriptor in the chain. As such if we unmapped it earlier it would
result in an IOMMU fault because the device would be rewriting the header
after it had been unmapped.

The devices supported by the ixgbe driver are the only ones that have
RSC/LRO support. As such this behavior is present for ixgbe, but not for
other Intel NIC drivers including igb, igbvf, ixgbevf, i40e, etc.

- Alex

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
