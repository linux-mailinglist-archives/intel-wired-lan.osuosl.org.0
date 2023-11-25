Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 873437F8B0F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Nov 2023 14:05:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14ED641E01;
	Sat, 25 Nov 2023 13:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14ED641E01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700917517;
	bh=wETK1LG7fnqosyjg/7E4rD+umVNfQkYlyGJ3vAGG47o=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XRINAjCkWbcOeVim3NndL4V0sxpAo3x/0HesxWP/qhK3OEOp7WTk/ndTwyYA5fW+f
	 stACbkJJOy9cKQZ5pakMXyuQnAGi+5+oCvuCGwvcLkKmrBuU0Y1MoUhOHi4slVpm4t
	 oyvC1blbhUMrgzf9geMFvy0kGLujqgqmS3z/ZpFT1lmX8bCVAbclQan5APdjHPlm/b
	 IsxFE0rM7U5GehK6tpyP8ACC+qEj68lAysxYtBO8LfDgZIX+++COyZZOZru8ygJ7pH
	 PM8IcwBvGKnW6uS9O0CwP6F2bBdu6nwrZ/EtzsDIsVrU/laMr/Sz0l0TZj6LxhkDzd
	 SyZZeFILsG0zQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id En-dK08Jh-1j; Sat, 25 Nov 2023 13:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 916A8408A5;
	Sat, 25 Nov 2023 13:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 916A8408A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7160B1BF424
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Nov 2023 13:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4844C40385
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Nov 2023 13:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4844C40385
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HCQsArCpYx5d for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Nov 2023 13:05:08 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCF1E400D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Nov 2023 13:05:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCF1E400D9
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.55])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4ScsRD4Y35z1P8mF;
 Sat, 25 Nov 2023 21:00:56 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Sat, 25 Nov
 2023 21:04:29 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-4-aleksander.lobakin@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <6bd14aa9-fa65-e4f6-579c-3a1064b2a382@huawei.com>
Date: Sat, 25 Nov 2023 21:04:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20231124154732.1623518-4-aleksander.lobakin@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 03/14] page_pool: avoid
 calling no-op externals when possible
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/11/24 23:47, Alexander Lobakin wrote:
> Turned out page_pool_put{,_full}_page() can burn quite a bunch of cycles
> even on DMA-coherent platforms (like x86) with no active IOMMU or
> swiotlb, just for the call ladder.
> Indeed, it's
> 
> page_pool_put_page()
>   page_pool_put_defragged_page()                  <- external
>     __page_pool_put_page()
>       page_pool_dma_sync_for_device()             <- non-inline
>         dma_sync_single_range_for_device()
>           dma_sync_single_for_device()            <- external
>             dma_direct_sync_single_for_device()
>               dev_is_dma_coherent()               <- exit
> 
> For the inline functions, no guarantees the compiler won't uninline them
> (they're clearly not one-liners and sometimes the compilers manage to
> uninline 2 + 2). The first external call is necessary, but the rest 2+
> are done for nothing each time, plus a bunch of checks here and there.
> Since Page Pool mappings are long-term and for one "device + addr" pair
> dma_need_sync() will always return the same value (basically, whether it
> belongs to an swiotlb pool), addresses can be tested once right after
> they're obtained and the result can be reused until the page is
> unmapped.
> Do this test after a successful DMA mapping and reuse the lowest bit of
> page::dma_addr to store the result, since Page Pool addresses are always
> page-aligned and the lowest bits are unused.
> page_pool_{g,s}et_dma_addr() will then take this bit into account and
> exclude it from the actual address. Call page_pool_dma_sync_for_device()
> only if the bit is set, shaving off several function calls back and
> forth. If pool::dma_sync is not set, i.e. the driver didn't ask to
> perform syncs, don't do this test and never touch the lowest bit.
> On my x86_64, this gives from 2% to 5% performance benefit with no
> negative impact for cases when IOMMU is on and the shortcut can't be
> used.
> 
> Suggested-by: Yunsheng Lin <linyunsheng@huawei.com> # per-page flag

Sorry for not remembering the suggestion:(

If most of cases is that some pages need syncing and some page does not
need syncing for the same device, then perhaps per-page flag is more
beneficial, if not, maybe per-device flag is enough too?

What i wonder is that is there any reason this kind trick isn't done
in the dma layer instead of each subsystem or driver using dma api
duplicating this kind of trick?

At least xsk_buff seems to using the similar trick?

You may have explained that, it has been a litte long between v4 and v5,
so I may have forgotten about that.


> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  include/net/page_pool/helpers.h | 60 +++++++++++++++++++++++++++++----
>  net/core/page_pool.c            | 10 +++---
>  2 files changed, 58 insertions(+), 12 deletions(-)
> 
> diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
> index 4ebd544ae977..28bec368b8e9 100644
> --- a/include/net/page_pool/helpers.h
> +++ b/include/net/page_pool/helpers.h
> @@ -52,6 +52,8 @@
>  #ifndef _NET_PAGE_POOL_HELPERS_H
>  #define _NET_PAGE_POOL_HELPERS_H
>  
> +#include <linux/dma-mapping.h>
> +
>  #include <net/page_pool/types.h>
>  
>  #ifdef CONFIG_PAGE_POOL_STATS
> @@ -354,6 +356,11 @@ static inline void page_pool_free_va(struct page_pool *pool, void *va,
>  	page_pool_put_page(pool, virt_to_head_page(va), -1, allow_direct);
>  }
>  
> +/* Occupies page::dma_addr[0:0] and indicates whether the mapping needs to be
> + * synchronized (either for device, for CPU, or both).
> + */
> +#define PAGE_POOL_DMA_ADDR_NEED_SYNC		BIT(0)

It seems we have less dma space from 32 bit arch with 64 bit dma address:(
But from my last searching in google, it seems we still have enough bit for
that:

arm: Large Physical Address Extension or LPAE, 40 bits of phys addr.
arc: Physical Address Extension or PAE, 40 bits of phys addr.
mips: eXtended Physical Addressing or PXA, 40 bits of phys addr.
powerpc: does not seems to have a name for the feature, and have 36
         bits of phys addr.
riscv: large physical address, 34 bits of phys addr.
x86: Physical Address Extension or PAE, 36 bits of phys addr.

> +
>  /**
>   * page_pool_get_dma_addr() - Retrieve the stored DMA address.
>   * @page:	page allocated from a page pool
> @@ -363,27 +370,66 @@ static inline void page_pool_free_va(struct page_pool *pool, void *va,
>   */
>  static inline dma_addr_t page_pool_get_dma_addr(struct page *page)
>  {
> -	dma_addr_t ret = page->dma_addr;
> +	dma_addr_t ret = page->dma_addr & ~PAGE_POOL_DMA_ADDR_NEED_SYNC;
>  
>  	if (PAGE_POOL_32BIT_ARCH_WITH_64BIT_DMA)
> -		ret <<= PAGE_SHIFT;
> +		ret <<= PAGE_SHIFT - 1;
>  
>  	return ret;
>  }
>  
> -static inline bool page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
> +/**
> + * page_pool_set_dma_addr - save the obtained DMA address for @page
> + * @pool: &page_pool this page belongs to and was mapped by
> + * @page: page to save the address for
> + * @addr: DMA address to save
> + *
> + * If the pool was created with the DMA synchronization enabled, it will test
> + * whether the address needs to be synced and store the result as well to
> + * conserve CPU cycles.
> + *
> + * Return: false if the address doesn't fit into the corresponding field and
> + * thus can't be stored, true on success.
> + */
> +static inline bool page_pool_set_dma_addr(const struct page_pool *pool,
> +					  struct page *page,
> +					  dma_addr_t addr)
>  {
> +	unsigned long val = addr;
> +
> +	if (unlikely(!addr)) {
> +		page->dma_addr = 0;
> +		return true;
> +	}

The above seems unrelated change?

> +
>  	if (PAGE_POOL_32BIT_ARCH_WITH_64BIT_DMA) {
> -		page->dma_addr = addr >> PAGE_SHIFT;
> +		val = addr >> (PAGE_SHIFT - 1);
>  
>  		/* We assume page alignment to shave off bottom bits,
>  		 * if this "compression" doesn't work we need to drop.
>  		 */
> -		return addr != (dma_addr_t)page->dma_addr << PAGE_SHIFT;
> +		if (addr != (dma_addr_t)val << (PAGE_SHIFT - 1))
> +			return false;
>  	}
>  
> -	page->dma_addr = addr;
> -	return false;
> +	if (pool->dma_sync && dma_need_sync(pool->p.dev, addr))
> +		val |= PAGE_POOL_DMA_ADDR_NEED_SYNC;
> +
> +	page->dma_addr = val;
> +
> +	return true;
> +}
> +

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
