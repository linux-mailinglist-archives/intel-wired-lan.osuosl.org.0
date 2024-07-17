Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C25933935
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jul 2024 10:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CD9740C82;
	Wed, 17 Jul 2024 08:39:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mBn9kxq2CkNa; Wed, 17 Jul 2024 08:39:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F144740C88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721205548;
	bh=+41SHyjy9MbcgxpSTVKVJ2POF520XbPIO5rEsZemkN4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bUlL8OFdLsROtc6yK1X4iNXwPin/S6CehtNWNXuvead53OZnGDU3vPVmzn4YGE9BZ
	 xShHvyroYz945JTAwdUC0JdwX21pR1fowwjU9JGhNTMwx2N74A1YncSYa8H75YvSp8
	 I2YVqDM4yjm8zSsMzn5p03HE6SzdquZXQE0DddjwNVfCEVnZ4SdyGxb0N6FrHsgXvt
	 HAzgPnVfBRtA/6xFhis6f5ek3cVuw+3Dp31N7VwUKsSDDt9iSDGNkVLLNOSxB3xAZz
	 dExfqFFWKlSTsGohZ0tvPZmz6kKdlNxWnXCUL57YL9oXl5tFF28s64w/RI3IkkSWaJ
	 JjwzRUL5rgsYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F144740C88;
	Wed, 17 Jul 2024 08:39:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85ED01BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 08:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E87640789
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 08:39:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_gxIhQ5nsGx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2024 08:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB83C40778
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB83C40778
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB83C40778
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 08:39:03 +0000 (UTC)
X-CSE-ConnectionGUID: xBQWm+2KRGmEvRaBn2l8+g==
X-CSE-MsgGUID: I2qE57waT5ieQD1NSxChsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="22508484"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="22508484"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 01:39:03 -0700
X-CSE-ConnectionGUID: BcF2vkoVRw6lnNC7Ug+Ecw==
X-CSE-MsgGUID: XgxlEaZTRSCCbkvXREoD4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50118573"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jul 2024 01:39:02 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sU0Bf-000g9m-1b
 for intel-wired-lan@lists.osuosl.org; Wed, 17 Jul 2024 08:38:59 +0000
Date: Wed, 17 Jul 2024 16:38:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407171650.fMSJ4RCN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721205544; x=1752741544;
 h=date:from:to:subject:message-id;
 bh=XGWHPzK+C4fW5ATsQ/J/8hA18vk4hFE3uG67h0NFKnw=;
 b=QPf3XBY2Yi2t7+PAUxWSeI1ANYd0FGaGzODrgiklqGqUq09oPPFehgAc
 oYQSGbnOnLHDSg5Yv9JQAt2gooX9gsQFsHsJviXWKQFwiIOpAeHjEAifD
 eT/zsbilOZgEDmw4DnL/9sk/BLbWQ5ZGQH1UDgCJBSwR9Y+Xprz1NyMJm
 3XUsPNXuqgTPZaL+5ARIPaD/UlSAy0Xnc+WnTYjmcsTn9hQHUQoRRs6KO
 asvCOtPB84hv0Kti+goclGEoHM9gfhvYG1oGDlQ6a6dSx2cK4DGToQaDB
 OtPupXMIOmKDVEIJuU22WOWLR/xsLUa2eATqNcFE0juK0UYaGHYW4hMV/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QPf3XBY2
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9c17cb580aa4d21eebc51ac7b0219f54b2826029
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9c17cb580aa4d21eebc51ac7b0219f54b2826029  ice: Adjust over allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()

elapsed time: 881m

configs tested: 183
configs skipped: 6

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
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                     haps_hs_smp_defconfig   gcc-13.2.0
arc                            hsdk_defconfig   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                        keystone_defconfig   gcc-14.1.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                        mvebu_v7_defconfig   gcc-13.2.0
arm                        neponset_defconfig   gcc-13.2.0
arm                           omap1_defconfig   gcc-13.2.0
arm                           sama7_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
csky                             alldefconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240717   clang-18
i386         buildonly-randconfig-002-20240717   clang-18
i386         buildonly-randconfig-002-20240717   gcc-13
i386         buildonly-randconfig-003-20240717   clang-18
i386         buildonly-randconfig-003-20240717   gcc-13
i386         buildonly-randconfig-004-20240717   clang-18
i386         buildonly-randconfig-004-20240717   gcc-13
i386         buildonly-randconfig-005-20240717   clang-18
i386         buildonly-randconfig-005-20240717   gcc-10
i386         buildonly-randconfig-006-20240717   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240717   clang-18
i386                  randconfig-001-20240717   gcc-8
i386                  randconfig-002-20240717   clang-18
i386                  randconfig-003-20240717   clang-18
i386                  randconfig-004-20240717   clang-18
i386                  randconfig-004-20240717   gcc-8
i386                  randconfig-005-20240717   clang-18
i386                  randconfig-005-20240717   gcc-10
i386                  randconfig-006-20240717   clang-18
i386                  randconfig-006-20240717   gcc-13
i386                  randconfig-011-20240717   clang-18
i386                  randconfig-011-20240717   gcc-9
i386                  randconfig-012-20240717   clang-18
i386                  randconfig-012-20240717   gcc-13
i386                  randconfig-013-20240717   clang-18
i386                  randconfig-014-20240717   clang-18
i386                  randconfig-015-20240717   clang-18
i386                  randconfig-016-20240717   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5208evb_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                     decstation_defconfig   gcc-14.1.0
mips                       lemote2f_defconfig   gcc-14.1.0
mips                           mtx1_defconfig   gcc-14.1.0
nios2                         10m50_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                        cell_defconfig   gcc-14.1.0
powerpc                   currituck_defconfig   gcc-13.2.0
powerpc                    ge_imp3a_defconfig   gcc-13.2.0
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc                   lite5200b_defconfig   gcc-13.2.0
powerpc                     mpc512x_defconfig   gcc-13.2.0
powerpc                 mpc834x_itx_defconfig   gcc-13.2.0
powerpc               mpc834x_itxgp_defconfig   gcc-13.2.0
powerpc                      pmac32_defconfig   gcc-14.1.0
powerpc                     skiroot_defconfig   gcc-14.1.0
powerpc                     stx_gp3_defconfig   gcc-14.1.0
powerpc                 xes_mpc85xx_defconfig   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                    nommu_k210_defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240717   gcc-13
x86_64       buildonly-randconfig-002-20240717   gcc-13
x86_64       buildonly-randconfig-003-20240717   gcc-13
x86_64       buildonly-randconfig-004-20240717   gcc-13
x86_64       buildonly-randconfig-005-20240717   gcc-13
x86_64       buildonly-randconfig-006-20240717   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240717   gcc-13
x86_64                randconfig-002-20240717   gcc-13
x86_64                randconfig-003-20240717   gcc-13
x86_64                randconfig-004-20240717   gcc-13
x86_64                randconfig-005-20240717   gcc-13
x86_64                randconfig-006-20240717   gcc-13
x86_64                randconfig-011-20240717   gcc-13
x86_64                randconfig-012-20240717   gcc-13
x86_64                randconfig-013-20240717   gcc-13
x86_64                randconfig-014-20240717   gcc-13
x86_64                randconfig-015-20240717   gcc-13
x86_64                randconfig-016-20240717   gcc-13
x86_64                randconfig-071-20240717   gcc-13
x86_64                randconfig-072-20240717   gcc-13
x86_64                randconfig-073-20240717   gcc-13
x86_64                randconfig-074-20240717   gcc-13
x86_64                randconfig-075-20240717   gcc-13
x86_64                randconfig-076-20240717   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                       common_defconfig   gcc-13.2.0
xtensa                    smp_lx200_defconfig   gcc-14.1.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
