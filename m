Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA24958B11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 17:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E99740177;
	Tue, 20 Aug 2024 15:24:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8U-mXPOD0F9E; Tue, 20 Aug 2024 15:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7691A401F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724167488;
	bh=CtyGxJdNntc5cg+Njit2v2rd9MMwv9WqPIQ1G4GSga8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A4/Y4S2nYYCisDnJIAP1EXU0qbWVec5FpUDlHNYz8B154AEkiYAWDdPw6ssr6DWj/
	 78H+zg1GeA6nVb1AtVTMvqB1vHSGXp2wRZmfqlSD6OhL8UxiezWRNm8SEjmQbCt4QA
	 JN8gfSH8oi+iYn6wA09K9qIaAGBV/369yY/VIMbM64IQstzrskNSpFlLGVoPuMwyrt
	 A97kFJz05IALeHRfQdXbHbazcTDextTiUsYe6lmq9gLjIoFkfR8KtCI3k1oxjBfgBS
	 2MrD+N+Iez6W2Lerqb+rvPYeHDxTZLWYfsr1h5QZdcHKz9+/S4PpEeAQLUUqpoB7Ak
	 mnW6iRncNATfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7691A401F4;
	Tue, 20 Aug 2024 15:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04C071BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 15:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E582F608E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 15:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C507JWR0tkT8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 15:24:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 67F19606BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67F19606BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 67F19606BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 15:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: bVwBOFndR/KAtLWtamWibQ==
X-CSE-MsgGUID: 1eGTjR+8RJy1Ht0LzkFU9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22445218"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22445218"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 08:24:43 -0700
X-CSE-ConnectionGUID: pbUq+nyUS6i1dkroAP3kig==
X-CSE-MsgGUID: RhhS4UnJQHmSB2EyZfxfgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="64971455"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 20 Aug 2024 08:24:42 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sgQit-000AL2-2b
 for intel-wired-lan@lists.osuosl.org; Tue, 20 Aug 2024 15:24:39 +0000
Date: Tue, 20 Aug 2024 23:24:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408202307.sf6eZuGD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724167484; x=1755703484;
 h=date:from:to:subject:message-id;
 bh=5vRn6aJFClhEA6HLv1qi1bCh6EE5l5zA8L3tox3zuP4=;
 b=DoEzHFxBRm1G3jZMkSnf7BzaH7DBO+Rx/uQx8uv+JerYv74YDC88QFVY
 SLVP3FuLDc/QaGlK4USmBDYQNAEN5eCUAas8tEu1hfTFFm5w44F+NVe8e
 CJQQl2gltWC38Dao45gwwmN3qeHBel5CdWh82QCCl57jeDJtKgqQsIdFp
 LUb/iKLaoyHudVPAxAL8emzQCZa2M26d2W2n3ljDtu06TMqcm+K/fiLTj
 eo6VdqJewLVyQ2xCx2oa+ZZ12W0kksYv1fyoPbXWwYamoPPXQtsiAsGEB
 pauN0gF1JZd8nmPnLbriRNv7jCOsRhNGRFZc80Sfq3DbSW1aI8s/p/DIk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DoEzHFxB
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 565d121b69980637f040eb4d84289869cdaabedf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 565d121b69980637f040eb4d84289869cdaabedf  tcp: prevent concurrent execution of tcp_sk_exit_batch

elapsed time: 1371m

configs tested: 263
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                            hsdk_defconfig   gcc-13.2.0
arc                   randconfig-001-20240820   gcc-13.2.0
arc                   randconfig-002-20240820   gcc-13.2.0
arc                        vdk_hs38_defconfig   gcc-13.2.0
arm                              alldefconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                         assabet_defconfig   gcc-13.2.0
arm                          collie_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                         mv78xx0_defconfig   gcc-14.1.0
arm                             pxa_defconfig   gcc-13.2.0
arm                   randconfig-001-20240820   clang-20
arm                   randconfig-001-20240820   gcc-13.2.0
arm                   randconfig-002-20240820   clang-20
arm                   randconfig-002-20240820   gcc-13.2.0
arm                   randconfig-003-20240820   clang-20
arm                   randconfig-003-20240820   gcc-13.2.0
arm                   randconfig-004-20240820   clang-20
arm                   randconfig-004-20240820   gcc-13.2.0
arm                           sama5_defconfig   gcc-13.2.0
arm                         vf610m4_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240820   clang-20
arm64                 randconfig-001-20240820   gcc-13.2.0
arm64                 randconfig-002-20240820   clang-20
arm64                 randconfig-002-20240820   gcc-13.2.0
arm64                 randconfig-003-20240820   gcc-13.2.0
arm64                 randconfig-003-20240820   gcc-14.1.0
arm64                 randconfig-004-20240820   clang-20
arm64                 randconfig-004-20240820   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240820   gcc-13.2.0
csky                  randconfig-001-20240820   gcc-14.1.0
csky                  randconfig-002-20240820   gcc-13.2.0
csky                  randconfig-002-20240820   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240820   clang-20
hexagon               randconfig-002-20240820   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240820   clang-18
i386         buildonly-randconfig-002-20240820   clang-18
i386         buildonly-randconfig-003-20240820   clang-18
i386         buildonly-randconfig-004-20240820   clang-18
i386         buildonly-randconfig-004-20240820   gcc-12
i386         buildonly-randconfig-005-20240820   clang-18
i386         buildonly-randconfig-006-20240820   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240820   clang-18
i386                  randconfig-002-20240820   clang-18
i386                  randconfig-003-20240820   clang-18
i386                  randconfig-004-20240820   clang-18
i386                  randconfig-005-20240820   clang-18
i386                  randconfig-006-20240820   clang-18
i386                  randconfig-011-20240820   clang-18
i386                  randconfig-011-20240820   gcc-11
i386                  randconfig-012-20240820   clang-18
i386                  randconfig-012-20240820   gcc-12
i386                  randconfig-013-20240820   clang-18
i386                  randconfig-013-20240820   gcc-12
i386                  randconfig-014-20240820   clang-18
i386                  randconfig-014-20240820   gcc-12
i386                  randconfig-015-20240820   clang-18
i386                  randconfig-015-20240820   gcc-12
i386                  randconfig-016-20240820   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-14.1.0
loongarch             randconfig-001-20240820   gcc-13.2.0
loongarch             randconfig-001-20240820   gcc-14.1.0
loongarch             randconfig-002-20240820   gcc-13.2.0
loongarch             randconfig-002-20240820   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                          hp300_defconfig   gcc-13.2.0
m68k                       m5208evb_defconfig   gcc-13.2.0
m68k                        m5272c3_defconfig   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                        m5307c3_defconfig   gcc-13.2.0
m68k                          multi_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                      bmips_stb_defconfig   gcc-13.2.0
mips                  cavium_octeon_defconfig   gcc-13.2.0
mips                           ci20_defconfig   gcc-13.2.0
mips                  decstation_64_defconfig   gcc-13.2.0
mips                      maltasmvp_defconfig   gcc-14.1.0
mips                  maltasmvp_eva_defconfig   gcc-13.2.0
mips                      pic32mzda_defconfig   gcc-14.1.0
mips                       rbtx49xx_defconfig   gcc-14.1.0
mips                          rm200_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240820   gcc-13.2.0
nios2                 randconfig-001-20240820   gcc-14.1.0
nios2                 randconfig-002-20240820   gcc-13.2.0
nios2                 randconfig-002-20240820   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-64bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240820   gcc-13.2.0
parisc                randconfig-001-20240820   gcc-14.1.0
parisc                randconfig-002-20240820   gcc-13.2.0
parisc                randconfig-002-20240820   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      arches_defconfig   gcc-14.1.0
powerpc                 canyonlands_defconfig   gcc-13.2.0
powerpc                     ep8248e_defconfig   gcc-13.2.0
powerpc                        icon_defconfig   gcc-14.1.0
powerpc                       maple_defconfig   gcc-13.2.0
powerpc                     mpc5200_defconfig   gcc-13.2.0
powerpc                 mpc832x_rdb_defconfig   gcc-13.2.0
powerpc                      ppc64e_defconfig   gcc-13.2.0
powerpc                      ppc6xx_defconfig   gcc-13.2.0
powerpc                      ppc6xx_defconfig   gcc-14.1.0
powerpc                         ps3_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240820   gcc-14.1.0
powerpc               randconfig-002-20240820   clang-20
powerpc               randconfig-003-20240820   clang-20
powerpc               randconfig-003-20240820   gcc-13.2.0
powerpc                    socrates_defconfig   gcc-14.1.0
powerpc                      tqm8xx_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240820   gcc-13.2.0
powerpc64             randconfig-001-20240820   gcc-14.1.0
powerpc64             randconfig-002-20240820   clang-20
powerpc64             randconfig-002-20240820   gcc-13.2.0
powerpc64             randconfig-003-20240820   gcc-13.2.0
powerpc64             randconfig-003-20240820   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240820   clang-20
riscv                 randconfig-001-20240820   gcc-13.2.0
riscv                 randconfig-002-20240820   gcc-13.2.0
riscv                 randconfig-002-20240820   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240820   gcc-13.2.0
s390                  randconfig-001-20240820   gcc-14.1.0
s390                  randconfig-002-20240820   gcc-13.2.0
s390                  randconfig-002-20240820   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                             espt_defconfig   gcc-14.1.0
sh                 kfr2r09-romimage_defconfig   gcc-13.2.0
sh                          r7780mp_defconfig   gcc-13.2.0
sh                    randconfig-001-20240820   gcc-13.2.0
sh                    randconfig-001-20240820   gcc-14.1.0
sh                    randconfig-002-20240820   gcc-13.2.0
sh                    randconfig-002-20240820   gcc-14.1.0
sh                           se7619_defconfig   gcc-13.2.0
sh                           se7705_defconfig   gcc-13.2.0
sh                           se7750_defconfig   gcc-13.2.0
sh                             sh03_defconfig   gcc-14.1.0
sh                   sh7724_generic_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240820   gcc-13.2.0
sparc64               randconfig-001-20240820   gcc-14.1.0
sparc64               randconfig-002-20240820   gcc-13.2.0
sparc64               randconfig-002-20240820   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240820   gcc-12
um                    randconfig-001-20240820   gcc-13.2.0
um                    randconfig-002-20240820   clang-20
um                    randconfig-002-20240820   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240820   clang-18
x86_64       buildonly-randconfig-002-20240820   clang-18
x86_64       buildonly-randconfig-002-20240820   gcc-11
x86_64       buildonly-randconfig-003-20240820   clang-18
x86_64       buildonly-randconfig-004-20240820   clang-18
x86_64       buildonly-randconfig-005-20240820   clang-18
x86_64       buildonly-randconfig-006-20240820   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240820   clang-18
x86_64                randconfig-001-20240820   gcc-12
x86_64                randconfig-002-20240820   clang-18
x86_64                randconfig-002-20240820   gcc-12
x86_64                randconfig-003-20240820   clang-18
x86_64                randconfig-004-20240820   clang-18
x86_64                randconfig-004-20240820   gcc-12
x86_64                randconfig-005-20240820   clang-18
x86_64                randconfig-006-20240820   clang-18
x86_64                randconfig-006-20240820   gcc-12
x86_64                randconfig-011-20240820   clang-18
x86_64                randconfig-012-20240820   clang-18
x86_64                randconfig-012-20240820   gcc-12
x86_64                randconfig-013-20240820   clang-18
x86_64                randconfig-014-20240820   clang-18
x86_64                randconfig-015-20240820   clang-18
x86_64                randconfig-015-20240820   gcc-12
x86_64                randconfig-016-20240820   clang-18
x86_64                randconfig-071-20240820   clang-18
x86_64                randconfig-071-20240820   gcc-12
x86_64                randconfig-072-20240820   clang-18
x86_64                randconfig-072-20240820   gcc-12
x86_64                randconfig-073-20240820   clang-18
x86_64                randconfig-073-20240820   gcc-12
x86_64                randconfig-074-20240820   clang-18
x86_64                randconfig-075-20240820   clang-18
x86_64                randconfig-076-20240820   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240820   gcc-13.2.0
xtensa                randconfig-001-20240820   gcc-14.1.0
xtensa                randconfig-002-20240820   gcc-13.2.0
xtensa                randconfig-002-20240820   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
