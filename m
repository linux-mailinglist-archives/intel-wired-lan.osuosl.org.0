Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF7909258
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 20:34:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EADC8188D;
	Fri, 14 Jun 2024 18:34:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0j4wlBbtG8G1; Fri, 14 Jun 2024 18:34:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34E0B81B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718390061;
	bh=z9FIDqgunpxXRCLODqJH/sW9SWUpKW1uZecw5PaLZvI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1aWLv7tGs0NlgTHyw0Oml8iC5OeB12pV/2Ue/+g4KAtwqi1icQQpCUt6mbAeVhnCQ
	 B5SnN7UI9xuPyVisOht2zFP95TV4mLO+ik9w45vDudoM7b9DYBXuHTChchfSDm+R/G
	 MFDQyWC9fe/PenMNJthe+3zuKNKABDQnwp9naAHtBHH5JyRmTin9CMK4bnEQ6EpLuS
	 8Zh7r3WjDIgCP/6OuYUk4Io7iesrTgmTFziqlkUvPlo0f/TD6du/SHRgW4aFRsAgWC
	 +uzerZhzBRQ2rvtfh8T3Z5yy23gUQPjK9QfNo8JzcjXtUnqL/sEppUSxZP+vQFmkCW
	 7ejuG9J9coBKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34E0B81B3E;
	Fri, 14 Jun 2024 18:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2641BF321
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 18:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE0FE414F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 18:34:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcAUqgCizqIE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 18:34:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 47B63414B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47B63414B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47B63414B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 18:34:16 +0000 (UTC)
X-CSE-ConnectionGUID: yts8u9ciRUOmJcTvupz0qw==
X-CSE-MsgGUID: Q6T+pTfpRnuarF/8sqbhXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15442388"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="15442388"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 11:34:16 -0700
X-CSE-ConnectionGUID: AAYshsA7QpSdDhqCmwujsA==
X-CSE-MsgGUID: qgIAeRV3Stm3BT0F0fANdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="41293847"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 14 Jun 2024 11:34:15 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIBkb-0001eN-0x
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Jun 2024 18:34:13 +0000
Date: Sat, 15 Jun 2024 02:33:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406150237.H8jQD1yJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718390057; x=1749926057;
 h=date:from:to:subject:message-id;
 bh=eOINAXXtue4s1kjt17DCrwAfJHo2MK+b8mz0ouJeL9U=;
 b=cBIwSCuKVmcwTThXIuykxYKD+puLM0H+VYPBc2gtpAHtp08gBFwIUWj6
 tTkYh6bIgtZ47XIHzjZM3ZX9+zAbZNXXUHlecyw5XB6DP2dpwaNYIpmL4
 5i0X1SZtvY/kVZga5aCI7qf13njwCjt8ph3oT0U84nFp561gfN0syAaRV
 X4hrlq3Xl94D4B71x8y1eEkBWyZRVspwYQewsuExPp3eheS9O6PQU3g2T
 K4UoieJbDNoyOh/t7NJJM8ROLI+OR8AYeCFhb/6bsFMKUQl9g/xNe/lh3
 xxFipd7C9QyGu4cJVNgQxFswqczJIHNZEhTeC0P5NlDdkAXvg5lK4kq62
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cBIwSCuK
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 3ec8d7572a69d142d49f52b28ce8d84e5fef9131
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 3ec8d7572a69d142d49f52b28ce8d84e5fef9131  CDC-NCM: add support for Apple's private interface

elapsed time: 2431m

configs tested: 41
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon                             defconfig   clang-19
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
