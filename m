Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 894C1B1BFD0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 07:09:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF2EC8382F;
	Wed,  6 Aug 2025 05:09:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ixqsrrHQJ-y; Wed,  6 Aug 2025 05:09:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D9F082F49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754456964;
	bh=pTQFSwV/zBmTntVC7YYctVV59WVZm378fNcjzUXknDg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7EEa7J8ACC51rA9+3CFi/dFCcJC+mWo48fn84+iT3Y21oFhh6uvDwTn81UWdaDD8e
	 h5iC9mW3i0wCCWmSBlD853YpUz6qfc1TOmaUmJK+KFjn8MHL3mBNItlZ5Jy2xxsuan
	 D0YkMYIAhlzMpQQf+TZE01g7yTVhALZrmMUDlBrX1TetaVu2O6sEEuZS+syrOjE6gh
	 SxImhfsIiKH3Ku/uNKthff+za2/kLrPr5tCOOnaPqdOaWqyyYzTUn3Sn7751HQ+Kcc
	 Q5qWSH3yLepT6/MyerxV7QcoMqFfR4stPKpMpTo1Dx9ziCLDtu+SlW9dD/B06R+KgY
	 9LHeZ2S0toQyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D9F082F49;
	Wed,  6 Aug 2025 05:09:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8149CD79
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 05:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B46561C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 05:09:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cmaCCkwR70ZU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 05:09:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5AA7C61BDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AA7C61BDE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AA7C61BDE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 05:09:20 +0000 (UTC)
X-CSE-ConnectionGUID: T5bpSfrjTemWCiNRTEb+RQ==
X-CSE-MsgGUID: zeNML/IISbS4ahESufKf8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="74223725"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="74223725"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:09:19 -0700
X-CSE-ConnectionGUID: 9Vu++g3yTg+qTPKDHkp3Pw==
X-CSE-MsgGUID: luUqe1JrStK6BaFT5eXXYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165436492"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 05 Aug 2025 22:09:18 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ujWOq-0001HI-1K
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Aug 2025 05:09:16 +0000
Date: Wed, 06 Aug 2025 13:08:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508061330.DjGfaENA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754456961; x=1785992961;
 h=date:from:to:subject:message-id;
 bh=XKyFzVcchlbdFi19P4CY+Y72+qneZaQ9EZO1hhpRTWU=;
 b=iY+olTdPf+5YChW2CMZRO+ZJc1fYjaIGUSvP6RMWHkRlrHHJXbdJnz/a
 6KMRYpszjuCKaUUbkQN6fCIw5LERTlR9JUxQUpvg7uyfuDHahK03Ubzdw
 kkwjIs9oElVDC1eHgoA9cSD3h1Rw/vkUn3akCPSRETYaScGdwfXifo6eo
 0ZyxIGeKw97R5RzHoZIemfFiy+O8pQ5hEfUB4LLENQD/+pUTsDOlmYEGV
 Mp+A5bE0LdHtlQvasnoMxrYbtm0UYHMeg5lemRGzU2ApewIpE9n0CHqVv
 jgcAo44rRcq/ZfOdnfhfDHoHiTY6ywdWg5CkztPbv0VWpeKcP7p0RMvaW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iY+olTdP
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 4eabe4cc0958e28ceaf592bbb62c234339642e41
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
branch HEAD: 4eabe4cc0958e28ceaf592bbb62c234339642e41  dpll: zl3073x: ZL3073X_I2C and ZL3073X_SPI should depend on NET

elapsed time: 1720m

configs tested: 242
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250805    gcc-8.5.0
arc                   randconfig-001-20250806    gcc-12.5.0
arc                   randconfig-002-20250805    gcc-10.5.0
arc                   randconfig-002-20250806    gcc-11.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                          collie_defconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                           omap1_defconfig    gcc-15.1.0
arm                   randconfig-001-20250805    gcc-11.5.0
arm                   randconfig-001-20250806    gcc-10.5.0
arm                   randconfig-002-20250805    clang-22
arm                   randconfig-002-20250806    gcc-13.4.0
arm                   randconfig-003-20250805    gcc-12.5.0
arm                   randconfig-003-20250806    gcc-10.5.0
arm                   randconfig-004-20250805    clang-18
arm                   randconfig-004-20250806    clang-22
arm                       versatile_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250805    gcc-12.5.0
arm64                 randconfig-001-20250806    clang-20
arm64                 randconfig-002-20250805    clang-20
arm64                 randconfig-002-20250806    clang-22
arm64                 randconfig-003-20250805    gcc-11.5.0
arm64                 randconfig-003-20250806    gcc-9.5.0
arm64                 randconfig-004-20250805    gcc-13.4.0
arm64                 randconfig-004-20250806    clang-17
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250805    gcc-12.5.0
csky                  randconfig-001-20250806    gcc-10.5.0
csky                  randconfig-002-20250805    gcc-10.5.0
csky                  randconfig-002-20250806    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250805    clang-20
hexagon               randconfig-001-20250806    clang-18
hexagon               randconfig-002-20250805    clang-22
hexagon               randconfig-002-20250806    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250805    clang-20
i386        buildonly-randconfig-001-20250806    clang-20
i386        buildonly-randconfig-002-20250805    gcc-12
i386        buildonly-randconfig-002-20250806    gcc-11
i386        buildonly-randconfig-003-20250805    gcc-12
i386        buildonly-randconfig-003-20250806    clang-20
i386        buildonly-randconfig-004-20250805    gcc-12
i386        buildonly-randconfig-004-20250806    gcc-12
i386        buildonly-randconfig-005-20250805    gcc-12
i386        buildonly-randconfig-005-20250806    gcc-12
i386        buildonly-randconfig-006-20250805    gcc-12
i386        buildonly-randconfig-006-20250806    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250806    clang-20
i386                  randconfig-002-20250806    clang-20
i386                  randconfig-003-20250806    clang-20
i386                  randconfig-004-20250806    clang-20
i386                  randconfig-005-20250806    clang-20
i386                  randconfig-006-20250806    clang-20
i386                  randconfig-007-20250806    clang-20
i386                  randconfig-011-20250806    gcc-12
i386                  randconfig-012-20250806    gcc-12
i386                  randconfig-013-20250806    gcc-12
i386                  randconfig-014-20250806    gcc-12
i386                  randconfig-015-20250806    gcc-12
i386                  randconfig-016-20250806    gcc-12
i386                  randconfig-017-20250806    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250805    gcc-15.1.0
loongarch             randconfig-001-20250806    clang-18
loongarch             randconfig-002-20250805    gcc-12.5.0
loongarch             randconfig-002-20250806    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                         bigsur_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250805    gcc-11.5.0
nios2                 randconfig-001-20250806    gcc-10.5.0
nios2                 randconfig-002-20250805    gcc-8.5.0
nios2                 randconfig-002-20250806    gcc-11.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250805    gcc-10.5.0
parisc                randconfig-001-20250806    gcc-15.1.0
parisc                randconfig-002-20250805    gcc-15.1.0
parisc                randconfig-002-20250806    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250805    clang-22
powerpc               randconfig-001-20250806    clang-22
powerpc               randconfig-002-20250805    clang-22
powerpc               randconfig-002-20250806    gcc-14.3.0
powerpc               randconfig-003-20250805    gcc-9.5.0
powerpc               randconfig-003-20250806    clang-22
powerpc                        warp_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250805    clang-22
powerpc64             randconfig-001-20250806    gcc-15.1.0
powerpc64             randconfig-002-20250805    clang-19
powerpc64             randconfig-002-20250806    gcc-10.5.0
powerpc64             randconfig-003-20250805    clang-22
powerpc64             randconfig-003-20250806    clang-18
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250805    clang-18
riscv                 randconfig-001-20250806    clang-20
riscv                 randconfig-002-20250805    gcc-9.5.0
riscv                 randconfig-002-20250806    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250805    clang-22
s390                  randconfig-001-20250806    gcc-14.3.0
s390                  randconfig-002-20250805    clang-22
s390                  randconfig-002-20250806    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250805    gcc-9.5.0
sh                    randconfig-001-20250806    gcc-15.1.0
sh                    randconfig-002-20250805    gcc-14.3.0
sh                    randconfig-002-20250806    gcc-10.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250805    gcc-8.5.0
sparc                 randconfig-001-20250806    gcc-11.5.0
sparc                 randconfig-002-20250805    gcc-15.1.0
sparc                 randconfig-002-20250806    gcc-13.4.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250805    gcc-9.5.0
sparc64               randconfig-001-20250806    gcc-8.5.0
sparc64               randconfig-002-20250805    clang-22
sparc64               randconfig-002-20250806    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250805    gcc-12
um                    randconfig-001-20250806    clang-16
um                    randconfig-002-20250805    gcc-12
um                    randconfig-002-20250806    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250805    gcc-12
x86_64      buildonly-randconfig-001-20250806    gcc-12
x86_64      buildonly-randconfig-002-20250805    gcc-12
x86_64      buildonly-randconfig-002-20250806    clang-20
x86_64      buildonly-randconfig-003-20250805    clang-20
x86_64      buildonly-randconfig-003-20250806    gcc-12
x86_64      buildonly-randconfig-004-20250805    gcc-12
x86_64      buildonly-randconfig-004-20250806    gcc-12
x86_64      buildonly-randconfig-005-20250805    clang-20
x86_64      buildonly-randconfig-005-20250806    clang-20
x86_64      buildonly-randconfig-006-20250805    gcc-12
x86_64      buildonly-randconfig-006-20250806    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250806    clang-20
x86_64                randconfig-002-20250806    clang-20
x86_64                randconfig-003-20250806    clang-20
x86_64                randconfig-004-20250806    clang-20
x86_64                randconfig-005-20250806    clang-20
x86_64                randconfig-006-20250806    clang-20
x86_64                randconfig-007-20250806    clang-20
x86_64                randconfig-008-20250806    clang-20
x86_64                randconfig-071-20250806    gcc-12
x86_64                randconfig-072-20250806    gcc-12
x86_64                randconfig-073-20250806    gcc-12
x86_64                randconfig-074-20250806    gcc-12
x86_64                randconfig-075-20250806    gcc-12
x86_64                randconfig-076-20250806    gcc-12
x86_64                randconfig-077-20250806    gcc-12
x86_64                randconfig-078-20250806    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                generic_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250805    gcc-14.3.0
xtensa                randconfig-001-20250806    gcc-13.4.0
xtensa                randconfig-002-20250805    gcc-15.1.0
xtensa                randconfig-002-20250806    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
