Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B409D900C83
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 21:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BC246100A;
	Fri,  7 Jun 2024 19:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcvDximr68S9; Fri,  7 Jun 2024 19:37:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41B026151A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717789063;
	bh=RW5DSt5tMUGyLwU5ZhM//E8P1OHrLHHXKQKTlMjvSKA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fdPABwkb/rDOyNy4V30LKq5fQGa+XVlYNEd3gHelNMWa1cge6/VdoWOpfQy++HLbp
	 AhxCc/qP3RmOLOql6Hem1HwyA0JMbXCTTc3Xrx9GQ7jA8JVlXOJiOBfQg0sfzszotH
	 OeWhRDlvBrNlobCzSnXLkBbcQoPrTa/2ptvFp61ItMiZQwbbXWJ/eN4ICDa/Mc+6K3
	 Jr49wkFEJ8Vzo164zlXoe6fDdKF2lbyIU0wyoRQbzYVEr4hIrEJ3j1Wj1erI2NZOcQ
	 lJpL2gPnLUKLaSriPWTvI+bo7MM4E8lCekrKZlmFLsE62ugj5ZyYrO+WbiNUp53Pta
	 sHhI3ySZqvgeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41B026151A;
	Fri,  7 Jun 2024 19:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFD3B1BF95D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC6D8606CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oMEeKP6gZCTg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 19:37:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 85FBD60687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85FBD60687
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85FBD60687
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 19:37:39 +0000 (UTC)
X-CSE-ConnectionGUID: f700U16YQh+XtUy79eEJwQ==
X-CSE-MsgGUID: qLcaP2bgRQOpBSuode6BNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="17455662"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="17455662"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 12:37:39 -0700
X-CSE-ConnectionGUID: imJ9AEjvTSC8Qjv+EbpA0w==
X-CSE-MsgGUID: NaL0uuGHQ7qWkyrSkyfb3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43352278"
Received: from lkp-server01.sh.intel.com (HELO 472b94a103a1) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 07 Jun 2024 12:37:38 -0700
Received: from kbuild by 472b94a103a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sFfP5-0000PY-1J
 for intel-wired-lan@lists.osuosl.org; Fri, 07 Jun 2024 19:37:35 +0000
Date: Sat, 08 Jun 2024 03:37:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406080302.1IIwKno9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717789060; x=1749325060;
 h=date:from:to:subject:message-id;
 bh=F9fKiZMLb2+3S6MEZBauOgN6QzvQHVDk8KOZKgsRQaI=;
 b=iIuIOf44eQzpE5AbJ6KuuNC9YCRWOwXc9SN8dIb91c+mR+cCFKw6TbRF
 HyQ/dunTuSsEyF9m/AfKNLAD8uzlgvTgXtZ039LkUlEcBF/TiB4VxhM0N
 wAmCB5cIml5UkBYaS0C9NoHyKrqVwLftKwFsiNj0iAuc4fh8c11VFFHQw
 tutykzP6/RQLnZwTlayx7eOmBCMIyNynvM62Ikg7iSb9MKciQJnt/CI16
 yZsz4+1AIfo4JY+XeEjpk7n3DKadXfVtJM7kIPY5i39gL5zIn4i4h9oE2
 /ZF+7Bol6m2WN2g4tdm+JBIYKDM7SMhT5FNhwxbTnG4GW61jUoFfWHgJh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iIuIOf44
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 749332814479ad2e06d892109227d3d93032f65b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 749332814479ad2e06d892109227d3d93032f65b  Merge branch 'tcp-small-code-reorg'

elapsed time: 1750m

configs tested: 140
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20240607   gcc  
arc                   randconfig-002-20240607   gcc  
arm                               allnoconfig   clang
arm                                 defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                   randconfig-001-20240607   gcc  
arm                   randconfig-004-20240607   gcc  
arm                         s5pv210_defconfig   gcc  
arm                         socfpga_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240607   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240607   gcc  
csky                  randconfig-002-20240607   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240607   clang
i386         buildonly-randconfig-002-20240607   clang
i386         buildonly-randconfig-003-20240607   clang
i386         buildonly-randconfig-004-20240607   clang
i386         buildonly-randconfig-005-20240607   clang
i386         buildonly-randconfig-006-20240607   clang
i386                  randconfig-011-20240607   clang
i386                  randconfig-013-20240607   clang
i386                  randconfig-014-20240607   clang
i386                  randconfig-015-20240607   clang
i386                  randconfig-016-20240607   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240607   gcc  
loongarch             randconfig-002-20240607   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         amcore_defconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240607   gcc  
nios2                 randconfig-002-20240607   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240607   gcc  
parisc                randconfig-002-20240607   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                          g5_defconfig   gcc  
powerpc                 mpc832x_rdb_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc               randconfig-001-20240607   gcc  
powerpc               randconfig-002-20240607   gcc  
powerpc               randconfig-003-20240607   gcc  
powerpc64             randconfig-001-20240607   gcc  
powerpc64             randconfig-003-20240607   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240607   gcc  
s390                             alldefconfig   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                    randconfig-001-20240607   gcc  
sh                    randconfig-002-20240607   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7751_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240607   gcc  
sparc64               randconfig-002-20240607   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240607   gcc  
um                           x86_64_defconfig   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240607   gcc  
xtensa                randconfig-002-20240607   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
