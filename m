Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3A9708F6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 07:31:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 360CC42C08;
	Fri, 19 May 2023 05:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 360CC42C08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684474280;
	bh=bV47KfOLaWCNnSD+gNvz2x5+L2quiZ/bfiL8eSvk88w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dHYrX/QX+ViVkWQUbKSVSa5fVy92etaECrG1FMSBBlPcF8bV9ANrDoxQZCK4dBZWB
	 XUuXPVpvO4tiOtNw4bAeI/ZN95c+HB0zOybfWiUc/+cpKweVVJ6JqnwoQyOWYy8OMQ
	 S4dcJsK0L4F1pgt3m5SK2iQY++1ysqvNex9Y0V0WyzvR+pSq79CK9XC070CHIV6ZNW
	 ujSF9YjY6l8IXiQeWIpID2/5YC2uL6oll82B/+2ecINmwBt2I0NuUhhLFCk5MAg0nO
	 du74VrcEFKoGaoGOSIUMHhZ5XRdIOIe84O/oGGdEcYYmdoRe5UhF7V9AFQrwlq148f
	 AUDoFFxF+VChA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hHH9NUFaeUrC; Fri, 19 May 2023 05:31:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C387F42BF9;
	Fri, 19 May 2023 05:31:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C387F42BF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42AB41BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 05:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2763461484
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 05:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2763461484
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5ShcE3LAyUj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 05:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D68A76145F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D68A76145F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 05:31:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="438638965"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="438638965"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 22:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="705460710"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="705460710"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 18 May 2023 22:31:00 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pzshf-000Acs-1P
 for intel-wired-lan@lists.osuosl.org; Fri, 19 May 2023 05:30:59 +0000
Date: Fri, 19 May 2023 13:30:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230519053054.5BJ7-%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684474272; x=1716010272;
 h=date:from:to:subject:message-id;
 bh=nITPBcDYIA9KaohuMbLr9k9C9AL7FXe5DRKKXwKJ8JM=;
 b=CKeNpHKhmwMn8ICG+5t/AmTcpXrF1iIHu9Jaj/hxVhUoUbjAkMz/2Kf9
 RaC0XUpIKmtgBvE1A1AuKCGhvHZdPke6ph7QjfphEsf3LslZxmzeKMPJM
 QUy3id83I8XHvkwmIdUG1nimXHUBgSD/B2UcHz6qNf1/PFei/82BxM+Sm
 bmbnndmZIcdVTGGAFoCUoqKEgharmCbBLmOX3IrYqO4pI9UhI1l+xu7w6
 yVb7YMQWIF4WL5P8Upg9DJFDOHvniO6nSWJiPBmcPs3tNw3Wxsd+3UpeB
 huOBIfAHtnwAxhHlJf4G4BcQcP213kqqctKN9PROVBrWc7PYniAUz55cb
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CKeNpHKh
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 c4dc8dc32bd1fa0ed04d25f2e4004d854c163c39
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

tree/branch: INFO setup_repo_specs: /db/releases/20230517200055/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: c4dc8dc32bd1fa0ed04d25f2e4004d854c163c39  e1000e: Add @adapter description to kdoc

elapsed time: 729m

configs tested: 202
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r013-20230517   gcc  
alpha                randconfig-r014-20230517   gcc  
alpha                randconfig-r023-20230517   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230517   gcc  
arc          buildonly-randconfig-r006-20230517   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r001-20230517   gcc  
arc                  randconfig-r013-20230517   gcc  
arc                  randconfig-r024-20230517   gcc  
arc                  randconfig-r032-20230517   gcc  
arc                  randconfig-r043-20230517   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            mps2_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                  randconfig-r005-20230517   gcc  
arm                  randconfig-r025-20230517   clang
arm                  randconfig-r034-20230517   gcc  
arm                  randconfig-r036-20230517   gcc  
arm                  randconfig-r046-20230517   clang
arm                        spear3xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230517   clang
arm64                randconfig-r006-20230517   clang
arm64                randconfig-r011-20230517   gcc  
arm64                randconfig-r012-20230517   gcc  
arm64                randconfig-r015-20230517   gcc  
arm64                randconfig-r034-20230517   clang
csky         buildonly-randconfig-r001-20230519   gcc  
csky         buildonly-randconfig-r003-20230519   gcc  
csky         buildonly-randconfig-r005-20230517   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230517   gcc  
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
ia64         buildonly-randconfig-r002-20230517   gcc  
ia64         buildonly-randconfig-r006-20230519   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230517   gcc  
ia64                 randconfig-r011-20230517   gcc  
ia64                 randconfig-r013-20230517   gcc  
ia64                 randconfig-r022-20230517   gcc  
ia64                 randconfig-r036-20230517   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230517   gcc  
loongarch    buildonly-randconfig-r002-20230519   gcc  
loongarch    buildonly-randconfig-r005-20230517   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230517   gcc  
loongarch            randconfig-r023-20230517   gcc  
loongarch            randconfig-r033-20230517   gcc  
loongarch            randconfig-r035-20230517   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230517   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                 randconfig-r014-20230517   gcc  
m68k                 randconfig-r022-20230517   gcc  
m68k                 randconfig-r024-20230517   gcc  
m68k                 randconfig-r034-20230517   gcc  
microblaze   buildonly-randconfig-r003-20230517   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r021-20230517   gcc  
microblaze           randconfig-r031-20230517   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                           ci20_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                 randconfig-r031-20230517   gcc  
nios2        buildonly-randconfig-r002-20230517   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230517   gcc  
nios2                randconfig-r004-20230517   gcc  
nios2                randconfig-r025-20230517   gcc  
openrisc     buildonly-randconfig-r005-20230519   gcc  
openrisc             randconfig-r011-20230517   gcc  
openrisc             randconfig-r012-20230517   gcc  
openrisc             randconfig-r035-20230517   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230517   gcc  
parisc               randconfig-r011-20230517   gcc  
parisc               randconfig-r026-20230517   gcc  
parisc               randconfig-r032-20230517   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc      buildonly-randconfig-r003-20230517   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                     mpc83xx_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc              randconfig-r014-20230517   gcc  
powerpc              randconfig-r016-20230517   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230517   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230517   gcc  
s390         buildonly-randconfig-r004-20230517   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r006-20230517   clang
s390                 randconfig-r026-20230517   gcc  
s390                 randconfig-r044-20230517   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230517   gcc  
sh           buildonly-randconfig-r006-20230517   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r005-20230517   gcc  
sh                   randconfig-r023-20230517   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230517   gcc  
sparc                randconfig-r006-20230517   gcc  
sparc                randconfig-r012-20230517   gcc  
sparc                randconfig-r016-20230517   gcc  
sparc                randconfig-r022-20230517   gcc  
sparc                randconfig-r024-20230517   gcc  
sparc                randconfig-r033-20230517   gcc  
sparc64      buildonly-randconfig-r001-20230517   gcc  
sparc64      buildonly-randconfig-r004-20230519   gcc  
sparc64              randconfig-r001-20230517   gcc  
sparc64              randconfig-r012-20230517   gcc  
sparc64              randconfig-r026-20230517   gcc  
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
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230517   gcc  
xtensa               randconfig-r004-20230517   gcc  
xtensa               randconfig-r034-20230517   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
