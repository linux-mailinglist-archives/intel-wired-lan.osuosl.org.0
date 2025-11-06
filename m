Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAE9C39BE1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 10:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E36188418E;
	Thu,  6 Nov 2025 09:06:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRGnJNzV5W97; Thu,  6 Nov 2025 09:06:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69A8584192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762420012;
	bh=n3k9D8OtfQDfvciWWyjf3iq4Zw0/hnLKq49KKSGweuw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wTF144OM2kUdqGfs3OU7P923bqb/eJzkqsnbgt8fjU0Osua6B05WJjR/pw92NRYuw
	 0o7Jvdl7itb7xcfzDifQ390sNiIfnIBb3tbaATEyd/f2+8LDbJuayEZeoltD/Olqss
	 MMgQL23Qz0z9JKqInDA+6OVak/hSZ7fkiZsW99ndGYf7KDlSgSVRE4uZi1SQOKxIrE
	 8CjBm/laWerRok+n+du3cpMKKfqguymyqhl6jtNMBLOu/ZuB+zJWJe/qxoDGn+x0bP
	 WqCIzS4n3M+Xjk9O/S5bOJHDpShCMxtz3oliZGAD70uQ1DqWB5BJSkUym0FHWbOu9k
	 pDKSf0QEQbN9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69A8584192;
	Thu,  6 Nov 2025 09:06:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 623FBA64
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 09:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5338340BFC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 09:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mws3frS0gXnQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 09:06:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09CA840BF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09CA840BF6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09CA840BF6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 09:06:48 +0000 (UTC)
X-CSE-ConnectionGUID: Rzk69brER0e3NYsIf9xBqA==
X-CSE-MsgGUID: k3WsoqnsS/asqKuWeC7hUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="52118087"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="52118087"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 01:06:48 -0800
X-CSE-ConnectionGUID: R3RHKMRLSFevXho5L2LLYg==
X-CSE-MsgGUID: qxSppPrRS0ixYHtcy9KRvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="186958135"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 06 Nov 2025 01:06:44 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGvx3-000ThY-2V;
 Thu, 06 Nov 2025 09:06:41 +0000
Date: Thu, 6 Nov 2025 17:06:39 +0800
From: kernel test robot <lkp@intel.com>
To: Ally Heev <allyheev@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, Dan Carpenter <error27@gmail.com>,
 Ally Heev <allyheev@gmail.com>
Message-ID: <202511061627.TYBaNPrX-lkp@intel.com>
References: <20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762420010; x=1793956010;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CnL3lN9mkZ8LWgkzjBndu8y6E24o67CkMmSKjFPAyK4=;
 b=UnN4354Tqqv+A5cVYXw+AeAk/PNLxAYX/0HkZFry6R8ZoOYp8C0ze/RF
 4vtz7pZnWE30bMNNeGBWswxgAd2fqdomAsrvSrLYiDPbXMIw9T+UC/xF7
 aH0ezF4i1LlCt74GCvzNvaKQy2wCV4Ws/qNOqYa/wweyXnfuTQFzIySrb
 qFRGJlsAeQVBvVxy4DcZVheNhX5Q59+gR1z7vQFpoxqIa3zWbGYUVEtC+
 QVT+GbfPWoXtFIRw4d77nGhr21iuHWijj+5WXXlRfQ5gQZPmcSdRK8eU7
 nL5xVl8/eBmpnOIDYltQeaK7E0JJ/MCnlbZce0lZKT/fSN4b3KOYgpDqg
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UnN4354T
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: fix uninitialized
 pointers with free attr
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ally,

kernel test robot noticed the following build errors:

[auto build test ERROR on c9cfc122f03711a5124b4aafab3211cf4d35a2ac]

url:    https://github.com/intel-lab-lkp/linux/commits/Ally-Heev/net-ethernet-fix-uninitialized-pointers-with-free-attr/20251105-192022
base:   c9cfc122f03711a5124b4aafab3211cf4d35a2ac
patch link:    https://lore.kernel.org/r/20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750%40gmail.com
patch subject: [PATCH] net: ethernet: fix uninitialized pointers with free attr
config: x86_64-randconfig-015-20251106 (https://download.01.org/0day-ci/archive/20251106/202511061627.TYBaNPrX-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251106/202511061627.TYBaNPrX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511061627.TYBaNPrX-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/uapi/linux/posix_types.h:5,
                    from include/uapi/linux/types.h:14,
                    from include/linux/types.h:6,
                    from include/linux/objtool_types.h:7,
                    from include/linux/objtool.h:5,
                    from arch/x86/include/asm/bug.h:7,
                    from include/linux/bug.h:5,
                    from include/linux/vfsdebug.h:5,
                    from include/linux/fs.h:5,
                    from include/linux/debugfs.h:15,
                    from drivers/net/ethernet/microsoft/mana/gdma_main.c:4:
   drivers/net/ethernet/microsoft/mana/gdma_main.c: In function 'irq_setup':
>> include/linux/stddef.h:8:14: error: invalid initializer
       8 | #define NULL ((void *)0)
         |              ^
   drivers/net/ethernet/microsoft/mana/gdma_main.c:1508:55: note: in expansion of macro 'NULL'
    1508 |         cpumask_var_t cpus __free(free_cpumask_var) = NULL;
         |                                                       ^~~~


vim +8 include/linux/stddef.h

^1da177e4c3f41 Linus Torvalds   2005-04-16  6  
^1da177e4c3f41 Linus Torvalds   2005-04-16  7  #undef NULL
^1da177e4c3f41 Linus Torvalds   2005-04-16 @8  #define NULL ((void *)0)
6e218287432472 Richard Knutsson 2006-09-30  9  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
