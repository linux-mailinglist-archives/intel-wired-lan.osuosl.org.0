Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E6E9B6A78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 18:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63700407C6;
	Wed, 30 Oct 2024 17:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ksj0cMivaZA9; Wed, 30 Oct 2024 17:12:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B209407BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730308351;
	bh=0wB/zsmiLGG8hXWHWb11O3MpliNCBgLae9bD6qZMtZo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Bb68vNYQjTc7wp1xtLal3SOsHM8ZnwM2hX7zirc0vrMjsJeiOr1npaVaVatfJPGPn
	 va5yiePNukDkMmOXSDlAcgp8IsuOzhNL0kMu9kRep/Pfd7qPF1UsOzfi9PgoM+nwUL
	 Te5rVQYyIy8es9xs8CM9EB52Zryt/+bN5ddErbMK+xSuh6ICxIJbsokmKa61Igv9Cd
	 J77jvDpbXCqi71jrz3wsiUx8fXWs29rLlfZvaGAHhzDmcZraOd1lCPoiYKYzZtqyDZ
	 asKzrp6DF0qqdofcmAITV63QXmqLA5iHan5lXih0TNsQEX32y2ZckIpg4ivG3W/fcF
	 8XfjvXseoYi2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B209407BE;
	Wed, 30 Oct 2024 17:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D9B95E50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:12:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9914E60A64
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SoIc2Xwmk7y8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 17:12:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3EB1760A67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EB1760A67
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EB1760A67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:12:26 +0000 (UTC)
X-CSE-ConnectionGUID: vq8dtX4SQW+SrH+uacYhbg==
X-CSE-MsgGUID: r0rIZZeSR1WX3tBwRS/rCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="33818630"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="33818630"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 10:12:25 -0700
X-CSE-ConnectionGUID: Ge8w4PA1RwO0NgqNdfyNlg==
X-CSE-MsgGUID: IcqZ0py0TMmYs6wA57MyiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="86987048"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 30 Oct 2024 10:12:24 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6CF4-000f7U-0z
 for intel-wired-lan@lists.osuosl.org; Wed, 30 Oct 2024 17:12:22 +0000
Date: Thu, 31 Oct 2024 01:11:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410310125.0znm8qB9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730308347; x=1761844347;
 h=date:from:to:subject:message-id;
 bh=rPlkYwmmpipTCtYKix6s43Ra0xZUyiVNB3FaE026gtw=;
 b=QXn8XnwHu2WsM6bbEKsbQBHQQqLKvXHcpeqWh7Na9LbDLNYxY+c7Hib8
 uVf9j2uwsw+hdHBULJ7lTB+9aJRyBuVKHdAdloqlTYmZFNBuBwQG5BpCH
 ZXVmpuC50Guh99W0bdI5SJrZAi+Hxhi7i+syewMsDXr3F7Xkkltf+ofES
 8Qf3eA054dGmiZ/5gvjaJ4VXDoOJH4mvDFBmRUhtkwZvFqL0WVNOcAkux
 ZWTJsUPyPhKfW7UbK/1MauU5tbRcYKx/1GeXkPyeMKZN9UAS3+QZIwg5M
 7yttQ4BCRg0iZ0u/lxPKojyLdmpjt4bwzPpjbnXXJkD6HZL7C77OwSiKf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QXn8XnwH
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 b62607870b291d72ca4a07b24fa298dcb2762b79
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: b62607870b291d72ca4a07b24fa298dcb2762b79  Merge branch 'net-phylink-simplify-sfp-phy-attachment'

elapsed time: 1266m

configs tested: 204
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                          axs101_defconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                         haps_hs_defconfig    clang-20
arc                     nsimosci_hs_defconfig    clang-20
arc                   randconfig-001-20241030    gcc-14.1.0
arc                   randconfig-002-20241030    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                     am200epdkit_defconfig    clang-20
arm                         axm55xx_defconfig    clang-20
arm                         bcm2835_defconfig    clang-20
arm                          collie_defconfig    clang-20
arm                     davinci_all_defconfig    clang-15
arm                                 defconfig    gcc-14.1.0
arm                      jornada720_defconfig    clang-20
arm                         lpc32xx_defconfig    clang-20
arm                   milbeaut_m10v_defconfig    clang-15
arm                             mxs_defconfig    clang-15
arm                       netwinder_defconfig    clang-20
arm                   randconfig-001-20241030    gcc-14.1.0
arm                   randconfig-002-20241030    gcc-14.1.0
arm                   randconfig-003-20241030    gcc-14.1.0
arm                   randconfig-004-20241030    gcc-14.1.0
arm                        realview_defconfig    clang-20
arm                             rpc_defconfig    clang-20
arm                         s3c6400_defconfig    clang-15
arm                       spear13xx_defconfig    clang-20
arm                           stm32_defconfig    clang-15
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20241030    gcc-14.1.0
arm64                 randconfig-002-20241030    gcc-14.1.0
arm64                 randconfig-003-20241030    gcc-14.1.0
arm64                 randconfig-004-20241030    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20241030    gcc-14.1.0
csky                  randconfig-002-20241030    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20241030    gcc-14.1.0
hexagon               randconfig-002-20241030    gcc-14.1.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241030    gcc-12
i386        buildonly-randconfig-002-20241030    gcc-12
i386        buildonly-randconfig-003-20241030    gcc-12
i386        buildonly-randconfig-004-20241030    gcc-12
i386        buildonly-randconfig-005-20241030    gcc-12
i386        buildonly-randconfig-006-20241030    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241030    gcc-12
i386                  randconfig-002-20241030    gcc-12
i386                  randconfig-003-20241030    gcc-12
i386                  randconfig-004-20241030    gcc-12
i386                  randconfig-005-20241030    gcc-12
i386                  randconfig-006-20241030    gcc-12
i386                  randconfig-011-20241030    gcc-12
i386                  randconfig-012-20241030    gcc-12
i386                  randconfig-013-20241030    gcc-12
i386                  randconfig-014-20241030    gcc-12
i386                  randconfig-015-20241030    gcc-12
i386                  randconfig-016-20241030    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20241030    gcc-14.1.0
loongarch             randconfig-002-20241030    gcc-14.1.0
m68k                             alldefconfig    clang-20
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                          amiga_defconfig    clang-15
m68k                          amiga_defconfig    clang-20
m68k                                defconfig    gcc-14.1.0
m68k                          hp300_defconfig    clang-15
m68k                       m5475evb_defconfig    clang-20
m68k                        mvme16x_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath25_defconfig    clang-15
mips                         db1xxx_defconfig    clang-20
mips                           ip30_defconfig    clang-20
mips                           ip32_defconfig    clang-15
mips                          rb532_defconfig    clang-20
mips                       rbtx49xx_defconfig    clang-15
mips                        vocore2_defconfig    clang-15
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20241030    gcc-14.1.0
nios2                 randconfig-002-20241030    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241030    gcc-14.1.0
parisc                randconfig-002-20241030    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      arches_defconfig    clang-20
powerpc                   bluestone_defconfig    clang-20
powerpc                 canyonlands_defconfig    clang-20
powerpc                       holly_defconfig    clang-20
powerpc                     kmeter1_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    clang-15
powerpc                     mpc83xx_defconfig    clang-20
powerpc                    mvme5100_defconfig    clang-15
powerpc                     ppa8548_defconfig    clang-15
powerpc                     rainier_defconfig    clang-20
powerpc               randconfig-001-20241030    gcc-14.1.0
powerpc               randconfig-002-20241030    gcc-14.1.0
powerpc               randconfig-003-20241030    gcc-14.1.0
powerpc64             randconfig-001-20241030    gcc-14.1.0
powerpc64             randconfig-002-20241030    gcc-14.1.0
powerpc64             randconfig-003-20241030    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241030    gcc-14.1.0
riscv                 randconfig-002-20241030    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241030    gcc-14.1.0
s390                  randconfig-002-20241030    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                          landisk_defconfig    clang-15
sh                            migor_defconfig    clang-20
sh                    randconfig-001-20241030    gcc-14.1.0
sh                    randconfig-002-20241030    gcc-14.1.0
sh                           se7343_defconfig    clang-20
sh                   secureedge5410_defconfig    clang-15
sh                           sh2007_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241030    gcc-14.1.0
sparc64               randconfig-002-20241030    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241030    gcc-14.1.0
um                    randconfig-002-20241030    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241030    gcc-12
x86_64      buildonly-randconfig-002-20241030    gcc-12
x86_64      buildonly-randconfig-003-20241030    gcc-12
x86_64      buildonly-randconfig-004-20241030    gcc-12
x86_64      buildonly-randconfig-005-20241030    gcc-12
x86_64      buildonly-randconfig-006-20241030    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241030    gcc-12
x86_64                randconfig-002-20241030    gcc-12
x86_64                randconfig-003-20241030    gcc-12
x86_64                randconfig-004-20241030    gcc-12
x86_64                randconfig-005-20241030    gcc-12
x86_64                randconfig-006-20241030    gcc-12
x86_64                randconfig-011-20241030    gcc-12
x86_64                randconfig-012-20241030    gcc-12
x86_64                randconfig-013-20241030    gcc-12
x86_64                randconfig-014-20241030    gcc-12
x86_64                randconfig-015-20241030    gcc-12
x86_64                randconfig-016-20241030    gcc-12
x86_64                randconfig-071-20241030    gcc-12
x86_64                randconfig-072-20241030    gcc-12
x86_64                randconfig-073-20241030    gcc-12
x86_64                randconfig-074-20241030    gcc-12
x86_64                randconfig-075-20241030    gcc-12
x86_64                randconfig-076-20241030    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  nommu_kc705_defconfig    clang-15
xtensa                randconfig-001-20241030    gcc-14.1.0
xtensa                randconfig-002-20241030    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
