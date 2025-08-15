Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9E6B286D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 22:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C814820F8;
	Fri, 15 Aug 2025 20:02:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VuqBqyXf6oi9; Fri, 15 Aug 2025 20:02:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E99382105
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755288122;
	bh=N4fpiL5XlxY6jI9yXFYHtiMqi5Qi8SW6HQS4sMZVR9s=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GmkXOKdLJAqj9yvo3rgt2biVd+QST9Y26DjYgcw9Jn5PHsHL2wjcCNpBH/d3UmVAO
	 Nh8z1X7ak1wAxyAzfQ1WKf6hMZ7KY5gUGqn9Q9rriEEacPSZ7s0zM0VCJD2CjVY2tF
	 T3HEiLWHdKT8Q6gnIbRALY73gCbpWPyU0A6P8Cl52sIorKzNhy0yxwYUSTxKoCylw5
	 jndLc2z2ZfEQhykJBo/VbsOF7LvSakb+kGReBr3/OSZ5xpXJYYowWdjAv+B8E62bxX
	 iK2unFYZdZcyXnUr54RMmAB5DoVJ66YIs2x2pT6XFRwntbgpYgG1VNRGdsUwDGKWFb
	 ha41M+P1zbi8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E99382105;
	Fri, 15 Aug 2025 20:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 67886223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 20:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E1A3412D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 20:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pGLJFWMdMbOS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 20:02:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0345E412CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0345E412CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0345E412CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 20:01:59 +0000 (UTC)
X-CSE-ConnectionGUID: PxKq+dFWRci7PwzUpxbn4w==
X-CSE-MsgGUID: ZoUxuG6VTh+3+m1+6glA8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="68317718"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68317718"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 13:01:59 -0700
X-CSE-ConnectionGUID: xnCCNYu1SBikTuwrT+wGww==
X-CSE-MsgGUID: RdrBvXQsREC8Yq+YtXEw2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="172298799"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 15 Aug 2025 13:01:58 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1un0cd-000CIs-2E
 for intel-wired-lan@lists.osuosl.org; Fri, 15 Aug 2025 20:01:55 +0000
Date: Sat, 16 Aug 2025 04:01:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508160431.vFsKISUk-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755288120; x=1786824120;
 h=date:from:to:subject:message-id;
 bh=Pp/JLH+xhTQcrRLKKb9DhJy/uNwfRjWLUC7v8rVT6AA=;
 b=Wcpb00cpIT6lXzn/ZEiK1zp60yMg9fQFKX4IWwRLu/g148JTF5w637KK
 zBd8umwWjadKkiZ3tCbE024t5Dmubm+Zh7MVNq+CWKPxJk3S5mw2bYUTt
 Sb+ilfU5Zw8vPTyHxdEN8Q7xCB0zxTdBalytdbdMgLlXMekPSXRhQlyfJ
 ZPzv2IdKaV6mit8qdF9rNkeRnVTDHZu6DgT7RUhZ9IsXnX6CjhcfMglr2
 x5po2QIMIFhpUX4g7+6skAF/8AIA6MwyMJV8r8uuMCuknpvPFpJ0WoSlE
 oVSSzbDFjdvsmJ+a5g/G6Ea68RjKCC1VgX1hJbM6+FEJWOmH5F5/b+qis
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wcpb00cp
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 28f073b38372b99d8d33ff5e63897d28419bda20
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 28f073b38372b99d8d33ff5e63897d28419bda20  ice: Implement support for SRIOV VFs across Active/Active bonds

elapsed time: 1206m

configs tested: 263
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                     haps_hs_smp_defconfig    gcc-15.1.0
arc                   randconfig-001-20250815    clang-22
arc                   randconfig-001-20250815    gcc-8.5.0
arc                   randconfig-001-20250816    gcc-8.5.0
arc                   randconfig-002-20250815    clang-22
arc                   randconfig-002-20250815    gcc-9.5.0
arc                   randconfig-002-20250816    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                      footbridge_defconfig    gcc-15.1.0
arm                            mps2_defconfig    clang-22
arm                        mvebu_v5_defconfig    gcc-15.1.0
arm                       omap2plus_defconfig    gcc-15.1.0
arm                   randconfig-001-20250815    clang-16
arm                   randconfig-001-20250815    clang-22
arm                   randconfig-001-20250816    gcc-8.5.0
arm                   randconfig-002-20250815    clang-18
arm                   randconfig-002-20250815    clang-22
arm                   randconfig-002-20250816    gcc-8.5.0
arm                   randconfig-003-20250815    clang-22
arm                   randconfig-003-20250815    gcc-14.3.0
arm                   randconfig-003-20250816    gcc-8.5.0
arm                   randconfig-004-20250815    clang-22
arm                   randconfig-004-20250815    gcc-8.5.0
arm                   randconfig-004-20250816    gcc-8.5.0
arm                        vexpress_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250815    clang-22
arm64                 randconfig-001-20250815    gcc-8.5.0
arm64                 randconfig-001-20250816    gcc-8.5.0
arm64                 randconfig-002-20250815    clang-22
arm64                 randconfig-002-20250815    gcc-8.5.0
arm64                 randconfig-002-20250816    gcc-8.5.0
arm64                 randconfig-003-20250815    clang-22
arm64                 randconfig-003-20250816    gcc-8.5.0
arm64                 randconfig-004-20250815    clang-22
arm64                 randconfig-004-20250815    gcc-15.1.0
arm64                 randconfig-004-20250816    gcc-8.5.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250815    gcc-11.5.0
csky                  randconfig-001-20250815    gcc-15.1.0
csky                  randconfig-002-20250815    gcc-11.5.0
csky                  randconfig-002-20250815    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250815    clang-22
hexagon               randconfig-001-20250815    gcc-11.5.0
hexagon               randconfig-002-20250815    clang-22
hexagon               randconfig-002-20250815    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250815    gcc-12
i386        buildonly-randconfig-001-20250816    clang-20
i386        buildonly-randconfig-002-20250815    clang-20
i386        buildonly-randconfig-002-20250815    gcc-12
i386        buildonly-randconfig-002-20250816    clang-20
i386        buildonly-randconfig-003-20250815    clang-20
i386        buildonly-randconfig-003-20250815    gcc-12
i386        buildonly-randconfig-003-20250816    clang-20
i386        buildonly-randconfig-004-20250815    clang-20
i386        buildonly-randconfig-004-20250815    gcc-12
i386        buildonly-randconfig-004-20250816    clang-20
i386        buildonly-randconfig-005-20250815    clang-20
i386        buildonly-randconfig-005-20250815    gcc-12
i386        buildonly-randconfig-005-20250816    clang-20
i386        buildonly-randconfig-006-20250815    gcc-12
i386        buildonly-randconfig-006-20250816    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250815    gcc-12
i386                  randconfig-001-20250816    clang-20
i386                  randconfig-002-20250815    gcc-12
i386                  randconfig-002-20250816    clang-20
i386                  randconfig-003-20250815    gcc-12
i386                  randconfig-003-20250816    clang-20
i386                  randconfig-004-20250815    gcc-12
i386                  randconfig-004-20250816    clang-20
i386                  randconfig-005-20250815    gcc-12
i386                  randconfig-005-20250816    clang-20
i386                  randconfig-006-20250815    gcc-12
i386                  randconfig-006-20250816    clang-20
i386                  randconfig-007-20250815    gcc-12
i386                  randconfig-007-20250816    clang-20
i386                  randconfig-011-20250815    gcc-12
i386                  randconfig-011-20250816    clang-20
i386                  randconfig-012-20250815    gcc-12
i386                  randconfig-012-20250816    clang-20
i386                  randconfig-013-20250815    gcc-12
i386                  randconfig-013-20250816    clang-20
i386                  randconfig-014-20250815    gcc-12
i386                  randconfig-014-20250816    clang-20
i386                  randconfig-015-20250815    gcc-12
i386                  randconfig-015-20250816    clang-20
i386                  randconfig-016-20250815    gcc-12
i386                  randconfig-016-20250816    clang-20
i386                  randconfig-017-20250815    gcc-12
i386                  randconfig-017-20250816    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250815    clang-22
loongarch             randconfig-001-20250815    gcc-11.5.0
loongarch             randconfig-002-20250815    clang-20
loongarch             randconfig-002-20250815    gcc-11.5.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        qi_lb60_defconfig    gcc-15.1.0
mips                       rbtx49xx_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250815    gcc-11.5.0
nios2                 randconfig-002-20250815    gcc-11.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250815    gcc-11.5.0
parisc                randconfig-001-20250815    gcc-8.5.0
parisc                randconfig-002-20250815    gcc-11.5.0
parisc                randconfig-002-20250815    gcc-14.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                   currituck_defconfig    clang-22
powerpc                 mpc832x_rdb_defconfig    clang-22
powerpc               randconfig-001-20250815    gcc-11.5.0
powerpc               randconfig-002-20250815    clang-19
powerpc               randconfig-002-20250815    gcc-11.5.0
powerpc               randconfig-003-20250815    gcc-11.5.0
powerpc                     tqm8541_defconfig    clang-22
powerpc64             randconfig-001-20250815    gcc-11.5.0
powerpc64             randconfig-001-20250815    gcc-14.3.0
powerpc64             randconfig-002-20250815    gcc-10.5.0
powerpc64             randconfig-002-20250815    gcc-11.5.0
powerpc64             randconfig-003-20250815    clang-22
powerpc64             randconfig-003-20250815    gcc-11.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250815    gcc-12.5.0
riscv                 randconfig-002-20250815    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250815    gcc-8.5.0
s390                  randconfig-002-20250815    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                          polaris_defconfig    clang-22
sh                    randconfig-001-20250815    gcc-11.5.0
sh                    randconfig-002-20250815    gcc-12.5.0
sh                      rts7751r2d1_defconfig    clang-22
sh                             shx3_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250815    gcc-11.5.0
sparc                 randconfig-002-20250815    gcc-13.4.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250815    clang-22
sparc64               randconfig-002-20250815    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250815    gcc-12
um                    randconfig-002-20250815    clang-19
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250815    clang-20
x86_64      buildonly-randconfig-001-20250815    gcc-12
x86_64      buildonly-randconfig-002-20250815    gcc-12
x86_64      buildonly-randconfig-003-20250815    gcc-12
x86_64      buildonly-randconfig-004-20250815    clang-20
x86_64      buildonly-randconfig-004-20250815    gcc-12
x86_64      buildonly-randconfig-005-20250815    clang-20
x86_64      buildonly-randconfig-005-20250815    gcc-12
x86_64      buildonly-randconfig-006-20250815    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250815    gcc-12
x86_64                randconfig-002-20250815    gcc-12
x86_64                randconfig-003-20250815    gcc-12
x86_64                randconfig-004-20250815    gcc-12
x86_64                randconfig-005-20250815    gcc-12
x86_64                randconfig-006-20250815    gcc-12
x86_64                randconfig-007-20250815    gcc-12
x86_64                randconfig-008-20250815    gcc-12
x86_64                randconfig-071-20250815    clang-20
x86_64                randconfig-072-20250815    clang-20
x86_64                randconfig-073-20250815    clang-20
x86_64                randconfig-074-20250815    clang-20
x86_64                randconfig-075-20250815    clang-20
x86_64                randconfig-076-20250815    clang-20
x86_64                randconfig-077-20250815    clang-20
x86_64                randconfig-078-20250815    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    clang-22
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250815    gcc-8.5.0
xtensa                randconfig-002-20250815    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
