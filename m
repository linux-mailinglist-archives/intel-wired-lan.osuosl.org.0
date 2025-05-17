Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06955ABABBB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 May 2025 19:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27E71409FD;
	Sat, 17 May 2025 17:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ECbLUJspofe; Sat, 17 May 2025 17:54:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 251F140A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747504447;
	bh=/56988Gz2cVYrO7In2uhbhoUl/fcJt8N7QL7XLGhh4s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PfQ1nSR/kW8m8ePodsrjDp8c47k26ePS0HrMK8fn0fvo/5jievgp2uyzwBxwX4kJo
	 PJyUi0lHi2U4IBjxhImvj9YWiI+3n7Yb5io0zYnEv2mjEaxxrn2q4zNUDFNX/3ztBm
	 zNY9W/I7h8IkDYP4TiDzlnjE92u3OljbrnaSFqw1SqGNk6mfI8UOoIkLWwedSknqQL
	 k70EMii+G9x0otv6O+DPJ9btdF9OBbncWzOsSxYSOqL3dcVCOZxEf+O8SsPc0jnCmg
	 ziO4W7AmzSsdmtiUEtkWbQXzNhoIZZFn7fYZIIhP3+YuCe9tL14tzpBnTBSyGCVWwj
	 jCfYRZPMppAfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 251F140A00;
	Sat, 17 May 2025 17:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AA13E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 May 2025 17:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C503409FA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 May 2025 17:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFwN0L-Vq7Hp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 May 2025 17:54:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91F9E409FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91F9E409FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91F9E409FD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 May 2025 17:54:03 +0000 (UTC)
X-CSE-ConnectionGUID: SChPuLBSR3qKNakvPbR7Dg==
X-CSE-MsgGUID: /knm59zOQECcMUm63d2wtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11436"; a="48564607"
X-IronPort-AV: E=Sophos;i="6.15,297,1739865600"; d="scan'208";a="48564607"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2025 10:54:03 -0700
X-CSE-ConnectionGUID: eY6xU6CsSTSeyH+H5ck+qQ==
X-CSE-MsgGUID: x8hwsA8DQ5aB4youfZg5Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,297,1739865600"; d="scan'208";a="170023513"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 17 May 2025 10:54:02 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uGLjU-000KJs-0B
 for intel-wired-lan@lists.osuosl.org; Sat, 17 May 2025 17:54:00 +0000
Date: Sun, 18 May 2025 01:53:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505180137.WuYukh9m-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747504444; x=1779040444;
 h=date:from:to:subject:message-id;
 bh=Swjl2lOMrBUPmniISFf/WDbbqXxdraBd2TYCuO+yIXo=;
 b=DLQ5mKPYRCPl6Ms+rnySa4XQm/JG3w9zVbwJoX/mdz2PZfGlkQ7BjzGi
 dYfX0128e+SMAwRgYS23ysmWTq26XS98GEw7ywffGnM+hdddd51RWyvor
 md6IkZJc7yKFzb2dNsoRsP/T1ikiEvg4YyhGzUuv5l1Y00GnLABHOLXQ4
 q/1Hj+7ATaymelUO6gmNHisJSZDTCDCwBd6FGVEv6rC2Tj+ovbfC1rynF
 XOimEJ0cMEVivenrHUuAy84xDuQg6qSZ/9qKoi6oA3lK2l7GK3fg3trDr
 HkcFIrqn8z5xS9+lwUjADzhMc8+0anwOYOd7yg7/Tv3zt2aNEBXhoWwhw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DLQ5mKPY
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 494565a74502671d8c27aa52490bd178170caf5e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 494565a74502671d8c27aa52490bd178170caf5e  idpf: add support for Rx timestamping

elapsed time: 1452m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                     haps_hs_smp_defconfig    gcc-14.2.0
arc                 nsimosci_hs_smp_defconfig    gcc-14.2.0
arc                   randconfig-001-20250517    gcc-10.5.0
arc                   randconfig-002-20250517    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                       imx_v6_v7_defconfig    clang-16
arm                   randconfig-001-20250517    clang-21
arm                   randconfig-002-20250517    gcc-8.5.0
arm                   randconfig-003-20250517    gcc-8.5.0
arm                   randconfig-004-20250517    clang-21
arm                        realview_defconfig    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250517    clang-17
arm64                 randconfig-002-20250517    clang-16
arm64                 randconfig-003-20250517    gcc-6.5.0
arm64                 randconfig-004-20250517    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250517    gcc-10.5.0
csky                  randconfig-002-20250517    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250517    clang-21
hexagon               randconfig-002-20250517    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250517    clang-20
i386        buildonly-randconfig-002-20250517    clang-20
i386        buildonly-randconfig-003-20250517    clang-20
i386        buildonly-randconfig-004-20250517    gcc-12
i386        buildonly-randconfig-005-20250517    clang-20
i386        buildonly-randconfig-006-20250517    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250517    gcc-14.2.0
loongarch             randconfig-002-20250517    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
m68k                          atari_defconfig    gcc-14.2.0
m68k                       bvme6000_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                      mmu_defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                   sb1250_swarm_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250517    gcc-14.2.0
nios2                 randconfig-002-20250517    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250517    gcc-5.5.0
parisc                randconfig-002-20250517    gcc-11.5.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc                          g5_defconfig    gcc-14.2.0
powerpc                      pmac32_defconfig    clang-21
powerpc               randconfig-001-20250517    gcc-6.5.0
powerpc               randconfig-002-20250517    gcc-6.5.0
powerpc               randconfig-003-20250517    clang-16
powerpc                    socrates_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250517    clang-21
powerpc64             randconfig-002-20250517    gcc-6.5.0
powerpc64             randconfig-003-20250517    gcc-6.5.0
riscv                            alldefconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250517    clang-21
riscv                 randconfig-002-20250517    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250517    gcc-7.5.0
s390                  randconfig-002-20250517    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                    randconfig-001-20250517    gcc-12.4.0
sh                    randconfig-002-20250517    gcc-10.5.0
sh                   sh7770_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250517    gcc-11.5.0
sparc                 randconfig-002-20250517    gcc-7.5.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250517    gcc-7.5.0
sparc64               randconfig-002-20250517    gcc-5.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250517    gcc-12
um                    randconfig-002-20250517    gcc-12
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250517    gcc-12
x86_64      buildonly-randconfig-002-20250517    gcc-12
x86_64      buildonly-randconfig-003-20250517    clang-20
x86_64      buildonly-randconfig-004-20250517    clang-20
x86_64      buildonly-randconfig-005-20250517    clang-20
x86_64      buildonly-randconfig-006-20250517    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250517    gcc-9.3.0
xtensa                randconfig-002-20250517    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
