Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDEA2CF3F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:31:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8021870501;
	Fri,  7 Feb 2025 21:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3IoJwe3qeAj; Fri,  7 Feb 2025 21:31:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 464037049B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738963882;
	bh=k6XGHmk6gOsXiCPQKaP8D+JCs3n9W0tBiyfMJx+MxoQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wHOmgnsyOwfhY9chSVsDAsfucet7btmbRBKIeNFFRdJEQKPWFJC5ncAWTUHrFRCX/
	 5AroN4pnaKv6OcDU1pQLKm7+HLbQT8qZmIVA10yJTfdWTuBllLLxm1qFtnXuU9BtIK
	 g9g4igY6LQlisdaNZ/HLx9l9BA0o+DcV0mWZIg0WIfNQUbcklpU/Jx3BhTkU2gVEn3
	 fjUfUnrO1l32v0GCXC2rwI8mPg1BYjzHVv+g0fxrNUarmOa6vO2aQ8d/wTuU0DHI3o
	 gX6YBAhoEjRRXMoqLR5xSoIVUiu2Sq3b8m+QuQl+hQIfv4Z9aFbEOxB6oj2hlLRJZv
	 0WMiD72Ma2Q+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 464037049B;
	Fri,  7 Feb 2025 21:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F3807CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 21:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E323C8444E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 21:31:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GjS6KyYVheja for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 21:31:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F795844B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F795844B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F795844B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 21:31:18 +0000 (UTC)
X-CSE-ConnectionGUID: gi6JglRoTR6CQdZgSX2KBw==
X-CSE-MsgGUID: 0aBHirs+RAm7NVjKxY4iLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="51005080"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="51005080"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 13:31:12 -0800
X-CSE-ConnectionGUID: Yd/lcqu5QvyO9Z54QmQmUA==
X-CSE-MsgGUID: 1s6nY60eS0KPMFOD7NWcFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="116679577"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 07 Feb 2025 13:31:10 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tgVwK-000z4R-17
 for intel-wired-lan@lists.osuosl.org; Fri, 07 Feb 2025 21:31:08 +0000
Date: Sat, 08 Feb 2025 05:31:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502080556.Uc7MmgsQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738963879; x=1770499879;
 h=date:from:to:subject:message-id;
 bh=NqOlB28Y4l5cE8x+/ZfMdfLDcYoqcT1bsgWTuMhLcOE=;
 b=dVUm0WHywK3lwHvjwkbhZWSLULhodmJt4hca5e+a26bt0jTQgTNdWu+P
 V8M8kvGGuHZ5OIqRz4JB6qW/PfjO76WiC+38BDzovINkcLwiAe5A9j3VM
 XRK7Z5EuZ+EVMAeTvFDZeNGASMVfC3ZqZRMUN/Nn6eeal25+42gfTcR6l
 pEzNh0pKPuPqmFf1KvCdZYeir+EFPAhm1lUHLlil6MA9UcsBoy0wptirF
 0EzHP6P/qPnPHrKIuMIgK5CRQsvT8/TIiZhn029gEaKcXvfyS3FbYF0PP
 25oNvfAEzpscvqO9859H7in4rlOTnTatRk1+B7dlLEfPhMyMFgqiNdR9p
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dVUm0WHy
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 1438f5d07b9a7afb15e1d0e26df04a6fd4e56a3c
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
branch HEAD: 1438f5d07b9a7afb15e1d0e26df04a6fd4e56a3c  rtnetlink: fix netns leak with rtnl_setlink()

elapsed time: 1135m

configs tested: 256
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    clang-19
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                                 defconfig    gcc-14.2.0
arc                     haps_hs_smp_defconfig    clang-19
arc                   randconfig-001-20250207    gcc-13.2.0
arc                   randconfig-001-20250208    gcc-13.2.0
arc                   randconfig-002-20250207    gcc-13.2.0
arc                   randconfig-002-20250208    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                         at91_dt_defconfig    clang-21
arm                                 defconfig    gcc-14.2.0
arm                         lpc32xx_defconfig    clang-21
arm                         lpc32xx_defconfig    gcc-14.2.0
arm                          pxa910_defconfig    gcc-14.2.0
arm                   randconfig-001-20250207    gcc-13.2.0
arm                   randconfig-001-20250208    gcc-13.2.0
arm                   randconfig-002-20250207    gcc-13.2.0
arm                   randconfig-002-20250208    gcc-13.2.0
arm                   randconfig-003-20250207    gcc-13.2.0
arm                   randconfig-003-20250208    gcc-13.2.0
arm                   randconfig-004-20250207    gcc-13.2.0
arm                   randconfig-004-20250208    gcc-13.2.0
arm                         s3c6400_defconfig    clang-19
arm                         wpcm450_defconfig    clang-19
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250207    gcc-13.2.0
arm64                 randconfig-001-20250208    gcc-13.2.0
arm64                 randconfig-002-20250207    gcc-13.2.0
arm64                 randconfig-002-20250208    gcc-13.2.0
arm64                 randconfig-003-20250207    gcc-13.2.0
arm64                 randconfig-003-20250208    gcc-13.2.0
arm64                 randconfig-004-20250207    gcc-13.2.0
arm64                 randconfig-004-20250208    gcc-13.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    clang-21
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250207    gcc-14.2.0
csky                  randconfig-001-20250208    gcc-14.2.0
csky                  randconfig-002-20250207    gcc-14.2.0
csky                  randconfig-002-20250208    gcc-14.2.0
hexagon                          alldefconfig    clang-21
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250207    gcc-14.2.0
hexagon               randconfig-001-20250208    clang-21
hexagon               randconfig-002-20250207    gcc-14.2.0
hexagon               randconfig-002-20250208    clang-21
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20250207    gcc-12
i386        buildonly-randconfig-001-20250208    gcc-11
i386        buildonly-randconfig-002-20250207    gcc-12
i386        buildonly-randconfig-002-20250208    clang-19
i386        buildonly-randconfig-002-20250208    gcc-11
i386        buildonly-randconfig-003-20250207    gcc-12
i386        buildonly-randconfig-003-20250208    gcc-11
i386        buildonly-randconfig-003-20250208    gcc-12
i386        buildonly-randconfig-004-20250207    gcc-12
i386        buildonly-randconfig-004-20250208    clang-19
i386        buildonly-randconfig-004-20250208    gcc-11
i386        buildonly-randconfig-005-20250207    gcc-12
i386        buildonly-randconfig-005-20250208    clang-19
i386        buildonly-randconfig-005-20250208    gcc-11
i386        buildonly-randconfig-006-20250207    gcc-12
i386        buildonly-randconfig-006-20250208    gcc-11
i386        buildonly-randconfig-006-20250208    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250207    gcc-12
i386                  randconfig-002-20250207    gcc-12
i386                  randconfig-003-20250207    gcc-12
i386                  randconfig-004-20250207    gcc-12
i386                  randconfig-005-20250207    gcc-12
i386                  randconfig-006-20250207    gcc-12
i386                  randconfig-007-20250207    gcc-12
i386                  randconfig-011-20250207    gcc-12
i386                  randconfig-011-20250208    gcc-12
i386                  randconfig-012-20250207    gcc-12
i386                  randconfig-012-20250208    gcc-12
i386                  randconfig-013-20250207    gcc-12
i386                  randconfig-013-20250208    gcc-12
i386                  randconfig-014-20250207    gcc-12
i386                  randconfig-014-20250208    gcc-12
i386                  randconfig-015-20250207    gcc-12
i386                  randconfig-015-20250208    gcc-12
i386                  randconfig-016-20250207    gcc-12
i386                  randconfig-016-20250208    gcc-12
i386                  randconfig-017-20250207    gcc-12
i386                  randconfig-017-20250208    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250207    gcc-14.2.0
loongarch             randconfig-001-20250208    gcc-14.2.0
loongarch             randconfig-002-20250207    gcc-14.2.0
loongarch             randconfig-002-20250208    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           gcw0_defconfig    clang-19
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250207    gcc-14.2.0
nios2                 randconfig-001-20250208    gcc-14.2.0
nios2                 randconfig-002-20250207    gcc-14.2.0
nios2                 randconfig-002-20250208    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250207    gcc-14.2.0
parisc                randconfig-001-20250208    gcc-14.2.0
parisc                randconfig-002-20250207    gcc-14.2.0
parisc                randconfig-002-20250208    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                     akebono_defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                 canyonlands_defconfig    clang-19
powerpc                          g5_defconfig    gcc-14.2.0
powerpc                     mpc83xx_defconfig    clang-21
powerpc                      ppc44x_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250207    gcc-14.2.0
powerpc               randconfig-001-20250208    clang-19
powerpc               randconfig-002-20250207    gcc-14.2.0
powerpc               randconfig-002-20250208    clang-17
powerpc               randconfig-003-20250207    gcc-14.2.0
powerpc               randconfig-003-20250208    gcc-14.2.0
powerpc                     tqm5200_defconfig    clang-19
powerpc                     tqm8540_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250207    gcc-14.2.0
powerpc64             randconfig-001-20250208    clang-21
powerpc64             randconfig-002-20250207    gcc-14.2.0
powerpc64             randconfig-002-20250208    gcc-14.2.0
powerpc64             randconfig-003-20250207    gcc-14.2.0
powerpc64             randconfig-003-20250208    clang-21
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250207    gcc-14.2.0
riscv                 randconfig-002-20250207    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                          debug_defconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250207    gcc-14.2.0
s390                  randconfig-002-20250207    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        edosk7760_defconfig    clang-21
sh                    randconfig-001-20250207    gcc-14.2.0
sh                    randconfig-002-20250207    gcc-14.2.0
sh                   sh7770_generic_defconfig    clang-21
sh                              ul2_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250207    gcc-14.2.0
sparc                 randconfig-002-20250207    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250207    gcc-14.2.0
sparc64               randconfig-002-20250207    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-21
um                               allyesconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250207    gcc-14.2.0
um                    randconfig-002-20250207    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250207    clang-19
x86_64      buildonly-randconfig-001-20250208    clang-19
x86_64      buildonly-randconfig-002-20250207    clang-19
x86_64      buildonly-randconfig-002-20250208    clang-19
x86_64      buildonly-randconfig-003-20250207    clang-19
x86_64      buildonly-randconfig-003-20250208    clang-19
x86_64      buildonly-randconfig-004-20250207    clang-19
x86_64      buildonly-randconfig-004-20250208    clang-19
x86_64      buildonly-randconfig-005-20250207    clang-19
x86_64      buildonly-randconfig-005-20250208    clang-19
x86_64      buildonly-randconfig-006-20250207    clang-19
x86_64      buildonly-randconfig-006-20250208    clang-19
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250207    clang-19
x86_64                randconfig-001-20250208    clang-19
x86_64                randconfig-002-20250207    clang-19
x86_64                randconfig-002-20250208    clang-19
x86_64                randconfig-003-20250207    clang-19
x86_64                randconfig-003-20250208    clang-19
x86_64                randconfig-004-20250207    clang-19
x86_64                randconfig-004-20250208    clang-19
x86_64                randconfig-005-20250207    clang-19
x86_64                randconfig-005-20250208    clang-19
x86_64                randconfig-006-20250207    clang-19
x86_64                randconfig-006-20250208    clang-19
x86_64                randconfig-007-20250207    clang-19
x86_64                randconfig-007-20250208    clang-19
x86_64                randconfig-008-20250207    clang-19
x86_64                randconfig-008-20250208    clang-19
x86_64                randconfig-071-20250207    gcc-12
x86_64                randconfig-071-20250208    gcc-12
x86_64                randconfig-072-20250207    gcc-12
x86_64                randconfig-072-20250208    gcc-12
x86_64                randconfig-073-20250207    gcc-12
x86_64                randconfig-073-20250208    gcc-12
x86_64                randconfig-074-20250207    gcc-12
x86_64                randconfig-074-20250208    gcc-12
x86_64                randconfig-075-20250207    gcc-12
x86_64                randconfig-075-20250208    gcc-12
x86_64                randconfig-076-20250207    gcc-12
x86_64                randconfig-076-20250208    gcc-12
x86_64                randconfig-077-20250207    gcc-12
x86_64                randconfig-077-20250208    gcc-12
x86_64                randconfig-078-20250207    gcc-12
x86_64                randconfig-078-20250208    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250207    gcc-14.2.0
xtensa                randconfig-002-20250207    gcc-14.2.0
xtensa                         virt_defconfig    clang-19
xtensa                    xip_kc705_defconfig    clang-21

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
