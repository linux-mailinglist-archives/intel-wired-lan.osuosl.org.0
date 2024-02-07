Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B995A84D688
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 00:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 597D74284C;
	Wed,  7 Feb 2024 23:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHFZzLHhe5zC; Wed,  7 Feb 2024 23:21:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A988342724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707348082;
	bh=zssMSmQOt7ginUmUh1dOI+azKW2zTjSe0lNKjoC9OUA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DnIVstihZ/DmJriuVEVxASbSNp1ekKq6vUQHaapnFGJFmqLAkcO8fPX6ge+vBriLj
	 EfzYxvyTJKLb9llJdPJpZcUta6YFJcGX9Bnv5kC0JkkDWO+nuF+1oiqBjm+ghINI1g
	 Wh0sNUaOHGFOsWqamriD884eSVxCrLr3wrRCn/bjHpfSWO2lk4WxdgHeXn8DVjf3VE
	 NwhHK7flyFh4VBFu8KXVlfb34l2jzZAXVHVJUdWroKSIvTEojNLjKlKn/OsoXv80Sa
	 4D3nm4okbqNJRCBcyzTEtfPINxpl2zCtHb0kJnUxYEgFueMffiO0u/4yC/zflFh8g5
	 Z110U3IAxo4uw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A988342724;
	Wed,  7 Feb 2024 23:21:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EEF11BF82C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87D7760C15
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Pv41V-jBI7X for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 23:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65E2E60A5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65E2E60A5C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65E2E60A5C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:21:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="26545628"
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="26545628"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 15:21:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="824656460"
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="824656460"
Received: from lkp-server01.sh.intel.com (HELO 01f0647817ea) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 07 Feb 2024 15:21:16 -0800
Received: from kbuild by 01f0647817ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rXrEA-000386-1q
 for intel-wired-lan@lists.osuosl.org; Wed, 07 Feb 2024 23:21:14 +0000
Date: Thu, 08 Feb 2024 07:20:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402080728.RORGdogH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707348079; x=1738884079;
 h=date:from:to:subject:message-id;
 bh=bhYoe5ukK6+LJmx3m4z0dgxsor1Seirynict2q6QK8M=;
 b=IYnbcrDennpuYWVZT/iDyprftyDLz3hhy+NHj/N93o8hQP7zrigdFIoK
 T/GCTG6YbN3uTuCi/KS7dScmZuyV30HQFQlgklHD2nuW5MPRymvoTrAZn
 5uu9EWgAPpDUFQY7n+th7K1ZJqoCMhU2ob9sog+UELTbrCxXcPspe6cFe
 F8omhrrAMGonCGYw9VADv0B4/iLHcTpnVEggvQE8OaqkgT0bi7CF4GKJd
 il1QB5hTaR+xHcBgiYM11OnNg47rHtRIR5yRTNmx4M22h1og2e/lKJaqr
 HQfr8JLu5PgteTmn4TY8h4sIoQ6+j5OvIUX8OSM7TzmDjWJi8gNMrpPXG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IYnbcrDe
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 ef3dd596504777266619252efff67149aa921ed3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: ef3dd596504777266619252efff67149aa921ed3  ixgbe: Clarify the values of the returning status

elapsed time: 1477m

configs tested: 246
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240207   gcc  
arc                   randconfig-001-20240208   gcc  
arc                   randconfig-002-20240207   gcc  
arc                   randconfig-002-20240208   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   clang
arm                        keystone_defconfig   gcc  
arm                        neponset_defconfig   gcc  
arm                            qcom_defconfig   clang
arm                   randconfig-001-20240208   gcc  
arm                   randconfig-002-20240208   gcc  
arm                   randconfig-003-20240208   gcc  
arm                   randconfig-004-20240207   gcc  
arm                        shmobile_defconfig   gcc  
arm                        spear6xx_defconfig   clang
arm                           tegra_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-004-20240208   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240207   gcc  
csky                  randconfig-001-20240208   gcc  
csky                  randconfig-002-20240207   gcc  
csky                  randconfig-002-20240208   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240208   gcc  
i386         buildonly-randconfig-002-20240208   clang
i386         buildonly-randconfig-003-20240208   gcc  
i386         buildonly-randconfig-004-20240208   gcc  
i386         buildonly-randconfig-005-20240208   gcc  
i386         buildonly-randconfig-006-20240208   gcc  
i386                  randconfig-001-20240207   gcc  
i386                  randconfig-001-20240208   gcc  
i386                  randconfig-002-20240208   gcc  
i386                  randconfig-003-20240207   gcc  
i386                  randconfig-003-20240208   gcc  
i386                  randconfig-004-20240207   gcc  
i386                  randconfig-004-20240208   clang
i386                  randconfig-005-20240207   gcc  
i386                  randconfig-005-20240208   gcc  
i386                  randconfig-006-20240208   gcc  
i386                  randconfig-011-20240207   gcc  
i386                  randconfig-011-20240208   clang
i386                  randconfig-012-20240207   gcc  
i386                  randconfig-012-20240208   clang
i386                  randconfig-013-20240207   gcc  
i386                  randconfig-013-20240208   clang
i386                  randconfig-014-20240207   gcc  
i386                  randconfig-014-20240208   clang
i386                  randconfig-015-20240207   gcc  
i386                  randconfig-015-20240208   clang
i386                  randconfig-016-20240207   gcc  
i386                  randconfig-016-20240208   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240207   gcc  
loongarch             randconfig-001-20240208   gcc  
loongarch             randconfig-002-20240207   gcc  
loongarch             randconfig-002-20240208   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                          multi_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   clang
mips                        bcm63xx_defconfig   clang
mips                         db1xxx_defconfig   clang
mips                           gcw0_defconfig   clang
mips                      loongson3_defconfig   gcc  
mips                      pic32mzda_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240207   gcc  
nios2                 randconfig-001-20240208   gcc  
nios2                 randconfig-002-20240207   gcc  
nios2                 randconfig-002-20240208   gcc  
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
parisc                randconfig-001-20240207   gcc  
parisc                randconfig-001-20240208   gcc  
parisc                randconfig-002-20240207   gcc  
parisc                randconfig-002-20240208   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                   bluestone_defconfig   clang
powerpc                      chrp32_defconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                     kilauea_defconfig   clang
powerpc                      mgcoge_defconfig   clang
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc                     mpc83xx_defconfig   clang
powerpc                      ppc40x_defconfig   clang
powerpc               randconfig-002-20240208   gcc  
powerpc               randconfig-003-20240207   gcc  
powerpc               randconfig-003-20240208   gcc  
powerpc                     tqm5200_defconfig   gcc  
powerpc                     tqm8560_defconfig   gcc  
powerpc64             randconfig-001-20240208   gcc  
powerpc64             randconfig-002-20240207   gcc  
powerpc64             randconfig-002-20240208   gcc  
powerpc64             randconfig-003-20240207   gcc  
powerpc64             randconfig-003-20240208   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                    nommu_virt_defconfig   clang
riscv                 randconfig-001-20240208   gcc  
riscv                 randconfig-002-20240207   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240207   gcc  
s390                  randconfig-002-20240207   gcc  
s390                  randconfig-002-20240208   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                    randconfig-001-20240207   gcc  
sh                    randconfig-001-20240208   gcc  
sh                    randconfig-002-20240207   gcc  
sh                    randconfig-002-20240208   gcc  
sh                           se7343_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240207   gcc  
sparc64               randconfig-001-20240208   gcc  
sparc64               randconfig-002-20240207   gcc  
sparc64               randconfig-002-20240208   gcc  
um                               alldefconfig   clang
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-002-20240207   gcc  
um                    randconfig-002-20240208   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64       buildonly-randconfig-001-20240207   clang
x86_64       buildonly-randconfig-002-20240207   clang
x86_64       buildonly-randconfig-003-20240207   gcc  
x86_64       buildonly-randconfig-003-20240208   gcc  
x86_64       buildonly-randconfig-004-20240207   clang
x86_64       buildonly-randconfig-005-20240207   clang
x86_64       buildonly-randconfig-006-20240207   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240207   clang
x86_64                randconfig-001-20240208   gcc  
x86_64                randconfig-002-20240207   gcc  
x86_64                randconfig-002-20240208   gcc  
x86_64                randconfig-003-20240207   gcc  
x86_64                randconfig-003-20240208   gcc  
x86_64                randconfig-004-20240207   gcc  
x86_64                randconfig-005-20240207   clang
x86_64                randconfig-005-20240208   gcc  
x86_64                randconfig-006-20240207   clang
x86_64                randconfig-006-20240208   gcc  
x86_64                randconfig-011-20240207   clang
x86_64                randconfig-011-20240208   gcc  
x86_64                randconfig-012-20240207   gcc  
x86_64                randconfig-012-20240208   gcc  
x86_64                randconfig-013-20240207   clang
x86_64                randconfig-014-20240207   clang
x86_64                randconfig-015-20240207   gcc  
x86_64                randconfig-016-20240207   gcc  
x86_64                randconfig-071-20240207   gcc  
x86_64                randconfig-072-20240207   clang
x86_64                randconfig-073-20240207   clang
x86_64                randconfig-073-20240208   gcc  
x86_64                randconfig-074-20240207   gcc  
x86_64                randconfig-075-20240207   gcc  
x86_64                randconfig-075-20240208   gcc  
x86_64                randconfig-076-20240207   clang
x86_64                randconfig-076-20240208   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                randconfig-001-20240207   gcc  
xtensa                randconfig-001-20240208   gcc  
xtensa                randconfig-002-20240207   gcc  
xtensa                randconfig-002-20240208   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
