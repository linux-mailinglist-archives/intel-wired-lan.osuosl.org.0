Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4D94D509
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 18:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07C04402B2;
	Fri,  9 Aug 2024 16:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UGN5uS6Eup7s; Fri,  9 Aug 2024 16:51:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C94DA40228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723222298;
	bh=zagmuf/zgrlzIGiKM6tRoh7kDpCpcW7lNABJVtgWqaY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lMQRvJw0KwL3Z+nXlwdgG5W1gHJeEom/0dcTjn3vumAxdlsdqaxt6mifp7lsTQquo
	 YXAvYRkaVWqIrpwHqPfGtT7V0Bz8A0WwOpTu9zv3pXnFQJ5IxDcG14YuEZ+gELFgFk
	 0HW9+CaKDPE59un9dORROGB/Lm1OiJ94QmMThfaQzXp8STohJKW7zovU9bXo8LU4Ay
	 xGUuRWDYYMROWAhe0FADgR7eCYwWpHOJG0FMmhPWZmaStFnjKuJ7dmsmxIkC1MMmIn
	 16wI8PxvH3Eknk3ZomsDYHXRJsKImOwbgoIkTCDyx5t5yiMJx3e0ZHPrXuoW/W1IL2
	 9SGt+w44iDyUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C94DA40228;
	Fri,  9 Aug 2024 16:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9985D1BF301
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 16:51:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 828F2842C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 16:51:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rmqJ-iRYQbhB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 16:51:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67CBC841D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67CBC841D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67CBC841D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 16:51:35 +0000 (UTC)
X-CSE-ConnectionGUID: Sd40frYaTMWCGdfQ/TEzpw==
X-CSE-MsgGUID: KULEibXHTbOQDoMazj8sRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="32812854"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32812854"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 09:51:34 -0700
X-CSE-ConnectionGUID: escyO6aiQU6q/L+W83CyeQ==
X-CSE-MsgGUID: FF8boNtyQXqpbPFvxpTz+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57274567"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 09 Aug 2024 09:51:34 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1scSpv-0008km-2U
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Aug 2024 16:51:31 +0000
Date: Sat, 10 Aug 2024 00:50:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408100049.DHOKHn20-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723222295; x=1754758295;
 h=date:from:to:subject:message-id;
 bh=CJz5RWwZRVDoGub3ArAAH/n3xM8uKV+UHifEN8SnHLY=;
 b=AWJv8GBbf86OvQ/tYEKE7HGpXww1xf/0pun58WS9EeX2jE6biICOA/AW
 bbvReMnFQX9aJjmeOsaN0i5/KBOudvdv3gtTRlTLkSXy+Qvn2bi3fpNQy
 hvl77ls7vUoDESU93Eqpq9hPVkWG5orMuCWiKHvsqOFPSGJuQX4i+hCWP
 ijXeqV7kIhwBBERSYEstLWpOMVbs7MzFcE07ALR1EdmA/J4TWAQ6CQOKe
 b6wT/LxSMlwykCgIbG79VUQGztksEDXx5/EEPs2MmsMNCSbiCqlE53Ljh
 rQ8TWeOmV1SlH0/WG7NpQDyhOxeepCQpR5oqDLR18w9a1Js5eYM/YPqpu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AWJv8GBb
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 bc4b2020b5a741c0e4d50fb71e3d6655bf60ebac
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: bc4b2020b5a741c0e4d50fb71e3d6655bf60ebac  ice: allow to activate and deactivate subfunction

elapsed time: 1362m

configs tested: 196
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240809   gcc-13.2.0
arc                   randconfig-002-20240809   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                           h3600_defconfig   gcc-14.1.0
arm                       imx_v6_v7_defconfig   gcc-14.1.0
arm                        mvebu_v7_defconfig   gcc-14.1.0
arm                   randconfig-001-20240809   gcc-13.2.0
arm                   randconfig-002-20240809   gcc-13.2.0
arm                   randconfig-003-20240809   gcc-13.2.0
arm                   randconfig-004-20240809   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240809   gcc-13.2.0
arm64                 randconfig-002-20240809   gcc-13.2.0
arm64                 randconfig-003-20240809   gcc-13.2.0
arm64                 randconfig-004-20240809   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240809   gcc-13.2.0
csky                  randconfig-002-20240809   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240809   gcc-12
i386         buildonly-randconfig-002-20240809   clang-18
i386         buildonly-randconfig-002-20240809   gcc-12
i386         buildonly-randconfig-003-20240809   gcc-11
i386         buildonly-randconfig-003-20240809   gcc-12
i386         buildonly-randconfig-004-20240809   clang-18
i386         buildonly-randconfig-004-20240809   gcc-12
i386         buildonly-randconfig-005-20240809   clang-18
i386         buildonly-randconfig-005-20240809   gcc-12
i386         buildonly-randconfig-006-20240809   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240809   gcc-12
i386                  randconfig-002-20240809   clang-18
i386                  randconfig-002-20240809   gcc-12
i386                  randconfig-003-20240809   clang-18
i386                  randconfig-003-20240809   gcc-12
i386                  randconfig-004-20240809   gcc-12
i386                  randconfig-005-20240809   clang-18
i386                  randconfig-005-20240809   gcc-12
i386                  randconfig-006-20240809   gcc-12
i386                  randconfig-011-20240809   gcc-12
i386                  randconfig-012-20240809   gcc-12
i386                  randconfig-013-20240809   gcc-12
i386                  randconfig-014-20240809   gcc-12
i386                  randconfig-015-20240809   gcc-11
i386                  randconfig-015-20240809   gcc-12
i386                  randconfig-016-20240809   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240809   gcc-13.2.0
loongarch             randconfig-002-20240809   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                     cu1830-neo_defconfig   gcc-14.1.0
mips                          eyeq5_defconfig   gcc-14.1.0
mips                      fuloong2e_defconfig   gcc-14.1.0
mips                           gcw0_defconfig   gcc-14.1.0
mips                     loongson1b_defconfig   gcc-14.1.0
mips                        maltaup_defconfig   gcc-14.1.0
mips                          rm200_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240809   gcc-13.2.0
nios2                 randconfig-002-20240809   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240809   gcc-13.2.0
parisc                randconfig-002-20240809   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc               randconfig-001-20240809   gcc-13.2.0
powerpc64             randconfig-001-20240809   gcc-13.2.0
powerpc64             randconfig-002-20240809   gcc-13.2.0
powerpc64             randconfig-003-20240809   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-14.1.0
riscv                 randconfig-001-20240809   gcc-13.2.0
riscv                 randconfig-002-20240809   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240809   gcc-13.2.0
s390                  randconfig-002-20240809   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         apsh4a3a_defconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240809   gcc-13.2.0
sh                    randconfig-002-20240809   gcc-13.2.0
sh                           se7705_defconfig   gcc-14.1.0
sh                   secureedge5410_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240809   gcc-13.2.0
sparc64               randconfig-002-20240809   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240809   gcc-13.2.0
um                    randconfig-002-20240809   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                           alldefconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240809   clang-18
x86_64       buildonly-randconfig-002-20240809   clang-18
x86_64       buildonly-randconfig-003-20240809   clang-18
x86_64       buildonly-randconfig-004-20240809   clang-18
x86_64       buildonly-randconfig-005-20240809   clang-18
x86_64       buildonly-randconfig-006-20240809   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240809   clang-18
x86_64                randconfig-002-20240809   clang-18
x86_64                randconfig-003-20240809   clang-18
x86_64                randconfig-004-20240809   clang-18
x86_64                randconfig-005-20240809   clang-18
x86_64                randconfig-006-20240809   clang-18
x86_64                randconfig-011-20240809   clang-18
x86_64                randconfig-012-20240809   clang-18
x86_64                randconfig-013-20240809   clang-18
x86_64                randconfig-014-20240809   clang-18
x86_64                randconfig-015-20240809   clang-18
x86_64                randconfig-016-20240809   clang-18
x86_64                randconfig-071-20240809   clang-18
x86_64                randconfig-072-20240809   clang-18
x86_64                randconfig-073-20240809   clang-18
x86_64                randconfig-074-20240809   clang-18
x86_64                randconfig-075-20240809   clang-18
x86_64                randconfig-076-20240809   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240809   gcc-13.2.0
xtensa                randconfig-002-20240809   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
