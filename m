Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A872849FFBD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 18:45:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A03383096;
	Fri, 28 Jan 2022 17:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHLOKyy5dWRp; Fri, 28 Jan 2022 17:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC1E782F0F;
	Fri, 28 Jan 2022 17:45:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D11601BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 17:45:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE1F841D20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 17:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P3p7BNHM54dM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 17:45:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A1D741CEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 17:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643391943; x=1674927943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=10Ajk8Zge6HPD8wHpnjGbUcBGU9EVCgH+RwqmFfVgcM=;
 b=klXr82fRwD2ERpKbkCH9HTwnPHLC4/lwXWoiZX2GRkGA5Cw4uOG2iQ+N
 +QBlZC28hvratCUplt8LCPf4HoeXWA4nKWQrsAGmFhJBHEjDa9C7jQitc
 +PFJlK4Cj93MjtFvcdvFtb7KVI2rZVNa1da9wlexxq2BnOQ0Tbh378Kx0
 DDDWPGiPdNYci8VGwnOdcIhA0mK4tcIeNKkBZl2eHjSLNGjZpCV7/udIs
 aDaHAG1pbs9jWCm+zylcqOc5BNYJoxDLiaNZRiNIEZ+ZU4YZuzkEOc0pe
 Du31rug5luFPfHY1k32MEzhG3mVdOYz8HLnfiWfV3zfAR+USlT1uObEfV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="234550817"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="234550817"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 09:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="536221929"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 28 Jan 2022 09:45:40 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SHjdPv004655; Fri, 28 Jan 2022 17:45:39 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 18:44:01 +0100
Message-Id: <20220128174401.28054-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <202201281316.ZdiaZw6q-lkp@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-14-alan.brady@intel.com>
 <202201281316.ZdiaZw6q-lkp@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
 napi_poll
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
Cc: kbuild-all@lists.01.org, Madhu Chittim <madhu.chittim@intel.com>,
 intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: kernel test robot <lkp@intel.com>
Date: Fri, 28 Jan 2022 13:21:42 +0800

> Hi Alan,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on net-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Alan-Brady/Add-iecm-and-idpf/20220128-085513
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git e2cf07654efb0fd7bbcb475c6f74be7b5755a8fd
> config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20220128/202201281316.ZdiaZw6q-lkp@intel.com/config)
> compiler: arceb-elf-gcc (GCC) 11.2.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/8e9b2451747f81363327cf5a4e07aaf88af52397
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Alan-Brady/Add-iecm-and-idpf/20220128-085513
>         git checkout 8e9b2451747f81363327cf5a4e07aaf88af52397
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/net/ethernet/intel/iecm/iecm_txrx.c: In function 'iecm_rx_can_reuse_page':
> >> drivers/net/ethernet/intel/iecm/iecm_txrx.c:3132:19: error: 'struct iecm_rx_buf' has no member named 'page_offset'
>     3132 |         if (rx_buf->page_offset > last_offset)
>          |                   ^~

So these series wasn't even compile-tested properly.
x86 has only 4k pages, but lots of other architectures have much
more. If ARC is not relevant enough to MEV, then I say that
ARM64 has 4-64 Kb pages, and PowerPC64 has up to 256 Kb.

> 
> 
> vim +3132 drivers/net/ethernet/intel/iecm/iecm_txrx.c
> 
>   3103	
>   3104	/**
>   3105	 * iecm_rx_can_reuse_page - Determine if page can be reused for another rx
>   3106	 * @rx_buf: buffer containing the page
>   3107	 *
>   3108	 * If page is reusable, we have a green light for calling iecm_reuse_rx_page,
>   3109	 * which will assign the current buffer to the buffer that next_to_alloc is
>   3110	 * pointing to; otherwise, the dma mapping needs to be destroyed and
>   3111	 * page freed
>   3112	 */
>   3113	bool iecm_rx_can_reuse_page(struct iecm_rx_buf *rx_buf)
>   3114	{
>   3115		struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf->page_indx];
>   3116	
>   3117	#if (PAGE_SIZE >= 8192)
>   3118		unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
>   3119	#endif /* PAGE_SIZE < 8192) */
>   3120		unsigned int pagecnt_bias = page_info->pagecnt_bias;
>   3121		struct page *page = page_info->page;
>   3122	
>   3123		/* avoid re-using remote pages */
>   3124		if (unlikely(iecm_rx_page_is_reserved(page)))
>   3125			return false;
>   3126	
>   3127	#if (PAGE_SIZE < 8192)
>   3128		/* if we are only owner of page we can reuse it */
>   3129		if (unlikely((page_count(page) - pagecnt_bias) > 1))
>   3130			return false;
>   3131	#else
> > 3132		if (rx_buf->page_offset > last_offset)
>   3133			return false;
>   3134	#endif /* PAGE_SIZE < 8192) */
>   3135	
>   3136		/* If we have drained the page fragment pool we need to update
>   3137		 * the pagecnt_bias and page count so that we fully restock the
>   3138		 * number of references the driver holds.
>   3139		 */
>   3140		if (unlikely(pagecnt_bias == 1)) {
>   3141			page_ref_add(page, USHRT_MAX - 1);
>   3142			page_info->pagecnt_bias = USHRT_MAX;
>   3143		}
>   3144	
>   3145		return true;
>   3146	}
>   3147	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
