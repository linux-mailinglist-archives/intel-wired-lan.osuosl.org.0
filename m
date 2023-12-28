Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F3681FA5E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Dec 2023 18:33:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4F9C40585;
	Thu, 28 Dec 2023 17:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4F9C40585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703784813;
	bh=w/WbwijqP061POwsYt7REDpZzgcqdnFeHZ7U61uIKfw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9EVhTO6nk9e+KVhFBMpsLnULdGrTuYCrQyk5Y0v87L5DyzjJS04doxt+N9Pwf49ar
	 3S5kUr/iKTPsABjaFAg9qVeKANF7eDDFjBpaNnUmPKEIrlX42XV7MjVg2eFqR/aw3i
	 CAbnWWDB3BM8Et7pALRjT7aEC4kK4wuDnEQzBv0YceSdIpEXGq6k5ZdcGrtr0jBbgm
	 iiX3/fyuwC2OHj59SzP+5PUh4pGvB2YOIvrznGPB3k7Pn3LU1S6Wk3RdVPk6wiUKUZ
	 O92bwgP6ug5iCzDsl3Wa4sdLVjDkiia+hlNA7YVCETZZUpSZnnCZxIOFZy92Mfn8P0
	 9tLa3+NdPh8Mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id exHJnbVQCJ0L; Thu, 28 Dec 2023 17:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BD1F40533;
	Thu, 28 Dec 2023 17:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BD1F40533
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30F211BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 17:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16D8F60BC9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 17:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16D8F60BC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9K1foDqLkuSW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Dec 2023 17:33:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B89560EF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Dec 2023 17:33:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B89560EF3
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="396296129"
X-IronPort-AV: E=Sophos;i="6.04,312,1695711600"; d="scan'208";a="396296129"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2023 09:33:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="951859040"
X-IronPort-AV: E=Sophos;i="6.04,312,1695711600"; d="scan'208";a="951859040"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 28 Dec 2023 09:33:06 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rIuFi-000GgX-0f
 for intel-wired-lan@lists.osuosl.org; Thu, 28 Dec 2023 17:33:02 +0000
Date: Fri, 29 Dec 2023 01:31:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312290145.cT1c93fs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703784801; x=1735320801;
 h=date:from:to:subject:message-id;
 bh=cb+gwe0U0+lAyR0MgGLNAu6GRGK5Nn72ivgG0xwoiPA=;
 b=fn8JFSYnsaUL33CvzKqGX8RaG3vcUUQ58xfOMsgoMl1jLBcHsOh1NvAG
 FVRoc9jWHBIuPwmelKxN/TTQkL63Ip49XnQKDaj1j1b7ws6typDANfwCG
 ij9njhjw9sjZUltuc/Ops4wffwAiyYyxHpDApl1FML0mOWmW33w4TIOZn
 EL0BS0j3+nddLRccHVAvnNT7ycSzH6rMz1q1F+4mnYfYB0MUf/ZKOsnVk
 07tuOUlZ/HjSSdUcuragnXJn/SFlr8cTjH2zewE04+4L0b/cMfmd89R7a
 XE+W8tzuNzQibm+MyXUhEH/Ori11xi8sE+ZKgsG4WHz2xBeY2wUCoHAf2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fn8JFSYn
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c50d8ed15d37ac5b4cd45a621e090a76c796adc6
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
branch HEAD: c50d8ed15d37ac5b4cd45a621e090a76c796adc6  ice: fix Get link status data length

elapsed time: 1448m

configs tested: 200
configs skipped: 2

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
arc                                 defconfig   gcc  
arc                   randconfig-001-20231228   gcc  
arc                   randconfig-002-20231228   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   clang
arm                        keystone_defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                        mvebu_v7_defconfig   gcc  
arm                   randconfig-001-20231228   gcc  
arm                   randconfig-002-20231228   gcc  
arm                   randconfig-003-20231228   gcc  
arm                   randconfig-004-20231228   gcc  
arm                        realview_defconfig   gcc  
arm                        spear6xx_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231228   gcc  
arm64                 randconfig-002-20231228   gcc  
arm64                 randconfig-003-20231228   gcc  
arm64                 randconfig-004-20231228   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231228   gcc  
csky                  randconfig-002-20231228   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231228   clang
hexagon               randconfig-002-20231228   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231228   gcc  
i386         buildonly-randconfig-002-20231228   gcc  
i386         buildonly-randconfig-003-20231228   gcc  
i386         buildonly-randconfig-004-20231228   gcc  
i386         buildonly-randconfig-005-20231228   gcc  
i386         buildonly-randconfig-006-20231228   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231228   gcc  
i386                  randconfig-002-20231228   gcc  
i386                  randconfig-003-20231228   gcc  
i386                  randconfig-004-20231228   gcc  
i386                  randconfig-005-20231228   gcc  
i386                  randconfig-006-20231228   gcc  
i386                  randconfig-011-20231228   clang
i386                  randconfig-012-20231228   clang
i386                  randconfig-013-20231228   clang
i386                  randconfig-014-20231228   clang
i386                  randconfig-015-20231228   clang
i386                  randconfig-016-20231228   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231228   gcc  
loongarch             randconfig-002-20231228   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
mips                        vocore2_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231228   gcc  
nios2                 randconfig-002-20231228   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           alldefconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20231228   gcc  
parisc                randconfig-002-20231228   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      chrp32_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc               randconfig-001-20231228   gcc  
powerpc               randconfig-002-20231228   gcc  
powerpc               randconfig-003-20231228   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                     tqm8540_defconfig   clang
powerpc64             randconfig-001-20231228   gcc  
powerpc64             randconfig-002-20231228   gcc  
powerpc64             randconfig-003-20231228   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231228   gcc  
riscv                 randconfig-002-20231228   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231228   clang
s390                  randconfig-002-20231228   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                    randconfig-001-20231228   gcc  
sh                    randconfig-002-20231228   gcc  
sh                           se7721_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            alldefconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231228   gcc  
sparc64               randconfig-002-20231228   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231228   gcc  
um                    randconfig-002-20231228   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231228   gcc  
x86_64       buildonly-randconfig-002-20231228   gcc  
x86_64       buildonly-randconfig-003-20231228   gcc  
x86_64       buildonly-randconfig-004-20231228   gcc  
x86_64       buildonly-randconfig-005-20231228   gcc  
x86_64       buildonly-randconfig-006-20231228   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231228   clang
x86_64                randconfig-002-20231228   clang
x86_64                randconfig-003-20231228   clang
x86_64                randconfig-004-20231228   clang
x86_64                randconfig-005-20231228   clang
x86_64                randconfig-006-20231228   clang
x86_64                randconfig-011-20231228   gcc  
x86_64                randconfig-012-20231228   gcc  
x86_64                randconfig-013-20231228   gcc  
x86_64                randconfig-014-20231228   gcc  
x86_64                randconfig-015-20231228   gcc  
x86_64                randconfig-016-20231228   gcc  
x86_64                randconfig-071-20231228   gcc  
x86_64                randconfig-072-20231228   gcc  
x86_64                randconfig-073-20231228   gcc  
x86_64                randconfig-074-20231228   gcc  
x86_64                randconfig-075-20231228   gcc  
x86_64                randconfig-076-20231228   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                randconfig-001-20231228   gcc  
xtensa                randconfig-002-20231228   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
