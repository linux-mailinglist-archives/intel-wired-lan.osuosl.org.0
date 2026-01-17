Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AAAD38E98
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jan 2026 14:04:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A41883FAC;
	Sat, 17 Jan 2026 13:04:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wx6s-emooXIu; Sat, 17 Jan 2026 13:04:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A02683FA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768655042;
	bh=TDhFnKy7ZKKMsbGQdKtkeL9GAsZvaL4jnWeAPsD1BRQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RNdga6hGtg5pGCWIl3gJ6x/j7oAnFv3UnFHspJKBsTTHzkSYpx8LGRp1PlcIbjwKJ
	 jOyGgqLzo1NiJ0FRWjBuggj+BnJdVreupmP527rIwVlNYvS6V+WIll9fb8jWE3/k4o
	 9pvYVlhzXEUfMDD6kjMX8fT/5EZHDKWrOeGWU45SnMloZd3i7eSLIm0rnq1nyR0asP
	 xY3uV41U5cp/RJrF3jknu6NnrmOCzbr5YCLjSsBnWXvb0Z8QMTuXY059WHezC9x3fc
	 tcYbFNPou0y8Xf4DOo6BpXcCB8N3uRTwOdDBV5Uga22dWXOSxRpBOCVQW6LKI7KC37
	 DnN5SH50SS8FA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A02683FA9;
	Sat, 17 Jan 2026 13:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 258272CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 13:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0115983FA6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 13:04:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9MRhBWJR8BUU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 13:04:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A63C83F99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A63C83F99
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A63C83F99
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 13:03:59 +0000 (UTC)
X-CSE-ConnectionGUID: n08HFcFHTjmJYBGRS9Ekaw==
X-CSE-MsgGUID: Tf02rGGUTEyOncVTHJGnhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11674"; a="80245916"
X-IronPort-AV: E=Sophos;i="6.21,234,1763452800"; d="scan'208";a="80245916"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2026 05:03:59 -0800
X-CSE-ConnectionGUID: rcNrFUUjTRa7kklzLDBGZg==
X-CSE-MsgGUID: WV6OFWyDQxyncHZ2F1vrGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,234,1763452800"; d="scan'208";a="209599448"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 17 Jan 2026 05:03:57 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vh5y6-00000000Lrg-47xA;
 Sat, 17 Jan 2026 13:03:54 +0000
Date: Sat, 17 Jan 2026 21:03:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601172125.vJCz4Vkx-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768655040; x=1800191040;
 h=date:from:to:subject:message-id;
 bh=TJP7nmiE5+ximoCpt1W8jozuiHheAGHytQxCgEvP1uw=;
 b=HwJU4mK8PLZ6bYhYQIWi/7E2t1dDiRfTIM6730Sz+uzEzeN0vzf7diGO
 5qX2PQMSNkaWTOPI/zvAWkRu0ELKS7W2fCDeGQiRMU/bCN9Rm1/qWoee9
 33Wfr247wfY5s+u3zMbl7vfRNbcUwtQqQSogrdFV2gS+zfSXqeUC1kkjr
 0ClrA9QXB2rvzJ+73psbPTrO9gLZmeAmqDrWcRKAam3A3BjR2lXK/yIPh
 R19TqhObXG+fpW73xknLlcdUMVe2iIdnXfycm+kWNhFx3L7d05XeEJ6gs
 +o5oWuhUG8IvOxgHlyWcOcUO6OFkbiiG3GyghSloW4LQv++qZO63R7kJr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HwJU4mK8
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d41f8acf7a86de68d8e1d0d5ab288ca5a003ae29
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
branch HEAD: d41f8acf7a86de68d8e1d0d5ab288ca5a003ae29  ice: fix retry for AQ command 0x06EE

elapsed time: 878m

configs tested: 200
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                          axs103_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260117    gcc-12.5.0
arc                   randconfig-001-20260117    gcc-8.5.0
arc                   randconfig-002-20260117    gcc-12.5.0
arc                   randconfig-002-20260117    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260117    clang-20
arm                   randconfig-001-20260117    gcc-12.5.0
arm                   randconfig-002-20260117    gcc-12.5.0
arm                   randconfig-002-20260117    gcc-8.5.0
arm                   randconfig-003-20260117    gcc-12.5.0
arm                   randconfig-003-20260117    gcc-8.5.0
arm                   randconfig-004-20260117    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260117    clang-22
hexagon               randconfig-002-20260117    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260117    clang-20
i386        buildonly-randconfig-001-20260117    gcc-13
i386        buildonly-randconfig-002-20260117    gcc-13
i386        buildonly-randconfig-003-20260117    gcc-13
i386        buildonly-randconfig-004-20260117    clang-20
i386        buildonly-randconfig-004-20260117    gcc-13
i386        buildonly-randconfig-005-20260117    gcc-13
i386        buildonly-randconfig-006-20260117    clang-20
i386        buildonly-randconfig-006-20260117    gcc-13
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260117    gcc-14
i386                  randconfig-002-20260117    gcc-14
i386                  randconfig-003-20260117    gcc-14
i386                  randconfig-004-20260117    gcc-14
i386                  randconfig-005-20260117    gcc-14
i386                  randconfig-006-20260117    gcc-14
i386                  randconfig-007-20260117    gcc-14
i386                  randconfig-011-20260117    gcc-14
i386                  randconfig-012-20260117    gcc-14
i386                  randconfig-013-20260117    gcc-14
i386                  randconfig-014-20260117    gcc-14
i386                  randconfig-015-20260117    gcc-14
i386                  randconfig-016-20260117    gcc-14
i386                  randconfig-017-20260117    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260117    clang-22
loongarch             randconfig-002-20260117    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          malta_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260117    clang-22
nios2                 randconfig-002-20260117    clang-22
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260117    clang-22
parisc                randconfig-002-20260117    clang-22
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      bamboo_defconfig    gcc-15.2.0
powerpc                      ppc64e_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260117    clang-22
powerpc               randconfig-002-20260117    clang-22
powerpc                    socrates_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260117    clang-22
powerpc64             randconfig-002-20260117    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260117    gcc-10.5.0
riscv                 randconfig-002-20260117    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260117    gcc-10.5.0
s390                  randconfig-002-20260117    gcc-10.5.0
sh                               alldefconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260117    gcc-10.5.0
sh                    randconfig-002-20260117    gcc-10.5.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260117    gcc-14.3.0
sparc                 randconfig-002-20260117    gcc-14.3.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260117    gcc-14.3.0
sparc64               randconfig-002-20260117    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260117    gcc-14.3.0
um                    randconfig-002-20260117    gcc-14.3.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260117    clang-20
x86_64      buildonly-randconfig-002-20260117    clang-20
x86_64      buildonly-randconfig-003-20260117    clang-20
x86_64      buildonly-randconfig-004-20260117    clang-20
x86_64      buildonly-randconfig-005-20260117    clang-20
x86_64      buildonly-randconfig-006-20260117    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-011-20260117    clang-20
x86_64                randconfig-012-20260117    clang-20
x86_64                randconfig-013-20260117    clang-20
x86_64                randconfig-014-20260117    clang-20
x86_64                randconfig-015-20260117    clang-20
x86_64                randconfig-016-20260117    clang-20
x86_64                randconfig-071-20260117    clang-20
x86_64                randconfig-072-20260117    clang-20
x86_64                randconfig-073-20260117    clang-20
x86_64                randconfig-074-20260117    clang-20
x86_64                randconfig-075-20260117    clang-20
x86_64                randconfig-076-20260117    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                           allyesconfig    gcc-15.2.0
xtensa                  cadence_csp_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260117    gcc-14.3.0
xtensa                randconfig-002-20260117    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
