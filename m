Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF74D16DBB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 07:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8926A847AB;
	Tue, 13 Jan 2026 06:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XnqLkoIZTPKh; Tue, 13 Jan 2026 06:36:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A41A847A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768286194;
	bh=Y1m+N8YwSLRoEwWQgJE3V0KrWgC+/njKhK1Yf7pHHPY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z6xSJXNplNs5APWS8cfVu1Cpqjx0YojC/DGzkaypCocq4znMO+tb14vhnA3sP1zVN
	 0QuK0jP0SXVtQRue7fRt5PT2p2Idt3qaYMpJdWkpgjZ/mXGmMsgvdtXVXGySkirkw7
	 4pZwOgdvNUmmnKjQbpsNZwu9ljFsbURP4Hrks9eUIx9EOrAToHqOtj3ON/CdkedjSc
	 XuyElDjLbyyW1rs8JuYtN0vVfyoTiU0VLw5RUv5fDF0HXSrXhzDsUvn0fqI430Ii5K
	 FicsZhfFJP0F0SVno1uoZUB4tAZo0dZvikxT94Cejmcz67evH0Elp7aHKXIICsRSqL
	 2atwXr4PO4N/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A41A847A8;
	Tue, 13 Jan 2026 06:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F1787231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAFCC4079A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:36:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rkp5cqwQa0N2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 06:36:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DDC040475
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DDC040475
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DDC040475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:36:31 +0000 (UTC)
X-CSE-ConnectionGUID: Y4gYnnXgRheNy0x4kaunHA==
X-CSE-MsgGUID: yv3sfFS0SiWUiTctbujSuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69488108"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69488108"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 22:36:31 -0800
X-CSE-ConnectionGUID: FKs77rxSTRqXO1P2T4tiRw==
X-CSE-MsgGUID: 1KF/rCzeSDSxa3ZHKTzwrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="203512665"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 12 Jan 2026 22:36:30 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vfY0x-00000000EKW-1kps;
 Tue, 13 Jan 2026 06:36:27 +0000
Date: Tue, 13 Jan 2026 14:35:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601131445.HTxAexWG-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768286192; x=1799822192;
 h=date:from:to:subject:message-id;
 bh=/EG/jCKMak5FDsB7SIk6JhRhFcQkbkQvN0xJWm88SO8=;
 b=ImSzmFqwZYXMVJbSrV/ZMAVptxjgB/DWlHmX6/6a5+UI9uKW96SrBJDP
 EStdTa8fqJjqFFHn1Ztfww45AZkYWehi5uJhNYxe5d/wCUhCxGED7VaYB
 hqy2Oli4i9PLvT/xWpP5Bt9gr9n9w+u3sRL2l/EDrga9A/Nb4L5VIvLar
 QgWwutxtom2B20OkqLrmY+SYgvYz8/mDBQfypWcukVJNUFwgGvYY25q1w
 UyvhmXV1Mp75NljqtxL8sqazcW443+dxtvlCca348WpaGw4Yp7RgN3wq1
 XIE5twBzIr98WOBFzbN4LzXwlGqiyUS47/Q53EfoYtsI5liXHXwlxzLyu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ImSzmFqw
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4c85df359cf335d18565af0b64cf8791b5d1e5b6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4c85df359cf335d18565af0b64cf8791b5d1e5b6  ice: fix adding AQ LLDP filter for VF

elapsed time: 775m

configs tested: 207
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260113    clang-22
arc                   randconfig-002-20260113    clang-22
arc                        vdk_hs38_defconfig    gcc-15.2.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                       aspeed_g4_defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                          exynos_defconfig    gcc-15.2.0
arm                       imx_v4_v5_defconfig    clang-22
arm                       imx_v6_v7_defconfig    gcc-15.2.0
arm                            mmp2_defconfig    gcc-15.2.0
arm                           omap1_defconfig    gcc-15.2.0
arm                          pxa910_defconfig    clang-22
arm                   randconfig-001-20260113    clang-22
arm                   randconfig-002-20260113    clang-22
arm                   randconfig-003-20260113    clang-22
arm                   randconfig-004-20260113    clang-22
arm                           spitz_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260113    clang-22
arm64                 randconfig-002-20260113    clang-22
arm64                 randconfig-003-20260113    clang-22
arm64                 randconfig-004-20260113    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260113    clang-22
csky                  randconfig-002-20260113    clang-22
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260113    clang-22
hexagon               randconfig-002-20260113    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260113    clang-20
i386        buildonly-randconfig-002-20260113    clang-20
i386        buildonly-randconfig-003-20260113    clang-20
i386        buildonly-randconfig-004-20260113    clang-20
i386        buildonly-randconfig-005-20260113    clang-20
i386        buildonly-randconfig-006-20260113    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260113    clang-20
i386                  randconfig-002-20260113    clang-20
i386                  randconfig-003-20260113    clang-20
i386                  randconfig-004-20260113    clang-20
i386                  randconfig-005-20260113    clang-20
i386                  randconfig-006-20260113    clang-20
i386                  randconfig-007-20260113    clang-20
i386                  randconfig-011-20260113    gcc-14
i386                  randconfig-012-20260113    gcc-14
i386                  randconfig-013-20260113    gcc-14
i386                  randconfig-014-20260113    gcc-14
i386                  randconfig-015-20260113    gcc-14
i386                  randconfig-016-20260113    gcc-14
i386                  randconfig-017-20260113    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260113    clang-22
loongarch             randconfig-002-20260113    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                          amiga_defconfig    clang-22
m68k                                defconfig    clang-19
m68k                        m5272c3_defconfig    clang-22
m68k                        mvme147_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                  cavium_octeon_defconfig    gcc-15.2.0
mips                           gcw0_defconfig    clang-22
mips                           ip30_defconfig    gcc-15.2.0
mips                           mtx1_defconfig    clang-22
mips                           rs90_defconfig    gcc-15.2.0
mips                   sb1250_swarm_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260113    clang-22
nios2                 randconfig-002-20260113    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260113    clang-19
parisc                randconfig-002-20260113    clang-19
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                      arches_defconfig    clang-22
powerpc                  iss476-smp_defconfig    clang-22
powerpc                      mgcoge_defconfig    clang-22
powerpc                     mpc512x_defconfig    clang-22
powerpc                     mpc5200_defconfig    clang-22
powerpc                      pasemi_defconfig    clang-22
powerpc               randconfig-001-20260113    clang-19
powerpc               randconfig-002-20260113    clang-19
powerpc                     taishan_defconfig    gcc-15.2.0
powerpc                     tqm8540_defconfig    clang-22
powerpc                     tqm8541_defconfig    clang-22
powerpc                      tqm8xx_defconfig    clang-22
powerpc                        warp_defconfig    clang-22
powerpc64             randconfig-001-20260113    clang-19
powerpc64             randconfig-002-20260113    clang-19
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20260113    gcc-15.2.0
riscv                 randconfig-002-20260113    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260113    gcc-15.2.0
s390                  randconfig-002-20260113    gcc-15.2.0
s390                       zfcpdump_defconfig    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                               j2_defconfig    clang-22
sh                          landisk_defconfig    gcc-15.2.0
sh                          r7785rp_defconfig    gcc-15.2.0
sh                    randconfig-001-20260113    gcc-15.2.0
sh                    randconfig-002-20260113    gcc-15.2.0
sh                      rts7751r2d1_defconfig    clang-22
sh                           se7705_defconfig    gcc-15.2.0
sh                  sh7785lcr_32bit_defconfig    clang-22
sh                              ul2_defconfig    clang-22
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260113    gcc-14.3.0
sparc                 randconfig-002-20260113    gcc-14.3.0
sparc                       sparc32_defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260113    gcc-14.3.0
sparc64               randconfig-002-20260113    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260113    gcc-14.3.0
um                    randconfig-002-20260113    gcc-14.3.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260113    clang-20
x86_64      buildonly-randconfig-002-20260113    clang-20
x86_64      buildonly-randconfig-003-20260113    clang-20
x86_64      buildonly-randconfig-004-20260113    clang-20
x86_64      buildonly-randconfig-005-20260113    clang-20
x86_64      buildonly-randconfig-006-20260113    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260113    gcc-14
x86_64                randconfig-002-20260113    gcc-14
x86_64                randconfig-003-20260113    gcc-14
x86_64                randconfig-004-20260113    gcc-14
x86_64                randconfig-005-20260113    gcc-14
x86_64                randconfig-006-20260113    gcc-14
x86_64                randconfig-011-20260113    clang-20
x86_64                randconfig-012-20260113    clang-20
x86_64                randconfig-013-20260113    clang-20
x86_64                randconfig-014-20260113    clang-20
x86_64                randconfig-015-20260113    clang-20
x86_64                randconfig-016-20260113    clang-20
x86_64                randconfig-071-20260113    clang-20
x86_64                randconfig-072-20260113    clang-20
x86_64                randconfig-073-20260113    clang-20
x86_64                randconfig-074-20260113    clang-20
x86_64                randconfig-075-20260113    clang-20
x86_64                randconfig-076-20260113    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20260113    gcc-14.3.0
xtensa                randconfig-002-20260113    gcc-14.3.0
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
