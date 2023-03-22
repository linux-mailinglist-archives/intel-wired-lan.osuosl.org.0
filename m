Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE366C41B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 05:50:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3F4F8216E;
	Wed, 22 Mar 2023 04:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3F4F8216E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679460627;
	bh=zfudWa+0MJE0i+44aiqn6sMtij1s3LZuAkZd4OwvxYQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4miCoVMj4wGdZ/ZljrqqeFTH36B5ELWW9Y2oevMu9SLNRtKW9RtaTLmNnpzAN1JGJ
	 QFAj8vTp9bac13ukTo/Jipy04PokmqWyi72X9aOtj38kqvWqFO8wiBw/8zjY/qg0ED
	 6g2wSINXCHHX+v6LPII7FIHbRSkoSRVmfJh2I3lFixHjinvSLNyRiQlZpRL3KLMj36
	 O+o4G7zrJXWUo/bBnZVabJmwD+44shDf9rzslINhKJZlNaEpzRKAN30gubVdg6xQpL
	 adkntELw6bxOclnjYTYOrd//1eUAyYmVyR99Ve5ffweeHzo5vMF61VJvde/7zw1/tZ
	 dpIa8CG76Q1rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mm_LlR6Y47Zu; Wed, 22 Mar 2023 04:50:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5529B82145;
	Wed, 22 Mar 2023 04:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5529B82145
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA5431BF591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 04:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD6C34091F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 04:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD6C34091F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vbyX1mm37L3M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 04:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEC6440913
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEC6440913
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 04:50:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340663939"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="340663939"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 21:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="681771944"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="681771944"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 21 Mar 2023 21:50:17 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1peqQT-000CtC-0f;
 Wed, 22 Mar 2023 04:50:17 +0000
Date: Wed, 22 Mar 2023 12:49:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641a88d4.lK3vd7m6n3KiLIaT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679460620; x=1710996620;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tvoQyL8mNclllJN7EdNsUa98IYd3oSc6Y7EA/ZQMSaA=;
 b=jkh1n7irIQHhZ4mBXiSYzVG3UD+bsDwjgxEERuIyCQZs1bDuDXONCl3P
 3jAsegKPAe7YtcY3q8FislZ4/RzCWk2jfVaHxv3HGWbBwchaEyfTZt7Nt
 FfRroqG+eAstTrSzlp/UWbANb3kdzh8TMYHG66ksJmKIIT3z0Edwvp0Yg
 TLs1GRlxEfFJz1ry3XtdmFvUSFfLvTBBiQMOROlJi5T+pQZduuQxSAf+e
 R1mdJ9z5AJhodyUwItCXF0oEgStif2wvnfMOXt00EFLmS0WJ/OAckY0v1
 P/7XTflSqiU06kqkQPU8fzgl8m0txUykL1NQqueDAllEmLIiMJ0WWqQdL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jkh1n7ir
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 c8384d4a51e7cb0e6587f3143f29099f202c5de1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: c8384d4a51e7cb0e6587f3143f29099f202c5de1  net: pasemi: Fix return type of pasemi_mac_start_tx()

elapsed time: 948m

configs tested: 305
configs skipped: 29

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230319   gcc  
alpha        buildonly-randconfig-r001-20230320   gcc  
alpha        buildonly-randconfig-r002-20230319   gcc  
alpha        buildonly-randconfig-r004-20230319   gcc  
alpha        buildonly-randconfig-r005-20230320   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230319   gcc  
alpha                randconfig-r015-20230319   gcc  
alpha                randconfig-r016-20230320   gcc  
alpha                randconfig-r023-20230319   gcc  
alpha                randconfig-r031-20230319   gcc  
alpha                randconfig-r033-20230319   gcc  
alpha                randconfig-r035-20230319   gcc  
alpha                randconfig-r036-20230319   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r005-20230319   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230320   gcc  
arc                  randconfig-r005-20230319   gcc  
arc                  randconfig-r013-20230320   gcc  
arc                  randconfig-r015-20230319   gcc  
arc                  randconfig-r034-20230319   gcc  
arc                  randconfig-r043-20230320   gcc  
arc                  randconfig-r043-20230321   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                           imxrt_defconfig   gcc  
arm                  randconfig-c002-20230319   gcc  
arm                  randconfig-r011-20230319   gcc  
arm                  randconfig-r034-20230320   gcc  
arm                  randconfig-r046-20230321   gcc  
arm                         s5pv210_defconfig   clang
arm                           stm32_defconfig   gcc  
arm                           sunxi_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230319   gcc  
arm64        buildonly-randconfig-r005-20230319   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230319   clang
arm64                randconfig-r013-20230320   gcc  
arm64                randconfig-r014-20230319   clang
csky         buildonly-randconfig-r003-20230319   gcc  
csky         buildonly-randconfig-r003-20230320   gcc  
csky         buildonly-randconfig-r005-20230319   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r002-20230319   gcc  
csky                 randconfig-r004-20230319   gcc  
csky                 randconfig-r005-20230319   gcc  
csky                 randconfig-r006-20230319   gcc  
csky                 randconfig-r014-20230319   gcc  
csky                 randconfig-r022-20230319   gcc  
csky                 randconfig-r035-20230319   gcc  
csky                 randconfig-r035-20230320   gcc  
csky                 randconfig-r036-20230321   gcc  
hexagon      buildonly-randconfig-r001-20230319   clang
hexagon      buildonly-randconfig-r003-20230319   clang
hexagon      buildonly-randconfig-r004-20230319   clang
hexagon                             defconfig   clang
hexagon              randconfig-r003-20230319   clang
hexagon              randconfig-r004-20230320   clang
hexagon              randconfig-r006-20230319   clang
hexagon              randconfig-r022-20230319   clang
hexagon              randconfig-r032-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r041-20230321   clang
hexagon              randconfig-r045-20230319   clang
hexagon              randconfig-r045-20230321   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230320   clang
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230320   clang
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230320   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230320   clang
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230320   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230320   clang
i386                          randconfig-a005   gcc  
i386                 randconfig-a006-20230320   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230320   gcc  
i386                          randconfig-a011   clang
i386                 randconfig-a012-20230320   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230320   gcc  
i386                          randconfig-a013   clang
i386                 randconfig-a014-20230320   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230320   gcc  
i386                          randconfig-a015   clang
i386                 randconfig-a016-20230320   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230319   gcc  
ia64                 randconfig-r021-20230319   gcc  
ia64                 randconfig-r023-20230319   gcc  
ia64                 randconfig-r033-20230319   gcc  
ia64                 randconfig-r036-20230319   gcc  
ia64                 randconfig-r036-20230320   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230320   gcc  
loongarch    buildonly-randconfig-r004-20230320   gcc  
loongarch    buildonly-randconfig-r006-20230319   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230319   gcc  
loongarch            randconfig-r011-20230320   gcc  
loongarch            randconfig-r025-20230320   gcc  
loongarch            randconfig-r026-20230319   gcc  
loongarch            randconfig-r026-20230320   gcc  
loongarch            randconfig-r031-20230319   gcc  
loongarch            randconfig-r034-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k         buildonly-randconfig-r001-20230319   gcc  
m68k         buildonly-randconfig-r003-20230320   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230319   gcc  
m68k                 randconfig-r026-20230319   gcc  
m68k                 randconfig-r034-20230321   gcc  
microblaze   buildonly-randconfig-r003-20230319   gcc  
microblaze   buildonly-randconfig-r005-20230320   gcc  
microblaze           randconfig-r003-20230319   gcc  
microblaze           randconfig-r011-20230319   gcc  
microblaze           randconfig-r012-20230320   gcc  
microblaze           randconfig-r013-20230319   gcc  
microblaze           randconfig-r014-20230319   gcc  
microblaze           randconfig-r024-20230319   gcc  
microblaze           randconfig-r033-20230319   gcc  
microblaze           randconfig-r036-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   clang
mips                      bmips_stb_defconfig   clang
mips         buildonly-randconfig-r001-20230320   gcc  
mips         buildonly-randconfig-r004-20230320   gcc  
mips                            gpr_defconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r002-20230319   clang
mips                 randconfig-r026-20230319   gcc  
mips                 randconfig-r033-20230320   gcc  
mips                 randconfig-r034-20230320   gcc  
mips                          rm200_defconfig   clang
mips                        vocore2_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230319   gcc  
nios2                randconfig-r004-20230319   gcc  
nios2                randconfig-r016-20230320   gcc  
nios2                randconfig-r023-20230320   gcc  
nios2                randconfig-r031-20230320   gcc  
nios2                randconfig-r034-20230319   gcc  
nios2                randconfig-r035-20230319   gcc  
nios2                randconfig-r036-20230319   gcc  
openrisc     buildonly-randconfig-r002-20230319   gcc  
openrisc     buildonly-randconfig-r004-20230319   gcc  
openrisc             randconfig-r001-20230319   gcc  
openrisc             randconfig-r011-20230319   gcc  
openrisc             randconfig-r021-20230319   gcc  
openrisc             randconfig-r022-20230319   gcc  
openrisc             randconfig-r023-20230319   gcc  
openrisc             randconfig-r024-20230319   gcc  
openrisc             randconfig-r025-20230319   gcc  
openrisc             randconfig-r031-20230319   gcc  
openrisc             randconfig-r033-20230319   gcc  
openrisc             randconfig-r035-20230319   gcc  
parisc       buildonly-randconfig-r003-20230319   gcc  
parisc       buildonly-randconfig-r004-20230319   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230319   gcc  
parisc               randconfig-r011-20230319   gcc  
parisc               randconfig-r014-20230320   gcc  
parisc               randconfig-r022-20230319   gcc  
parisc               randconfig-r025-20230319   gcc  
parisc               randconfig-r031-20230319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc      buildonly-randconfig-r002-20230319   clang
powerpc      buildonly-randconfig-r004-20230319   clang
powerpc      buildonly-randconfig-r006-20230320   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                     kmeter1_defconfig   clang
powerpc                   microwatt_defconfig   clang
powerpc                     mpc5200_defconfig   clang
powerpc                mpc7448_hpc2_defconfig   gcc  
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                 mpc8540_ads_defconfig   gcc  
powerpc              randconfig-r002-20230319   gcc  
powerpc              randconfig-r006-20230319   gcc  
powerpc              randconfig-r021-20230319   clang
powerpc              randconfig-r021-20230320   gcc  
powerpc                     stx_gp3_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230319   clang
riscv        buildonly-randconfig-r002-20230320   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230319   gcc  
riscv                randconfig-r006-20230319   gcc  
riscv                randconfig-r014-20230320   gcc  
riscv                randconfig-r015-20230320   gcc  
riscv                randconfig-r016-20230319   clang
riscv                randconfig-r016-20230320   gcc  
riscv                randconfig-r036-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                randconfig-r042-20230320   gcc  
riscv                randconfig-r042-20230321   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230319   clang
s390         buildonly-randconfig-r002-20230319   clang
s390         buildonly-randconfig-r004-20230320   gcc  
s390         buildonly-randconfig-r006-20230320   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230319   clang
s390                 randconfig-r035-20230319   gcc  
s390                 randconfig-r044-20230319   clang
s390                 randconfig-r044-20230320   gcc  
s390                 randconfig-r044-20230321   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230319   gcc  
sh                        dreamcast_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r005-20230320   gcc  
sh                   randconfig-r011-20230319   gcc  
sh                   randconfig-r011-20230320   gcc  
sh                   randconfig-r012-20230319   gcc  
sh                   randconfig-r021-20230319   gcc  
sh                   randconfig-r032-20230319   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7712_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230320   gcc  
sparc        buildonly-randconfig-r006-20230319   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230320   gcc  
sparc                randconfig-r004-20230319   gcc  
sparc                randconfig-r012-20230319   gcc  
sparc                randconfig-r015-20230320   gcc  
sparc                randconfig-r021-20230319   gcc  
sparc                randconfig-r024-20230320   gcc  
sparc                randconfig-r031-20230319   gcc  
sparc                randconfig-r032-20230319   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64              randconfig-r001-20230320   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230320   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230320   clang
x86_64               randconfig-a003-20230320   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230320   clang
x86_64               randconfig-a005-20230320   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230320   clang
x86_64               randconfig-a011-20230320   gcc  
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230320   gcc  
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230320   gcc  
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230320   gcc  
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230320   gcc  
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230320   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-c001   gcc  
x86_64                        randconfig-k001   clang
x86_64               randconfig-r006-20230320   clang
x86_64               randconfig-r022-20230320   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa       buildonly-randconfig-r006-20230320   gcc  
xtensa               randconfig-r001-20230319   gcc  
xtensa               randconfig-r013-20230319   gcc  
xtensa               randconfig-r013-20230320   gcc  
xtensa               randconfig-r015-20230319   gcc  
xtensa               randconfig-r033-20230320   gcc  
xtensa               randconfig-r033-20230321   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
