Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE51B129CA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jul 2025 11:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 452C541197;
	Sat, 26 Jul 2025 09:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eXprhr7kCcZ8; Sat, 26 Jul 2025 09:10:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01845411FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753521008;
	bh=CnPuBRTfWBr5zBAcIcfJ3ydYCWkd/BA4u2JBETsaztw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rom3SvUlxMiWixfeQX8KWuG21JNmBui18XhBIY39asy1JZQ96ol2+xHB8T11rv9Rs
	 MAdUsY+WYnoZeVMY1xRUufP/3YK5g1gGE0xX5UOes8ByTQqRdPBlbZ0qivhEZaDb0N
	 YqJc6m5mAKOYp9Jbb2tJCnxq/TO6pO3CZVFNqsVya7YN3MTTQkFi23FfJO9rUY+mjG
	 ZcAXdnQNgYSt6SLch7+QD1Ik1rM67Jfg+KshfYF/vXQP84FeSbtJeK0QG/YXJa60yN
	 6d5XDGvyTxTNsogWVg5AakS6uLpP8sdOmFk/3OkTZl5yqlSktmvdoJ3TX8inosG//T
	 bJ3fKHjBNK5QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01845411FE;
	Sat, 26 Jul 2025 09:10:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8024ADA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 09:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72788411E8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 09:10:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iqIwo-hN-9BM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jul 2025 09:10:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51B4241261
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51B4241261
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51B4241261
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 09:10:05 +0000 (UTC)
X-CSE-ConnectionGUID: HexOpaEoSJSwxcuMU2c7wg==
X-CSE-MsgGUID: h26/QbqPTTKwPab38eeh6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="55993960"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55993960"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2025 02:10:05 -0700
X-CSE-ConnectionGUID: aQarfzIlTpqHWQHKsYNkcw==
X-CSE-MsgGUID: 4PwoLpMqSmyncnBVRGaEaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="165573865"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 26 Jul 2025 02:10:03 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ufaun-000Log-25
 for intel-wired-lan@lists.osuosl.org; Sat, 26 Jul 2025 09:10:01 +0000
Date: Sat, 26 Jul 2025 17:09:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507261758.1PmbRHBt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753521005; x=1785057005;
 h=date:from:to:subject:message-id;
 bh=uDzYYlIiicEdN49KYfUJW+qWdR5NI9RKkFEJiUwY5+w=;
 b=gVI1FqKmaaE9tD2HTvdubMR+RCC+qmJNb7cyfEMBf9d5gAHcrgb43Hbu
 YqvZ5MsX9WQTBdJM/f8wAP+2GoVIn2rvjrFF7O6+70UXyWm/bcpu0dNOF
 +GGU/3JT91lCWeaky/rQQ+Sdho2WW8xc6Ls5po6q0zHbr9WslaVZ8V7FO
 J2VWdnoWYkU9lBTFFfzxXAi3uRWVenPPJq/migk6BzNCUp8JWQMWesqad
 giz3ACeKo/ofuVNvS40EXF9UcIlw4zv6G8CprwGCA1wRVyAtApd4+kKdV
 Gf7kGk/weyp7eAVwTrZtEiMASWj8J0/qlWwazWLYLgmSltLy/bCcfG/KR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gVI1FqKm
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 faa60990a5414e5a1957adc9434ca0e804ad700b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: faa60990a5414e5a1957adc9434ca0e804ad700b  Merge branch 'selftests-drv-net-fix-and-improve-command-requirement-checking'

elapsed time: 1825m

configs tested: 170
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250726    clang-22
arc                   randconfig-001-20250726    gcc-14.3.0
arc                   randconfig-002-20250726    clang-22
arc                   randconfig-002-20250726    gcc-12.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250726    clang-22
arm                   randconfig-001-20250726    gcc-8.5.0
arm                   randconfig-002-20250726    clang-22
arm                   randconfig-002-20250726    gcc-10.5.0
arm                   randconfig-003-20250726    clang-22
arm                   randconfig-003-20250726    gcc-10.5.0
arm                   randconfig-004-20250726    clang-22
arm                   randconfig-004-20250726    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                 randconfig-001-20250726    clang-22
arm64                 randconfig-001-20250726    gcc-8.5.0
arm64                 randconfig-002-20250726    clang-22
arm64                 randconfig-003-20250726    clang-22
arm64                 randconfig-003-20250726    gcc-12.5.0
arm64                 randconfig-004-20250726    clang-22
csky                              allnoconfig    clang-22
csky                  randconfig-001-20250726    gcc-15.1.0
csky                  randconfig-001-20250726    gcc-8.5.0
csky                  randconfig-002-20250726    gcc-15.1.0
csky                  randconfig-002-20250726    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250726    clang-22
hexagon               randconfig-001-20250726    gcc-8.5.0
hexagon               randconfig-002-20250726    clang-20
hexagon               randconfig-002-20250726    gcc-8.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250726    gcc-12
i386        buildonly-randconfig-002-20250726    gcc-12
i386        buildonly-randconfig-003-20250726    clang-20
i386        buildonly-randconfig-003-20250726    gcc-12
i386        buildonly-randconfig-004-20250726    gcc-12
i386        buildonly-randconfig-005-20250726    clang-20
i386        buildonly-randconfig-005-20250726    gcc-12
i386        buildonly-randconfig-006-20250726    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250726    gcc-12
i386                  randconfig-002-20250726    gcc-12
i386                  randconfig-003-20250726    gcc-12
i386                  randconfig-004-20250726    gcc-12
i386                  randconfig-005-20250726    gcc-12
i386                  randconfig-006-20250726    gcc-12
i386                  randconfig-007-20250726    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250726    gcc-15.1.0
loongarch             randconfig-001-20250726    gcc-8.5.0
loongarch             randconfig-002-20250726    gcc-14.3.0
loongarch             randconfig-002-20250726    gcc-8.5.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250726    gcc-8.5.0
nios2                 randconfig-002-20250726    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250726    gcc-8.5.0
parisc                randconfig-002-20250726    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20250726    clang-16
powerpc               randconfig-001-20250726    gcc-8.5.0
powerpc               randconfig-002-20250726    gcc-11.5.0
powerpc               randconfig-002-20250726    gcc-8.5.0
powerpc               randconfig-003-20250726    gcc-8.5.0
powerpc64             randconfig-001-20250726    clang-22
powerpc64             randconfig-001-20250726    gcc-8.5.0
powerpc64             randconfig-002-20250726    gcc-10.5.0
powerpc64             randconfig-002-20250726    gcc-8.5.0
powerpc64             randconfig-003-20250726    clang-22
powerpc64             randconfig-003-20250726    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                 randconfig-001-20250726    gcc-11.5.0
riscv                 randconfig-002-20250726    clang-17
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250726    clang-22
s390                  randconfig-002-20250726    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250726    gcc-12.5.0
sh                    randconfig-002-20250726    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250726    gcc-8.5.0
sparc                 randconfig-002-20250726    gcc-15.1.0
sparc64               randconfig-001-20250726    clang-22
sparc64               randconfig-002-20250726    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250726    gcc-12
um                    randconfig-002-20250726    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250726    gcc-12
x86_64      buildonly-randconfig-002-20250726    gcc-12
x86_64      buildonly-randconfig-003-20250726    gcc-12
x86_64      buildonly-randconfig-004-20250726    clang-20
x86_64      buildonly-randconfig-005-20250726    clang-20
x86_64      buildonly-randconfig-006-20250726    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250726    clang-20
x86_64                randconfig-002-20250726    clang-20
x86_64                randconfig-003-20250726    clang-20
x86_64                randconfig-004-20250726    clang-20
x86_64                randconfig-005-20250726    clang-20
x86_64                randconfig-006-20250726    clang-20
x86_64                randconfig-007-20250726    clang-20
x86_64                randconfig-008-20250726    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250726    gcc-8.5.0
xtensa                randconfig-002-20250726    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
