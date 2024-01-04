Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0808D8249B9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 21:44:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 938B4839A4;
	Thu,  4 Jan 2024 20:44:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 938B4839A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704401096;
	bh=y/7U7RxBffbtgtCqzOVwFOHxb3uL4wPJRAf7c7z96j0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=D10lzA8CdEcrR68bYGgIX4quium0uKxpip0gLWH00wTvyrw/tB9l1WioltXyk1nix
	 rysVeXsh7sSreZQuzQcjfIK41YZ3umi2vePpyHSX4pK62kgIfd0jzCTZ0EvSVgyMaw
	 6vy3+M8mAH0g1tDZHuyq2HXJ9mRGdUstGSbzxqFlSObrhDjeJ089U0yeDXn7zdwnhb
	 A95PHvxJ/gKTdRznNlebWlZrf+AIjBZrpguRfZGNYi9zorZXSFb4rYvaXhJTr6FU0B
	 JTxiFgU5IUFQ44n5KHLU4EtUJmO3UT42tFef+mJvBVjQPcuWhkMlHUUUOE6GzMpW1h
	 j60yrCyr+JlxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqQlNJMkfCnf; Thu,  4 Jan 2024 20:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A987832D8;
	Thu,  4 Jan 2024 20:44:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A987832D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 963C71BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 20:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A998832D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 20:44:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A998832D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdOcpSO_VsVv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 20:44:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B46D832C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 20:44:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B46D832C7
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="10741474"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="10741474"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 12:44:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="846363425"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="846363425"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jan 2024 12:44:17 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rLUZb-0000Pc-1R
 for intel-wired-lan@lists.osuosl.org; Thu, 04 Jan 2024 20:44:15 +0000
Date: Fri, 05 Jan 2024 04:43:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401050426.jSvRno5h-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704401088; x=1735937088;
 h=date:from:to:subject:message-id;
 bh=Wik2LsCbBHCRtLcKOdFL7Jf8gwPlK19T+IRAtdKzfUQ=;
 b=KXij6z7IHTNNfKeVTJvVRgVRD68sIHp6s3M6FVK4k1r0SjiOlNWSe9Gg
 kmbWVHmYthna1hgt9eioMn87+/HkvLL0iQ5q1jGpUn3EYYAQeMm9jVv1u
 JIEyoR5bfLu3/OcozI2i26aCAcQwqXooDVSrepLiacQSA+jhKWyoAGWs1
 KB9G1m362hq8vldjwKmvL5nUTRWq8YWBhWSrIppD73jdy4FvFbZcLLayo
 z6vlpb/g6U7u7fZFLM8Z80GYDtO2G/T2Jgs/WN5BPw0G20dlD8mWc0VvG
 jc8BtvHPCQmejhxsCGhDpboyoN5cDvH+5A5/GwTTiYUcWGLYmsq3IjgPA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KXij6z7I
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 947dfc8138dfaeb6e966e2d661de89eb203e3064
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 947dfc8138dfaeb6e966e2d661de89eb203e3064  igc: Fix hicredit calculation

elapsed time: 1471m

configs tested: 212
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
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240104   gcc  
arc                   randconfig-002-20240104   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                       multi_v4t_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                   randconfig-001-20240104   gcc  
arm                   randconfig-002-20240104   gcc  
arm                   randconfig-003-20240104   gcc  
arm                   randconfig-004-20240104   gcc  
arm                         s3c6400_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240104   gcc  
arm64                 randconfig-002-20240104   gcc  
arm64                 randconfig-003-20240104   gcc  
arm64                 randconfig-004-20240104   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240104   gcc  
csky                  randconfig-002-20240104   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240104   clang
hexagon               randconfig-002-20240104   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240104   gcc  
i386         buildonly-randconfig-002-20240104   gcc  
i386         buildonly-randconfig-003-20240104   gcc  
i386         buildonly-randconfig-004-20240104   gcc  
i386         buildonly-randconfig-005-20240104   gcc  
i386         buildonly-randconfig-006-20240104   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20240104   gcc  
i386                  randconfig-002-20240104   gcc  
i386                  randconfig-003-20240104   gcc  
i386                  randconfig-004-20240104   gcc  
i386                  randconfig-005-20240104   gcc  
i386                  randconfig-006-20240104   gcc  
i386                  randconfig-011-20240104   clang
i386                  randconfig-011-20240105   gcc  
i386                  randconfig-012-20240104   clang
i386                  randconfig-012-20240105   gcc  
i386                  randconfig-013-20240104   clang
i386                  randconfig-013-20240105   gcc  
i386                  randconfig-014-20240104   clang
i386                  randconfig-014-20240105   gcc  
i386                  randconfig-015-20240104   clang
i386                  randconfig-015-20240105   gcc  
i386                  randconfig-016-20240104   clang
i386                  randconfig-016-20240105   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240104   gcc  
loongarch             randconfig-002-20240104   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                        bcm47xx_defconfig   gcc  
mips                           ci20_defconfig   gcc  
mips                         db1xxx_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                           gcw0_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                         rt305x_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240104   gcc  
nios2                 randconfig-002-20240104   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240104   gcc  
parisc                randconfig-002-20240104   gcc  
parisc64                            defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                      chrp32_defconfig   gcc  
powerpc                       ebony_defconfig   clang
powerpc                       eiger_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                     ksi8560_defconfig   gcc  
powerpc                   microwatt_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                       ppc64_defconfig   gcc  
powerpc               randconfig-001-20240104   gcc  
powerpc               randconfig-002-20240104   gcc  
powerpc               randconfig-003-20240104   gcc  
powerpc                     stx_gp3_defconfig   gcc  
powerpc64             randconfig-001-20240104   gcc  
powerpc64             randconfig-002-20240104   gcc  
powerpc64             randconfig-003-20240104   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240104   gcc  
riscv                 randconfig-002-20240104   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240104   clang
s390                  randconfig-002-20240104   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20240104   gcc  
sh                    randconfig-002-20240104   gcc  
sh                           se7721_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240104   gcc  
sparc64               randconfig-002-20240104   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240104   gcc  
um                    randconfig-002-20240104   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240104   gcc  
x86_64       buildonly-randconfig-002-20240104   gcc  
x86_64       buildonly-randconfig-003-20240104   gcc  
x86_64       buildonly-randconfig-004-20240104   gcc  
x86_64       buildonly-randconfig-005-20240104   gcc  
x86_64       buildonly-randconfig-006-20240104   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20240104   gcc  
x86_64                randconfig-012-20240104   gcc  
x86_64                randconfig-013-20240104   gcc  
x86_64                randconfig-014-20240104   gcc  
x86_64                randconfig-015-20240104   gcc  
x86_64                randconfig-016-20240104   gcc  
x86_64                randconfig-071-20240104   gcc  
x86_64                randconfig-072-20240104   gcc  
x86_64                randconfig-073-20240104   gcc  
x86_64                randconfig-074-20240104   gcc  
x86_64                randconfig-075-20240104   gcc  
x86_64                randconfig-076-20240104   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                randconfig-001-20240104   gcc  
xtensa                randconfig-002-20240104   gcc  
xtensa                    smp_lx200_defconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
