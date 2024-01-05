Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315868258C6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jan 2024 18:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7437E436C1;
	Fri,  5 Jan 2024 17:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7437E436C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704474132;
	bh=r68w40RQs7o+KKxPRc1Pbu85/p1zJQSTpwY/919HRtE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ajK6Q8DXiV+0HAqnAHVHohYBjM7I8NX2oJTtSoVVegRJp04xzAp5hBw0DwQNpjYKF
	 ivkvBVqaZ/UvUuiqbHmIBWJLEByvfhyt3x6ffLVUOXyuh6l++qFrOFS9O9Wkw/xv6/
	 O0o3Ubf7zbEQP7Kim9ctuNDGlxD0eCXDwd+pruciZPDMDKF2QATC3gy9RzhohwVKaJ
	 f2gTc6z/t8jo6//oTx/VvadDJmQZazQ5pw08HdPiHoTZHlPAnyx3cwI+OB1S/qobxR
	 IJepamKlC9Fe0/PqyaDLzsSaTD9PnSvcxpB4THguOIIXKViCw+ZRMdRhM5q8yaEXtC
	 jmm8l/ALN45XQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXTtIwoRPXYt; Fri,  5 Jan 2024 17:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA582436BE;
	Fri,  5 Jan 2024 17:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA582436BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2D941BF847
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 17:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C87024367E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 17:02:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C87024367E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6YnxejEPKPS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jan 2024 17:02:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F6894027F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 17:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F6894027F
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="16156112"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="16156112"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 09:02:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="29165068"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 05 Jan 2024 09:02:01 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rLna2-0001U0-1B
 for intel-wired-lan@lists.osuosl.org; Fri, 05 Jan 2024 17:01:58 +0000
Date: Sat, 06 Jan 2024 01:01:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401060129.5xeXoWQl-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704474124; x=1736010124;
 h=date:from:to:subject:message-id;
 bh=maKjkXo4mnkZPrXNlTp+0FK6XhlKB+FTK6BdZ0AaexA=;
 b=h7n96C84NaTaSJ4ehkBWFVoyR8ErVAxdAlkcn6QVxxaDTTF2vBVr3grr
 AYP88EJkr3yVde0Sv5liu/e1ai7Bz2r1HuUSIt2J3zmdSR2+aysyyU5rG
 MvXDqNZAAga1CJFzdhN6qpoWcOSFFIkzoG7kWtM9Yev4QhkmsDpQLjcKW
 pngTn2n3JxUgMI0XWpWYGyrExRkoUW/ZcFrktBFHi23/RXhK+sOn5fW9a
 JW2kVBtrqgWZlfkq7tt6nAWe/09yr5oDg61D7MAJm4gnB8AD3eeVVKtLT
 NePGi5Je1Grz/XQAGqOqD4eCdxsqOtdpogdz2LyL9DjWhPYtQrmNqbWvA
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h7n96C84
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 2e957f9c32c154f8b823caa4f0921e0056c0c253
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 2e957f9c32c154f8b823caa4f0921e0056c0c253  Merge branch '40GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue

elapsed time: 1455m

configs tested: 189
configs skipped: 3

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
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240105   gcc  
arc                   randconfig-002-20240105   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                                 defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                   randconfig-001-20240105   clang
arm                   randconfig-002-20240105   clang
arm                   randconfig-003-20240105   clang
arm                   randconfig-004-20240105   clang
arm                           stm32_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240105   clang
arm64                 randconfig-002-20240105   clang
arm64                 randconfig-003-20240105   clang
arm64                 randconfig-004-20240105   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240105   gcc  
csky                  randconfig-002-20240105   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240105   clang
hexagon               randconfig-002-20240105   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240105   clang
i386         buildonly-randconfig-002-20240105   clang
i386         buildonly-randconfig-003-20240105   clang
i386         buildonly-randconfig-004-20240105   clang
i386         buildonly-randconfig-005-20240105   clang
i386         buildonly-randconfig-006-20240105   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240105   clang
i386                  randconfig-002-20240105   clang
i386                  randconfig-003-20240105   clang
i386                  randconfig-004-20240105   clang
i386                  randconfig-005-20240105   clang
i386                  randconfig-006-20240105   clang
i386                  randconfig-011-20240105   gcc  
i386                  randconfig-012-20240105   gcc  
i386                  randconfig-013-20240105   gcc  
i386                  randconfig-014-20240105   gcc  
i386                  randconfig-015-20240105   gcc  
i386                  randconfig-016-20240105   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240105   gcc  
loongarch             randconfig-002-20240105   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                     loongson1c_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240105   gcc  
nios2                 randconfig-002-20240105   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20240105   gcc  
parisc                randconfig-002-20240105   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20240105   clang
powerpc               randconfig-002-20240105   clang
powerpc               randconfig-003-20240105   clang
powerpc64             randconfig-001-20240105   clang
powerpc64             randconfig-002-20240105   clang
powerpc64             randconfig-003-20240105   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240105   clang
riscv                 randconfig-002-20240105   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240105   gcc  
s390                  randconfig-002-20240105   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240105   gcc  
sh                    randconfig-002-20240105   gcc  
sh                          rsk7201_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240105   gcc  
sparc64               randconfig-002-20240105   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240105   clang
um                    randconfig-002-20240105   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240105   clang
x86_64       buildonly-randconfig-002-20240105   clang
x86_64       buildonly-randconfig-003-20240105   clang
x86_64       buildonly-randconfig-004-20240105   clang
x86_64       buildonly-randconfig-005-20240105   clang
x86_64       buildonly-randconfig-006-20240105   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20240105   gcc  
x86_64                randconfig-002-20240105   gcc  
x86_64                randconfig-003-20240105   gcc  
x86_64                randconfig-004-20240105   gcc  
x86_64                randconfig-005-20240105   gcc  
x86_64                randconfig-006-20240105   gcc  
x86_64                randconfig-011-20240105   clang
x86_64                randconfig-012-20240105   clang
x86_64                randconfig-013-20240105   clang
x86_64                randconfig-014-20240105   clang
x86_64                randconfig-015-20240105   clang
x86_64                randconfig-016-20240105   clang
x86_64                randconfig-071-20240105   clang
x86_64                randconfig-072-20240105   clang
x86_64                randconfig-073-20240105   clang
x86_64                randconfig-074-20240105   clang
x86_64                randconfig-075-20240105   clang
x86_64                randconfig-076-20240105   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240105   gcc  
xtensa                randconfig-002-20240105   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
