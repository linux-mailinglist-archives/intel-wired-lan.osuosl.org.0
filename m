Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FFE6FDFAF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 16:10:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 948FC616C6;
	Wed, 10 May 2023 14:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 948FC616C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683727844;
	bh=d3rcFv0eh4O4DDFB5+JpKK7Gvn1gwamxbmUe8M4pY9o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6WbwbDFGGC2iM40RF5GFUSV8c0phmAIZSpjsAbTaNEjRP2M3o1uQKWGzsJ+pr1j2q
	 wO0CxAXgc2fiPtsdGUfBg9A26BImb10jRcT7AsYTcB6KXd8PTXBBrgc09rkt2nLKVQ
	 C9nYWfSOwsNYbUu3oZNctZiO//3NXhH/khPfXPntb8ey9q+HwEa23MSGJoOtd+HPHP
	 fF52rWTdJD+Gwa4KpN5hTgBenoNZ+bZYJ52aX4guvwcs8/Hs/Y+FmrCGljLhdLIpys
	 6SP/o0mR9+gXpKtuqvgbAUNt276MbXlCHj5KsGQHoxtdX7S9+WNUMa/OZGNehjCiAk
	 I62CCZ65/tZvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IaVB56lcbyr7; Wed, 10 May 2023 14:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D69B6167C;
	Wed, 10 May 2023 14:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D69B6167C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6583D1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 14:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B93641EB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 14:10:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B93641EB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uRFrW9ErUMR4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 14:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA72141B41
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA72141B41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 14:10:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="339467123"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="339467123"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 07:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="1029230059"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="1029230059"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 10 May 2023 07:10:34 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pwkWX-0003Ls-22
 for intel-wired-lan@lists.osuosl.org; Wed, 10 May 2023 14:10:33 +0000
Date: Wed, 10 May 2023 22:10:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230510141024.fqw1h%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683727836; x=1715263836;
 h=date:from:to:subject:message-id;
 bh=6j+0pD98NUhJMCBzgpsNRDFsBNM/aTw7pPd08U+oOhc=;
 b=S74kYlFRsaGoKHr+zF3Nh1vHt4ATvzUAWUOVkCS0FA4WErN7cyd+JJxu
 Vy+C//l5ZE8hfivDPzDePfIUYawZ4Gd/euqmovO61ST1W6n7a74a1/34R
 DiTGhk1WCpy8OBxoMeM+LImZfzex3POLHmXLK/gtVZEBHa3GYXy5D2glz
 +lOLFiJpEfiWtwo4USVKmn/c4JAAEMidj6HB9Sze7j+nJXhcSf/mb4Rwf
 4yYnMoL+yP/v3drPufj0TsM/1lkHvbw4aSN0SeDh1ibv4xYSGi9x3rD3W
 bDEjr6zWCn73MA/cLw6119S0T4IG0zUIDKW1Rr5LajyixMNKbOOtHyfRH
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S74kYlFR
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 a636c67e82adc58b24881166845633c640b77631
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: a636c67e82adc58b24881166845633c640b77631  ice: add dynamic interrupt allocation

elapsed time: 1265m

configs tested: 200
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230509   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230509   gcc  
arc          buildonly-randconfig-r005-20230509   gcc  
arc          buildonly-randconfig-r006-20230509   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230509   gcc  
arc                  randconfig-r014-20230509   gcc  
arc                  randconfig-r036-20230509   gcc  
arc                  randconfig-r043-20230509   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230509   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                          moxart_defconfig   clang
arm                        neponset_defconfig   clang
arm                  randconfig-r024-20230509   gcc  
arm                  randconfig-r033-20230509   clang
arm                  randconfig-r046-20230509   gcc  
arm                         s5pv210_defconfig   clang
arm                           sama5_defconfig   gcc  
arm                          sp7021_defconfig   clang
arm                    vt8500_v6_v7_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230509   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230509   gcc  
arm64                randconfig-r004-20230509   gcc  
arm64                randconfig-r021-20230509   clang
arm64                randconfig-r024-20230509   clang
csky                                defconfig   gcc  
csky                 randconfig-r001-20230509   gcc  
csky                 randconfig-r006-20230509   gcc  
csky                 randconfig-r014-20230509   gcc  
hexagon              randconfig-r002-20230509   clang
hexagon              randconfig-r031-20230509   clang
hexagon              randconfig-r036-20230509   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230510   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230510   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230509   gcc  
ia64                 randconfig-r013-20230509   gcc  
ia64                 randconfig-r014-20230509   gcc  
ia64                 randconfig-r015-20230509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230509   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230509   gcc  
loongarch            randconfig-r021-20230509   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r004-20230509   gcc  
m68k                 randconfig-r005-20230509   gcc  
m68k                 randconfig-r006-20230509   gcc  
m68k                 randconfig-r021-20230509   gcc  
m68k                 randconfig-r023-20230509   gcc  
m68k                 randconfig-r032-20230509   gcc  
m68k                 randconfig-r034-20230509   gcc  
microblaze   buildonly-randconfig-r002-20230509   gcc  
microblaze   buildonly-randconfig-r003-20230509   gcc  
microblaze           randconfig-r001-20230509   gcc  
microblaze           randconfig-r005-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230509   clang
mips         buildonly-randconfig-r006-20230509   clang
mips                 randconfig-r015-20230509   gcc  
mips                 randconfig-r031-20230510   clang
nios2        buildonly-randconfig-r001-20230509   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230509   gcc  
nios2                randconfig-r026-20230509   gcc  
nios2                randconfig-r033-20230509   gcc  
nios2                randconfig-r035-20230509   gcc  
openrisc             randconfig-r006-20230509   gcc  
openrisc             randconfig-r011-20230509   gcc  
openrisc             randconfig-r025-20230509   gcc  
openrisc             randconfig-r026-20230509   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230509   gcc  
parisc               randconfig-r022-20230509   gcc  
parisc               randconfig-r035-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc                 mpc8560_ads_defconfig   clang
powerpc              randconfig-r001-20230509   gcc  
powerpc              randconfig-r004-20230509   gcc  
powerpc              randconfig-r005-20230509   gcc  
powerpc              randconfig-r034-20230509   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230509   clang
riscv        buildonly-randconfig-r004-20230509   clang
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r013-20230509   clang
riscv                randconfig-r021-20230509   clang
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230510   clang
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230509   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230509   gcc  
s390                 randconfig-r026-20230509   clang
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230510   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230509   gcc  
sh                          landisk_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r002-20230509   gcc  
sh                   randconfig-r003-20230509   gcc  
sh                   randconfig-r012-20230509   gcc  
sh                   randconfig-r014-20230509   gcc  
sh                   randconfig-r016-20230509   gcc  
sh                   randconfig-r032-20230509   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                            titan_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc        buildonly-randconfig-r004-20230509   gcc  
sparc        buildonly-randconfig-r005-20230509   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230509   gcc  
sparc                randconfig-r012-20230509   gcc  
sparc                randconfig-r015-20230509   gcc  
sparc                randconfig-r016-20230509   gcc  
sparc                randconfig-r024-20230509   gcc  
sparc                randconfig-r026-20230509   gcc  
sparc                randconfig-r031-20230509   gcc  
sparc64      buildonly-randconfig-r003-20230509   gcc  
sparc64              randconfig-r005-20230509   gcc  
sparc64              randconfig-r006-20230509   gcc  
sparc64              randconfig-r016-20230509   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230509   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r001-20230509   gcc  
xtensa               randconfig-r002-20230509   gcc  
xtensa               randconfig-r022-20230509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
