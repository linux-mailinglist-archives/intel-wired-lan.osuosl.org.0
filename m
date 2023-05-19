Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7057096B6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 13:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BE3240465;
	Fri, 19 May 2023 11:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BE3240465
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684496657;
	bh=wJJBMYnpLd4qsHoLMI54TKxrJKkGlbROlOuUJM+94rE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dFLO6vCbtyRPP0lC3oG/gdHTZ8Dz6ekdr4Fq2bAk0af9huTwoyC6YP88EhP76Ee71
	 X2NDYP1znt2PPlxsbSuDJcE1QH8s/sBvyh3CaMFifAiJ6kANQQO/pb3lr3KI7Fkgro
	 +2JbTNFUkoS5W0IFJH+w2Bxy6bFGPbuZidqAd5MNlrjZt6ANsheXSmqkK1tIrKGH0c
	 xIqLBWc2aYQwzJhOrUEwfaRw0yzIF1H7RZaf8nrUtItx7GTRl5gVCO5OEzzLj1os0M
	 lha29EEcSA97wV2fzd3kSx8EBDzdcS01k26eTNvLAlmJGUa69OMVCyBDD5BkGApO2v
	 aDzh2WHPJ6Ctg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1B3KSQQLlZK; Fri, 19 May 2023 11:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B3A5401F1;
	Fri, 19 May 2023 11:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B3A5401F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9331BF40B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63F3A611B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63F3A611B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8WAJaK-oz3u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 11:44:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 491CB611B2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 491CB611B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:44:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="332716847"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="332716847"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 04:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="826756496"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="826756496"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 19 May 2023 04:44:08 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pzyWl-000Ao2-22
 for intel-wired-lan@lists.osuosl.org; Fri, 19 May 2023 11:44:07 +0000
Date: Fri, 19 May 2023 19:43:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230519114308.J-0Uo%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684496650; x=1716032650;
 h=date:from:to:subject:message-id;
 bh=qXndDbZv/iFOMMl336qzTjBsck1bCx4mwyLiMRK3pNg=;
 b=nJw+gG8suk/mHuLsfZn7MH/02K6WDkJWgs+ksKuBDsqJ43IhZQAtSZ3I
 IEn1+odDd8vYeKrtUc0j4nPmRDfzZVv18DpvOIfXIG1awaVyKunVUTM2+
 LLF/Sn/PEv+xmKO1gjKgxLE8q/Ked9ZmbBBhssBaOv5uaY7F0EliinOlq
 PmnB+Twwm+E3UtMofwR9U8Or/hS6S38OlYJsYWXYLVVEbOEGlIXWYlhLx
 35rl/o/aAf7NxWa2czXgzoCo/O9X2rE4aoj7iHxv3FJdu38RIAPgZVQG7
 lFiMTdFGSuuf23N/4MMjJquRqkj3RvThGhoOYKkKQNk7jbzfdZuv66jF6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nJw+gG8s
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 90223c1136b2930751116fb7de9675f55843f3ad
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

tree/branch: INFO setup_repo_specs: /db/releases/20230519164737/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 90223c1136b2930751116fb7de9675f55843f3ad  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 726m

configs tested: 163
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230517   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230517   gcc  
alpha                randconfig-r013-20230517   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r043-20230517   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            mps2_defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                  randconfig-r022-20230517   clang
arm                  randconfig-r034-20230517   gcc  
arm                  randconfig-r036-20230517   gcc  
arm                  randconfig-r046-20230517   clang
arm                        spear3xx_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r015-20230517   gcc  
csky         buildonly-randconfig-r001-20230519   gcc  
csky         buildonly-randconfig-r003-20230519   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230517   gcc  
csky                 randconfig-r013-20230517   gcc  
csky                 randconfig-r024-20230517   gcc  
csky                 randconfig-r025-20230517   gcc  
hexagon      buildonly-randconfig-r006-20230517   clang
hexagon              randconfig-r031-20230517   clang
hexagon              randconfig-r041-20230517   clang
hexagon              randconfig-r045-20230517   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230517   gcc  
ia64         buildonly-randconfig-r006-20230519   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230517   gcc  
ia64                 randconfig-r011-20230517   gcc  
ia64                 randconfig-r023-20230517   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230519   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230517   gcc  
loongarch            randconfig-r033-20230517   gcc  
loongarch            randconfig-r035-20230517   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230517   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                 randconfig-r011-20230517   gcc  
m68k                 randconfig-r014-20230517   gcc  
m68k                 randconfig-r022-20230517   gcc  
m68k                 randconfig-r023-20230517   gcc  
m68k                 randconfig-r024-20230517   gcc  
microblaze   buildonly-randconfig-r002-20230517   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r021-20230517   gcc  
microblaze           randconfig-r025-20230517   gcc  
microblaze           randconfig-r031-20230517   gcc  
microblaze           randconfig-r033-20230517   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                 randconfig-r032-20230517   gcc  
nios2        buildonly-randconfig-r003-20230517   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230517   gcc  
nios2                randconfig-r004-20230517   gcc  
openrisc     buildonly-randconfig-r005-20230519   gcc  
openrisc             randconfig-r035-20230517   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230517   gcc  
parisc               randconfig-r011-20230517   gcc  
parisc               randconfig-r026-20230517   gcc  
parisc               randconfig-r032-20230517   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230517   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc                         ps3_defconfig   gcc  
powerpc              randconfig-r014-20230517   gcc  
powerpc              randconfig-r016-20230517   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230517   clang
riscv                randconfig-r005-20230517   clang
riscv                randconfig-r042-20230517   gcc  
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230517   clang
s390                 randconfig-r004-20230517   clang
s390                 randconfig-r005-20230517   clang
s390                 randconfig-r026-20230517   gcc  
s390                 randconfig-r044-20230517   gcc  
sh                               allmodconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r022-20230517   gcc  
sh                   randconfig-r023-20230517   gcc  
sh                           se7721_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230517   gcc  
sparc                randconfig-r012-20230517   gcc  
sparc                randconfig-r016-20230517   gcc  
sparc                randconfig-r024-20230517   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64      buildonly-randconfig-r004-20230517   gcc  
sparc64      buildonly-randconfig-r004-20230519   gcc  
sparc64              randconfig-r012-20230517   gcc  
sparc64              randconfig-r015-20230517   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                        randconfig-x052   clang
x86_64                        randconfig-x054   clang
x86_64                        randconfig-x056   clang
x86_64                        randconfig-x061   gcc  
x86_64                        randconfig-x063   gcc  
x86_64                        randconfig-x065   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230517   gcc  
xtensa               randconfig-r001-20230517   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
