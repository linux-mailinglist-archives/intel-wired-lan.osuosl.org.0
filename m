Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E66BA9E59EE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 16:40:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04B2D84652;
	Thu,  5 Dec 2024 15:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JyGZWojx08QX; Thu,  5 Dec 2024 15:40:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8311C84654
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733413246;
	bh=RgLaaTdPmfm8Y2tUSGrckX4VzKZTgpUlDpI59IPSVVA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NgMmqJO8D0lT4aBt1OMKKVxKUGrMTXLlNTa9/2uz8rR8sC5I4WzSfzs3MxIENd7nL
	 Y0eTe+FDNhkbrsXqAmhUku1zbLhFNHj2Q0sJzUaRlE0Q08Bs8YBMogy/1YK4Vh6f85
	 2a7Tj/ripeY3Zenr1iFbBWT7+vwkQUg6R6+thZJKKeDec+XS2bLh5HV95Rv424OBVZ
	 Aa5KO4TZRm/a9kPf9ZfJpEsl8dn1Q0Rn3jfKX9UP5msRzDbW/AFNb07DsBgHPHocEY
	 cxg+Xp9tD2cz2RvOZapVf2cZTsoPz88ZAlAm2MsCDeqo4lCLKOBo0//wz1TYjs9lU7
	 qhIdi2edKF2yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8311C84654;
	Thu,  5 Dec 2024 15:40:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DE1A1DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 15:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E22A141C73
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 15:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mcoVo1hzYSwo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 15:40:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F95F405DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F95F405DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F95F405DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 15:40:41 +0000 (UTC)
X-CSE-ConnectionGUID: CXYEQLFuS0q0TCooFE0SvA==
X-CSE-MsgGUID: +ZZcQHs2R/GeWrnqc8SeDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="59135536"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="59135536"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 07:40:41 -0800
X-CSE-ConnectionGUID: EImlVWzqTT2Vmc6Vxx6VzA==
X-CSE-MsgGUID: UZrKq011QM+N4MMI3zfaHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="99161734"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 05 Dec 2024 07:40:40 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tJDy1-000083-2v
 for intel-wired-lan@lists.osuosl.org; Thu, 05 Dec 2024 15:40:37 +0000
Date: Thu, 05 Dec 2024 23:37:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412052330.hB9TDNoD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733413242; x=1764949242;
 h=date:from:to:subject:message-id;
 bh=isqDAQRulenF0yLE7wo2qag7sksDSyd49L7Ntpb2tsk=;
 b=bjL2y9ekgPcCcWedsVP6VL3dJhBbEpCjQx+eUxSA8zSTn0l9DYeS0YR0
 AWFzhVTgFksD3sRDyX+cG3OMg35aDLgGATUE9lALyEen7kRQtarosslip
 P8Ip/Ngear3r9T9o1ez6w5EYO9xQ7BvJ3Emf7Ty3eXNQXW1pIoscHnmj4
 4KGEnD0PNc/M3LBVMeQs5uuZJBkIJFg5pAdTO1Fk23tdgKZDb0/D3wHzt
 2Mkqz+NEDpSePxXkAuqt2IcY5uj/14Eh3gJw3jvHyQVIVKBWqjEYztBIi
 hN9+5cBbBSsaqtiT76MUimPav/PYMunmh3+olxBU3TDp9gKhJo/VF8iF2
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bjL2y9ek
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 36ab34c1bb6e78b4f90ae0d4892d38a64b8cf0da
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 36ab34c1bb6e78b4f90ae0d4892d38a64b8cf0da  ice: Implement PTP support for E830 devices

elapsed time: 1243m

configs tested: 168
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                          axs101_defconfig    clang-20
arc                          axs103_defconfig    clang-20
arc                         haps_hs_defconfig    clang-19
arc                            randconfig-001    clang-20
arc                            randconfig-001    gcc-13.2.0
arc                   randconfig-001-20241205    clang-20
arc                            randconfig-002    clang-20
arc                            randconfig-002    gcc-13.2.0
arc                   randconfig-002-20241205    clang-20
arc                    vdk_hs38_smp_defconfig    clang-19
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                         assabet_defconfig    gcc-14.2.0
arm                         at91_dt_defconfig    clang-20
arm                          exynos_defconfig    gcc-14.2.0
arm                      integrator_defconfig    clang-20
arm                            mps2_defconfig    clang-20
arm                       multi_v4t_defconfig    clang-20
arm                         mv78xx0_defconfig    clang-17
arm                          pxa910_defconfig    clang-20
arm                            randconfig-001    clang-20
arm                            randconfig-001    gcc-14.2.0
arm                   randconfig-001-20241205    clang-20
arm                            randconfig-002    clang-20
arm                            randconfig-002    gcc-14.2.0
arm                   randconfig-002-20241205    clang-20
arm                            randconfig-003    clang-20
arm                   randconfig-003-20241205    clang-20
arm                            randconfig-004    clang-20
arm                            randconfig-004    gcc-14.2.0
arm                   randconfig-004-20241205    clang-20
arm                        realview_defconfig    clang-20
arm                           sama7_defconfig    clang-20
arm                          sp7021_defconfig    clang-19
arm                        spear3xx_defconfig    clang-20
arm                    vt8500_v6_v7_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                          randconfig-001    clang-20
arm64                          randconfig-001    gcc-14.2.0
arm64                 randconfig-001-20241205    clang-20
arm64                          randconfig-002    clang-20
arm64                          randconfig-002    gcc-14.2.0
arm64                 randconfig-002-20241205    clang-20
arm64                          randconfig-003    clang-15
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20241205    clang-20
arm64                          randconfig-004    clang-20
arm64                 randconfig-004-20241205    clang-20
csky                              allnoconfig    gcc-14.2.0
hexagon                          alldefconfig    clang-20
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386                 buildonly-randconfig-001    gcc-12
i386                 buildonly-randconfig-002    clang-19
i386                 buildonly-randconfig-002    gcc-12
i386                 buildonly-randconfig-003    clang-19
i386                 buildonly-randconfig-003    gcc-12
i386                 buildonly-randconfig-004    gcc-12
i386                 buildonly-randconfig-005    gcc-12
i386                 buildonly-randconfig-006    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         bigsur_defconfig    clang-17
mips                           jazz_defconfig    clang-20
mips                          rb532_defconfig    clang-17
mips                   sb1250_swarm_defconfig    clang-20
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                       virt_defconfig    clang-19
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-32bit_defconfig    clang-20
powerpc                    adder875_defconfig    clang-20
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                 canyonlands_defconfig    clang-19
powerpc                      cm5200_defconfig    clang-20
powerpc                        fsp2_defconfig    clang-19
powerpc                          g5_defconfig    gcc-14.2.0
powerpc                    ge_imp3a_defconfig    clang-20
powerpc                  iss476-smp_defconfig    clang-20
powerpc                      mgcoge_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    clang-20
powerpc                 mpc837x_rdb_defconfig    clang-20
powerpc                     skiroot_defconfig    clang-20
powerpc                    socrates_defconfig    clang-19
powerpc                        warp_defconfig    clang-17
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                    nommu_virt_defconfig    clang-20
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        dreamcast_defconfig    clang-17
sh                          landisk_defconfig    gcc-14.2.0
sh                          lboxre2_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                          rsk7201_defconfig    clang-20
sh                           se7206_defconfig    clang-17
sh                           se7722_defconfig    clang-17
sh                             sh03_defconfig    clang-20
sh                   sh7724_generic_defconfig    clang-20
sh                            titan_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
x86_64               buildonly-randconfig-001    gcc-12
x86_64      buildonly-randconfig-001-20241205    clang-19
x86_64               buildonly-randconfig-002    gcc-12
x86_64      buildonly-randconfig-002-20241205    clang-19
x86_64               buildonly-randconfig-003    gcc-12
x86_64      buildonly-randconfig-003-20241205    clang-19
x86_64               buildonly-randconfig-004    gcc-12
x86_64      buildonly-randconfig-004-20241205    clang-19
x86_64               buildonly-randconfig-005    gcc-12
x86_64      buildonly-randconfig-005-20241205    clang-19
x86_64      buildonly-randconfig-005-20241205    gcc-12
x86_64               buildonly-randconfig-006    gcc-12
x86_64      buildonly-randconfig-006-20241205    clang-19
x86_64      buildonly-randconfig-006-20241205    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  audio_kc705_defconfig    clang-20
xtensa                  cadence_csp_defconfig    gcc-14.2.0
xtensa                          iss_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
