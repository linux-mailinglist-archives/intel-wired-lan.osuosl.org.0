Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5F6C75FFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 20:04:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB4B084300;
	Thu, 20 Nov 2025 19:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_muwtpF1X9X; Thu, 20 Nov 2025 19:04:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08B8684301
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763665448;
	bh=kMQvc1BZgyj5HPAOvm5gw1AgOhbHT65tIVdqUFVtup8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9jljZReGfuybb1HQeNRMK2jgb/+JRt7hgRQqdyinosP+oKrajXMxNUSPDxvXhGA2Y
	 DbLRdFanTdUM2XCafx2Pzjo15Pc5ii6um6kl2RJAqIshVBsM/OJYjKlmSHJsvz3Nfj
	 vIShaEdZ3slXW9KBTs8A0LGYXczIdJO+2GbQlFdRnjbtKFN1NPW4yBcdVL8tYfjKIA
	 rBvhNDA6u6S1GusAJR2+aTL/zNuV74856xGiVZ0KiAxOJmY8wOtBOYWUtyJ9/McOlv
	 SEwUcuTHOOQsJ13XM/rjmsIntJAxSnbWsY6TVwqqhkuHAKWxbgSPcrtJqNSw3rY3+L
	 ixrGotVdVoO0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08B8684301;
	Thu, 20 Nov 2025 19:04:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 46E85122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 19:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38B8360A56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 19:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ecuBnnWhFjPF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 19:04:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 927EB608EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 927EB608EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 927EB608EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 19:04:04 +0000 (UTC)
X-CSE-ConnectionGUID: DWo7qk9rTSaDkM5Ft2L9KA==
X-CSE-MsgGUID: fB5E2V3WToWH9dbeBvAH8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="76363842"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="76363842"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 11:04:04 -0800
X-CSE-ConnectionGUID: ORm3xgaqTROLzi+5ILfUCQ==
X-CSE-MsgGUID: yFboONuqSh+tVH8zpwzMsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="222108377"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 20 Nov 2025 11:04:03 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vM9wm-0004Pj-1D
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Nov 2025 19:04:00 +0000
Date: Fri, 21 Nov 2025 03:03:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511210334.GfrDHIpr-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763665444; x=1795201444;
 h=date:from:to:subject:message-id;
 bh=zfZRYpKeMLujslnMiEQdnqzZ8yyAXhTXqGpKRSNDBl0=;
 b=Q3Ia6Xg7sAojIeoOIW7EXreemssD4asZ3aeQ8PeKZroyf5Ec8txT7wKy
 Z5zU+FUwFQ+Nm4H5jbcZSl2fzGqn5k0yonSpJ4Tu/9WuUibRBU4Yd3l+C
 XF/DcRGDs3zBC8yyK5usYnm3N95UR9/JCgYcczNvm9YHXhxPa+kYsG1e9
 UdTeQ8jfzczL9UZZ2aZ7Lv4XA70lQYPLoYlJa+onoSJmFdh5zWdfPfwYs
 JUCYmDCvzEedrQa/seJcbThre/EUoPeZje44CuEgliczJ2R5fxJhP4z5d
 W+fYm45Vb+lS8Qs3l9A3N8/6LhcBd7sC67xGUih+g8b76M4KVuL/M9xLJ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q3Ia6Xg7
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 106a67494c53c56f55a2bd0757be0edb6eaa5407
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
branch HEAD: 106a67494c53c56f55a2bd0757be0edb6eaa5407  Merge branch 'af_unix-fix-so_peek_off-bug-in-unix_stream_read_generic'

elapsed time: 2356m

configs tested: 147
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                     haps_hs_smp_defconfig    gcc-15.1.0
arc                        nsimosci_defconfig    gcc-15.1.0
arc                   randconfig-001-20251120    gcc-15.1.0
arc                   randconfig-002-20251120    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                       aspeed_g4_defconfig    clang-22
arm                         lpc18xx_defconfig    clang-22
arm                        multi_v5_defconfig    gcc-15.1.0
arm                   randconfig-001-20251120    gcc-13.4.0
arm                   randconfig-002-20251120    gcc-14.3.0
arm                   randconfig-003-20251120    clang-17
arm                   randconfig-004-20251120    clang-19
arm                       spear13xx_defconfig    gcc-15.1.0
arm                           spitz_defconfig    gcc-15.1.0
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251121    gcc-8.5.0
arm64                 randconfig-002-20251121    clang-22
arm64                 randconfig-003-20251121    gcc-8.5.0
arm64                 randconfig-004-20251121    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251121    gcc-14.3.0
csky                  randconfig-002-20251121    gcc-11.5.0
hexagon                           allnoconfig    clang-22
hexagon              randconfig-6001-20251120    clang-20
hexagon              randconfig-6002-20251120    clang-22
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251121    gcc-14
i386        buildonly-randconfig-002-20251121    gcc-14
i386        buildonly-randconfig-003-20251121    clang-20
i386        buildonly-randconfig-004-20251121    clang-20
i386        buildonly-randconfig-005-20251121    clang-20
i386        buildonly-randconfig-006-20251121    clang-20
i386                  randconfig-001-20251121    gcc-14
i386                  randconfig-002-20251121    clang-20
i386                  randconfig-003-20251121    gcc-14
i386                  randconfig-004-20251121    clang-20
i386                  randconfig-005-20251121    clang-20
i386                  randconfig-006-20251121    gcc-14
i386                  randconfig-007-20251121    gcc-14
i386                  randconfig-011-20251121    clang-20
i386                  randconfig-012-20251121    clang-20
i386                  randconfig-013-20251121    clang-20
i386                  randconfig-014-20251121    clang-20
i386                  randconfig-015-20251121    clang-20
i386                  randconfig-016-20251121    gcc-14
i386                  randconfig-017-20251121    gcc-14
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch            randconfig-6001-20251120    clang-20
loongarch            randconfig-6002-20251120    clang-18
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                       m5208evb_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           jazz_defconfig    clang-17
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                randconfig-6001-20251120    gcc-11.5.0
nios2                randconfig-6002-20251120    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
openrisc                       virt_defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc               randconfig-6001-20251120    gcc-9.5.0
parisc               randconfig-6002-20251120    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                 mpc8315_rdb_defconfig    clang-22
powerpc              randconfig-6001-20251120    clang-19
powerpc              randconfig-6002-20251120    clang-22
powerpc                     tqm8541_defconfig    clang-22
powerpc64            randconfig-6001-20251120    gcc-11.5.0
powerpc64            randconfig-6002-20251120    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251120    gcc-8.5.0
riscv                 randconfig-002-20251120    clang-22
s390                              allnoconfig    clang-22
s390                                defconfig    clang-22
s390                  randconfig-001-20251120    clang-22
s390                  randconfig-002-20251120    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251120    gcc-12.5.0
sh                    randconfig-002-20251120    gcc-15.1.0
sh                            shmin_defconfig    gcc-15.1.0
sh                             shx3_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251120    gcc-8.5.0
sparc                 randconfig-002-20251120    gcc-8.5.0
sparc                randconfig-6001-20251120    gcc-13.4.0
sparc                randconfig-6002-20251120    gcc-15.1.0
sparc64                          alldefconfig    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251120    clang-20
sparc64               randconfig-002-20251120    clang-22
sparc64              randconfig-6001-20251120    clang-20
sparc64              randconfig-6002-20251120    gcc-13.4.0
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251120    gcc-14
um                    randconfig-002-20251120    clang-22
um                   randconfig-6001-20251120    gcc-14
um                   randconfig-6002-20251120    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251120    clang-20
x86_64      buildonly-randconfig-001-20251121    gcc-14
x86_64      buildonly-randconfig-002-20251120    clang-20
x86_64      buildonly-randconfig-002-20251121    gcc-14
x86_64      buildonly-randconfig-003-20251120    clang-20
x86_64      buildonly-randconfig-003-20251121    gcc-14
x86_64      buildonly-randconfig-004-20251120    clang-20
x86_64      buildonly-randconfig-005-20251120    gcc-14
x86_64      buildonly-randconfig-006-20251120    gcc-13
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251120    clang-20
x86_64                randconfig-011-20251121    clang-20
x86_64                randconfig-012-20251120    gcc-13
x86_64                randconfig-012-20251121    gcc-14
x86_64                randconfig-013-20251120    gcc-14
x86_64                randconfig-013-20251121    gcc-14
x86_64                randconfig-014-20251120    gcc-14
x86_64                randconfig-014-20251121    gcc-14
x86_64                randconfig-015-20251120    gcc-14
x86_64                randconfig-015-20251121    gcc-14
x86_64                randconfig-016-20251120    clang-20
x86_64                randconfig-016-20251121    gcc-14
x86_64                randconfig-071-20251121    gcc-14
x86_64                randconfig-072-20251121    gcc-14
x86_64                randconfig-073-20251121    gcc-12
x86_64                randconfig-074-20251121    clang-20
x86_64                randconfig-075-20251121    gcc-14
x86_64                randconfig-076-20251121    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251120    gcc-15.1.0
xtensa                randconfig-002-20251120    gcc-8.5.0
xtensa               randconfig-6001-20251120    gcc-11.5.0
xtensa               randconfig-6002-20251120    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
