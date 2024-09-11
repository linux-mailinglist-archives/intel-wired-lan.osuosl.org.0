Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81029975409
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 15:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8B0340DFD;
	Wed, 11 Sep 2024 13:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rLey7tz3OTGm; Wed, 11 Sep 2024 13:35:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 440A440DCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726061705;
	bh=z3XzpiyEVyYofzU9n5KmtFGlaxEAJK+pmftLnnVdVTI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iUdWO0g3X/DDLyqpYgqr4TG/Xy765ZnX55ILbzFCi35yW+aiUZDpieqWzwq9eZXNe
	 eolCKORBMYOiXrNuECpyKMvqDHCxrx8QMq205XngTwYmKp2gMEaQDmoKdamnKv6r2f
	 9Phdc4QBc7fOrjcpm3Tzo7vDkxWTuE2D84dW4yEfA9MVKP6e1x+w/0dRAe/6Jb9YQ4
	 WxHPeecEZZnbAluIw1+1pDx5e4DE7tRcuoCgXd0CLiM40eOSvqNVIAMc5LclGrZfKH
	 ABWKu9Bhdt/ME9XT3c/ldsUkKeqYDC47U4ThKoWXmIQCQFevBESsmbymhNEsya6/2h
	 7qfLOHk6skyRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 440A440DCD;
	Wed, 11 Sep 2024 13:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2202E1BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 13:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CF0C608A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 13:35:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RajJ2xeOxrUC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 13:35:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93B5F60034
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93B5F60034
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93B5F60034
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 13:35:02 +0000 (UTC)
X-CSE-ConnectionGUID: Ryj14EPpSvunVwZBOeUWZA==
X-CSE-MsgGUID: x762bYlyQsmEWcH9Oih6+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="28638795"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="28638795"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:34:56 -0700
X-CSE-ConnectionGUID: cBWyZH7tQeK9xuxMMIOm8g==
X-CSE-MsgGUID: mmahHN6CSCC5JHfujTjcww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="104838496"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 11 Sep 2024 06:34:55 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1soNUi-0003d4-2p
 for intel-wired-lan@lists.osuosl.org; Wed, 11 Sep 2024 13:34:52 +0000
Date: Wed, 11 Sep 2024 21:34:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409112115.czSVmIIO-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726061703; x=1757597703;
 h=date:from:to:subject:message-id;
 bh=hAYi0KySwwckuD4hmdUo6QFJbenV5Zn190/uCz5X95I=;
 b=aV6hrAQdH6EcmBvht+KIRrxuB5nIeMUrZZwGAE99CbGM9MRtShPS/eua
 lNSXp1AaMnvXNmuvh9MvvHzwUMsr6oTkCOjFL07331k1Rv2n31A0/GRQy
 lgOxebQjq6jIJugfHy6H8oMlBdW9foh+HzKLC8FaWQyWxe/wkD8Ly8BUL
 y/2AkvSEYqZL9ds0cuqz32/herz2Xr8Rvu/Gpeto8m2zynQS2XvLwyPZk
 nth9p8s1C0XgiDT4M5E9RiCo61j7udrytcO6JYeXNz3qpqHZ4s0stOlr3
 bmW5CC0CeOTXDTk+96Xseo16jpIVXyg/teSQFyZbWKYNzkgJOmjQ0U1Wf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aV6hrAQd
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 48aa361c5db0b380c2b75c24984c0d3e7c1e8c09
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 48aa361c5db0b380c2b75c24984c0d3e7c1e8c09  Merge branch 'revert-virtio_net-rx-enable-premapped-mode-by-default'

elapsed time: 1236m

configs tested: 256
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-14.1.0
arc                              alldefconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-14.1.0
arc                                 defconfig   gcc-14.1.0
arc                   randconfig-001-20240911   gcc-13.2.0
arc                   randconfig-002-20240911   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   clang-20
arm                              allmodconfig   clang-20
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-14.1.0
arm                          exynos_defconfig   clang-20
arm                      footbridge_defconfig   clang-20
arm                            hisi_defconfig   gcc-14.1.0
arm                          moxart_defconfig   clang-20
arm                        multi_v7_defconfig   clang-20
arm                       netwinder_defconfig   gcc-14.1.0
arm                   randconfig-001-20240911   clang-20
arm                   randconfig-001-20240911   gcc-13.2.0
arm                   randconfig-002-20240911   clang-20
arm                   randconfig-002-20240911   gcc-13.2.0
arm                   randconfig-003-20240911   clang-20
arm                   randconfig-003-20240911   gcc-13.2.0
arm                   randconfig-004-20240911   gcc-13.2.0
arm                   randconfig-004-20240911   gcc-14.1.0
arm                         socfpga_defconfig   gcc-14.1.0
arm                           tegra_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240911   clang-20
arm64                 randconfig-001-20240911   gcc-13.2.0
arm64                 randconfig-002-20240911   clang-15
arm64                 randconfig-002-20240911   gcc-13.2.0
arm64                 randconfig-003-20240911   clang-20
arm64                 randconfig-003-20240911   gcc-13.2.0
arm64                 randconfig-004-20240911   clang-15
arm64                 randconfig-004-20240911   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240911   gcc-13.2.0
csky                  randconfig-001-20240911   gcc-14.1.0
csky                  randconfig-002-20240911   gcc-13.2.0
csky                  randconfig-002-20240911   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
hexagon               randconfig-001-20240911   clang-20
hexagon               randconfig-001-20240911   gcc-13.2.0
hexagon               randconfig-002-20240911   clang-20
hexagon               randconfig-002-20240911   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240911   clang-18
i386         buildonly-randconfig-001-20240911   gcc-12
i386         buildonly-randconfig-002-20240911   gcc-12
i386         buildonly-randconfig-003-20240911   clang-18
i386         buildonly-randconfig-003-20240911   gcc-12
i386         buildonly-randconfig-004-20240911   gcc-12
i386         buildonly-randconfig-005-20240911   gcc-12
i386         buildonly-randconfig-006-20240911   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240911   gcc-12
i386                  randconfig-002-20240911   clang-18
i386                  randconfig-002-20240911   gcc-12
i386                  randconfig-003-20240911   clang-18
i386                  randconfig-003-20240911   gcc-12
i386                  randconfig-004-20240911   gcc-12
i386                  randconfig-005-20240911   gcc-12
i386                  randconfig-006-20240911   clang-18
i386                  randconfig-006-20240911   gcc-12
i386                  randconfig-011-20240911   gcc-12
i386                  randconfig-012-20240911   gcc-12
i386                  randconfig-013-20240911   clang-18
i386                  randconfig-013-20240911   gcc-12
i386                  randconfig-014-20240911   clang-18
i386                  randconfig-014-20240911   gcc-12
i386                  randconfig-015-20240911   gcc-12
i386                  randconfig-016-20240911   clang-18
i386                  randconfig-016-20240911   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240911   gcc-13.2.0
loongarch             randconfig-001-20240911   gcc-14.1.0
loongarch             randconfig-002-20240911   gcc-13.2.0
loongarch             randconfig-002-20240911   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                          sun3x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                  cavium_octeon_defconfig   gcc-14.1.0
mips                           ip32_defconfig   gcc-14.1.0
mips                      loongson3_defconfig   gcc-14.1.0
mips                malta_qemu_32r6_defconfig   gcc-14.1.0
mips                          rb532_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240911   gcc-13.2.0
nios2                 randconfig-001-20240911   gcc-14.1.0
nios2                 randconfig-002-20240911   gcc-13.2.0
nios2                 randconfig-002-20240911   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc                randconfig-001-20240911   gcc-13.2.0
parisc                randconfig-001-20240911   gcc-14.1.0
parisc                randconfig-002-20240911   gcc-13.2.0
parisc                randconfig-002-20240911   gcc-14.1.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                   bluestone_defconfig   clang-20
powerpc                       ebony_defconfig   clang-20
powerpc                        icon_defconfig   clang-20
powerpc                 linkstation_defconfig   clang-20
powerpc                     mpc512x_defconfig   gcc-14.1.0
powerpc                 mpc8313_rdb_defconfig   clang-20
powerpc                 mpc834x_itx_defconfig   gcc-14.1.0
powerpc                     rainier_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240911   clang-20
powerpc               randconfig-002-20240911   gcc-14.1.0
powerpc               randconfig-003-20240911   gcc-13.2.0
powerpc               randconfig-003-20240911   gcc-14.1.0
powerpc                         wii_defconfig   clang-20
powerpc64             randconfig-001-20240911   clang-17
powerpc64             randconfig-001-20240911   gcc-13.2.0
powerpc64             randconfig-002-20240911   clang-15
powerpc64             randconfig-002-20240911   gcc-13.2.0
powerpc64             randconfig-003-20240911   gcc-13.2.0
powerpc64             randconfig-003-20240911   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240911   gcc-13.2.0
riscv                 randconfig-001-20240911   gcc-14.1.0
riscv                 randconfig-002-20240911   gcc-13.2.0
riscv                 randconfig-002-20240911   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                  randconfig-001-20240911   gcc-13.2.0
s390                  randconfig-001-20240911   gcc-14.1.0
s390                  randconfig-002-20240911   clang-20
s390                  randconfig-002-20240911   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                    randconfig-001-20240911   gcc-13.2.0
sh                    randconfig-001-20240911   gcc-14.1.0
sh                    randconfig-002-20240911   gcc-13.2.0
sh                    randconfig-002-20240911   gcc-14.1.0
sh                           se7619_defconfig   gcc-14.1.0
sparc                            alldefconfig   clang-20
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
sparc64               randconfig-001-20240911   gcc-13.2.0
sparc64               randconfig-001-20240911   gcc-14.1.0
sparc64               randconfig-002-20240911   gcc-13.2.0
sparc64               randconfig-002-20240911   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                               allyesconfig   gcc-12
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240911   clang-15
um                    randconfig-001-20240911   gcc-13.2.0
um                    randconfig-002-20240911   clang-20
um                    randconfig-002-20240911   gcc-13.2.0
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240911   clang-18
x86_64       buildonly-randconfig-002-20240911   clang-18
x86_64       buildonly-randconfig-003-20240911   clang-18
x86_64       buildonly-randconfig-003-20240911   gcc-12
x86_64       buildonly-randconfig-004-20240911   clang-18
x86_64       buildonly-randconfig-004-20240911   gcc-12
x86_64       buildonly-randconfig-005-20240911   clang-18
x86_64       buildonly-randconfig-005-20240911   gcc-12
x86_64       buildonly-randconfig-006-20240911   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240911   clang-18
x86_64                randconfig-001-20240911   gcc-12
x86_64                randconfig-002-20240911   clang-18
x86_64                randconfig-002-20240911   gcc-12
x86_64                randconfig-003-20240911   clang-18
x86_64                randconfig-004-20240911   clang-18
x86_64                randconfig-005-20240911   clang-18
x86_64                randconfig-006-20240911   clang-18
x86_64                randconfig-006-20240911   gcc-12
x86_64                randconfig-011-20240911   clang-18
x86_64                randconfig-012-20240911   clang-18
x86_64                randconfig-013-20240911   clang-18
x86_64                randconfig-013-20240911   gcc-12
x86_64                randconfig-014-20240911   clang-18
x86_64                randconfig-015-20240911   clang-18
x86_64                randconfig-015-20240911   gcc-12
x86_64                randconfig-016-20240911   clang-18
x86_64                randconfig-071-20240911   clang-18
x86_64                randconfig-072-20240911   clang-18
x86_64                randconfig-072-20240911   gcc-11
x86_64                randconfig-073-20240911   clang-18
x86_64                randconfig-074-20240911   clang-18
x86_64                randconfig-075-20240911   clang-18
x86_64                randconfig-075-20240911   gcc-12
x86_64                randconfig-076-20240911   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240911   gcc-13.2.0
xtensa                randconfig-001-20240911   gcc-14.1.0
xtensa                randconfig-002-20240911   gcc-13.2.0
xtensa                randconfig-002-20240911   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
