Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 779C8D1C9C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 06:48:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A89CC853DB;
	Wed, 14 Jan 2026 05:48:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lkOp63MZvk0; Wed, 14 Jan 2026 05:48:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C02CA853D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768369698;
	bh=S5mdO2EyM9tLpcCmJ2/YZoHupzNIoGaRGaOlyuSWiyM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wwQLjw6LtABIkbnBzQ0lqFALL+dpp0v675+2lQ/y996ib9KNdQMCDmr2q2EdHpfkb
	 35nCV3C12YXGwJXnGk3JGamxjfkBp45umq0Lvf6DWvElBmODT/szee8jnj95rzPERb
	 K1hNCD/1Gnca9BTLvrfqqSKLfKoVLKyPX7MQ5+xJMIkc3oaf9XnQTep0o+Rf9bgH8b
	 zwyphYK9H2OhU7Ve0+KInTiHJsfV4k+csa74YigUgSVZNrFA2EvsbX46dVSJS5FYup
	 R32Q+xThCrpt2ohJDhDDeUKGVmhXb7lm4n0TCBlpwbBmeedDAIuc6XFcviUQuNbwjT
	 6iLD3rtup1BQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C02CA853D9;
	Wed, 14 Jan 2026 05:48:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CF9091C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 05:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C06F3853D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 05:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOR4yKyDQ7xz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 05:48:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A9221853D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9221853D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9221853D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 05:48:16 +0000 (UTC)
X-CSE-ConnectionGUID: g3u7i0xURZyNShWmMjCCDQ==
X-CSE-MsgGUID: WZHPstodR7qe0hOsBRWCOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80774256"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="80774256"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:48:16 -0800
X-CSE-ConnectionGUID: LA4PYpJKSYSmEUfz+Mz3Vg==
X-CSE-MsgGUID: fge3LNdgTwuhrFP0VYf4Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="203805181"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 13 Jan 2026 21:48:14 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vftjo-00000000Fsa-1IOi;
 Wed, 14 Jan 2026 05:48:12 +0000
Date: Wed, 14 Jan 2026 13:47:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601141350.4forut6F-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768369697; x=1799905697;
 h=date:from:to:subject:message-id;
 bh=MkxcBsdzqHCqeSJoXHolw7XZHSZjeiaktuU+enjjEKY=;
 b=IukJukq0LN5kC11/HXwsd5eyBfut71cjltqPjxDmtwHTqDEI0TflZwIK
 5hPadgXlbCDoX3sXsHO8wloFrY1yMw2l/7zBY6QT2fXRljfGQ3Qc3vMro
 uIX8KVWQ6ULijlfQCV8GQXYb+Nh8B01styevOLgLBCp4aLh+nZobdeFwT
 sqHERV+Lncodd2JjMbz8D9rHZ/uqu7xcsS0tieRI2CahrNIhQKjOA4PMm
 AejtYaW0h4dMJLXojc0AWlks0Ut2nRAl4ATpEaZ1vmH4kioCCSnmN2cZr
 ZAGxGjBHtO6OZ8iOxSKmocALQ+lmKR0Ibk5zI2MdTNmr98jNPsgoc6raQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IukJukq0
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 50e194b6da721e4fa1fc6ebcf5969803c214929a
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
branch HEAD: 50e194b6da721e4fa1fc6ebcf5969803c214929a  net: airoha: implement get_link_ksettings

elapsed time: 858m

configs tested: 242
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    clang-22
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                          axs101_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260114    gcc-10.5.0
arc                   randconfig-001-20260114    gcc-8.5.0
arc                   randconfig-002-20260114    gcc-10.5.0
arc                   randconfig-002-20260114    gcc-8.5.0
arc                           tb10x_defconfig    gcc-15.2.0
arc                        vdk_hs38_defconfig    gcc-15.2.0
arc                    vdk_hs38_smp_defconfig    gcc-15.2.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                        clps711x_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                          gemini_defconfig    clang-22
arm                       multi_v4t_defconfig    clang-22
arm                             pxa_defconfig    gcc-15.2.0
arm                   randconfig-001-20260114    clang-20
arm                   randconfig-001-20260114    gcc-10.5.0
arm                   randconfig-002-20260114    clang-22
arm                   randconfig-002-20260114    gcc-10.5.0
arm                   randconfig-003-20260114    clang-22
arm                   randconfig-003-20260114    gcc-10.5.0
arm                   randconfig-004-20260114    gcc-10.5.0
arm                        shmobile_defconfig    clang-22
arm                        spear3xx_defconfig    gcc-15.2.0
arm                           stm32_defconfig    clang-22
arm                    vt8500_v6_v7_defconfig    clang-22
arm                         wpcm450_defconfig    clang-22
arm                         wpcm450_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260114    clang-22
arm64                 randconfig-002-20260114    clang-22
arm64                 randconfig-003-20260114    clang-22
arm64                 randconfig-003-20260114    gcc-10.5.0
arm64                 randconfig-004-20260114    clang-18
arm64                 randconfig-004-20260114    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260114    clang-22
csky                  randconfig-001-20260114    gcc-15.2.0
csky                  randconfig-002-20260114    clang-22
csky                  randconfig-002-20260114    gcc-10.5.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260114    clang-22
hexagon               randconfig-002-20260114    clang-22
i386                             alldefconfig    gcc-15.2.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260114    gcc-14
i386        buildonly-randconfig-002-20260114    gcc-14
i386        buildonly-randconfig-003-20260114    gcc-14
i386        buildonly-randconfig-004-20260114    gcc-14
i386        buildonly-randconfig-005-20260114    gcc-14
i386        buildonly-randconfig-006-20260114    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260114    gcc-14
i386                  randconfig-002-20260114    gcc-14
i386                  randconfig-003-20260114    gcc-14
i386                  randconfig-004-20260114    gcc-14
i386                  randconfig-005-20260114    gcc-14
i386                  randconfig-006-20260114    gcc-14
i386                  randconfig-007-20260114    gcc-14
i386                  randconfig-011-20260114    gcc-13
i386                  randconfig-011-20260114    gcc-14
i386                  randconfig-012-20260114    gcc-14
i386                  randconfig-013-20260114    clang-20
i386                  randconfig-013-20260114    gcc-14
i386                  randconfig-014-20260114    clang-20
i386                  randconfig-014-20260114    gcc-14
i386                  randconfig-015-20260114    clang-20
i386                  randconfig-015-20260114    gcc-14
i386                  randconfig-016-20260114    clang-20
i386                  randconfig-016-20260114    gcc-14
i386                  randconfig-017-20260114    clang-20
i386                  randconfig-017-20260114    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260114    clang-22
loongarch             randconfig-002-20260114    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                         apollo_defconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                       alldefconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                           gcw0_defconfig    gcc-15.2.0
mips                           ip28_defconfig    gcc-15.2.0
mips                      loongson1_defconfig    gcc-15.2.0
mips                    maltaup_xpa_defconfig    gcc-15.2.0
mips                        vocore2_defconfig    clang-22
nios2                         10m50_defconfig    gcc-15.2.0
nios2                         3c120_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260114    clang-22
nios2                 randconfig-002-20260114    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260114    gcc-14.3.0
parisc                randconfig-002-20260114    gcc-14.3.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                   bluestone_defconfig    gcc-15.2.0
powerpc                      chrp32_defconfig    gcc-15.2.0
powerpc                     ep8248e_defconfig    gcc-15.2.0
powerpc                  mpc866_ads_defconfig    clang-22
powerpc                  mpc885_ads_defconfig    gcc-15.2.0
powerpc                     powernv_defconfig    clang-22
powerpc               randconfig-001-20260114    gcc-14.3.0
powerpc               randconfig-002-20260114    gcc-14.3.0
powerpc                    sam440ep_defconfig    clang-22
powerpc                     tqm8555_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260114    gcc-14.3.0
powerpc64             randconfig-002-20260114    gcc-14.3.0
riscv                            alldefconfig    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv             nommu_k210_sdcard_defconfig    clang-22
riscv                    nommu_virt_defconfig    gcc-15.2.0
riscv                 randconfig-001-20260114    gcc-15.2.0
riscv                 randconfig-002-20260114    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                          debug_defconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260114    gcc-15.2.0
s390                  randconfig-002-20260114    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                        edosk7760_defconfig    clang-22
sh                             espt_defconfig    gcc-15.2.0
sh                          kfr2r09_defconfig    gcc-15.2.0
sh                          lboxre2_defconfig    gcc-15.2.0
sh                    randconfig-001-20260114    gcc-15.2.0
sh                    randconfig-002-20260114    gcc-15.2.0
sh                      rts7751r2d1_defconfig    gcc-15.2.0
sh                           se7619_defconfig    clang-22
sh                     sh7710voipgw_defconfig    gcc-15.2.0
sparc                            alldefconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260114    clang-20
sparc                 randconfig-001-20260114    gcc-14.3.0
sparc                 randconfig-002-20260114    clang-20
sparc                 randconfig-002-20260114    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260114    clang-20
sparc64               randconfig-002-20260114    clang-20
sparc64               randconfig-002-20260114    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260114    clang-20
um                    randconfig-001-20260114    gcc-14
um                    randconfig-002-20260114    clang-20
um                    randconfig-002-20260114    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260114    clang-20
x86_64      buildonly-randconfig-002-20260114    clang-20
x86_64      buildonly-randconfig-003-20260114    clang-20
x86_64      buildonly-randconfig-004-20260114    clang-20
x86_64      buildonly-randconfig-005-20260114    clang-20
x86_64      buildonly-randconfig-006-20260114    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260114    gcc-14
x86_64                randconfig-002-20260114    gcc-14
x86_64                randconfig-003-20260114    gcc-14
x86_64                randconfig-004-20260114    gcc-14
x86_64                randconfig-005-20260114    gcc-14
x86_64                randconfig-006-20260114    gcc-14
x86_64                randconfig-011-20260114    gcc-14
x86_64                randconfig-012-20260114    clang-20
x86_64                randconfig-012-20260114    gcc-14
x86_64                randconfig-013-20260114    clang-20
x86_64                randconfig-013-20260114    gcc-14
x86_64                randconfig-014-20260114    gcc-14
x86_64                randconfig-015-20260114    gcc-14
x86_64                randconfig-016-20260114    gcc-14
x86_64                randconfig-071-20260114    clang-20
x86_64                randconfig-072-20260114    clang-20
x86_64                randconfig-072-20260114    gcc-14
x86_64                randconfig-073-20260114    clang-20
x86_64                randconfig-074-20260114    clang-20
x86_64                randconfig-075-20260114    clang-20
x86_64                randconfig-075-20260114    gcc-14
x86_64                randconfig-076-20260114    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                  audio_kc705_defconfig    clang-22
xtensa                  audio_kc705_defconfig    gcc-15.2.0
xtensa                  nommu_kc705_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260114    clang-20
xtensa                randconfig-001-20260114    gcc-10.5.0
xtensa                randconfig-002-20260114    clang-20
xtensa                randconfig-002-20260114    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
