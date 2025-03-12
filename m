Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE5A5E05D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 16:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 369384135A;
	Wed, 12 Mar 2025 15:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PvwEQLb0gaaZ; Wed, 12 Mar 2025 15:31:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACA7040BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741793460;
	bh=ZDDx2EVjqFPtXOrRScbayonaePAzBiXsU3QW99oQXcQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e9HXP/fbLqTiaka2na3P+hYVXztoj1p24p3c5ywU+n7yvma/S727FOvVUroRj4k6K
	 0L9lHxLckv3CDHVmUxqmWvC8BYeMy92fN8Vixf1bZ0kwkBpPOwg9uk6RXpecHmkDOD
	 g8K8nQiAUKDtf571FXnwJB5V+dM60LvMBRK0l/UkayjlIGN4NkM5LIph2kQBrr3Bbd
	 IE6IO4yvJCXEoS4z067KPJZgqEPjGer9BpHV8lwG3VlaH6YD0u0WYoDal8QaJ/b+QX
	 5OJK32UungFmeKVOGj6iFHY3N/uGtcuJey+lOv5xq88XuYloyGfbv7SSeIXh0d/5YK
	 215PoTpOOCCcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACA7040BC8;
	Wed, 12 Mar 2025 15:31:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 249311C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13BFC83216
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j-pKtKMym4wP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 15:30:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3E7D83180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3E7D83180
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3E7D83180
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 15:30:57 +0000 (UTC)
X-CSE-ConnectionGUID: efSYz3+OTji+h3McFmuyjA==
X-CSE-MsgGUID: THs93EqvQw+EHBQut8unIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42045828"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="42045828"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 08:30:50 -0700
X-CSE-ConnectionGUID: eEe2VVFnRF2LhWHKMN4aIw==
X-CSE-MsgGUID: XrZ58VN7TyKvxVQrnXC6tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="157842886"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 12 Mar 2025 08:30:49 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tsO2g-0008ew-2e
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Mar 2025 15:30:46 +0000
Date: Wed, 12 Mar 2025 23:30:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503122337.Yau45Yau-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741793458; x=1773329458;
 h=date:from:to:subject:message-id;
 bh=Df53XcanGKb7rKxyyLncacfaup5MlM0BpGnH2c4Nq6U=;
 b=k7eboNEZyGGSSeCyQo4jgRZeePwQ1ovVzEiQvsIqlEpfUzY35nHizmBc
 jkna5QzfK5fh5mEiEaUnscog0AY//VVGpuv+yG50VEZeUStzHrIo+wh7t
 qgB0HtpXVa/AXW+YGV5wQ5ZRqSV3dfAXcw+o4dxpI6aAdptWPL5JJ7w/a
 RWysb3Q/nKnAL+9SYjxacrWsNFL3CXDIyjwsJooJ9YBc60insrFAdf5Ps
 CcCBMnUELqjyxWRipGWFzgS5z3S/uZFQMpL9sVphB/a643u8EPx+Be/2d
 9O6dywwPnXJUGztAolvNblm+cTN4RewNq8H6pNl9Rjt7NKbW1HfJooHcg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k7eboNEZ
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 d2b9d97e89c79c95f8b517e4fa43fd100f936acc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: d2b9d97e89c79c95f8b517e4fa43fd100f936acc  qlcnic: fix memory leak issues in qlcnic_sriov_common.c

elapsed time: 1443m

configs tested: 214
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-21
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                          axs103_defconfig    clang-21
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250312    clang-21
arc                   randconfig-001-20250312    gcc-13.2.0
arc                   randconfig-002-20250312    clang-21
arc                   randconfig-002-20250312    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                     davinci_all_defconfig    clang-21
arm                                 defconfig    gcc-14.2.0
arm                          gemini_defconfig    clang-21
arm                           h3600_defconfig    clang-21
arm                         mv78xx0_defconfig    clang-21
arm                   randconfig-001-20250312    clang-19
arm                   randconfig-001-20250312    clang-21
arm                   randconfig-002-20250312    clang-21
arm                   randconfig-003-20250312    clang-19
arm                   randconfig-003-20250312    clang-21
arm                   randconfig-004-20250312    clang-21
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250312    clang-21
arm64                 randconfig-002-20250312    clang-21
arm64                 randconfig-002-20250312    gcc-14.2.0
arm64                 randconfig-003-20250312    clang-21
arm64                 randconfig-003-20250312    gcc-14.2.0
arm64                 randconfig-004-20250312    clang-21
arm64                 randconfig-004-20250312    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250312    gcc-14.2.0
csky                  randconfig-002-20250312    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250312    clang-21
hexagon               randconfig-002-20250312    clang-21
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250312    clang-19
i386        buildonly-randconfig-001-20250312    gcc-12
i386        buildonly-randconfig-002-20250312    clang-19
i386        buildonly-randconfig-002-20250312    gcc-12
i386        buildonly-randconfig-003-20250312    gcc-12
i386        buildonly-randconfig-004-20250312    gcc-12
i386        buildonly-randconfig-005-20250312    gcc-12
i386        buildonly-randconfig-006-20250312    clang-19
i386        buildonly-randconfig-006-20250312    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250312    clang-19
i386                  randconfig-002-20250312    clang-19
i386                  randconfig-003-20250312    clang-19
i386                  randconfig-004-20250312    clang-19
i386                  randconfig-005-20250312    clang-19
i386                  randconfig-006-20250312    clang-19
i386                  randconfig-007-20250312    clang-19
i386                  randconfig-011-20250312    gcc-11
i386                  randconfig-012-20250312    gcc-11
i386                  randconfig-013-20250312    gcc-11
i386                  randconfig-014-20250312    gcc-11
i386                  randconfig-015-20250312    gcc-11
i386                  randconfig-016-20250312    gcc-11
i386                  randconfig-017-20250312    gcc-11
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250312    gcc-14.2.0
loongarch             randconfig-002-20250312    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
m68k                          atari_defconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                       m5208evb_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         bigsur_defconfig    clang-21
mips                           ip28_defconfig    gcc-14.2.0
mips                           xway_defconfig    clang-21
nios2                         10m50_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250312    gcc-14.2.0
nios2                 randconfig-002-20250312    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250312    gcc-14.2.0
parisc                randconfig-002-20250312    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc                        fsp2_defconfig    gcc-14.2.0
powerpc                      katmai_defconfig    clang-21
powerpc               randconfig-001-20250312    clang-21
powerpc               randconfig-002-20250312    clang-21
powerpc               randconfig-003-20250312    clang-21
powerpc64             randconfig-001-20250312    clang-17
powerpc64             randconfig-002-20250312    clang-15
powerpc64             randconfig-003-20250312    clang-21
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250312    clang-21
riscv                 randconfig-002-20250312    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250312    clang-15
s390                  randconfig-002-20250312    clang-16
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                          polaris_defconfig    clang-21
sh                          r7780mp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250312    gcc-14.2.0
sh                    randconfig-002-20250312    gcc-14.2.0
sh                            shmin_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250312    gcc-14.2.0
sparc                 randconfig-002-20250312    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250312    gcc-14.2.0
sparc64               randconfig-002-20250312    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250312    gcc-12
um                    randconfig-002-20250312    clang-15
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250312    clang-19
x86_64      buildonly-randconfig-001-20250312    gcc-12
x86_64      buildonly-randconfig-002-20250312    clang-19
x86_64      buildonly-randconfig-002-20250312    gcc-12
x86_64      buildonly-randconfig-003-20250312    gcc-12
x86_64      buildonly-randconfig-004-20250312    clang-19
x86_64      buildonly-randconfig-004-20250312    gcc-12
x86_64      buildonly-randconfig-005-20250312    clang-19
x86_64      buildonly-randconfig-005-20250312    gcc-12
x86_64      buildonly-randconfig-006-20250312    clang-19
x86_64      buildonly-randconfig-006-20250312    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250311    clang-19
x86_64                randconfig-001-20250312    gcc-12
x86_64                randconfig-002-20250311    gcc-12
x86_64                randconfig-002-20250312    gcc-12
x86_64                randconfig-003-20250311    clang-19
x86_64                randconfig-003-20250312    gcc-12
x86_64                randconfig-004-20250311    gcc-12
x86_64                randconfig-004-20250312    gcc-12
x86_64                randconfig-005-20250311    clang-19
x86_64                randconfig-005-20250312    gcc-12
x86_64                randconfig-006-20250311    clang-19
x86_64                randconfig-006-20250312    gcc-12
x86_64                randconfig-007-20250311    gcc-12
x86_64                randconfig-007-20250312    gcc-12
x86_64                randconfig-008-20250311    gcc-12
x86_64                randconfig-008-20250312    gcc-12
x86_64                randconfig-071-20250312    clang-19
x86_64                randconfig-072-20250312    clang-19
x86_64                randconfig-073-20250312    clang-19
x86_64                randconfig-074-20250312    clang-19
x86_64                randconfig-075-20250312    clang-19
x86_64                randconfig-076-20250312    clang-19
x86_64                randconfig-077-20250312    clang-19
x86_64                randconfig-078-20250312    clang-19
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250312    gcc-14.2.0
xtensa                randconfig-002-20250312    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
