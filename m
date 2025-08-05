Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A57B1BBD7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Aug 2025 23:43:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EFD4613B6;
	Tue,  5 Aug 2025 21:43:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sClYovs0vieK; Tue,  5 Aug 2025 21:43:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7927961B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754430211;
	bh=pkPx4expbeiGWJVYpmGEQEWEJQw+2xkZQevmjmIhH+o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jWtv8Q3ZORm9nORTDLWjC+OHtKVnY5uTjbhjeqLhegvEoGgX4m0pbWgjiQyWge6+r
	 uhq29WIdNpJsCO3ffSeMm8I5lcHMfuUYKmvR7f39z5WOcBSV66yNxYTnPQs0evQ0Ck
	 DB7X6COJ5nLxF5yH3uttxeqYRiV9FPIPQ11I8Aoa5Sd+yeGmpnCcZUG1vhkpLAjewh
	 CMKj48LZUGFk5s0Trz/zGPOYCL3KEwWkSMzAli1lYzpnqEawx3U522x4AYdbwZxNBa
	 4XlppNbKfsdPWM2ZEig5BoN5++eAK6bNUZbaZQwbHBsnj2uwJ8x78FkMfN2eh2h+Zw
	 ue7nAHr8omxnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7927961B1D;
	Tue,  5 Aug 2025 21:43:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 34E69233
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 21:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 266A641D0B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 21:43:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5B6RGO2itMWG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 21:43:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F93140838
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F93140838
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F93140838
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 21:43:28 +0000 (UTC)
X-CSE-ConnectionGUID: xrubWgYXRTGRnOZFXqVPyQ==
X-CSE-MsgGUID: 5S8Y3SALQmqvB6S5BpKlUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="44332770"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="44332770"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 14:43:28 -0700
X-CSE-ConnectionGUID: MJcpnEyAQUKKVgVZM/UKBw==
X-CSE-MsgGUID: cB/CAbECSIOC/U4jirZIbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="168773151"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 05 Aug 2025 14:43:27 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ujPRM-0000o8-2v
 for intel-wired-lan@lists.osuosl.org; Tue, 05 Aug 2025 21:43:24 +0000
Date: Wed, 06 Aug 2025 05:42:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508060541.0udZaPwN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754430209; x=1785966209;
 h=date:from:to:subject:message-id;
 bh=bXEt8bmPj7gSVb0+7AotSXSyMHLcSvs+7aOdY8PIUEk=;
 b=nX1OecFRX8FS2XyJ4g1jt2GieZY5xY4pUrPS0p9r/DQ+HRQPTSgEvsvP
 DRPQfRaeN0JE+4n5NA+774+f2sXbxjSvu7sVFTh/rNzaWDdq+2KW0WADE
 6tI9TFqvbYBaHXOkzV2uu0rOW4v1repYiNKC8zUylmHsMOGx6WsMUTBi3
 +kVzmjmpJUKdz9db1mJLRcMrhOnSk3+/bvYoWG5Wk76K+q065gyl4C0Va
 xthJaLxo2sbxMGNCzXL7JipD0m0V+/mDc9+Q0FpxaykFVxyy+maxJrtzq
 DbhhuOYD2wUydIIkeHHb9y3161mK/td0Ykzsnw+JPhKzgrcqn9KHDupPp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nX1OecFR
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fbe0a4d385ce3f88be669f7892e8dd552ec73fbc
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
branch HEAD: fbe0a4d385ce3f88be669f7892e8dd552ec73fbc  ixgbe: fix ixgbe_orom_civd_info struct layout

elapsed time: 1346m

configs tested: 127
configs skipped: 6

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
arc                   randconfig-001-20250805    gcc-8.5.0
arc                   randconfig-002-20250805    gcc-10.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                            hisi_defconfig    gcc-15.1.0
arm                       multi_v4t_defconfig    clang-16
arm                       omap2plus_defconfig    gcc-15.1.0
arm                   randconfig-001-20250805    gcc-11.5.0
arm                   randconfig-002-20250805    clang-22
arm                   randconfig-003-20250805    gcc-12.5.0
arm                   randconfig-004-20250805    clang-18
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250805    gcc-12.5.0
arm64                 randconfig-002-20250805    clang-20
arm64                 randconfig-003-20250805    gcc-11.5.0
arm64                 randconfig-004-20250805    gcc-13.4.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250805    gcc-12.5.0
csky                  randconfig-002-20250805    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250805    clang-20
hexagon               randconfig-002-20250805    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250805    clang-20
i386        buildonly-randconfig-002-20250805    gcc-12
i386        buildonly-randconfig-003-20250805    gcc-12
i386        buildonly-randconfig-004-20250805    gcc-12
i386        buildonly-randconfig-005-20250805    gcc-12
i386        buildonly-randconfig-006-20250805    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250805    gcc-15.1.0
loongarch             randconfig-002-20250805    gcc-12.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5407c3_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250805    gcc-11.5.0
nios2                 randconfig-002-20250805    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250805    gcc-10.5.0
parisc                randconfig-002-20250805    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250805    clang-22
powerpc               randconfig-002-20250805    clang-22
powerpc               randconfig-003-20250805    gcc-9.5.0
powerpc                 xes_mpc85xx_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250805    clang-22
powerpc64             randconfig-002-20250805    clang-19
powerpc64             randconfig-003-20250805    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250805    clang-18
riscv                 randconfig-002-20250805    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250805    clang-22
s390                  randconfig-002-20250805    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250805    gcc-9.5.0
sh                    randconfig-002-20250805    gcc-14.3.0
sh                        sh7763rdp_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250805    gcc-8.5.0
sparc                 randconfig-002-20250805    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250805    gcc-9.5.0
sparc64               randconfig-002-20250805    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250805    gcc-12
um                    randconfig-002-20250805    gcc-12
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250805    gcc-12
x86_64      buildonly-randconfig-002-20250805    gcc-12
x86_64      buildonly-randconfig-003-20250805    clang-20
x86_64      buildonly-randconfig-004-20250805    gcc-12
x86_64      buildonly-randconfig-005-20250805    clang-20
x86_64      buildonly-randconfig-006-20250805    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250805    gcc-14.3.0
xtensa                randconfig-002-20250805    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
