Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E006B709693
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 13:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DF5941D13;
	Fri, 19 May 2023 11:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DF5941D13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684496006;
	bh=/VJ6fnD+9jQWlKOnJptUj6QjJBRwDfZMENE9IoaEjz4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ssx5Cws/+usEgrZM4Yz/sEm6EUTYQ38T4FkrYSWjM/zkX0mWI/oWqkRgLEYRzLXZc
	 69NkGsj6A/XMAJz+YeRPUmYq6iFpvFARv+K1BBHpaw1w2AO9iGLIrRtrEO+OrA/FEt
	 2bHkmj+LAtiXnFMqXhWeDFNEoJDcbmp3YH+X1cGloSnZNlTzQ+ocxrNdUdpK7c2dWa
	 gsZTHHgD9KUE0BMimw8tgwCkA+kJVcFbDuF+OJWGzQuosCON7M/Gi9TtbygW9epa7A
	 EdxdMCAIBvcoWGCTFJf1GkeO4DVZYLZi003KMhaXCvY8sLHnXEzQTd9G5dqKq/q6Xb
	 VdlxVgk7+lIzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLcU6nItuW1d; Fri, 19 May 2023 11:33:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A98BF408EF;
	Fri, 19 May 2023 11:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A98BF408EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A43751BF40B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 88F6C611B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88F6C611B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjiURbfr3oWE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 11:33:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BF79611AA
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BF79611AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 11:33:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="380563176"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="380563176"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 04:33:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="814697139"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="814697139"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 19 May 2023 04:33:07 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pzyM7-000AnW-17
 for intel-wired-lan@lists.osuosl.org; Fri, 19 May 2023 11:33:07 +0000
Date: Fri, 19 May 2023 19:32:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230519113238.nXUIg%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684495998; x=1716031998;
 h=date:from:to:subject:message-id;
 bh=jy1gM5aN6XEubqfi6pM88UautwQbkQ4piHzIq4DtEEs=;
 b=iesUQZt55hYUjKKJR4Oza4OQ0VLrLVLUed7dCgK7mOwOcHnJeoKFLdAe
 eDL5NgeZvS7V7hRAG9uqVoRxZ+lTovdI7YPuQ+hRWb8ik2uomuqScMKfQ
 e7d0c7VJji/yRn9YG9gokEnelEfNZ1t3VrXirSjOtE49BEbrL4rjiiwEm
 I7tie0XE68OuQFO1NtTO1I2KI6HCU2LGySLI8vHE2+I5bODCX9XpvVz/l
 yTwyniyZGDck8ybo2WMo75ZV+/QT8yp3h8n9jKjsBIBLgoCUNpfE2lYmg
 IxvRJNIisLJH9cfNDgnoeLuhpXWgD5oEfw3MRjklf2ajs6zJoR/SJ5kw/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iesUQZt5
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 568fdc8829d7a38cb2af97cf29bff0819dcc4905
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

tree/branch: INFO setup_repo_specs: /db/releases/20230519164737/lkp-src/repo/*/tnguy-net-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 568fdc8829d7a38cb2af97cf29bff0819dcc4905  igc: Remove delay during TX ring configuration

elapsed time: 720m

configs tested: 182
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230517   gcc  
alpha                randconfig-r006-20230517   gcc  
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
arm                  randconfig-r003-20230517   gcc  
arm                  randconfig-r005-20230517   gcc  
arm                  randconfig-r034-20230517   gcc  
arm                  randconfig-r036-20230517   gcc  
arm                  randconfig-r046-20230517   clang
arm                        spear3xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230517   clang
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230517   clang
arm64                randconfig-r015-20230517   gcc  
csky         buildonly-randconfig-r001-20230519   gcc  
csky         buildonly-randconfig-r003-20230519   gcc  
csky         buildonly-randconfig-r005-20230517   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230517   gcc  
csky                 randconfig-r006-20230517   gcc  
csky                 randconfig-r024-20230517   gcc  
csky                 randconfig-r025-20230517   gcc  
csky                 randconfig-r032-20230517   gcc  
hexagon              randconfig-r041-20230517   clang
hexagon              randconfig-r045-20230517   clang
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
ia64         buildonly-randconfig-r004-20230517   gcc  
ia64         buildonly-randconfig-r006-20230519   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230517   gcc  
ia64                 randconfig-r011-20230517   gcc  
ia64                 randconfig-r023-20230517   gcc  
ia64                 randconfig-r023-20230519   gcc  
ia64                 randconfig-r031-20230517   gcc  
ia64                 randconfig-r036-20230517   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230519   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230517   gcc  
loongarch            randconfig-r011-20230517   gcc  
loongarch            randconfig-r033-20230517   gcc  
loongarch            randconfig-r035-20230517   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                 randconfig-r014-20230517   gcc  
m68k                 randconfig-r015-20230517   gcc  
m68k                 randconfig-r022-20230517   gcc  
m68k                 randconfig-r024-20230517   gcc  
microblaze   buildonly-randconfig-r002-20230517   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r021-20230517   gcc  
microblaze           randconfig-r026-20230519   gcc  
microblaze           randconfig-r031-20230517   gcc  
microblaze           randconfig-r033-20230517   gcc  
microblaze           randconfig-r034-20230517   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                 randconfig-r015-20230517   clang
mips                 randconfig-r032-20230517   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230517   gcc  
nios2                randconfig-r024-20230519   gcc  
openrisc     buildonly-randconfig-r005-20230519   gcc  
openrisc             randconfig-r035-20230517   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230517   gcc  
parisc               randconfig-r011-20230517   gcc  
parisc               randconfig-r032-20230517   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc                         ps3_defconfig   gcc  
powerpc              randconfig-r021-20230519   gcc  
powerpc              randconfig-r035-20230517   clang
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230517   clang
riscv                randconfig-r005-20230517   clang
riscv                randconfig-r014-20230517   gcc  
riscv                randconfig-r042-20230517   gcc  
riscv                          rv32_defconfig   gcc  
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
sh                   randconfig-r034-20230517   gcc  
sh                           se7722_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230517   gcc  
sparc                randconfig-r006-20230517   gcc  
sparc                randconfig-r012-20230517   gcc  
sparc                randconfig-r016-20230517   gcc  
sparc                randconfig-r031-20230517   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64      buildonly-randconfig-r004-20230517   gcc  
sparc64      buildonly-randconfig-r004-20230519   gcc  
sparc64              randconfig-r001-20230517   gcc  
sparc64              randconfig-r004-20230517   gcc  
sparc64              randconfig-r012-20230517   gcc  
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
x86_64                        randconfig-x051   gcc  
x86_64                        randconfig-x052   clang
x86_64                        randconfig-x053   gcc  
x86_64                        randconfig-x054   clang
x86_64                        randconfig-x055   gcc  
x86_64                        randconfig-x056   clang
x86_64                        randconfig-x061   gcc  
x86_64                        randconfig-x062   clang
x86_64                        randconfig-x063   gcc  
x86_64                        randconfig-x064   clang
x86_64                        randconfig-x065   gcc  
x86_64                        randconfig-x066   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230517   gcc  
xtensa       buildonly-randconfig-r003-20230517   gcc  
xtensa               randconfig-r002-20230517   gcc  
xtensa               randconfig-r012-20230517   gcc  
xtensa               randconfig-r035-20230517   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
