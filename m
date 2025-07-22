Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FD5B0DEEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 16:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3524684A7A;
	Tue, 22 Jul 2025 14:38:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8-sbRo9f63o0; Tue, 22 Jul 2025 14:38:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EC4484A86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753195133;
	bh=aAcYeSTGrW2ssvSrIzVT5argxF47TwSQfFIdXsp0ohw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J/uIbuXXJXXMPjC4OKI9djHDLJRos0LO9E1Fpi1VU8F2SbQekhIzFnK15nV4Q5nP4
	 Ce6mcO/oofxBNReKAHkOzOrdCqEb00zxc9lBQ7O2QPmvaZTOZTpN9zz/L6aA5qPH2+
	 wNM4Yn4zS641LP1mkTnuOdh6VoNW5gHQHZpzvXTq/SZYqQMqUTHTwOlRPEEq6G2/nZ
	 TJxvgfnligsHCtmhNxv4WO5t5eKwVNOyi5+7DoJZqoyt8tf6gaXY0GQtPGgXxn710Y
	 3+EQ18zHIg/XG4QRJGUVphHSeHLxls1nk6AXP/H7ZdPLAd7PwwOEZwcF3liUwGkVno
	 bQ/YG3vT1xuVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EC4484A86;
	Tue, 22 Jul 2025 14:38:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C90CCE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA5646165E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:38:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CmRNXQPFlfaj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 14:38:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B81AE615CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B81AE615CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B81AE615CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 14:38:50 +0000 (UTC)
X-CSE-ConnectionGUID: zLRp0GvLTOmZrEbzoye6uw==
X-CSE-MsgGUID: cjvR2wMZSSW1NsMpQqcL3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="80892432"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="80892432"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 07:38:50 -0700
X-CSE-ConnectionGUID: rMETz1KyTgaOruX+/TwknA==
X-CSE-MsgGUID: noac5qyIQ+yRvsu5uyClug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="158830585"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 22 Jul 2025 07:38:49 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ueE8l-000IR2-0j
 for intel-wired-lan@lists.osuosl.org; Tue, 22 Jul 2025 14:38:47 +0000
Date: Tue, 22 Jul 2025 22:37:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507222245.81q1zX0I-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753195130; x=1784731130;
 h=date:from:to:subject:message-id;
 bh=1bB3hrSKLPTyH3YeVcxlrU3nwYgTyUSFp8QVtExDDVk=;
 b=aTdRsl2ozDnojhLyfBsgfhlhbbz+4iF+R+hfP25uLAOIGAKJjXBW3fGC
 9YlBTs+P3Hb+hVuaDx8G7FPzBnD25tF3Kbg+DBmj/QVMvIaBrXXBLqklL
 u5PGu0VPdckeM/4AX2BUQzMJ8CMmUU/rVYIVefvJU2wMhbFXmG9qjYG7/
 xiLisZh80mbwU1iH1XTSXj7tHvud8pHzWsip++aiQgGBC1wyLvWkpf+ZQ
 2AT474p7jz8M6leXSKrSovwISDUA6hsDWY8qrBTjbSMxAyMXFHaj7oopL
 d8pV+54kzj1zcxmydFS/brp18RFvByNbK38mXCob0D7oq/qgCXefzUXOS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aTdRsl2o
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 61114910a5f6a71d0b6ea3b95082dfe031b19dfe
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 61114910a5f6a71d0b6ea3b95082dfe031b19dfe  e1000e: ignore uninitialized checksum word on tgp

elapsed time: 1248m

configs tested: 227
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                        nsimosci_defconfig    gcc-15.1.0
arc                   randconfig-001-20250722    clang-22
arc                   randconfig-001-20250722    gcc-10.5.0
arc                   randconfig-002-20250722    clang-22
arc                   randconfig-002-20250722    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                      jornada720_defconfig    clang-22
arm                   randconfig-001-20250722    clang-22
arm                   randconfig-001-20250722    gcc-12.5.0
arm                   randconfig-002-20250722    clang-22
arm                   randconfig-003-20250722    clang-22
arm                   randconfig-003-20250722    gcc-8.5.0
arm                   randconfig-004-20250722    clang-17
arm                   randconfig-004-20250722    clang-22
arm                           spitz_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250722    clang-22
arm64                 randconfig-002-20250722    clang-22
arm64                 randconfig-003-20250722    clang-22
arm64                 randconfig-004-20250722    clang-22
arm64                 randconfig-004-20250722    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250722    gcc-11.5.0
csky                  randconfig-001-20250722    gcc-8.5.0
csky                  randconfig-002-20250722    gcc-15.1.0
csky                  randconfig-002-20250722    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250722    clang-20
hexagon               randconfig-001-20250722    gcc-8.5.0
hexagon               randconfig-002-20250722    clang-18
hexagon               randconfig-002-20250722    gcc-8.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250722    gcc-12
i386        buildonly-randconfig-002-20250722    gcc-12
i386        buildonly-randconfig-003-20250722    clang-20
i386        buildonly-randconfig-003-20250722    gcc-12
i386        buildonly-randconfig-004-20250722    gcc-12
i386        buildonly-randconfig-005-20250722    clang-20
i386        buildonly-randconfig-005-20250722    gcc-12
i386        buildonly-randconfig-006-20250722    clang-20
i386        buildonly-randconfig-006-20250722    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250722    clang-20
i386                  randconfig-002-20250722    clang-20
i386                  randconfig-003-20250722    clang-20
i386                  randconfig-004-20250722    clang-20
i386                  randconfig-005-20250722    clang-20
i386                  randconfig-006-20250722    clang-20
i386                  randconfig-007-20250722    clang-20
i386                  randconfig-011-20250722    clang-20
i386                  randconfig-012-20250722    clang-20
i386                  randconfig-013-20250722    clang-20
i386                  randconfig-014-20250722    clang-20
i386                  randconfig-015-20250722    clang-20
i386                  randconfig-016-20250722    clang-20
i386                  randconfig-017-20250722    clang-20
loongarch                        alldefconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250722    gcc-15.1.0
loongarch             randconfig-001-20250722    gcc-8.5.0
loongarch             randconfig-002-20250722    clang-22
loongarch             randconfig-002-20250722    gcc-8.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          atari_defconfig    clang-22
m68k                                defconfig    clang-19
m68k                        m5407c3_defconfig    clang-22
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
microblaze                      mmu_defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250722    gcc-11.5.0
nios2                 randconfig-001-20250722    gcc-8.5.0
nios2                 randconfig-002-20250722    gcc-8.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250722    gcc-8.5.0
parisc                randconfig-002-20250722    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                  iss476-smp_defconfig    clang-22
powerpc                 mpc832x_rdb_defconfig    gcc-15.1.0
powerpc                  mpc885_ads_defconfig    clang-22
powerpc               randconfig-001-20250722    gcc-13.4.0
powerpc               randconfig-001-20250722    gcc-8.5.0
powerpc               randconfig-002-20250722    clang-22
powerpc               randconfig-002-20250722    gcc-8.5.0
powerpc               randconfig-003-20250722    gcc-14.3.0
powerpc               randconfig-003-20250722    gcc-8.5.0
powerpc                     tqm5200_defconfig    clang-22
powerpc                     tqm8560_defconfig    clang-22
powerpc64             randconfig-001-20250722    gcc-8.5.0
powerpc64             randconfig-002-20250722    clang-22
powerpc64             randconfig-002-20250722    gcc-8.5.0
powerpc64             randconfig-003-20250722    clang-22
powerpc64             randconfig-003-20250722    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250722    clang-16
riscv                 randconfig-002-20250722    clang-16
riscv                 randconfig-002-20250722    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250722    clang-16
s390                  randconfig-001-20250722    clang-22
s390                  randconfig-002-20250722    clang-16
s390                  randconfig-002-20250722    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250722    clang-16
sh                    randconfig-001-20250722    gcc-15.1.0
sh                    randconfig-002-20250722    clang-16
sh                    randconfig-002-20250722    gcc-15.1.0
sh                           se7206_defconfig    gcc-15.1.0
sh                        sh7757lcr_defconfig    gcc-15.1.0
sh                          urquell_defconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250722    clang-16
sparc                 randconfig-001-20250722    gcc-13.4.0
sparc                 randconfig-002-20250722    clang-16
sparc                 randconfig-002-20250722    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250722    clang-16
sparc64               randconfig-001-20250722    gcc-8.5.0
sparc64               randconfig-002-20250722    clang-16
sparc64               randconfig-002-20250722    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250722    clang-16
um                    randconfig-001-20250722    gcc-12
um                    randconfig-002-20250722    clang-16
um                    randconfig-002-20250722    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250722    gcc-12
x86_64      buildonly-randconfig-002-20250722    gcc-12
x86_64      buildonly-randconfig-003-20250722    gcc-12
x86_64      buildonly-randconfig-004-20250722    clang-20
x86_64      buildonly-randconfig-004-20250722    gcc-12
x86_64      buildonly-randconfig-005-20250722    gcc-12
x86_64      buildonly-randconfig-006-20250722    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250722    clang-20
x86_64                randconfig-002-20250722    clang-20
x86_64                randconfig-003-20250722    clang-20
x86_64                randconfig-004-20250722    clang-20
x86_64                randconfig-005-20250722    clang-20
x86_64                randconfig-006-20250722    clang-20
x86_64                randconfig-007-20250722    clang-20
x86_64                randconfig-008-20250722    clang-20
x86_64                randconfig-071-20250722    gcc-12
x86_64                randconfig-072-20250722    gcc-12
x86_64                randconfig-073-20250722    gcc-12
x86_64                randconfig-074-20250722    gcc-12
x86_64                randconfig-075-20250722    gcc-12
x86_64                randconfig-076-20250722    gcc-12
x86_64                randconfig-077-20250722    gcc-12
x86_64                randconfig-078-20250722    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250722    clang-16
xtensa                randconfig-001-20250722    gcc-15.1.0
xtensa                randconfig-002-20250722    clang-16
xtensa                randconfig-002-20250722    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
