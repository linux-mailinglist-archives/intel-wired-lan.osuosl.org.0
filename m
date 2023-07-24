Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7488575F5F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 14:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 011F760F68;
	Mon, 24 Jul 2023 12:17:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 011F760F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690201063;
	bh=2uDBAtjb8j6jbW0DPusjvaZ6aio+08RiG3vFTfo7RNM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nguNNNKMQG7kbP5muD8qqTgURMTwIcjTxyqmmtbkHkrwaPVQFZFaUy0CDUS0Npohy
	 iUB+plo6BHK60IcL0jQOj+6pStX4/3K1WGX6l++hDt3YzwBZQo9KRWpduxWMvgmTjc
	 /6HpUozWnkLmlvDCfyBWW+ay29floq+1mBro9LcuQeSROTSXC8XBUOHBcYwCtUbUdk
	 M1nblcKEwSU4l5re/HlKnYyUhRODoloGaPaxQyXqvHbEehNsDIpj2W/JHR6iftxJzi
	 G/nnw4hnZP2DCBe5E1Sd6xngZ1Cu/EEJ40Udilu4azH3JUuhuIngVMp6xVGuKaixmp
	 tk2iRIgrN0WbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ak6GJnUlpFH; Mon, 24 Jul 2023 12:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B95AC60C19;
	Mon, 24 Jul 2023 12:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B95AC60C19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A41F61BF255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 12:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76BB5415D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 12:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76BB5415D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKXzyNRkGqDG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 12:17:36 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F29B8409A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 12:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F29B8409A1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="453801281"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="453801281"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 05:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="972238570"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="972238570"
Received: from lkp-server02.sh.intel.com (HELO 36946fcf73d7) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2023 05:17:16 -0700
Received: from kbuild by 36946fcf73d7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qNuUa-0009iR-2y;
 Mon, 24 Jul 2023 12:17:07 +0000
Date: Mon, 24 Jul 2023 20:13:23 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <202307242017.3f4YsHnA-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690201056; x=1721737056;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=OmaEreBGWx4M/zjvAF9MtWKJKyKV3ycKcvVAStMgqCQ=;
 b=fucjBMzClvTag2BY/yUn4pEMM78GNWs15l1gg3lb4a4E8RsH7guKntK9
 /frLvLs0EJvEYQavyNwByreInhcNoIzr23QTTMgz8o7EHZTzjuzaqIkNS
 fUzdDwe/ttZuzbeaMuuxKC97XAtHCc0lo/kyX67nUzgLqStRrnPSr+igT
 tOJZWbL2YcjMe/eMd0Gz5Z8/KeYMRpoYwWOCHj2zg0FCszMLiLZqPz11j
 IPDzDJUsOTL1i0zNBCyIFORiuXAfoZbXZBnbanOgMqUG1r4H+t72+2fJ6
 NuiFwStENOO2BkOLxDkJ/zSN9FKa3GVdyN+lfIhM56ESnp0Wh8xmpX3Wv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fucjBMzC
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 44/51]
 arch/mips/include/asm/page.h:35:25: warning: conversion from 'long unsigned
 int' to 'u16' {aka 'short unsigned int'} changes value from '65536' to '0'
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   57fdab1d44c1c14e211323a8f4c674ee0fb18e88
commit: 67faf1179b9bc657536050a5381e540ca651b9cb [44/51] ice: add ability to read FW log data and configure the number of log buffers
config: mips-randconfig-r021-20230724 (https://download.01.org/0day-ci/archive/20230724/202307242017.3f4YsHnA-lkp@intel.com/config)
compiler: mips64el-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230724/202307242017.3f4YsHnA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307242017.3f4YsHnA-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from arch/mips/include/asm/io.h:29,
                    from arch/mips/include/asm/mmiowb.h:5,
                    from include/linux/spinlock.h:66,
                    from include/linux/vmalloc.h:5,
                    from drivers/net/ethernet/intel/ice/ice_fwlog.c:4:
   drivers/net/ethernet/intel/ice/ice_fwlog.c: In function 'ice_fwlog_alloc_ring_buffs':
>> arch/mips/include/asm/page.h:35:25: warning: conversion from 'long unsigned int' to 'u16' {aka 'short unsigned int'} changes value from '65536' to '0' [-Woverflow]
      35 | #define PAGE_SIZE       (_AC(1,UL) << PAGE_SHIFT)
         |                         ^
   drivers/net/ethernet/intel/ice/ice_fwlog.c:41:35: note: in expansion of macro 'PAGE_SIZE'
      41 |                 ring->data_size = PAGE_SIZE;
         |                                   ^~~~~~~~~


vim +35 arch/mips/include/asm/page.h

^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  16  
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  17  /*
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  18   * PAGE_SHIFT determines the page size
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  19   */
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  20  #ifdef CONFIG_PAGE_SIZE_4KB
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  21  #define PAGE_SHIFT	12
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  22  #endif
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  23  #ifdef CONFIG_PAGE_SIZE_8KB
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  24  #define PAGE_SHIFT	13
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  25  #endif
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  26  #ifdef CONFIG_PAGE_SIZE_16KB
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  27  #define PAGE_SHIFT	14
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  28  #endif
c52399bece85cd arch/mips/include/asm/page.h Ralf Baechle   2009-04-02  29  #ifdef CONFIG_PAGE_SIZE_32KB
c52399bece85cd arch/mips/include/asm/page.h Ralf Baechle   2009-04-02  30  #define PAGE_SHIFT	15
c52399bece85cd arch/mips/include/asm/page.h Ralf Baechle   2009-04-02  31  #endif
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  32  #ifdef CONFIG_PAGE_SIZE_64KB
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  33  #define PAGE_SHIFT	16
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  34  #endif
99502d94c3649c arch/mips/include/asm/page.h Nelson Elhage  2009-07-31 @35  #define PAGE_SIZE	(_AC(1,UL) << PAGE_SHIFT)
800dc4f49cc002 arch/mips/include/asm/page.h Dan Williams   2016-01-22  36  #define PAGE_MASK	(~((1 << PAGE_SHIFT) - 1))
^1da177e4c3f41 include/asm-mips/page.h      Linus Torvalds 2005-04-16  37  

:::::: The code at line 35 was first introduced by commit
:::::: 99502d94c3649c5c5e6e81e323caf422a2f1591c MIPS: make page.h constants available to assembly.

:::::: TO: Nelson Elhage <nelhage@ksplice.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
