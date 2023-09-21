Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F787A93D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 13:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ABEF408B1;
	Thu, 21 Sep 2023 11:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ABEF408B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695295053;
	bh=U9zQ4DTIb9aVC5LjCbpOZuNhfGT1s6JYufAREjTgKNA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=38Di0rC699kH9NhrONPhP7bIJ3VkEFxfAY3S2oRCY74N7VwBThsStdN/JJNUKYZY/
	 m2050gB9E4yKuHiPizt+rR5YPmX8Acv79Kz9kMwMTcwiK+NRN0SRJbZ7DzmvPqvHMn
	 FPSeUI+lQydfNhxTboKR54rBbWEihXnyBUNrh3bpVeuhbBjZ3vZaGJOZUSlzAI9Twd
	 SK2WaUdMlZuZIjBWSHW9axlky/u8Ca5DCy0mllAYu610BC9DZ7w+YKUQnYr3hxQieS
	 itc4mvBat7GC0MwX8Qh1nCzFEI6kT9p2GQYmnk6NUh/PLk36YJ98yHo7qylv+jyoob
	 9rO/xQxJuA3Sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXmoDMdWe158; Thu, 21 Sep 2023 11:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 233E7408EC;
	Thu, 21 Sep 2023 11:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 233E7408EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19D101BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 11:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E58C782B75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 11:17:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E58C782B75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jogvs22sms1r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 11:17:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 645A182ADD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 11:17:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 645A182ADD
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359873184"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="359873184"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:17:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="994040908"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="994040908"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 21 Sep 2023 04:17:23 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qjHgP-0009un-2B
 for intel-wired-lan@lists.osuosl.org; Thu, 21 Sep 2023 11:17:21 +0000
Date: Thu, 21 Sep 2023 19:16:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309211943.h9XrGTZT-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695295045; x=1726831045;
 h=date:from:to:subject:message-id;
 bh=woFv7JKrq9kw0/r4AsDWUcVlhkgO1TAJh9yyuVOW6YY=;
 b=TegMQf3RBQPEUKICLfg6Mwacxl0zauqzFHVi5+K2JtjB6jfQ6DPOzTMX
 bxIC/ig9hUyv3q3H9YryGqPOJfvdDmON8Cb0ebGv34fCKuXty9g61X3OQ
 2B4IgNG+JCLvp9ixKnfNUTq7rUD1VK+vOKySzwM/iU+sEkA0TEhWWTALP
 QvDobcXZzhAyKUdbfcALwuI/p/m3ioX9RrzHtb+VZsWX8rzYCsAeIqnYV
 bBUqDoWVeKw2iJtQ4kKiBoMcg0FMKFLtDgh3jsyEemkOc04QZyjr4AjTh
 b3xNt5Xyhjtf4nOS93TFm5ZIk+7ZNsTpiGzZcKGvCm3jKgV2b4494twh4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TegMQf3R
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 170911bb1b046c5589e0e973c4f5abdb1d5d9e62
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 170911bb1b046c5589e0e973c4f5abdb1d5d9e62  ice: Remove the FW shared parameters

elapsed time: 1033m

configs tested: 136
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230921   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230921   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230921   gcc  
i386         buildonly-randconfig-002-20230921   gcc  
i386         buildonly-randconfig-003-20230921   gcc  
i386         buildonly-randconfig-004-20230921   gcc  
i386         buildonly-randconfig-005-20230921   gcc  
i386         buildonly-randconfig-006-20230921   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230921   gcc  
i386                  randconfig-002-20230921   gcc  
i386                  randconfig-003-20230921   gcc  
i386                  randconfig-004-20230921   gcc  
i386                  randconfig-005-20230921   gcc  
i386                  randconfig-006-20230921   gcc  
i386                  randconfig-011-20230921   gcc  
i386                  randconfig-012-20230921   gcc  
i386                  randconfig-013-20230921   gcc  
i386                  randconfig-014-20230921   gcc  
i386                  randconfig-015-20230921   gcc  
i386                  randconfig-016-20230921   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230921   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230921   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230921   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230921   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230921   gcc  
x86_64       buildonly-randconfig-002-20230921   gcc  
x86_64       buildonly-randconfig-003-20230921   gcc  
x86_64       buildonly-randconfig-004-20230921   gcc  
x86_64       buildonly-randconfig-005-20230921   gcc  
x86_64       buildonly-randconfig-006-20230921   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230921   gcc  
x86_64                randconfig-002-20230921   gcc  
x86_64                randconfig-003-20230921   gcc  
x86_64                randconfig-004-20230921   gcc  
x86_64                randconfig-005-20230921   gcc  
x86_64                randconfig-006-20230921   gcc  
x86_64                randconfig-011-20230921   gcc  
x86_64                randconfig-012-20230921   gcc  
x86_64                randconfig-013-20230921   gcc  
x86_64                randconfig-014-20230921   gcc  
x86_64                randconfig-015-20230921   gcc  
x86_64                randconfig-016-20230921   gcc  
x86_64                randconfig-071-20230921   gcc  
x86_64                randconfig-072-20230921   gcc  
x86_64                randconfig-073-20230921   gcc  
x86_64                randconfig-074-20230921   gcc  
x86_64                randconfig-075-20230921   gcc  
x86_64                randconfig-076-20230921   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
