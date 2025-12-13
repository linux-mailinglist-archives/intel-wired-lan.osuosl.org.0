Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6638CBA212
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Dec 2025 01:49:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 772F480B35;
	Sat, 13 Dec 2025 00:49:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LntFr2MWH3nz; Sat, 13 Dec 2025 00:49:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4C8980B2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765586989;
	bh=43JYrJW461v0jh1FtldtLfL2zOx9v0FiFZ3zEtoAE6w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FUw0yxpUwFbPROyfEQ85BvA/MzmjXs8oPSOmn0RGg3/1P6rIh+HPapBqEFN/yFPBf
	 aZLoTTgYeQfeXMI/QYbXt9Iyg+dxL1q0hYg7SShzy2FRM0LB+woB7WwRjqDneDnSuq
	 Jqujukr+8tfSQ4YJVqnCdglcjFeHy+fO6o4Wb7WwoHxRKJt8/cE0GansbQtyLisQOb
	 yC/DVRQAoigpwcnP//+n23mST0FuXV2/7udUBx2FS++ll5NqX6dWMUFcsyFPhw4f3s
	 pKP96OD5sK28xBob9h9MeMr4O3Qh4Jd3/L3ypVSSyDl/X1x1tUDpJ2BNzg/twPFwCj
	 I1hgaIkuKqLGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4C8980B2C;
	Sat, 13 Dec 2025 00:49:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E3C1513D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD21D40F9D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:49:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpD12cHP_ibr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Dec 2025 00:49:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B901D40F99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B901D40F99
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B901D40F99
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:49:46 +0000 (UTC)
X-CSE-ConnectionGUID: C+deldIdT3eQlH2LTacYEA==
X-CSE-MsgGUID: gNoJiGE7R9Ca5P+QN5f/DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71451594"
X-IronPort-AV: E=Sophos;i="6.21,145,1763452800"; d="scan'208";a="71451594"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 16:49:46 -0800
X-CSE-ConnectionGUID: Mh4QJSdMRM+R8Wfg0X5vOg==
X-CSE-MsgGUID: cY2fjSaORVWtPP15FZti9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,145,1763452800"; d="scan'208";a="197117185"
Received: from lkp-server01.sh.intel.com (HELO d335e3c6db51) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 12 Dec 2025 16:49:44 -0800
Received: from kbuild by d335e3c6db51 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vUDpO-000000006rP-2yxl
 for intel-wired-lan@lists.osuosl.org; Sat, 13 Dec 2025 00:49:42 +0000
Date: Sat, 13 Dec 2025 08:48:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512130848.RELK16Gi-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765586987; x=1797122987;
 h=date:from:to:subject:message-id;
 bh=LUP2P8+gMsMfOQ9cDgZPG5+dkX3AjCJ6SYQl4GRyeGM=;
 b=QzgmEA2Or0A3iEkZ2NggcgKLk96KH85mWvqmSi8zlnRuSJmA/3t+ZUZJ
 MRKpCDa69HR3o99UW7KbVKvwp326qmeUz1KPMDU/q6DfJeaDIgYWGbOtd
 7AeV8k9N96JtxhmY1vK4nY430pjigSET5NJi522voO5ru1PmisGD0PZv0
 w0riZKzPHeid6gBy6K3tmhJ8AP6MAz0N5OUXf1AauTCHPpMKDzPeQzT24
 eO0fTOt5pOJF4x6uoxDmHoOl98eZnZcCdhNK5sWgSgC1U9i6YGI6Ttt/D
 t5WNUw2uCeE8qfwYK+rqsnUx+uhgrbLud1uaAmtp4PTdpEGemnS7ziL0g
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QzgmEA2O
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7d95a50f1df73f9443cf88a8fe196f1846f40bc7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 7d95a50f1df73f9443cf88a8fe196f1846f40bc7  ice: Fix incorrect timeout ice_release_res()

elapsed time: 1450m

configs tested: 182
configs skipped: 2

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
arc                   randconfig-001-20251212    gcc-8.5.0
arc                   randconfig-002-20251212    gcc-15.1.0
arm                              alldefconfig    gcc-15.1.0
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-22
arm                          ep93xx_defconfig    clang-22
arm                        keystone_defconfig    gcc-15.1.0
arm                         mv78xx0_defconfig    clang-19
arm                   randconfig-001-20251212    clang-22
arm                   randconfig-002-20251212    clang-22
arm                   randconfig-003-20251212    gcc-8.5.0
arm                   randconfig-004-20251212    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251212    clang-18
arm64                 randconfig-002-20251212    clang-19
arm64                 randconfig-003-20251212    clang-22
arm64                 randconfig-004-20251212    gcc-8.5.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251212    gcc-14.3.0
csky                  randconfig-002-20251212    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    gcc-15.1.0
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251212    clang-22
hexagon               randconfig-002-20251212    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-15.1.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251212    gcc-12
i386        buildonly-randconfig-002-20251212    gcc-12
i386        buildonly-randconfig-003-20251212    gcc-14
i386        buildonly-randconfig-004-20251212    gcc-14
i386        buildonly-randconfig-005-20251212    gcc-14
i386        buildonly-randconfig-006-20251212    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251212    clang-20
i386                  randconfig-002-20251212    gcc-14
i386                  randconfig-003-20251212    clang-20
i386                  randconfig-004-20251212    gcc-14
i386                  randconfig-005-20251212    gcc-14
i386                  randconfig-006-20251212    gcc-14
i386                  randconfig-007-20251212    gcc-14
i386                  randconfig-011-20251212    gcc-14
i386                  randconfig-012-20251212    gcc-14
i386                  randconfig-013-20251212    gcc-14
i386                  randconfig-014-20251212    gcc-14
i386                  randconfig-015-20251212    clang-20
i386                  randconfig-016-20251212    gcc-14
i386                  randconfig-017-20251212    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251212    clang-22
loongarch             randconfig-002-20251212    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                           ip22_defconfig    gcc-15.1.0
mips                      maltaaprp_defconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251212    gcc-11.5.0
nios2                 randconfig-002-20251212    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251212    gcc-10.5.0
parisc                randconfig-002-20251212    gcc-12.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251212    clang-22
powerpc               randconfig-002-20251212    gcc-12.5.0
powerpc64             randconfig-001-20251212    gcc-11.5.0
powerpc64             randconfig-002-20251212    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251212    clang-22
riscv                 randconfig-002-20251212    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251212    clang-22
s390                  randconfig-002-20251212    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251212    gcc-14.3.0
sh                    randconfig-002-20251212    gcc-10.5.0
sh                          rsk7201_defconfig    gcc-15.1.0
sh                   secureedge5410_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251212    gcc-8.5.0
sparc                 randconfig-002-20251212    gcc-8.5.0
sparc64                          alldefconfig    gcc-15.1.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251212    gcc-8.5.0
sparc64               randconfig-002-20251212    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251212    clang-22
um                    randconfig-002-20251212    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251212    clang-20
x86_64      buildonly-randconfig-002-20251212    clang-20
x86_64      buildonly-randconfig-003-20251212    clang-20
x86_64      buildonly-randconfig-004-20251212    clang-20
x86_64      buildonly-randconfig-005-20251212    gcc-14
x86_64      buildonly-randconfig-006-20251212    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251212    gcc-14
x86_64                randconfig-002-20251212    clang-20
x86_64                randconfig-003-20251212    clang-20
x86_64                randconfig-004-20251212    clang-20
x86_64                randconfig-005-20251212    clang-20
x86_64                randconfig-006-20251212    clang-20
x86_64                randconfig-011-20251212    clang-20
x86_64                randconfig-012-20251212    gcc-14
x86_64                randconfig-013-20251212    gcc-14
x86_64                randconfig-014-20251212    clang-20
x86_64                randconfig-015-20251212    gcc-14
x86_64                randconfig-016-20251212    clang-20
x86_64                randconfig-071-20251212    gcc-12
x86_64                randconfig-072-20251212    gcc-14
x86_64                randconfig-073-20251212    clang-20
x86_64                randconfig-074-20251212    gcc-14
x86_64                randconfig-075-20251212    clang-20
x86_64                randconfig-076-20251212    gcc-14
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    gcc-15.1.0
xtensa                randconfig-001-20251212    gcc-8.5.0
xtensa                randconfig-002-20251212    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
