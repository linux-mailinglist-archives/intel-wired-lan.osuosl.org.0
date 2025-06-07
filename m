Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 664E9AD0E90
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Jun 2025 18:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1013040AA9;
	Sat,  7 Jun 2025 16:27:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rBttrdt3i3VK; Sat,  7 Jun 2025 16:27:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4BF640AB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749313631;
	bh=FZZH8/I1RnHKJu3fRPLmtcujItHGh2hnBY1hKWMMQs4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JklL4Av7meN9oNbnJxBx60b5QeAwQNaMrbnXX4ni16hwO3Aa+IBNCYBGczMEVA3dI
	 dz5nh8kB1UPI3ZxFisIs+RM2HPjpQkFrcJVkl/7tcWHDgDbW++NuUqM23PFSVXKWUd
	 Ru2r/g0QQJ+5Pt6+7H+DK69LLoOE0PPvGvr/UlwfqDN7J3DnGj8Lpvtm3RmzA2TALl
	 bcSIrfNQvbnLyoDdBV0IMRITYXExGLbFhNXq83B0jPubJiBsYdHCtI6FPF2kQTtxSu
	 kNWtxQc9pzDuJcSkEhF+pC5YZEXqkNr52apVAIsL0rOCI4uR6/mVd9L5fjTWAMmC66
	 pPT/xgPAChlUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4BF640AB0;
	Sat,  7 Jun 2025 16:27:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A68CC8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jun 2025 16:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5001460A83
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jun 2025 16:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sG5OOtTCQ5mw for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Jun 2025 16:27:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 067D7608C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 067D7608C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 067D7608C7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Jun 2025 16:27:08 +0000 (UTC)
X-CSE-ConnectionGUID: JO1QzqROQsqxRKZe82KqJA==
X-CSE-MsgGUID: zi/XUqFaQsCRCaca0VqbWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11457"; a="55105060"
X-IronPort-AV: E=Sophos;i="6.16,218,1744095600"; d="scan'208";a="55105060"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2025 09:27:08 -0700
X-CSE-ConnectionGUID: 9YXivJWHTgajZWd8k3d9Nw==
X-CSE-MsgGUID: xJQYedMHT8qJ1wegXpGLjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,218,1744095600"; d="scan'208";a="150973273"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 07 Jun 2025 09:27:06 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uNwNs-0005td-2E
 for intel-wired-lan@lists.osuosl.org; Sat, 07 Jun 2025 16:27:04 +0000
Date: Sun, 08 Jun 2025 00:26:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506080043.t6YolQ0G-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749313630; x=1780849630;
 h=date:from:to:subject:message-id;
 bh=Bg22AllOLkDhfUqnuFbl9D8taLVFVdff10Cwc/kmb6A=;
 b=eeb7G8XaMDRV10x0JietMJ1ytydHXdhMAHRicRy0sf1Bux4cFY4Ef5PN
 3hGHBA1EaCcjjh32qNFn1j6jajlkzxyxiC/fAd5UYHRBUX8MY9n9agiEV
 cGs/OjEGYBJ+8o/990ZbbQAgwMw8WIy38qAE2vEjIjRnouaxtml73BwhR
 XAiLVtOyPoSC2UTengiUym4+Lvl17ZuxeYwkEq4KrMHFMZdVVnkCzuNwr
 SDtRjvpyioX2quAGX2r/MRV4Yku4xqdoXtdGpzxtRncn0Sj9JlnOhp0V3
 V9RsJ/KPTowySc+aVsAmmhfQhjqhuqlRHCnL2PSsb+ESTBmJpPaRDutG0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eeb7G8Xa
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c1589adc4856d13b67b3cc8939c8af579fbdb5da
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: c1589adc4856d13b67b3cc8939c8af579fbdb5da  e1000: Move cancel_work_sync to avoid deadlock

elapsed time: 1352m

configs tested: 125
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                        nsim_700_defconfig    gcc-15.1.0
arc                   randconfig-001-20250607    gcc-15.1.0
arc                   randconfig-002-20250607    gcc-15.1.0
arc                    vdk_hs38_smp_defconfig    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250607    clang-21
arm                   randconfig-002-20250607    gcc-13.3.0
arm                   randconfig-003-20250607    gcc-15.1.0
arm                   randconfig-004-20250607    gcc-14.3.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250607    clang-21
arm64                 randconfig-002-20250607    clang-21
arm64                 randconfig-003-20250607    clang-21
arm64                 randconfig-004-20250607    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250607    gcc-12.4.0
csky                  randconfig-002-20250607    gcc-9.3.0
hexagon                           allnoconfig    clang-21
hexagon               randconfig-001-20250607    clang-21
hexagon               randconfig-002-20250607    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250607    clang-20
i386        buildonly-randconfig-002-20250607    gcc-12
i386        buildonly-randconfig-003-20250607    gcc-12
i386        buildonly-randconfig-004-20250607    gcc-12
i386        buildonly-randconfig-005-20250607    clang-20
i386        buildonly-randconfig-006-20250607    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250607    gcc-13.3.0
loongarch             randconfig-002-20250607    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                         rt305x_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250607    gcc-10.5.0
nios2                 randconfig-002-20250607    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                generic-32bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20250607    gcc-12.4.0
parisc                randconfig-002-20250607    gcc-12.4.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                       eiger_defconfig    clang-21
powerpc                   lite5200b_defconfig    clang-21
powerpc               randconfig-001-20250607    gcc-10.5.0
powerpc               randconfig-002-20250607    clang-21
powerpc               randconfig-003-20250607    clang-21
powerpc64             randconfig-001-20250607    clang-19
powerpc64             randconfig-002-20250607    clang-21
powerpc64             randconfig-003-20250607    gcc-8.5.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250607    clang-21
riscv                 randconfig-002-20250607    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250607    clang-16
s390                  randconfig-002-20250607    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                        apsh4ad0a_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                        dreamcast_defconfig    gcc-15.1.0
sh                         ecovec24_defconfig    gcc-15.1.0
sh                             espt_defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                    randconfig-001-20250607    gcc-14.3.0
sh                    randconfig-002-20250607    gcc-9.3.0
sparc                            alldefconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250607    gcc-10.3.0
sparc                 randconfig-002-20250607    gcc-12.4.0
sparc64                             defconfig    gcc-15.1.0
sparc64               randconfig-001-20250607    gcc-9.3.0
sparc64               randconfig-002-20250607    gcc-13.3.0
um                                allnoconfig    clang-21
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250607    clang-21
um                    randconfig-002-20250607    gcc-12
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250607    clang-20
x86_64      buildonly-randconfig-002-20250607    clang-20
x86_64      buildonly-randconfig-003-20250607    clang-20
x86_64      buildonly-randconfig-004-20250607    gcc-12
x86_64      buildonly-randconfig-005-20250607    gcc-12
x86_64      buildonly-randconfig-006-20250607    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250607    gcc-10.5.0
xtensa                randconfig-002-20250607    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
