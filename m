Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF37E9E81D5
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Dec 2024 20:40:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB1034048F;
	Sat,  7 Dec 2024 19:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BHroj_3j4rck; Sat,  7 Dec 2024 19:40:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4C32403FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733600434;
	bh=MCggdFjIxZh1JNeUyZFdpd/uvM7wqSSFO1v1Jd2XLvI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AdhZm/axL2xnn7Nj/NlaprO+8UWYaHyEA6EVQrq27QY+PN+sEaEMWf3oCOCwFQFDJ
	 +Zusmx7uBXBA4i9rlsI7r7ILIb7+V5fcPCL1AgamaJJyMn4TPYHYt9BiXajfnGZWkF
	 UIOru30aZPe7ct6SiPUsSkKCnEeQwlXcqTK9gJSVlN4+gPOangX7gGV35Xp6Q7eX+k
	 Y4AKDEjs9f3O7ZntOd68gR5vHq3NgSULYlDsVtPJvGKQLkd4yKbJtS3MpRKWGHqFhP
	 Ls3wnvWN8kYKHDdaIsK2jl7D6VIQecy21b9Ame4ccericDBdmQvbfR9cJbCPB/kvbf
	 Ctl2uwwqfVsIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4C32403FE;
	Sat,  7 Dec 2024 19:40:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80CADECA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 19:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59169811E1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 19:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YUEYrJTTrWDE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Dec 2024 19:40:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 29FD481164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29FD481164
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29FD481164
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 19:40:30 +0000 (UTC)
X-CSE-ConnectionGUID: s1Kx6lUURVikovx2zn0V3g==
X-CSE-MsgGUID: 5WVPohWNR9KYDEnLg8KkdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45314106"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45314106"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2024 11:40:30 -0800
X-CSE-ConnectionGUID: lgkIyabCRzeXvJTTTjmWnA==
X-CSE-MsgGUID: 1D7NDulPSyq3avKHD7b0Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,216,1728975600"; d="scan'208";a="132095078"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 07 Dec 2024 11:40:28 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tK0fB-0002vp-2b
 for intel-wired-lan@lists.osuosl.org; Sat, 07 Dec 2024 19:40:25 +0000
Date: Sun, 08 Dec 2024 03:37:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412080356.6QSpJvyP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733600432; x=1765136432;
 h=date:from:to:subject:message-id;
 bh=aa66mYqpL1IF20hoMVyl82aELjB9+mwqmEddQh/WfJM=;
 b=V3Sq67HouT9PaaG+hnt6tHz6tiJzhh6Aw3Q3x48s717n8lGpyELwvN65
 uDaLFcBbTn24ElSBv3jq8somuyY8ZMD9oFIE1km64pUhSvMqeQoy5idK5
 U1/YVK6NjR/PrDowmDMXZ6qr9qzpHLdedMeeBado/vaeKF2eOhrUACk9R
 sFanBh+JaM+AH2saqDISbowvluyXIFsXtlGM5Lu6TdD9oDkpJkEB7Geal
 R7sQBtlIOmKi8lmsvdU5ZCiC8SAADXLSxkyNXuOrjIkGj4XzNSi9/OzOH
 +UMuFqqvCY2vAxKKsXxOjLqD36fHXESCkYus6tX3bipAi4XGB3MB2qAIh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V3Sq67Ho
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7d19608d990c7ba2898a09b1f25751da8f28483e
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
branch HEAD: 7d19608d990c7ba2898a09b1f25751da8f28483e  ice: Add in/out PTP pin delays

elapsed time: 1444m

configs tested: 168
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                     nsimosci_hs_defconfig    gcc-13.2.0
arc                   randconfig-001-20241207    clang-19
arc                   randconfig-001-20241207    gcc-13.2.0
arc                   randconfig-002-20241207    clang-19
arc                   randconfig-002-20241207    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                           imxrt_defconfig    clang-19
arm                   randconfig-001-20241207    clang-19
arm                   randconfig-001-20241207    gcc-14.2.0
arm                   randconfig-002-20241207    clang-19
arm                   randconfig-002-20241207    gcc-14.2.0
arm                   randconfig-003-20241207    clang-19
arm                   randconfig-004-20241207    clang-19
arm                   randconfig-004-20241207    clang-20
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241207    clang-19
arm64                 randconfig-001-20241207    gcc-14.2.0
arm64                 randconfig-002-20241207    clang-19
arm64                 randconfig-002-20241207    gcc-14.2.0
arm64                 randconfig-003-20241207    clang-19
arm64                 randconfig-003-20241207    clang-20
arm64                 randconfig-004-20241207    clang-15
arm64                 randconfig-004-20241207    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241207    clang-19
csky                  randconfig-001-20241207    gcc-14.2.0
csky                  randconfig-002-20241207    clang-19
csky                  randconfig-002-20241207    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241207    clang-14
hexagon               randconfig-001-20241207    clang-19
hexagon               randconfig-002-20241207    clang-16
hexagon               randconfig-002-20241207    clang-19
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241207    clang-19
i386        buildonly-randconfig-002-20241207    clang-19
i386        buildonly-randconfig-003-20241207    clang-19
i386        buildonly-randconfig-003-20241207    gcc-12
i386        buildonly-randconfig-004-20241207    clang-19
i386        buildonly-randconfig-005-20241207    clang-19
i386        buildonly-randconfig-006-20241207    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241207    clang-19
loongarch             randconfig-001-20241207    gcc-14.2.0
loongarch             randconfig-002-20241207    clang-19
loongarch             randconfig-002-20241207    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241207    clang-19
nios2                 randconfig-001-20241207    gcc-14.2.0
nios2                 randconfig-002-20241207    clang-19
nios2                 randconfig-002-20241207    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
openrisc                 simple_smp_defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241207    clang-19
parisc                randconfig-001-20241207    gcc-14.2.0
parisc                randconfig-002-20241207    clang-19
parisc                randconfig-002-20241207    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      bamboo_defconfig    gcc-14.2.0
powerpc                      mgcoge_defconfig    gcc-14.2.0
powerpc                 mpc832x_rdb_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241207    clang-19
powerpc               randconfig-001-20241207    gcc-14.2.0
powerpc               randconfig-002-20241207    clang-19
powerpc               randconfig-002-20241207    clang-20
powerpc               randconfig-003-20241207    clang-15
powerpc               randconfig-003-20241207    clang-19
powerpc64             randconfig-001-20241207    clang-19
powerpc64             randconfig-001-20241207    gcc-14.2.0
powerpc64             randconfig-002-20241207    clang-19
powerpc64             randconfig-003-20241207    clang-17
powerpc64             randconfig-003-20241207    clang-19
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        edosk7760_defconfig    gcc-14.2.0
sh                           se7724_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc64                          alldefconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241207    clang-19
x86_64      buildonly-randconfig-002-20241207    clang-19
x86_64      buildonly-randconfig-003-20241207    gcc-11
x86_64      buildonly-randconfig-004-20241207    clang-19
x86_64      buildonly-randconfig-005-20241207    clang-19
x86_64      buildonly-randconfig-006-20241207    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
