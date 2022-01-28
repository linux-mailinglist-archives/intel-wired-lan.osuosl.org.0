Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F41749F2CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 06:22:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BFA384DE8;
	Fri, 28 Jan 2022 05:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qiN6cluiFo3Z; Fri, 28 Jan 2022 05:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FF7384DE7;
	Fri, 28 Jan 2022 05:22:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEE771BF86C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 05:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D574784DE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 05:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8H4EnM6zOOso for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 05:21:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C81DD84DE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 05:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643347317; x=1674883317;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mOJPG250/1yijW04CALaWdMQT9lix77ORGEvAZwWgv0=;
 b=DSFYiEPBlb5FPA/0IZyi724uWgoMjjXyygxtkEkotgfh3/AeZaLzjpG1
 Zwu1Wxd6hNCjazfaVZkmxw3+5vIDEdbp+Oyo+rE3WNafrb2cOFWWquR69
 KLwx7fCCrpOcfZSWL2Wq6qTOIVUjV/gAZQyGth8ZHm6GI4itl60tJ6Eh2
 kIeH41JOgoyCCqyPlANvbp3TBV9GOvRV+ue/vfUL2zRukcswJPyYQHtGP
 3mzwPzoLsU+lbxdrmhNGqCXJOLcvExLInOUZsbphS2rjVUIgVWwYNfTzt
 wTUjbLtwjamefeB6ApgrJIyzxdXBgyOp0H59R14sJJpwliJwRvzBr6xbo g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="245890748"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="245890748"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 21:21:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="674987037"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2022 21:21:55 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nDJhr-000NVv-29; Fri, 28 Jan 2022 05:21:55 +0000
Date: Fri, 28 Jan 2022 13:21:42 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Brady <alan.brady@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202201281316.ZdiaZw6q-lkp@intel.com>
References: <20220128001009.721392-14-alan.brady@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128001009.721392-14-alan.brady@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, kbuild-all@lists.01.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Alan,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on net-next/master]

url:    https://github.com/0day-ci/linux/commits/Alan-Brady/Add-iecm-and-idpf/20220128-085513
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git e2cf07654efb0fd7bbcb475c6f74be7b5755a8fd
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20220128/202201281316.ZdiaZw6q-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/8e9b2451747f81363327cf5a4e07aaf88af52397
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alan-Brady/Add-iecm-and-idpf/20220128-085513
        git checkout 8e9b2451747f81363327cf5a4e07aaf88af52397
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/iecm/iecm_txrx.c: In function 'iecm_rx_can_reuse_page':
>> drivers/net/ethernet/intel/iecm/iecm_txrx.c:3132:19: error: 'struct iecm_rx_buf' has no member named 'page_offset'
    3132 |         if (rx_buf->page_offset > last_offset)
         |                   ^~


vim +3132 drivers/net/ethernet/intel/iecm/iecm_txrx.c

  3103	
  3104	/**
  3105	 * iecm_rx_can_reuse_page - Determine if page can be reused for another rx
  3106	 * @rx_buf: buffer containing the page
  3107	 *
  3108	 * If page is reusable, we have a green light for calling iecm_reuse_rx_page,
  3109	 * which will assign the current buffer to the buffer that next_to_alloc is
  3110	 * pointing to; otherwise, the dma mapping needs to be destroyed and
  3111	 * page freed
  3112	 */
  3113	bool iecm_rx_can_reuse_page(struct iecm_rx_buf *rx_buf)
  3114	{
  3115		struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf->page_indx];
  3116	
  3117	#if (PAGE_SIZE >= 8192)
  3118		unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
  3119	#endif /* PAGE_SIZE < 8192) */
  3120		unsigned int pagecnt_bias = page_info->pagecnt_bias;
  3121		struct page *page = page_info->page;
  3122	
  3123		/* avoid re-using remote pages */
  3124		if (unlikely(iecm_rx_page_is_reserved(page)))
  3125			return false;
  3126	
  3127	#if (PAGE_SIZE < 8192)
  3128		/* if we are only owner of page we can reuse it */
  3129		if (unlikely((page_count(page) - pagecnt_bias) > 1))
  3130			return false;
  3131	#else
> 3132		if (rx_buf->page_offset > last_offset)
  3133			return false;
  3134	#endif /* PAGE_SIZE < 8192) */
  3135	
  3136		/* If we have drained the page fragment pool we need to update
  3137		 * the pagecnt_bias and page count so that we fully restock the
  3138		 * number of references the driver holds.
  3139		 */
  3140		if (unlikely(pagecnt_bias == 1)) {
  3141			page_ref_add(page, USHRT_MAX - 1);
  3142			page_info->pagecnt_bias = USHRT_MAX;
  3143		}
  3144	
  3145		return true;
  3146	}
  3147	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
