Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB54AD1B875
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 23:04:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 123A260DCB;
	Tue, 13 Jan 2026 22:04:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZd61JnsIy0t; Tue, 13 Jan 2026 22:04:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14B2B60DCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768341895;
	bh=wfMd+i+sGu4WclTrSWQI58Te4XAwXuGNXLezkNpZCKM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s2ZbYeoHlf8UjWCieAQpNy1Ijr4W4MNZ3EmByb9LdDWq+5AG3s9aW7bkPFo62vOlQ
	 8wJk0kKrw3mZsAt4kWDBExPQgO+UE9rt90/I2c8UoYIA2pyzzsgMSuxj5gFW9TOHzC
	 IANusKnyajIdPaS/xhkgIx7cy1vNI+r2a62dUQPMQU0/VwPQge5B/XlCFBiYJzckER
	 WHNcVKQ+1SHnttdE3CvP/6IRm2SpU41SZoyZ/anxnmhVm5SbtwBkGsGurHLhLiMjNC
	 ZHRCpGOHfTgZHZ7nrGXpYQsSKmsbYNUcSYz8j6ZuehRkr059dVfJUTYM3rLLxgG/Rg
	 d8BQoYrpRHiJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14B2B60DCD;
	Tue, 13 Jan 2026 22:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B2E15231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 22:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 985FE81D5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 22:04:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vV75LLz0Qf4H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 22:04:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 505B381B83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 505B381B83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 505B381B83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 22:04:50 +0000 (UTC)
X-CSE-ConnectionGUID: mTZTsliBSfaMFcw1eOHGKw==
X-CSE-MsgGUID: 9IibCPoEQZyKNpowflpyQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69559004"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="69559004"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 14:04:51 -0800
X-CSE-ConnectionGUID: pZ/i9UBcRjCtWTPdd3MkHA==
X-CSE-MsgGUID: 71aWr+SORnOFg5qG995ecQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="204388928"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 13 Jan 2026 14:04:49 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vfmVK-00000000FR6-3Wmr;
 Tue, 13 Jan 2026 22:04:46 +0000
Date: Wed, 14 Jan 2026 06:04:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601140603.ZplDOI2n-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768341892; x=1799877892;
 h=date:from:to:subject:message-id;
 bh=NZt6W8m1xm5ealAmcyaUi+IBKDE45xgye2mSU4sp/ds=;
 b=Yfs9Nw5TZ9fgQsUxebSR031GM5jqy/AMctt2JdgppZQFmmjlOl8yXnxW
 wSpP5WtJRqvBP0nzCk7fobQx6PH/1uwRX1Wd8jfPeFW89zXKMvzoqoDH5
 eFPIgjbC/B4gjFQjtAnq3tkAYoiyMlcuRA0sTtNpE3rSW0bS6lg117wpc
 H4AP14yAm+P9PT1s5Zyu/1wH5FQC4EA9zrj5tOSO7x5r0OEsdObGks0wH
 SWxlO+MQfOSqgm4PM2bWmAF2iiOS0yMfJfXX1lxS7zIdwwLNPdDtPFOyL
 jlrPQEv2dF4/fEX0dgwis0ekf710WKQuxDzAcLgg6GhEKkDpHZ7RmFaHd
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yfs9Nw5T
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 ffe4ccd359d006eba559cb1a3c6113144b7fb38c
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: ffe4ccd359d006eba559cb1a3c6113144b7fb38c  net: add net.core.qdisc_max_burst

elapsed time: 756m

configs tested: 300
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                          axs101_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260113    clang-22
arc                   randconfig-001-20260114    gcc-10.5.0
arc                   randconfig-002-20260113    clang-22
arc                   randconfig-002-20260114    gcc-10.5.0
arc                           tb10x_defconfig    gcc-15.2.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                        clps711x_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            hisi_defconfig    gcc-15.2.0
arm                       imx_v6_v7_defconfig    gcc-15.2.0
arm                         orion5x_defconfig    gcc-15.2.0
arm                          pxa168_defconfig    gcc-15.2.0
arm                   randconfig-001-20260113    clang-22
arm                   randconfig-001-20260114    gcc-10.5.0
arm                   randconfig-002-20260113    clang-22
arm                   randconfig-002-20260114    gcc-10.5.0
arm                   randconfig-003-20260113    clang-22
arm                   randconfig-003-20260114    gcc-10.5.0
arm                   randconfig-004-20260113    clang-22
arm                   randconfig-004-20260114    gcc-10.5.0
arm                        spear3xx_defconfig    gcc-15.2.0
arm                           spitz_defconfig    gcc-15.2.0
arm                           stm32_defconfig    clang-22
arm                           tegra_defconfig    gcc-15.2.0
arm                         wpcm450_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260113    clang-22
arm64                 randconfig-001-20260114    clang-22
arm64                 randconfig-002-20260113    clang-22
arm64                 randconfig-002-20260114    clang-22
arm64                 randconfig-003-20260113    clang-22
arm64                 randconfig-003-20260114    clang-22
arm64                 randconfig-004-20260113    clang-22
arm64                 randconfig-004-20260114    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260113    clang-22
csky                  randconfig-001-20260114    clang-22
csky                  randconfig-002-20260113    clang-22
csky                  randconfig-002-20260114    clang-22
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260113    clang-22
hexagon               randconfig-001-20260114    clang-22
hexagon               randconfig-002-20260113    clang-22
hexagon               randconfig-002-20260114    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260113    clang-20
i386        buildonly-randconfig-001-20260114    gcc-14
i386        buildonly-randconfig-002-20260113    clang-20
i386        buildonly-randconfig-002-20260114    gcc-14
i386        buildonly-randconfig-003-20260113    clang-20
i386        buildonly-randconfig-003-20260114    gcc-14
i386        buildonly-randconfig-004-20260113    clang-20
i386        buildonly-randconfig-004-20260114    gcc-14
i386        buildonly-randconfig-005-20260113    clang-20
i386        buildonly-randconfig-005-20260114    gcc-14
i386        buildonly-randconfig-006-20260113    clang-20
i386        buildonly-randconfig-006-20260114    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260113    clang-20
i386                  randconfig-001-20260114    gcc-14
i386                  randconfig-002-20260113    clang-20
i386                  randconfig-002-20260114    gcc-14
i386                  randconfig-003-20260113    clang-20
i386                  randconfig-003-20260114    gcc-14
i386                  randconfig-004-20260113    clang-20
i386                  randconfig-004-20260114    gcc-14
i386                  randconfig-005-20260113    clang-20
i386                  randconfig-005-20260114    gcc-14
i386                  randconfig-006-20260113    clang-20
i386                  randconfig-006-20260114    gcc-14
i386                  randconfig-007-20260113    clang-20
i386                  randconfig-007-20260114    gcc-14
i386                  randconfig-011-20260113    gcc-14
i386                  randconfig-011-20260114    gcc-14
i386                  randconfig-012-20260113    gcc-14
i386                  randconfig-012-20260114    gcc-14
i386                  randconfig-013-20260113    gcc-14
i386                  randconfig-013-20260114    gcc-14
i386                  randconfig-014-20260113    gcc-14
i386                  randconfig-014-20260114    gcc-14
i386                  randconfig-015-20260113    gcc-14
i386                  randconfig-015-20260114    gcc-14
i386                  randconfig-016-20260113    gcc-14
i386                  randconfig-016-20260114    gcc-14
i386                  randconfig-017-20260113    gcc-14
i386                  randconfig-017-20260114    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260113    clang-22
loongarch             randconfig-001-20260114    clang-22
loongarch             randconfig-002-20260113    clang-22
loongarch             randconfig-002-20260114    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
m68k                          multi_defconfig    gcc-15.2.0
m68k                        mvme147_defconfig    gcc-15.2.0
m68k                           sun3_defconfig    gcc-15.2.0
microblaze                       alldefconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                         bigsur_defconfig    gcc-15.2.0
mips                       bmips_be_defconfig    gcc-15.2.0
mips                  cavium_octeon_defconfig    gcc-15.2.0
mips                          eyeq6_defconfig    gcc-15.2.0
mips                           gcw0_defconfig    gcc-15.2.0
mips                           ip30_defconfig    gcc-15.2.0
mips                    maltaup_xpa_defconfig    gcc-15.2.0
mips                           rs90_defconfig    gcc-15.2.0
nios2                         10m50_defconfig    gcc-15.2.0
nios2                         3c120_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260113    clang-22
nios2                 randconfig-001-20260114    clang-22
nios2                 randconfig-002-20260113    clang-22
nios2                 randconfig-002-20260114    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
openrisc                  or1klitex_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260113    clang-19
parisc                randconfig-001-20260114    gcc-14.3.0
parisc                randconfig-002-20260113    clang-19
parisc                randconfig-002-20260114    gcc-14.3.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                      chrp32_defconfig    gcc-15.2.0
powerpc                   motionpro_defconfig    gcc-15.2.0
powerpc                  mpc866_ads_defconfig    clang-22
powerpc                  mpc885_ads_defconfig    gcc-15.2.0
powerpc                     powernv_defconfig    clang-22
powerpc               randconfig-001-20260113    clang-19
powerpc               randconfig-001-20260114    gcc-14.3.0
powerpc               randconfig-002-20260113    clang-19
powerpc               randconfig-002-20260114    gcc-14.3.0
powerpc                    sam440ep_defconfig    clang-22
powerpc                     tqm8555_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260113    clang-19
powerpc64             randconfig-001-20260114    gcc-14.3.0
powerpc64             randconfig-002-20260113    clang-19
powerpc64             randconfig-002-20260114    gcc-14.3.0
riscv                            alldefconfig    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv             nommu_k210_sdcard_defconfig    clang-22
riscv                    nommu_virt_defconfig    gcc-15.2.0
riscv                 randconfig-001-20260113    gcc-15.2.0
riscv                 randconfig-001-20260114    gcc-15.2.0
riscv                 randconfig-002-20260113    gcc-15.2.0
riscv                 randconfig-002-20260114    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                          debug_defconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260113    gcc-15.2.0
s390                  randconfig-001-20260114    gcc-15.2.0
s390                  randconfig-002-20260113    gcc-15.2.0
s390                  randconfig-002-20260114    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                          kfr2r09_defconfig    gcc-15.2.0
sh                          landisk_defconfig    gcc-15.2.0
sh                    randconfig-001-20260113    gcc-15.2.0
sh                    randconfig-001-20260114    gcc-15.2.0
sh                    randconfig-002-20260113    gcc-15.2.0
sh                    randconfig-002-20260114    gcc-15.2.0
sh                      rts7751r2d1_defconfig    gcc-15.2.0
sh                           se7619_defconfig    clang-22
sh                           se7724_defconfig    gcc-15.2.0
sh                           se7751_defconfig    gcc-15.2.0
sh                     sh7710voipgw_defconfig    gcc-15.2.0
sparc                            alldefconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260113    gcc-14.3.0
sparc                 randconfig-001-20260114    clang-20
sparc                 randconfig-002-20260113    gcc-14.3.0
sparc                 randconfig-002-20260114    clang-20
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260113    gcc-14.3.0
sparc64               randconfig-001-20260114    clang-20
sparc64               randconfig-002-20260113    gcc-14.3.0
sparc64               randconfig-002-20260114    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260113    gcc-14.3.0
um                    randconfig-001-20260114    clang-20
um                    randconfig-002-20260113    gcc-14.3.0
um                    randconfig-002-20260114    clang-20
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260113    clang-20
x86_64      buildonly-randconfig-001-20260114    clang-20
x86_64      buildonly-randconfig-002-20260113    clang-20
x86_64      buildonly-randconfig-002-20260114    clang-20
x86_64      buildonly-randconfig-003-20260113    clang-20
x86_64      buildonly-randconfig-003-20260114    clang-20
x86_64      buildonly-randconfig-004-20260113    clang-20
x86_64      buildonly-randconfig-004-20260114    clang-20
x86_64      buildonly-randconfig-005-20260113    clang-20
x86_64      buildonly-randconfig-005-20260114    clang-20
x86_64      buildonly-randconfig-006-20260113    clang-20
x86_64      buildonly-randconfig-006-20260114    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260113    gcc-14
x86_64                randconfig-001-20260114    gcc-14
x86_64                randconfig-002-20260113    gcc-14
x86_64                randconfig-002-20260114    gcc-14
x86_64                randconfig-003-20260113    gcc-14
x86_64                randconfig-003-20260114    gcc-14
x86_64                randconfig-004-20260113    gcc-14
x86_64                randconfig-004-20260114    gcc-14
x86_64                randconfig-005-20260113    gcc-14
x86_64                randconfig-005-20260114    gcc-14
x86_64                randconfig-006-20260113    gcc-14
x86_64                randconfig-006-20260114    gcc-14
x86_64                randconfig-011-20260113    clang-20
x86_64                randconfig-011-20260114    gcc-14
x86_64                randconfig-012-20260113    clang-20
x86_64                randconfig-012-20260114    gcc-14
x86_64                randconfig-013-20260113    clang-20
x86_64                randconfig-013-20260114    gcc-14
x86_64                randconfig-014-20260113    clang-20
x86_64                randconfig-014-20260114    gcc-14
x86_64                randconfig-015-20260113    clang-20
x86_64                randconfig-015-20260114    gcc-14
x86_64                randconfig-016-20260113    clang-20
x86_64                randconfig-016-20260114    gcc-14
x86_64                randconfig-071-20260113    clang-20
x86_64                randconfig-071-20260114    clang-20
x86_64                randconfig-072-20260113    clang-20
x86_64                randconfig-072-20260114    clang-20
x86_64                randconfig-073-20260113    clang-20
x86_64                randconfig-073-20260114    clang-20
x86_64                randconfig-074-20260113    clang-20
x86_64                randconfig-074-20260114    clang-20
x86_64                randconfig-075-20260113    clang-20
x86_64                randconfig-075-20260114    clang-20
x86_64                randconfig-076-20260113    clang-20
x86_64                randconfig-076-20260114    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    gcc-15.2.0
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                  audio_kc705_defconfig    clang-22
xtensa                  audio_kc705_defconfig    gcc-15.2.0
xtensa                  nommu_kc705_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260113    gcc-14.3.0
xtensa                randconfig-001-20260114    clang-20
xtensa                randconfig-002-20260113    gcc-14.3.0
xtensa                randconfig-002-20260114    clang-20
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
