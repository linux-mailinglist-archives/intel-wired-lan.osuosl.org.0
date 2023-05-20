Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F33170A5EF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 May 2023 08:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A191560F82;
	Sat, 20 May 2023 06:23:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A191560F82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684563838;
	bh=l7rN44RYl5P2pAP5Tyk/1R7BCqj9TehmvncEDMFbLyU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0Y7MqfkQvNzzVkPk6j2fGyqUmbbtMYYoU5elIhPXnW9Z2QP2cXV0I7q3vrrcm2ea1
	 DmoJ1xxhSZUfCv8G67UGT34OnrPKNRyint4T265z4odYsOy/8Db9PC90O9PQzERBLN
	 YyJkuxOzSuKJ/I5thLL+PMQ1pvaoIrjr0bRMqb7laJMphqzLa+1a8A9l7wo8dxhS8P
	 4ofd5pmopfy0L5q2T0HLipOOgq94e3Co7zfSwJ6rxncL+HZV+K8yEsxwBaWgYD6C+8
	 p5Ocxox/5AKPaR/SPvTKhbtl98vPoboJ1NrBh6YtoRfBn14bowZxz9lWvQBV7TGk2p
	 aydAp836Ht0dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sh45LJlsGO6v; Sat, 20 May 2023 06:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24D7E60AC0;
	Sat, 20 May 2023 06:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24D7E60AC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0601BF57F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 May 2023 06:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F38B54251E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 May 2023 06:23:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F38B54251E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IiQZsPUQq--1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 May 2023 06:23:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7366E4250F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7366E4250F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 May 2023 06:23:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="438910440"
X-IronPort-AV: E=Sophos;i="6.00,179,1681196400"; d="scan'208";a="438910440"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 23:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="705858586"
X-IronPort-AV: E=Sophos;i="6.00,179,1681196400"; d="scan'208";a="705858586"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 19 May 2023 23:23:36 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q0G07-000BM9-1I
 for intel-wired-lan@lists.osuosl.org; Sat, 20 May 2023 06:23:35 +0000
Date: Sat, 20 May 2023 14:23:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230520062327.WNFZQ%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684563830; x=1716099830;
 h=date:from:to:subject:message-id;
 bh=Ap06vifjy5BfrY3C3dQAIBpNdqqIyFlusaUDuhX/8Ug=;
 b=c/BC8lSoFGTR2vnRHCRgKVU4lhElQugr99r1lRJmJKDk81ncLaq8Y9K2
 bxZdxl1G/yVVQDftwfXVlWTuFg30ADkk5eO5tJjN9eY42NHW/dBVZdQZ7
 Daa40vXijTp506fLb77ZoNsBygrr685W7HmC7m4ZDx5X9qLabipJMt7WO
 MhzG+sikvSGjIn3i2wDeCsB0j+WqqoIJ8sPdyoq0GMsvpuhK19Yn4xy8k
 v1qHHY+1ZNM1EGRlFzhfCvw13LvckPo9kshv5l3o2Sr3yDinMHzJgDrPy
 +1fdnNnW92HvYwujLqCxVT80Zlu9JqAA8+gKSpfizdBuuMHtPedZDuNni
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c/BC8lSo
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 81b4f9d60c71a758533b7b3117a09e5d694d1e3d
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
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 81b4f9d60c71a758533b7b3117a09e5d694d1e3d  igc: Remove delay during TX ring configuration

elapsed time: 730m

configs tested: 195
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230517   gcc  
alpha                randconfig-r023-20230519   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230517   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r004-20230517   gcc  
arc                  randconfig-r043-20230517   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                        multi_v5_defconfig   clang
arm                         mv78xx0_defconfig   clang
arm                  randconfig-r003-20230517   gcc  
arm                  randconfig-r013-20230517   clang
arm                  randconfig-r034-20230517   gcc  
arm                  randconfig-r036-20230517   gcc  
arm                  randconfig-r046-20230517   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230517   clang
arm64                randconfig-r015-20230517   gcc  
csky         buildonly-randconfig-r005-20230517   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r002-20230517   clang
hexagon              randconfig-r031-20230517   clang
hexagon              randconfig-r035-20230517   clang
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
ia64         buildonly-randconfig-r005-20230517   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r023-20230519   gcc  
ia64                 randconfig-r025-20230519   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r002-20230517   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230517   gcc  
loongarch            randconfig-r011-20230517   gcc  
loongarch            randconfig-r026-20230519   gcc  
loongarch            randconfig-r033-20230517   gcc  
loongarch            randconfig-r035-20230517   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230517   gcc  
m68k         buildonly-randconfig-r005-20230517   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5407c3_defconfig   gcc  
m68k                 randconfig-r004-20230517   gcc  
m68k                 randconfig-r014-20230517   gcc  
m68k                 randconfig-r015-20230517   gcc  
m68k                 randconfig-r021-20230517   gcc  
m68k                 randconfig-r022-20230519   gcc  
m68k                 randconfig-r023-20230517   gcc  
microblaze   buildonly-randconfig-r001-20230517   gcc  
microblaze           randconfig-r003-20230517   gcc  
microblaze           randconfig-r012-20230517   gcc  
microblaze           randconfig-r026-20230519   gcc  
microblaze           randconfig-r031-20230517   gcc  
microblaze           randconfig-r033-20230517   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips         buildonly-randconfig-r003-20230517   gcc  
mips                     decstation_defconfig   gcc  
mips                 randconfig-r032-20230517   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r013-20230517   gcc  
nios2                randconfig-r021-20230519   gcc  
nios2                randconfig-r024-20230517   gcc  
nios2                randconfig-r024-20230519   gcc  
openrisc     buildonly-randconfig-r004-20230517   gcc  
openrisc                  or1klitex_defconfig   gcc  
openrisc             randconfig-r026-20230517   gcc  
openrisc             randconfig-r035-20230517   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230517   gcc  
parisc               randconfig-r016-20230517   gcc  
parisc               randconfig-r024-20230519   gcc  
parisc               randconfig-r026-20230517   gcc  
parisc               randconfig-r032-20230517   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc                 canyonlands_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                      mgcoge_defconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   clang
powerpc              randconfig-r021-20230519   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     sequoia_defconfig   gcc  
powerpc                     tqm8548_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230517   clang
riscv                randconfig-r002-20230517   clang
riscv                randconfig-r005-20230517   clang
riscv                randconfig-r014-20230517   gcc  
riscv                randconfig-r023-20230517   gcc  
riscv                randconfig-r032-20230517   clang
riscv                randconfig-r042-20230517   gcc  
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230517   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r031-20230517   clang
s390                 randconfig-r044-20230517   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230517   gcc  
sh           buildonly-randconfig-r006-20230517   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r002-20230517   gcc  
sh                   randconfig-r015-20230517   gcc  
sh                   randconfig-r022-20230517   gcc  
sh                   randconfig-r025-20230517   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230517   gcc  
sparc                randconfig-r006-20230517   gcc  
sparc                randconfig-r016-20230517   gcc  
sparc                randconfig-r024-20230517   gcc  
sparc64              randconfig-r012-20230517   gcc  
sparc64              randconfig-r016-20230517   gcc  
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
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa       buildonly-randconfig-r002-20230517   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r006-20230517   gcc  
xtensa               randconfig-r012-20230517   gcc  
xtensa               randconfig-r021-20230517   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
