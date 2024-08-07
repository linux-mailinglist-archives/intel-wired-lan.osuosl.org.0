Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 360FA94A77B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 14:07:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C70740613;
	Wed,  7 Aug 2024 12:07:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EPigbWTgons5; Wed,  7 Aug 2024 12:07:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79690400AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723032450;
	bh=9O5kE+/Pc4/CXJ22AIORVo9dRA/z15qWiZ4IDMg0Tj4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EQMrpvt+2jI6lV9I3evE45JYPUtKoFkgvck5rSPJanD/y1jzSUA4zEDQhQHk/IG9Z
	 aYUsYXuQzqCS4xc8lCj/eJQlUxo43+q+cobOvq1dTtdkCWuJKMnTKEnE67iPFZBdE9
	 LC0vhZow2QJZ5JHjZw4BgeXk2hr3mEfZfgJn8jO9EafBg5qHrWiDcVMqjiSOHtmNG9
	 D6EVDoctx2kZnQuRVWp9KTEMlyjvOkbPawipk/UM4QiPU/BlvGyhu+Qggp+9RLWNNb
	 9yqKObr9WKrwMoihj0EVcuGlgKvDln5v33L6/VIFpnL18q4bAFGcExiJ5A2FYzff6k
	 PiEKKfl96sUow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79690400AA;
	Wed,  7 Aug 2024 12:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E5FD1BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 12:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0756540570
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 12:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xR2zBkBYWz3R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 12:07:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 02AC140513
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02AC140513
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02AC140513
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 12:07:26 +0000 (UTC)
X-CSE-ConnectionGUID: Y1zPEAjySGOG7iv7E8zrDA==
X-CSE-MsgGUID: gOdlsl3GRRafNzwnGbkz/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21238520"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="21238520"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 05:07:25 -0700
X-CSE-ConnectionGUID: Z2Ia1TDmRTicvoGpfsRirA==
X-CSE-MsgGUID: O/PEb+PhTNqfIGa8pV/L0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="61715931"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 07 Aug 2024 05:07:24 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sbfRp-0005MI-2s
 for intel-wired-lan@lists.osuosl.org; Wed, 07 Aug 2024 12:07:21 +0000
Date: Wed, 07 Aug 2024 20:06:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408072008.ydfsDIxG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723032447; x=1754568447;
 h=date:from:to:subject:message-id;
 bh=6KnHxAmggC30QCHzhlSHiG2Sdh5xQOeknNvXtUBQXbQ=;
 b=B2d4DkTbCy70soyBOdacCkSC+SAfKdDjGCuJ88FSJudvyAH+9MsgpQ7Q
 8t97CYquuEAL49AeEbS78UJ8HufN8ZS1LgQuINKyecdZd4X1t2b/bPQSj
 3hVdd9/l6RAJtMQN4NoUwrETegp5bboBzKNGuCugyqXRAyamfiwR9VbQN
 O0/ng6RVm3vD/y15Nu0oA0C6Oc002pkJsJzsB7/h26AexgAVAUAcgnbIw
 kxgJbyBa9kZ/QHoRDwyStMdNQ1Fwti28MceY/JFfwoinAThhQrlyTfREU
 jqshBjQUACOH3SzUNhGdPNEZSx3n7Tkj/MaAO/TPUZ7+lJo2EoYFrXGfm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B2d4DkTb
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 45160cebd6ac84fe8cc2b7f6fec2550398e144cd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 45160cebd6ac84fe8cc2b7f6fec2550398e144cd  net: veth: Disable netpoll support

elapsed time: 1004m

configs tested: 276
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                   randconfig-001-20240807   gcc-13.2.0
arc                   randconfig-002-20240807   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                         at91_dt_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                           h3600_defconfig   gcc-13.2.0
arm                            hisi_defconfig   gcc-14.1.0
arm                         lpc18xx_defconfig   gcc-13.2.0
arm                        neponset_defconfig   gcc-14.1.0
arm                       netwinder_defconfig   gcc-14.1.0
arm                           omap1_defconfig   gcc-14.1.0
arm                          pxa910_defconfig   gcc-13.2.0
arm                   randconfig-001-20240807   clang-20
arm                   randconfig-001-20240807   gcc-13.2.0
arm                   randconfig-002-20240807   gcc-13.2.0
arm                   randconfig-002-20240807   gcc-14.1.0
arm                   randconfig-003-20240807   gcc-13.2.0
arm                   randconfig-003-20240807   gcc-14.1.0
arm                   randconfig-004-20240807   gcc-13.2.0
arm                   randconfig-004-20240807   gcc-14.1.0
arm                         s5pv210_defconfig   gcc-13.2.0
arm                           sama7_defconfig   gcc-13.2.0
arm                           stm32_defconfig   gcc-14.1.0
arm                           sunxi_defconfig   gcc-13.2.0
arm                           u8500_defconfig   gcc-14.1.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240807   gcc-13.2.0
arm64                 randconfig-001-20240807   gcc-14.1.0
arm64                 randconfig-002-20240807   clang-17
arm64                 randconfig-002-20240807   gcc-13.2.0
arm64                 randconfig-003-20240807   clang-15
arm64                 randconfig-003-20240807   gcc-13.2.0
arm64                 randconfig-004-20240807   clang-20
arm64                 randconfig-004-20240807   gcc-13.2.0
csky                             alldefconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240807   gcc-13.2.0
csky                  randconfig-001-20240807   gcc-14.1.0
csky                  randconfig-002-20240807   gcc-13.2.0
csky                  randconfig-002-20240807   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240807   clang-14
hexagon               randconfig-002-20240807   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240807   clang-18
i386         buildonly-randconfig-002-20240807   clang-18
i386         buildonly-randconfig-003-20240807   clang-18
i386         buildonly-randconfig-003-20240807   gcc-12
i386         buildonly-randconfig-004-20240807   clang-18
i386         buildonly-randconfig-005-20240807   clang-18
i386         buildonly-randconfig-006-20240807   clang-18
i386         buildonly-randconfig-006-20240807   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240807   clang-18
i386                  randconfig-001-20240807   gcc-12
i386                  randconfig-002-20240807   clang-18
i386                  randconfig-003-20240807   clang-18
i386                  randconfig-004-20240807   clang-18
i386                  randconfig-004-20240807   gcc-12
i386                  randconfig-005-20240807   clang-18
i386                  randconfig-005-20240807   gcc-12
i386                  randconfig-006-20240807   clang-18
i386                  randconfig-011-20240807   clang-18
i386                  randconfig-012-20240807   clang-18
i386                  randconfig-012-20240807   gcc-11
i386                  randconfig-013-20240807   clang-18
i386                  randconfig-014-20240807   clang-18
i386                  randconfig-015-20240807   clang-18
i386                  randconfig-016-20240807   clang-18
i386                  randconfig-016-20240807   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-13.2.0
loongarch             randconfig-001-20240807   gcc-13.2.0
loongarch             randconfig-001-20240807   gcc-14.1.0
loongarch             randconfig-002-20240807   gcc-13.2.0
loongarch             randconfig-002-20240807   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          amiga_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                        m5307c3_defconfig   gcc-13.2.0
m68k                        m5407c3_defconfig   gcc-14.1.0
m68k                            mac_defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-14.1.0
m68k                        stmark2_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                      bmips_stb_defconfig   gcc-14.1.0
mips                          eyeq6_defconfig   gcc-13.2.0
mips                      pic32mzda_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240807   gcc-13.2.0
nios2                 randconfig-001-20240807   gcc-14.1.0
nios2                 randconfig-002-20240807   gcc-13.2.0
nios2                 randconfig-002-20240807   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-64bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240807   gcc-13.2.0
parisc                randconfig-001-20240807   gcc-14.1.0
parisc                randconfig-002-20240807   gcc-13.2.0
parisc                randconfig-002-20240807   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                     asp8347_defconfig   gcc-13.2.0
powerpc                   currituck_defconfig   gcc-13.2.0
powerpc                       ebony_defconfig   gcc-13.2.0
powerpc                      mgcoge_defconfig   gcc-14.1.0
powerpc                 mpc836x_rdk_defconfig   gcc-14.1.0
powerpc                         ps3_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240807   clang-20
powerpc               randconfig-001-20240807   gcc-13.2.0
powerpc               randconfig-002-20240807   clang-20
powerpc               randconfig-003-20240807   gcc-13.2.0
powerpc               randconfig-003-20240807   gcc-14.1.0
powerpc64             randconfig-001-20240807   clang-15
powerpc64             randconfig-001-20240807   gcc-13.2.0
powerpc64             randconfig-002-20240807   gcc-13.2.0
powerpc64             randconfig-002-20240807   gcc-14.1.0
powerpc64             randconfig-003-20240807   gcc-13.2.0
powerpc64             randconfig-003-20240807   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240807   clang-20
riscv                 randconfig-001-20240807   gcc-13.2.0
riscv                 randconfig-002-20240807   clang-20
riscv                 randconfig-002-20240807   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240807   gcc-13.2.0
s390                  randconfig-001-20240807   gcc-14.1.0
s390                  randconfig-002-20240807   gcc-13.2.0
s390                  randconfig-002-20240807   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         ap325rxa_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                               j2_defconfig   gcc-13.2.0
sh                 kfr2r09-romimage_defconfig   gcc-14.1.0
sh                    randconfig-001-20240807   gcc-13.2.0
sh                    randconfig-001-20240807   gcc-14.1.0
sh                    randconfig-002-20240807   gcc-13.2.0
sh                    randconfig-002-20240807   gcc-14.1.0
sh                          rsk7269_defconfig   gcc-13.2.0
sh                          sdk7786_defconfig   gcc-14.1.0
sh                           se7750_defconfig   gcc-13.2.0
sh                          urquell_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240807   gcc-13.2.0
sparc64               randconfig-001-20240807   gcc-14.1.0
sparc64               randconfig-002-20240807   gcc-13.2.0
sparc64               randconfig-002-20240807   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   clang-20
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-12
um                             i386_defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240807   gcc-12
um                    randconfig-001-20240807   gcc-13.2.0
um                    randconfig-002-20240807   clang-20
um                    randconfig-002-20240807   gcc-13.2.0
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240807   clang-18
x86_64       buildonly-randconfig-002-20240807   clang-18
x86_64       buildonly-randconfig-003-20240807   clang-18
x86_64       buildonly-randconfig-004-20240807   clang-18
x86_64       buildonly-randconfig-005-20240807   clang-18
x86_64       buildonly-randconfig-006-20240807   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240807   clang-18
x86_64                randconfig-002-20240807   clang-18
x86_64                randconfig-002-20240807   gcc-12
x86_64                randconfig-003-20240807   clang-18
x86_64                randconfig-004-20240807   clang-18
x86_64                randconfig-004-20240807   gcc-12
x86_64                randconfig-005-20240807   clang-18
x86_64                randconfig-005-20240807   gcc-12
x86_64                randconfig-006-20240807   clang-18
x86_64                randconfig-006-20240807   gcc-12
x86_64                randconfig-011-20240807   clang-18
x86_64                randconfig-012-20240807   clang-18
x86_64                randconfig-012-20240807   gcc-12
x86_64                randconfig-013-20240807   clang-18
x86_64                randconfig-013-20240807   gcc-12
x86_64                randconfig-014-20240807   clang-18
x86_64                randconfig-014-20240807   gcc-12
x86_64                randconfig-015-20240807   clang-18
x86_64                randconfig-016-20240807   clang-18
x86_64                randconfig-071-20240807   clang-18
x86_64                randconfig-072-20240807   clang-18
x86_64                randconfig-073-20240807   clang-18
x86_64                randconfig-073-20240807   gcc-12
x86_64                randconfig-074-20240807   clang-18
x86_64                randconfig-075-20240807   clang-18
x86_64                randconfig-075-20240807   gcc-12
x86_64                randconfig-076-20240807   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                generic_kc705_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240807   gcc-13.2.0
xtensa                randconfig-001-20240807   gcc-14.1.0
xtensa                randconfig-002-20240807   gcc-13.2.0
xtensa                randconfig-002-20240807   gcc-14.1.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0
xtensa                         virt_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
