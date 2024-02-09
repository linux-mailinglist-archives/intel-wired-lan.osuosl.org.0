Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1A484F2FA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 11:12:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4B7D4ECC4;
	Fri,  9 Feb 2024 10:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qj8G7t5QVzrU; Fri,  9 Feb 2024 10:12:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 696174E3C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707473546;
	bh=PP6blKkI0qsnkjFKsKdeZ7T7yNs/XagnH0EV6D/hmJg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nC0ZT05v1vqhavpinTNhweG04dvgHaEbXnyXXNEB+AHqIG3B8KM4zRiEyxOz+nt6/
	 U9koEMC2y3BvyBu4m3LrDt9Yc6NNCUdK9+T1ARGQ7GQny4due9xzIiQAdZZwi72JFi
	 bCo7diKx27Wsb7K/r6AhJZ6upvOtfsUHaZARTWyaRWhoroPFNkBkMXfWYTrqN3zDDk
	 JiidGAzuc15SmftcTuzz0eq86d3edF//cwPuA0hTUGGKL3xK47xNZmZarxKXZ+hXEz
	 UcL8Efs3o7U8sizprC82VhSub+97lCqiB2kr3DQQP6aQ62YCBizI2VTPZXLh0xSIQk
	 KDVKxfBwR3uaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 696174E3C5;
	Fri,  9 Feb 2024 10:12:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D382E1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 10:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB05640298
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 10:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t3irWKW-7gr3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 10:12:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D2F041B06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D2F041B06
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D2F041B06
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 10:12:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1306528"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1306528"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2242885"
Received: from lkp-server01.sh.intel.com (HELO 01f0647817ea) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 02:12:20 -0800
Received: from kbuild by 01f0647817ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rYNrm-0004bG-0w
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Feb 2024 10:12:18 +0000
Date: Fri, 09 Feb 2024 18:11:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402091856.qnLabN7J-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707473543; x=1739009543;
 h=date:from:to:subject:message-id;
 bh=9DyoE2JuhJqqpSjGoK6dqGCrvm6NGBf2n3GiRI7dlME=;
 b=RqyGSvFgsZ7BY8uB7QTMYvuoG9l94SOZEwljuUj/YVGl8MMhIQ0h+CkB
 DbD8B9rWbBc1lOqMBY5sDJQ19MaGnHySdxVXA82QCvDDxPOItUq1KPaX0
 d1FIyJuOOpiwQmNnQtTpzhVkzwwCov+O9FUCU/KPiFJ+V0pm691Pr0VnP
 Afn7liic5wlc/BiwTfLq7jDKH6LdLCfurbC2eDjGDnEUSCjlk0QIJNTSv
 T4zAS4dp+F6XFLQGCXN7eYvzIQ4Gzx2uMVMcyqjFML55MJpFSD84742cf
 cluhlrNS1PwUJLvfwEIyG4AmdXE0YweyqjpXSRiz8RcF4OhNLO2GrJHBE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RqyGSvFg
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 b6b614558ed5b2ca50edacc0f2fbf5f52158c86c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: b6b614558ed5b2ca50edacc0f2fbf5f52158c86c  Merge branch 'net-more-factorization-in-cleanup_net-paths'

elapsed time: 1826m

configs tested: 258
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240208   gcc  
arc                   randconfig-001-20240209   gcc  
arc                   randconfig-002-20240208   gcc  
arc                   randconfig-002-20240209   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                          collie_defconfig   gcc  
arm                                 defconfig   clang
arm                            hisi_defconfig   gcc  
arm                            mmp2_defconfig   gcc  
arm                        multi_v7_defconfig   gcc  
arm                        mvebu_v5_defconfig   gcc  
arm                   randconfig-001-20240208   gcc  
arm                   randconfig-002-20240208   gcc  
arm                   randconfig-002-20240209   gcc  
arm                   randconfig-003-20240208   gcc  
arm                   randconfig-003-20240209   gcc  
arm                   randconfig-004-20240209   gcc  
arm                       spear13xx_defconfig   gcc  
arm                           tegra_defconfig   gcc  
arm                        vexpress_defconfig   gcc  
arm                    vt8500_v6_v7_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-004-20240208   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240208   gcc  
csky                  randconfig-001-20240209   gcc  
csky                  randconfig-002-20240208   gcc  
csky                  randconfig-002-20240209   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240208   gcc  
i386         buildonly-randconfig-001-20240209   clang
i386         buildonly-randconfig-002-20240208   clang
i386         buildonly-randconfig-002-20240209   clang
i386         buildonly-randconfig-003-20240208   gcc  
i386         buildonly-randconfig-003-20240209   gcc  
i386         buildonly-randconfig-004-20240208   gcc  
i386         buildonly-randconfig-004-20240209   clang
i386         buildonly-randconfig-005-20240208   gcc  
i386         buildonly-randconfig-005-20240209   clang
i386         buildonly-randconfig-006-20240208   gcc  
i386         buildonly-randconfig-006-20240209   gcc  
i386                  randconfig-001-20240208   gcc  
i386                  randconfig-001-20240209   clang
i386                  randconfig-002-20240208   gcc  
i386                  randconfig-002-20240209   gcc  
i386                  randconfig-003-20240208   gcc  
i386                  randconfig-003-20240209   clang
i386                  randconfig-004-20240208   clang
i386                  randconfig-004-20240209   clang
i386                  randconfig-005-20240208   gcc  
i386                  randconfig-005-20240209   clang
i386                  randconfig-006-20240208   gcc  
i386                  randconfig-006-20240209   gcc  
i386                  randconfig-011-20240208   clang
i386                  randconfig-011-20240209   gcc  
i386                  randconfig-012-20240208   clang
i386                  randconfig-012-20240209   gcc  
i386                  randconfig-013-20240208   clang
i386                  randconfig-013-20240209   clang
i386                  randconfig-014-20240208   clang
i386                  randconfig-014-20240209   gcc  
i386                  randconfig-015-20240208   clang
i386                  randconfig-015-20240209   gcc  
i386                  randconfig-016-20240208   gcc  
i386                  randconfig-016-20240209   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240208   gcc  
loongarch             randconfig-001-20240209   gcc  
loongarch             randconfig-002-20240208   gcc  
loongarch             randconfig-002-20240209   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
m68k                            q40_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1830-neo_defconfig   gcc  
mips                           ip27_defconfig   gcc  
mips                      pic32mzda_defconfig   gcc  
mips                   sb1250_swarm_defconfig   gcc  
nios2                         3c120_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240208   gcc  
nios2                 randconfig-001-20240209   gcc  
nios2                 randconfig-002-20240208   gcc  
nios2                 randconfig-002-20240209   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20240208   gcc  
parisc                randconfig-001-20240209   gcc  
parisc                randconfig-002-20240208   gcc  
parisc                randconfig-002-20240209   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc                        fsp2_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc               randconfig-002-20240208   gcc  
powerpc               randconfig-003-20240208   gcc  
powerpc               randconfig-003-20240209   gcc  
powerpc                     tqm8560_defconfig   gcc  
powerpc64             randconfig-001-20240208   gcc  
powerpc64             randconfig-002-20240208   gcc  
powerpc64             randconfig-003-20240208   gcc  
riscv                            alldefconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240208   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240209   gcc  
s390                  randconfig-002-20240208   gcc  
s390                  randconfig-002-20240209   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                    randconfig-001-20240208   gcc  
sh                    randconfig-001-20240209   gcc  
sh                    randconfig-002-20240208   gcc  
sh                    randconfig-002-20240209   gcc  
sh                          rsk7201_defconfig   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240208   gcc  
sparc64               randconfig-001-20240209   gcc  
sparc64               randconfig-002-20240208   gcc  
sparc64               randconfig-002-20240209   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240209   gcc  
um                    randconfig-002-20240208   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64       buildonly-randconfig-001-20240209   gcc  
x86_64       buildonly-randconfig-002-20240209   gcc  
x86_64       buildonly-randconfig-003-20240208   gcc  
x86_64       buildonly-randconfig-003-20240209   clang
x86_64       buildonly-randconfig-004-20240209   gcc  
x86_64       buildonly-randconfig-005-20240209   clang
x86_64       buildonly-randconfig-006-20240209   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240208   gcc  
x86_64                randconfig-001-20240209   clang
x86_64                randconfig-002-20240208   gcc  
x86_64                randconfig-002-20240209   gcc  
x86_64                randconfig-003-20240208   gcc  
x86_64                randconfig-003-20240209   gcc  
x86_64                randconfig-004-20240209   clang
x86_64                randconfig-005-20240208   gcc  
x86_64                randconfig-005-20240209   gcc  
x86_64                randconfig-006-20240208   gcc  
x86_64                randconfig-006-20240209   gcc  
x86_64                randconfig-011-20240208   gcc  
x86_64                randconfig-011-20240209   clang
x86_64                randconfig-012-20240208   gcc  
x86_64                randconfig-012-20240209   clang
x86_64                randconfig-013-20240209   gcc  
x86_64                randconfig-014-20240209   clang
x86_64                randconfig-015-20240209   gcc  
x86_64                randconfig-016-20240209   clang
x86_64                randconfig-071-20240209   gcc  
x86_64                randconfig-072-20240209   clang
x86_64                randconfig-073-20240208   gcc  
x86_64                randconfig-073-20240209   clang
x86_64                randconfig-074-20240209   gcc  
x86_64                randconfig-075-20240208   gcc  
x86_64                randconfig-075-20240209   gcc  
x86_64                randconfig-076-20240208   gcc  
x86_64                randconfig-076-20240209   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                randconfig-001-20240208   gcc  
xtensa                randconfig-001-20240209   gcc  
xtensa                randconfig-002-20240208   gcc  
xtensa                randconfig-002-20240209   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
