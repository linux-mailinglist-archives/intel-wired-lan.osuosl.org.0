Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3766F869909
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 15:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B42BE40BEB;
	Tue, 27 Feb 2024 14:51:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sRkHrs_cv2W; Tue, 27 Feb 2024 14:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D0DB40469
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709045469;
	bh=38Xz7udXv0y23b3I7zGl7ADE7LMR54R/PxPut9R7g9U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SCVo3LxQ5jhWnRAXte7ZZ6Rfqkgf6S4cJkmN3K188uuYydGoYtLDC5pdirtZxh2BF
	 PeAHI3a6pv9qMF98nXIOGaIbIvrxIfetqu64hTBeUjCdkhDMHHbBd9PyWK7e8kqvGb
	 hivYOoPh6a9Hfosg3LOMf4j7rfrstOfcfqhH+64S1IisnuFtVCS2bAC4z6ske/5KmZ
	 aHQUUy2h+p/xtefQ24pXXAj/TGG6LV2rImYVgb+bd5DkDOI0V8vLN7/KnnP8m0pQIj
	 IyKilBCZZM9rxwDjjptZ1aINm0kLmjffTPhxfgisfDl1jhpIG7AVD3+3JdI2FotcI4
	 1Xc1bEbCpe6Jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D0DB40469;
	Tue, 27 Feb 2024 14:51:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F61E1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 14:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A8A960BA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 14:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KQ3d1786rAE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 14:51:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1EA5F60662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EA5F60662
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EA5F60662
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 14:51:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14025563"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14025563"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 06:51:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7211579"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 27 Feb 2024 06:51:02 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1reynM-000BHb-07
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Feb 2024 14:51:00 +0000
Date: Tue, 27 Feb 2024 22:41:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402272253.WY97th9Y-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709045465; x=1740581465;
 h=date:from:to:subject:message-id;
 bh=odO+pMTa7abzrFf68gCQKrgdCDYmaHu7RZ1OQnxVnZA=;
 b=Qbtocz+xNIPXsj9GUFbvSyPPrbLNRaw68LnweRZv6uK/m0FxinxoYCrE
 VpWcBdnHiIjiLQkSWQUNuFaJuliVucQ8uoBzsifxr0qy0KFjguVmLe/PD
 pZAWEyyoS+LIuhoNKAa3TlgEY952+GiirdoYohtZ9LA9Xgi6OQ7IdtPrc
 aFI1Dt1Yh/cyKTutI6EhOkZRyB/AVyyMzPVSz5l8384eQF0famE//RKJv
 Fi09Gv4he1xnsdBRXPVoyUtpvYiodxpbBu9dFigdABcWqZ+rWumIdw58r
 e2bjVxBd1trT4iKq8Y8QHlKWZQtiZnAVC9iv/c3+T8FngrHUtW34XwRs8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qbtocz+x
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ee912e70ea165a10bc7b954743d3a258805332b7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: ee912e70ea165a10bc7b954743d3a258805332b7  ice: reconfig host after changing MSI-X on VF

elapsed time: 935m

configs tested: 172
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240227   gcc  
arc                   randconfig-002-20240227   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        keystone_defconfig   gcc  
arm                   randconfig-001-20240227   gcc  
arm                   randconfig-002-20240227   gcc  
arm                   randconfig-003-20240227   gcc  
arm                   randconfig-004-20240227   gcc  
arm                         socfpga_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-002-20240227   gcc  
arm64                 randconfig-003-20240227   gcc  
arm64                 randconfig-004-20240227   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240227   gcc  
csky                  randconfig-002-20240227   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240227   gcc  
i386         buildonly-randconfig-002-20240227   gcc  
i386         buildonly-randconfig-003-20240227   clang
i386         buildonly-randconfig-004-20240227   gcc  
i386         buildonly-randconfig-005-20240227   gcc  
i386         buildonly-randconfig-006-20240227   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240227   gcc  
i386                  randconfig-002-20240227   gcc  
i386                  randconfig-003-20240227   clang
i386                  randconfig-004-20240227   clang
i386                  randconfig-005-20240227   clang
i386                  randconfig-006-20240227   gcc  
i386                  randconfig-011-20240227   clang
i386                  randconfig-012-20240227   clang
i386                  randconfig-013-20240227   clang
i386                  randconfig-014-20240227   clang
i386                  randconfig-015-20240227   clang
i386                  randconfig-016-20240227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240227   gcc  
loongarch             randconfig-002-20240227   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       alldefconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                       lemote2f_defconfig   gcc  
mips                malta_qemu_32r6_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240227   gcc  
nios2                 randconfig-002-20240227   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240227   gcc  
parisc                randconfig-002-20240227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        cell_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc               randconfig-002-20240227   gcc  
powerpc                      walnut_defconfig   gcc  
powerpc64             randconfig-002-20240227   gcc  
powerpc64             randconfig-003-20240227   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240227   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240227   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20240227   gcc  
sh                    randconfig-002-20240227   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                            titan_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240227   gcc  
sparc64               randconfig-002-20240227   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240227   clang
x86_64       buildonly-randconfig-003-20240227   clang
x86_64       buildonly-randconfig-004-20240227   clang
x86_64       buildonly-randconfig-005-20240227   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240227   clang
x86_64                randconfig-002-20240227   clang
x86_64                randconfig-013-20240227   clang
x86_64                randconfig-072-20240227   clang
x86_64                randconfig-074-20240227   clang
x86_64                randconfig-075-20240227   clang
x86_64                randconfig-076-20240227   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                randconfig-001-20240227   gcc  
xtensa                randconfig-002-20240227   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
