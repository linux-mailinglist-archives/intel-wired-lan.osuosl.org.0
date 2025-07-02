Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46889AF0C32
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 09:05:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F60E84796;
	Wed,  2 Jul 2025 07:05:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6MX485dUgdkq; Wed,  2 Jul 2025 07:05:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B048847A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751439906;
	bh=8LCEeQTo8BI+VutsQLnz6tsaVMCNqusv2I4u8AHuaU8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=waIyx6zPVIEeiZVWl2GRkGjmCnh3LcNE5Cq61JYQbnBd+eGgTYAvFILx1P7qsjVO8
	 +bWKDHIvDSOKzddmfg8Z75myVTc8Y1hptgPfaImi+c66C4ha/jKY7tKoIOyhUYRJ1l
	 mbEgXrNrU4QnlEuhNBCA66CYPfsbHdChNudpWbNOz1PXATitcyt9v8HaexTxAJWfHp
	 pX80MvNotqi1Cb6r94EZkv7M32X7gG3FAFK/aJRs+oasE/XWA8ZP1dFsRxTQ/GnYTH
	 bNGb7GCSwsDeUnRNF0VZrGWgprOOS/ZMnHp/JhoUK2AQmuLY/82mF7XjfWqGptkB5p
	 wbkaMBasmZkFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B048847A5;
	Wed,  2 Jul 2025 07:05:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D13F6196
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 07:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B81BB4031F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 07:05:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKyZbq374yHJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 07:05:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B12A40DFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B12A40DFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B12A40DFA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 07:05:03 +0000 (UTC)
X-CSE-ConnectionGUID: ECjFekIkRmauo2JbGb6fIg==
X-CSE-MsgGUID: QPmUwHUwSPCtyUnB5hMkng==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="64770582"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="64770582"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 00:05:02 -0700
X-CSE-ConnectionGUID: RzMJr5xUQOu/NeTIDOPjfA==
X-CSE-MsgGUID: XgQVIOiXTGKVx1iDDFsn/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="154077229"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 02 Jul 2025 00:05:01 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uWrWc-0000IS-2U
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Jul 2025 07:04:58 +0000
Date: Wed, 02 Jul 2025 15:04:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507021518.VJhfFyuy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751439903; x=1782975903;
 h=date:from:to:subject:message-id;
 bh=Waxt767PnNR8lh/Vbm3jFovJz2TNN/7yK+V5nYgx/r8=;
 b=MLgbfPelBKHghplC93LP5lE8/CcShMISG//xhW62HQYCuYyy89OPtN7U
 GmtTZJSOo0ueppZRjeWFNJEJgBd52PMYHQXKS0Uj88x7M7TeAN/o8QnxB
 47jMXA6aE+Dv8Gl/lRgHKXAJgsf13wVArvRLbDST/2ZVyzzj3kCRHTQ6j
 pvDxtEQwkEgBVrrZdL+XU7c9RJGCLL1DOUiEwwh9JvBN09/cxL1PMUTpA
 ex9ZFsaGDscl1glFBtz3v3Pp32KW8XYcowUFxEIClPAVq7no/MzV6vA3I
 1oNmGX+IzJT3kXo63p3yvlfZndrrCU8vEc41wR1wfUnlSIVNTc866yvbT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MLgbfPel
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 72fb83735c71e3f6f025ab7f5dbfec7c9e26b6cc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 72fb83735c71e3f6f025ab7f5dbfec7c9e26b6cc  Merge tag 'for-net-2025-06-27' of git://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth

elapsed time: 1684m

configs tested: 231
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250702    clang-19
arc                   randconfig-001-20250702    gcc-10.5.0
arc                   randconfig-002-20250702    clang-19
arc                   randconfig-002-20250702    gcc-14.3.0
arc                        vdk_hs38_defconfig    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                                 defconfig    gcc-15.1.0
arm                          gemini_defconfig    clang-21
arm                          gemini_defconfig    gcc-15.1.0
arm                        multi_v7_defconfig    gcc-15.1.0
arm                   randconfig-001-20250702    clang-17
arm                   randconfig-001-20250702    clang-19
arm                   randconfig-002-20250702    clang-19
arm                   randconfig-003-20250702    clang-19
arm                   randconfig-003-20250702    clang-21
arm                   randconfig-004-20250702    clang-17
arm                   randconfig-004-20250702    clang-19
arm                           u8500_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250702    clang-19
arm64                 randconfig-001-20250702    clang-21
arm64                 randconfig-002-20250702    clang-19
arm64                 randconfig-002-20250702    clang-21
arm64                 randconfig-003-20250702    clang-19
arm64                 randconfig-003-20250702    clang-21
arm64                 randconfig-004-20250702    clang-19
arm64                 randconfig-004-20250702    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250702    gcc-14.2.0
csky                  randconfig-001-20250702    gcc-15.1.0
csky                  randconfig-002-20250702    gcc-14.2.0
csky                  randconfig-002-20250702    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250702    clang-21
hexagon               randconfig-001-20250702    gcc-14.2.0
hexagon               randconfig-002-20250702    clang-21
hexagon               randconfig-002-20250702    gcc-14.2.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250702    clang-20
i386        buildonly-randconfig-002-20250702    clang-20
i386        buildonly-randconfig-002-20250702    gcc-12
i386        buildonly-randconfig-003-20250702    clang-20
i386        buildonly-randconfig-004-20250702    clang-20
i386        buildonly-randconfig-005-20250702    clang-20
i386        buildonly-randconfig-005-20250702    gcc-12
i386        buildonly-randconfig-006-20250702    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250702    clang-20
i386                  randconfig-002-20250702    clang-20
i386                  randconfig-003-20250702    clang-20
i386                  randconfig-004-20250702    clang-20
i386                  randconfig-005-20250702    clang-20
i386                  randconfig-006-20250702    clang-20
i386                  randconfig-007-20250702    clang-20
i386                  randconfig-011-20250702    gcc-12
i386                  randconfig-012-20250702    gcc-12
i386                  randconfig-013-20250702    gcc-12
i386                  randconfig-014-20250702    gcc-12
i386                  randconfig-015-20250702    gcc-12
i386                  randconfig-016-20250702    gcc-12
i386                  randconfig-017-20250702    gcc-12
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250702    gcc-14.2.0
loongarch             randconfig-001-20250702    gcc-15.1.0
loongarch             randconfig-002-20250702    gcc-14.2.0
loongarch             randconfig-002-20250702    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
m68k                           virt_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip32_defconfig    gcc-15.1.0
mips                         rt305x_defconfig    gcc-15.1.0
nios2                         3c120_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250702    gcc-14.2.0
nios2                 randconfig-002-20250702    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250702    gcc-12.4.0
parisc                randconfig-001-20250702    gcc-14.2.0
parisc                randconfig-002-20250702    gcc-14.2.0
parisc                randconfig-002-20250702    gcc-9.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      chrp32_defconfig    gcc-15.1.0
powerpc                       ebony_defconfig    gcc-15.1.0
powerpc                          g5_defconfig    clang-21
powerpc                    gamecube_defconfig    clang-21
powerpc                     mpc512x_defconfig    gcc-15.1.0
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc                      pcm030_defconfig    clang-21
powerpc               randconfig-001-20250702    gcc-11.5.0
powerpc               randconfig-001-20250702    gcc-14.2.0
powerpc               randconfig-002-20250702    gcc-11.5.0
powerpc               randconfig-002-20250702    gcc-14.2.0
powerpc               randconfig-003-20250702    clang-21
powerpc               randconfig-003-20250702    gcc-14.2.0
powerpc                  storcenter_defconfig    clang-21
powerpc64             randconfig-001-20250702    clang-21
powerpc64             randconfig-001-20250702    gcc-14.2.0
powerpc64             randconfig-002-20250702    clang-19
powerpc64             randconfig-002-20250702    gcc-14.2.0
powerpc64             randconfig-003-20250702    clang-21
powerpc64             randconfig-003-20250702    gcc-14.2.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250702    clang-21
riscv                 randconfig-002-20250702    clang-21
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250702    clang-21
s390                  randconfig-001-20250702    gcc-10.5.0
s390                  randconfig-002-20250702    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                             espt_defconfig    gcc-15.1.0
sh                          r7785rp_defconfig    clang-21
sh                    randconfig-001-20250702    clang-21
sh                    randconfig-001-20250702    gcc-15.1.0
sh                    randconfig-002-20250702    clang-21
sh                    randconfig-002-20250702    gcc-15.1.0
sh                           se7722_defconfig    gcc-15.1.0
sh                           se7724_defconfig    clang-21
sh                     sh7710voipgw_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250702    clang-21
sparc                 randconfig-001-20250702    gcc-12.4.0
sparc                 randconfig-002-20250702    clang-21
sparc                 randconfig-002-20250702    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250702    clang-21
sparc64               randconfig-001-20250702    gcc-9.3.0
sparc64               randconfig-002-20250702    clang-21
sparc64               randconfig-002-20250702    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250702    clang-21
um                    randconfig-002-20250702    clang-21
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250702    gcc-11
x86_64      buildonly-randconfig-001-20250702    gcc-12
x86_64      buildonly-randconfig-002-20250702    gcc-11
x86_64      buildonly-randconfig-003-20250702    clang-20
x86_64      buildonly-randconfig-003-20250702    gcc-11
x86_64      buildonly-randconfig-004-20250702    clang-20
x86_64      buildonly-randconfig-004-20250702    gcc-11
x86_64      buildonly-randconfig-005-20250702    clang-20
x86_64      buildonly-randconfig-005-20250702    gcc-11
x86_64      buildonly-randconfig-006-20250702    gcc-11
x86_64      buildonly-randconfig-006-20250702    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250702    gcc-12
x86_64                randconfig-002-20250702    gcc-12
x86_64                randconfig-003-20250702    gcc-12
x86_64                randconfig-004-20250702    gcc-12
x86_64                randconfig-005-20250702    gcc-12
x86_64                randconfig-006-20250702    gcc-12
x86_64                randconfig-007-20250702    gcc-12
x86_64                randconfig-008-20250702    gcc-12
x86_64                randconfig-071-20250702    clang-20
x86_64                randconfig-072-20250702    clang-20
x86_64                randconfig-073-20250702    clang-20
x86_64                randconfig-074-20250702    clang-20
x86_64                randconfig-075-20250702    clang-20
x86_64                randconfig-076-20250702    clang-20
x86_64                randconfig-077-20250702    clang-20
x86_64                randconfig-078-20250702    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  cadence_csp_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250702    clang-21
xtensa                randconfig-001-20250702    gcc-14.3.0
xtensa                randconfig-002-20250702    clang-21
xtensa                randconfig-002-20250702    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
