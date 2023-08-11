Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E022779178
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 16:11:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77E3D41E6B;
	Fri, 11 Aug 2023 14:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77E3D41E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691763077;
	bh=MhPMXLNhzhsbjb6nnfRSWZ/RTETrSDl5tTM5V2RqJVc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RBQa4okcNzGKjYoUQ+1fEXHkWtaGbIWMJUPLPbsBq5c79cNkwglgwVAupg3/HNzBP
	 Pt5fPcig39ekU4hmFwY1WwGWCB7/Vg0uSo80xtFShwQibTh/zUDo3ZVbBGDKnwEMgp
	 mpwNuS6I8Z5Db81e5IPKfrHWIkczEJAVaXTdh/VBDqZOhzMpC5WccQ2BuCj/V/4crU
	 p86ewPsiFufGt8E4la1sfG4nZKFYKITZLtOINh4NtGesMXW4Z+z0x9zOFqUxGMJ/pw
	 AH1+7k+a4IiolQHcskt5fvh6jMQm0m/0/XKFOuFYB8sQ3bIdxL5ANZptI5KqVCPwRr
	 uEqwopdc3AXPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-XJrzSLSTiA; Fri, 11 Aug 2023 14:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02B3841E67;
	Fri, 11 Aug 2023 14:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02B3841E67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBEDB1BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 14:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B38E060EFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 14:11:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B38E060EFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K04VkNBJPj4e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 14:11:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17D8C60E82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 14:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17D8C60E82
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="351285902"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="351285902"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 07:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="856316188"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="856316188"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2023 07:10:43 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qUSqg-0007pG-2f;
 Fri, 11 Aug 2023 14:10:42 +0000
Date: Fri, 11 Aug 2023 22:10:04 +0800
From: kernel test robot <lkp@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org
Message-ID: <202308112122.OuF0YZqL-lkp@intel.com>
References: <20230811120814.169952-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230811120814.169952-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691763069; x=1723299069;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=45vu1KVZaynLGE6xff8pnvoLx5zLr5L6i5XJfOncpok=;
 b=QkH4CSaW7JCJ6O+ZfH2r2AuqlIV7wxTX+c8t+vBvk3XMZ7uH5wa5/62G
 APmn0SjcQszhKlRxJABuaVSB0gqOzeHsGFTvvLZdufByRHCCyVpf+mser
 Wsmt3il3pfERQK3Ob9IYn9g77LoaNCFypgCLbUzuVENQEYDCtlRAU1S3c
 7hNpQyUF4jJag2/7SpER96hq+5HZurPfi+k60ph6CrGlKRHs/GA+2bGBV
 yyvOPfYL/7PLPsW2nQGcicl4gGiVLDWy7aLMODXfzaPTlInqaYXcrbbdq
 /y/fj2hdbDvv9TPwxKshBmygGFykcS2CG9DRS0GUrMoMB+wmEEFRU1OKv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QkH4CSaW
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Przemek,

kernel test robot noticed the following build errors:

[auto build test ERROR on 6a1ed1430daa2ccf8ac457e0db93fb0925b801ca]

url:    https://github.com/intel-lab-lkp/linux/commits/Przemek-Kitszel/overflow-add-DEFINE_FLEX-for-on-stack-allocs/20230811-201509
base:   6a1ed1430daa2ccf8ac457e0db93fb0925b801ca
patch link:    https://lore.kernel.org/r/20230811120814.169952-2-przemyslaw.kitszel%40intel.com
patch subject: [PATCH net-next v2 1/7] overflow: add DEFINE_FLEX() for on-stack allocs
config: m68k-randconfig-r024-20230811 (https://download.01.org/0day-ci/archive/20230811/202308112122.OuF0YZqL-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230811/202308112122.OuF0YZqL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308112122.OuF0YZqL-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/compiler.h:5,
                    from include/linux/export.h:5,
                    from include/asm-generic/export.h:9,
                    from ./arch/m68k/include/generated/asm/export.h:1,
                    from arch/m68k/lib/mulsi3.S:35:
>> include/linux/compiler_types.h:331:5: warning: "__has_builtin" is not defined, evaluates to 0 [-Wundef]
     331 | #if __has_builtin(__builtin_dynamic_object_size)
         |     ^~~~~~~~~~~~~
>> include/linux/compiler_types.h:331:18: error: missing binary operator before token "("
     331 | #if __has_builtin(__builtin_dynamic_object_size)
         |                  ^


vim +331 include/linux/compiler_types.h

   326	
   327	/*
   328	 * When the size of an allocated object is needed, use the best available
   329	 * mechanism to find it. (For cases where sizeof() cannot be used.)
   330	 */
 > 331	#if __has_builtin(__builtin_dynamic_object_size)
   332	#define __struct_size(p)	__builtin_dynamic_object_size(p, 0)
   333	#define __member_size(p)	__builtin_dynamic_object_size(p, 1)
   334	#else
   335	#define __struct_size(p)	__builtin_object_size(p, 0)
   336	#define __member_size(p)	__builtin_object_size(p, 1)
   337	#endif
   338	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
