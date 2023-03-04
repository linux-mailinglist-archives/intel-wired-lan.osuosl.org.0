Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6403A6AA786
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 03:15:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4C62411A3;
	Sat,  4 Mar 2023 02:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4C62411A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677896141;
	bh=q70EfTsfv0SCOC7Z9+wNJFSCX9wRL19RVDtTtwHjVqQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4tSKrrGO3+Zb0PEiyRIBEQ0sxTEloWZdHBelbhoHrHl1IU9Vkzb6PR0g74C0Hh10Q
	 /8MdDxDURmwhDxTTaJRzx5eFwPnAinUXcpuxh4qF9QdyC2WHVlanFYCuv0BlNPgk7w
	 FcfMyVfmNLEEZQVm1EmFUL7PuxHRr5/eY4LdzICt/mFMYZhNuyABxczM5VdW1kUyNw
	 0C4kav1QDhR3xUmhC6BGmV9mOSzy0vHORlsNc6RkH4IFOG2xWNfF0JFO0qNYY6yWAw
	 IFFTc0kkx+Ffdo+YvSGYbYEEhRatE6uMjUioT/KCMbAA6Mil/14TE9e2tDXHgWK264
	 ZkvhdmhzLAwcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0xaoD1s4CsT; Sat,  4 Mar 2023 02:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB440416AC;
	Sat,  4 Mar 2023 02:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB440416AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2D5C1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 02:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A728820B1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 02:15:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A728820B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HlCgCEa4SBc3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 02:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 638BF8206B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 638BF8206B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 02:15:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="421481954"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="421481954"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 18:15:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="1004791693"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="1004791693"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 03 Mar 2023 18:15:31 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYHQp-0001nU-0W;
 Sat, 04 Mar 2023 02:15:31 +0000
Date: Sat, 4 Mar 2023 10:15:15 +0800
From: kernel test robot <lkp@intel.com>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, netdev@vger.kernel.org
Message-ID: <202303041014.jTNcXi96-lkp@intel.com>
References: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677896134; x=1709432134;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Jdb/WolmlDHQZMvxcui4agr9sC64oqj953fE2F76G7w=;
 b=c6lj8H0CnNE02gLxV9TNOao6XAA+ojsQn/iYiFIBOBw9Vo3eYs6APMwL
 dwTSsMLBzpNX4v632cekuSKBMq5f4wDNH/2vncIgl6nC6j1vLXhqmtuez
 EXjnX6UE1AoZ4Sk3BM50rDVlcF7X5jjv+2Xbslc/M4rP4S0+8D1hb1WaC
 kAcx2Tn0BGjeuImWITKcdYl+KFdFgBr1ZuQU4MxIG5jeTIY+vv+lcHYjT
 mlNNB7muikH2Rey8u6Ubuk+kidwQeMbI1dS276ijW6HNwKbJhTYU8gEc4
 TuA/ZmS5b1JZ1xR4cWVXgGHEyCF/M9IjBQLEwx8hpOPpJwdoaYuzTUwgj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c6lj8H0C
Subject: Re: [Intel-wired-lan] [PATCH v1] netdevice: use ifmap isteand of
 plain fields
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
Cc: llvm@lists.linux.dev, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Vincenzo Palazzo <vincenzopalazzodev@gmail.com>, oe-kbuild-all@lists.linux.dev,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vincenzo,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vincenzo-Palazzo/netdevice-use-ifmap-isteand-of-plain-fields/20230303-231003
patch link:    https://lore.kernel.org/r/20230303150818.132386-1-vincenzopalazzodev%40gmail.com
patch subject: [PATCH v1] netdevice: use ifmap isteand of plain fields
config: riscv-randconfig-r006-20230303 (https://download.01.org/0day-ci/archive/20230304/202303041014.jTNcXi96-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/4efa870f9b2112fdebe7d1fffe30f5626b8d5229
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vincenzo-Palazzo/netdevice-use-ifmap-isteand-of-plain-fields/20230303-231003
        git checkout 4efa870f9b2112fdebe7d1fffe30f5626b8d5229
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash drivers/net/ethernet/ drivers/net/fddi/ drivers/net/plip/ drivers/net/slip/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303041014.jTNcXi96-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:13123:7: error: no member named 'mem_start' in 'struct net_device'
           dev->mem_start = pci_resource_start(pdev, 0);
           ~~~  ^
   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:13124:7: error: no member named 'base_addr' in 'struct net_device'
           dev->base_addr = dev->mem_start;
           ~~~  ^
   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:13124:24: error: no member named 'mem_start' in 'struct net_device'
           dev->base_addr = dev->mem_start;
                            ~~~  ^
   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:13125:7: error: no member named 'mem_end' in 'struct net_device'
           dev->mem_end = pci_resource_end(pdev, 0);
           ~~~  ^
   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:13117:49: warning: shift count >= width of type [-Wshift-count-overflow]
           rc = dma_set_mask_and_coherent(&bp->pdev->dev, DMA_BIT_MASK(64));
                                                          ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:14011:14: error: no member named 'base_addr' in 'struct net_device'
                  dev->base_addr, bp->pdev->irq, dev->dev_addr);
                  ~~~  ^
   drivers/net/ethernet/broadcom/bnx2x/bnx2x.h:141:35: note: expanded from macro 'BNX2X_DEV_INFO'
                   dev_info(&bp->pdev->dev, fmt, ##__VA_ARGS__);    \
                                                   ^~~~~~~~~~~
   include/linux/dev_printk.h:150:67: note: expanded from macro 'dev_info'
           dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                            ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                       ^~~~~~~~~~~
>> drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:15206:26: warning: shift count >= width of type [-Wshift-count-overflow]
           bp->cyclecounter.mask = CYCLECOUNTER_MASK(64);
                                   ^~~~~~~~~~~~~~~~~~~~~
   include/linux/timecounter.h:14:59: note: expanded from macro 'CYCLECOUNTER_MASK'
   #define CYCLECOUNTER_MASK(bits) (u64)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
                                                             ^ ~~~~~~
   2 warnings and 5 errors generated.


vim +15206 drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c

eeed018cbfa30c Michal Kalderon         2014-08-17  15201  
eeed018cbfa30c Michal Kalderon         2014-08-17  15202  static void bnx2x_init_cyclecounter(struct bnx2x *bp)
eeed018cbfa30c Michal Kalderon         2014-08-17  15203  {
eeed018cbfa30c Michal Kalderon         2014-08-17  15204  	memset(&bp->cyclecounter, 0, sizeof(bp->cyclecounter));
eeed018cbfa30c Michal Kalderon         2014-08-17  15205  	bp->cyclecounter.read = bnx2x_cyclecounter_read;
f28ba401dbd9e9 Richard Cochran         2015-01-02 @15206  	bp->cyclecounter.mask = CYCLECOUNTER_MASK(64);
a6e2846cacf97d Sudarsana Reddy Kalluru 2016-10-21  15207  	bp->cyclecounter.shift = 0;
eeed018cbfa30c Michal Kalderon         2014-08-17  15208  	bp->cyclecounter.mult = 1;
eeed018cbfa30c Michal Kalderon         2014-08-17  15209  }
eeed018cbfa30c Michal Kalderon         2014-08-17  15210  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
