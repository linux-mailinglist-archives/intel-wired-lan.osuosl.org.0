Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB7BAB19C1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 18:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15BA74053A;
	Fri,  9 May 2025 16:06:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y6enVrQUVFQX; Fri,  9 May 2025 16:06:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0778D405F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746806796;
	bh=15s/DEpGn4Q5xyLXyNc5e7V8Rv7OaTX2NwwmWo5YIEA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZV1Rx1swTB1pvJM1EBrUgVShaY+DKeqvSNiRAG0thW1q1jBRqJoaS/NB6Z9rKHhM3
	 sR/PP92bNdHeeYJI57h/Zvl8vCl4DUj47Hh0IoqBQoBUuCkxt/s/4LCBAJsYvIqGwf
	 SJVamV9Qn3XlASRhqoERRH0Ezd7OLIIWPqPwHnGY99YIPo18VDFXDwLd4MFZnjt+Y7
	 iTnaefTrfbA5pJc0ZdsshEDu62sOEITQT9SCCnooWmTfoRmnQJGRMTeE8RBCyieDKw
	 VGef1dSs/Rb4lCMJDCpX6F/ovCAwVW9/MewEqE6S+hPg1RXx4WV/wSF8sKO028YSNE
	 ulIuexjszLgNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0778D405F5;
	Fri,  9 May 2025 16:06:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 224F3E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 16:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0829080F79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 16:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aiViZrMCDrXk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 16:06:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E4EAB80F81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4EAB80F81
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4EAB80F81
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 16:06:33 +0000 (UTC)
X-CSE-ConnectionGUID: dItWTvUDROO7MIMQBYMnvA==
X-CSE-MsgGUID: 9cxFqyHaRZ6RKUgqkNvs2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="71147353"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="71147353"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 09:06:31 -0700
X-CSE-ConnectionGUID: 77BYZPtUTUefj70tx4OlJQ==
X-CSE-MsgGUID: kCXnf4itRIKquhZYI+EEOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141566909"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 09 May 2025 09:06:29 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uDQF1-000CED-28
 for intel-wired-lan@lists.osuosl.org; Fri, 09 May 2025 16:06:27 +0000
Date: Sat, 10 May 2025 00:06:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505100013.cdpARhQc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746806793; x=1778342793;
 h=date:from:to:subject:message-id;
 bh=M1uSmJeZVrXBAdWrx92eAIioQbxnDDHbkodF4Cpb+64=;
 b=N0mVR15Re4PYrDHBEZ6cF6AQQucLrd1RUZXlbYusLzdTO1H6fUopl8mP
 KrhONcu0SLtqos3awu/nIhXh6ApGDQuY6zbMigyUgHx+NqphK9TWSIIE+
 dx2fXpiJ6hNP8UYZXD8mJw8kpfClwQR/jjpme4k+OsKsoI8qTFgDBNMBk
 wA7pAF1ubWoTOUi3ILUB94AJZE8UwDUFNRVOGuxHYqjAHKrWZzA2sRliT
 3KG/UmHUlLSji6GREx92/Al/4ky2xLHJCaIDthGBJDOEflrTGQlv63ZpA
 0/yc0i8A7XOL5+mIdBPwf2i040O+gaaLkfjrh56PCCh2NZ1uKlu/KuVEA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N0mVR15R
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d76efe69471a29d0f59bc924e3df8327ab213a53
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d76efe69471a29d0f59bc924e3df8327ab213a53  ice: default to TIME_REF instead of TXCO on E825-C

elapsed time: 1058m

configs tested: 122
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                          axs101_defconfig    gcc-14.2.0
arc                        nsimosci_defconfig    gcc-14.2.0
arc                 nsimosci_hs_smp_defconfig    gcc-14.2.0
arc                   randconfig-001-20250509    gcc-13.3.0
arc                   randconfig-002-20250509    gcc-13.3.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250509    gcc-7.5.0
arm                   randconfig-002-20250509    gcc-6.5.0
arm                   randconfig-003-20250509    gcc-10.5.0
arm                   randconfig-004-20250509    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250509    gcc-7.5.0
arm64                 randconfig-002-20250509    gcc-7.5.0
arm64                 randconfig-003-20250509    clang-21
arm64                 randconfig-004-20250509    gcc-5.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250509    gcc-14.2.0
csky                  randconfig-002-20250509    gcc-13.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250509    clang-20
hexagon               randconfig-002-20250509    clang-21
i386                             alldefconfig    gcc-12
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250509    gcc-11
i386        buildonly-randconfig-002-20250509    gcc-12
i386        buildonly-randconfig-003-20250509    clang-20
i386        buildonly-randconfig-004-20250509    clang-20
i386        buildonly-randconfig-005-20250509    gcc-12
i386        buildonly-randconfig-006-20250509    gcc-11
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250509    gcc-13.3.0
loongarch             randconfig-002-20250509    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           ip22_defconfig    gcc-14.2.0
mips                          rb532_defconfig    clang-18
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250509    gcc-13.3.0
nios2                 randconfig-002-20250509    gcc-13.3.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250509    gcc-6.5.0
parisc                randconfig-002-20250509    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                      chrp32_defconfig    clang-19
powerpc                   currituck_defconfig    clang-21
powerpc               mpc834x_itxgp_defconfig    clang-21
powerpc                     ppa8548_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250509    clang-16
powerpc               randconfig-002-20250509    gcc-5.5.0
powerpc               randconfig-003-20250509    gcc-7.5.0
powerpc                     stx_gp3_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250509    gcc-7.5.0
powerpc64             randconfig-002-20250509    clang-21
powerpc64             randconfig-003-20250509    gcc-10.5.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250509    clang-21
riscv                 randconfig-002-20250509    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250509    clang-21
s390                  randconfig-002-20250509    clang-17
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250509    gcc-9.3.0
sh                    randconfig-002-20250509    gcc-5.5.0
sh                   sh7770_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250509    gcc-6.5.0
sparc                 randconfig-002-20250509    gcc-6.5.0
sparc64               randconfig-001-20250509    gcc-10.5.0
sparc64               randconfig-002-20250509    gcc-6.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250509    clang-21
um                    randconfig-002-20250509    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250509    gcc-11
x86_64      buildonly-randconfig-002-20250509    gcc-11
x86_64      buildonly-randconfig-003-20250509    clang-20
x86_64      buildonly-randconfig-004-20250509    clang-20
x86_64      buildonly-randconfig-005-20250509    gcc-12
x86_64      buildonly-randconfig-006-20250509    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250509    gcc-12.4.0
xtensa                randconfig-002-20250509    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
