Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B95BFB2B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 11:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FD4440AA4;
	Wed, 22 Oct 2025 09:31:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ja7rs29bd6XL; Wed, 22 Oct 2025 09:31:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64A8340A91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761125509;
	bh=v86E0MH1Z6f/xT7TXqjtThL3kgGmTbanKqVHJYMcCRY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gzOIAhF3OXltVY8ew+vv1FDW3JUjzE6U4+lgSSceB+GE7nyg8zZOmYCsmE/cuxjbS
	 9FLy0h9qptSwHo6oOPzrHPd+fndmj7RA2oO4J2dYPAO1Tl3vJksl2jxp4A5h4k+QJH
	 2x9gzkXga2D9tirfVnqVBCy8U9LZVI+Ukwq/QYlbeVJTEMoW6TISDy8LR30CPZtOME
	 EdRVcBlY04LHtQar4rCatl4tgvuhA1mKsxuSke4aWq2d9dq8JQK4XzWDHBKQ5A9V8J
	 SIRPUp2d8FKE2TWi3lEpPDy3DFtSssn6fn7ZuRZz7pEsBRyZYFNqLncbvnSIz0exxo
	 mRH/pop6gMGiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64A8340A91;
	Wed, 22 Oct 2025 09:31:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 42F0243F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34D0683D0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bov_dHZaTknb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 09:31:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 42DE983D09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42DE983D09
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42DE983D09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:31:46 +0000 (UTC)
X-CSE-ConnectionGUID: kIAFhpX7TNqgte96Q0xHSg==
X-CSE-MsgGUID: qC77M6zwT7+88f5uf0Deeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80704706"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="80704706"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:31:47 -0700
X-CSE-ConnectionGUID: 9wSSCZA9SH+G5PyX4TmPIA==
X-CSE-MsgGUID: foIRD1rLQyKqdoF/a4LKuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214768443"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa001.fm.intel.com with ESMTP; 22 Oct 2025 02:31:45 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vBVC3-000CD6-0P
 for intel-wired-lan@lists.osuosl.org; Wed, 22 Oct 2025 09:31:43 +0000
Date: Wed, 22 Oct 2025 17:31:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510221759.Q64ccscr-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761125508; x=1792661508;
 h=date:from:to:subject:message-id;
 bh=sCcXiSKYXhgaCJ1D7HBatYTty7jFtvFrZHW6A6XxOj0=;
 b=g0yC4fHHOo1O9xy9Q8R7ca7psOCvjtWdgYIOSMyDtZLOlYkU8g9G2VM+
 1PA0LMxojx8FKex2NV8c8HHRPAyLwEb/rSAOXolNOMUVl5XyCcvL5y2YV
 30u1bPYsF0FGYXtRaIdpcfXKGFe3l3wgiupJIUCA0K0iaTcA2bU/lJIfA
 xLgO7pIqrBa/BwblfdBLbgxBYPzCI9oNgbE8g/s6jB1QCmXvAxlNzkiIH
 bfa6yIleNd5LkEk6k947d9SrwgD5RTAN6Qlj1n/3hPmNygBPxz3hwJwq4
 X3II5uXU7Nl98E4DzG+MhvcC9doSvgLzyATEagZOnJMuzDTF/uFNWIgkQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g0yC4fHH
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 3ff9bcecce83f12169ab3e42671bd76554ca521a
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
branch HEAD: 3ff9bcecce83f12169ab3e42671bd76554ca521a  net: avoid extra access to sk->sk_wmem_alloc in sock_wfree()

elapsed time: 1163m

configs tested: 174
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                   randconfig-001-20251022    gcc-13.4.0
arc                   randconfig-002-20251022    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                   randconfig-001-20251022    gcc-11.5.0
arm                   randconfig-002-20251022    gcc-10.5.0
arm                   randconfig-003-20251022    gcc-10.5.0
arm                   randconfig-004-20251022    clang-22
arm                        spear6xx_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                 randconfig-001-20251022    gcc-9.5.0
arm64                 randconfig-002-20251022    clang-18
arm64                 randconfig-003-20251022    gcc-10.5.0
arm64                 randconfig-004-20251022    gcc-12.5.0
csky                              allnoconfig    clang-22
csky                  randconfig-001-20251022    clang-22
csky                  randconfig-001-20251022    gcc-15.1.0
csky                  randconfig-002-20251022    clang-22
csky                  randconfig-002-20251022    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251022    clang-22
hexagon               randconfig-002-20251022    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251022    clang-20
i386        buildonly-randconfig-002-20251022    clang-20
i386        buildonly-randconfig-003-20251022    gcc-14
i386        buildonly-randconfig-004-20251022    clang-20
i386        buildonly-randconfig-005-20251022    gcc-12
i386        buildonly-randconfig-006-20251022    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251022    gcc-14
i386                  randconfig-002-20251022    gcc-14
i386                  randconfig-003-20251022    gcc-14
i386                  randconfig-004-20251022    gcc-14
i386                  randconfig-005-20251022    gcc-14
i386                  randconfig-006-20251022    gcc-14
i386                  randconfig-007-20251022    gcc-14
i386                  randconfig-011-20251022    gcc-13
i386                  randconfig-012-20251022    gcc-13
i386                  randconfig-013-20251022    gcc-13
i386                  randconfig-014-20251022    gcc-13
i386                  randconfig-015-20251022    gcc-13
i386                  randconfig-016-20251022    gcc-13
i386                  randconfig-017-20251022    gcc-13
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251022    clang-22
loongarch             randconfig-001-20251022    gcc-12.5.0
loongarch             randconfig-002-20251022    clang-22
loongarch             randconfig-002-20251022    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          amiga_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251022    clang-22
nios2                 randconfig-001-20251022    gcc-8.5.0
nios2                 randconfig-002-20251022    clang-22
nios2                 randconfig-002-20251022    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251022    clang-22
parisc                randconfig-001-20251022    gcc-13.4.0
parisc                randconfig-002-20251022    clang-22
parisc                randconfig-002-20251022    gcc-10.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20251022    clang-22
powerpc               randconfig-001-20251022    gcc-8.5.0
powerpc               randconfig-002-20251022    clang-22
powerpc               randconfig-002-20251022    gcc-8.5.0
powerpc               randconfig-003-20251022    clang-22
powerpc               randconfig-003-20251022    gcc-8.5.0
powerpc64             randconfig-001-20251022    clang-22
powerpc64             randconfig-001-20251022    gcc-8.5.0
powerpc64             randconfig-002-20251022    clang-22
powerpc64             randconfig-002-20251022    gcc-8.5.0
powerpc64             randconfig-003-20251022    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                 randconfig-001-20251022    gcc-14.3.0
riscv                 randconfig-002-20251022    clang-22
s390                             alldefconfig    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251022    clang-22
s390                  randconfig-002-20251022    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                          lboxre2_defconfig    gcc-15.1.0
sh                    randconfig-001-20251022    gcc-10.5.0
sh                    randconfig-002-20251022    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251022    gcc-14.3.0
sparc                 randconfig-002-20251022    gcc-14.3.0
sparc64               randconfig-001-20251022    gcc-8.5.0
sparc64               randconfig-002-20251022    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251022    gcc-14
um                    randconfig-002-20251022    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251022    clang-20
x86_64      buildonly-randconfig-002-20251022    clang-20
x86_64      buildonly-randconfig-002-20251022    gcc-14
x86_64      buildonly-randconfig-003-20251022    clang-20
x86_64      buildonly-randconfig-003-20251022    gcc-14
x86_64      buildonly-randconfig-004-20251022    clang-20
x86_64      buildonly-randconfig-005-20251022    clang-20
x86_64      buildonly-randconfig-005-20251022    gcc-14
x86_64      buildonly-randconfig-006-20251022    clang-20
x86_64      buildonly-randconfig-006-20251022    gcc-14
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251022    clang-20
x86_64                randconfig-002-20251022    clang-20
x86_64                randconfig-003-20251022    clang-20
x86_64                randconfig-004-20251022    clang-20
x86_64                randconfig-005-20251022    clang-20
x86_64                randconfig-006-20251022    clang-20
x86_64                randconfig-007-20251022    clang-20
x86_64                randconfig-008-20251022    clang-20
x86_64                randconfig-071-20251022    clang-20
x86_64                randconfig-072-20251022    clang-20
x86_64                randconfig-073-20251022    clang-20
x86_64                randconfig-074-20251022    clang-20
x86_64                randconfig-075-20251022    clang-20
x86_64                randconfig-076-20251022    clang-20
x86_64                randconfig-077-20251022    clang-20
x86_64                randconfig-078-20251022    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251022    gcc-11.5.0
xtensa                randconfig-002-20251022    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
