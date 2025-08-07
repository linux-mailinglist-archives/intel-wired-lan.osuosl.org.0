Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AAAB1DBD9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 18:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75768605A8;
	Thu,  7 Aug 2025 16:36:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pXbUyysSF6pQ; Thu,  7 Aug 2025 16:36:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D4A3605A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754584611;
	bh=B0xaQYfDfMJD0uLfNRSycrkuxG2LKCSCxh5x0jjMpb8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SsFmMoQxpaQ3YFbE2SaaItUDKpiNGGkejBN/hVAynUi2+iiapc/pNyluGnNp1K71W
	 Nbzl1bdA+EO4hAvo1KAAy3ZF4TmR2KzNOy7cu365NLVCgsTHCZMCQh/IhOZb2U3w3P
	 YH3Ug8i5jxnY3oqjWRiXLw5VKT4ZxruHYAp03gbLd6JIBe5ZPd/+q8yRyU/cjhGcud
	 Z4f9vnER31qPYpiQ76+a+IonL896M6DBuNJkS0OHku3zqvXPZ3Ay+6yR0kgMmuydHR
	 sZeqzJKqes6ytdLyb/RuGFyJG+nvbCGYWOq35470HGbIil9uGrGJA5I3YJnVT4lny1
	 IQTBVscd1SvPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D4A3605A9;
	Thu,  7 Aug 2025 16:36:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 024C810A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 16:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E85E940226
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 16:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xzu7uJ9F35Kx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 16:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD3C840224
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD3C840224
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD3C840224
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 16:36:46 +0000 (UTC)
X-CSE-ConnectionGUID: CwjDo9A2RNOioUN8e57/LA==
X-CSE-MsgGUID: vQswYAEpR0SBUan8n8ccig==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="57007679"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="57007679"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 09:36:47 -0700
X-CSE-ConnectionGUID: M4/Y9At8RGuUwXIJ98nxcQ==
X-CSE-MsgGUID: 8/+BJNzJQ1+YWYu2SYJT9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169315741"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 07 Aug 2025 09:36:46 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uk3bf-0002zi-06
 for intel-wired-lan@lists.osuosl.org; Thu, 07 Aug 2025 16:36:43 +0000
Date: Fri, 08 Aug 2025 00:35:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508080030.Pq5vhrrG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754584608; x=1786120608;
 h=date:from:to:subject:message-id;
 bh=CTLnguDwEeFfIAUy9KFhZoOe+10NQ5L3s9dfFMU9ylw=;
 b=CW8WYQ8TOA/8Xjpy+FL+va1+Mep8DTIM7o/JnVNZ/9ONcr1/L9Y3VHtz
 XAcDv9O2AsjgCcgStxenxG9jNijJeuG1hGmrdwJek8lNNKV6D9yq+xEEg
 z+jEFsFGbzreDx+BpHTIChAN7ALrRLcxKafDRgsQdHzFtDUfoUQHP/j/E
 Xq7ebnYXemSgqD44wCR6rpCLYvV/VopS5Ajj6Rzw0t+gX1L5CY3Zm2k1y
 iFZzfDD/GEEp6V3GAF+WFYWzPf3ixC2fwvUEksGkEMhK6bCeQtKVapqmN
 ZQPB1RmYsmxUkCleVB2GFOqFCsXpRPcLCI4d5V2RCWRfBJ/PZvDrepKcM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CW8WYQ8T
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 85e090ca5c97d6f0bf9577f8ab29bfeda041c2db
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
branch HEAD: 85e090ca5c97d6f0bf9577f8ab29bfeda041c2db  ixgbe: reduce number of reads when getting OROM data

elapsed time: 1179m

configs tested: 127
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250807    gcc-13.4.0
arc                   randconfig-002-20250807    gcc-12.5.0
arc                    vdk_hs38_smp_defconfig    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250807    clang-22
arm                   randconfig-002-20250807    gcc-10.5.0
arm                   randconfig-003-20250807    clang-22
arm                   randconfig-004-20250807    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250807    gcc-8.5.0
arm64                 randconfig-002-20250807    gcc-8.5.0
arm64                 randconfig-003-20250807    clang-22
arm64                 randconfig-004-20250807    gcc-14.3.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250807    gcc-15.1.0
csky                  randconfig-002-20250807    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250807    clang-22
hexagon               randconfig-002-20250807    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250807    clang-20
i386        buildonly-randconfig-002-20250807    clang-20
i386        buildonly-randconfig-003-20250807    gcc-12
i386        buildonly-randconfig-004-20250807    gcc-11
i386        buildonly-randconfig-005-20250807    gcc-12
i386        buildonly-randconfig-006-20250807    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250807    clang-22
loongarch             randconfig-002-20250807    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250807    gcc-11.5.0
nios2                 randconfig-002-20250807    gcc-8.5.0
openrisc                         alldefconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250807    gcc-8.5.0
parisc                randconfig-002-20250807    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250807    gcc-12.5.0
powerpc               randconfig-002-20250807    gcc-10.5.0
powerpc               randconfig-003-20250807    gcc-11.5.0
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20250807    gcc-11.5.0
powerpc64             randconfig-002-20250807    clang-22
powerpc64             randconfig-003-20250807    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250807    gcc-12.5.0
riscv                 randconfig-002-20250807    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250807    clang-22
s390                  randconfig-002-20250807    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250807    gcc-14.3.0
sh                    randconfig-002-20250807    gcc-9.5.0
sh                              ul2_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250807    gcc-14.3.0
sparc                 randconfig-002-20250807    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250807    clang-22
sparc64               randconfig-002-20250807    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250807    gcc-12
um                    randconfig-002-20250807    gcc-11
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250807    clang-20
x86_64      buildonly-randconfig-002-20250807    gcc-12
x86_64      buildonly-randconfig-003-20250807    clang-20
x86_64      buildonly-randconfig-004-20250807    clang-20
x86_64      buildonly-randconfig-005-20250807    gcc-11
x86_64      buildonly-randconfig-006-20250807    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250807    gcc-15.1.0
xtensa                randconfig-002-20250807    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
