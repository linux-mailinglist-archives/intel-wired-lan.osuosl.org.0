Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A639D6957
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Nov 2024 14:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CBE36149C;
	Sat, 23 Nov 2024 13:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cw9vtvSAN4kB; Sat, 23 Nov 2024 13:37:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF2A26149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732369072;
	bh=LfDi7LUyPI7LN827+BUpQyryGW2MsfleCUtI4d/LRLQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mmRjcuIbq/1pEaedjqHMgpkMYsYBVOg/2bkQ5Mdn/yPBYRPs/ClxxvizBVZXsGOYD
	 5D9cSKHzoVaGbD3javhGtcGoyMzMkE4SNgd/QXlmpayfLMJlBGc+0vJMA6sUYwPiPF
	 vYXl3JpEzkizBnrjsl2pZ6a+p755kdeXndIF8p6Am8bvgZiLaGWcZODCwSgVPPDNLx
	 hSZ+ZD7RoXtXrHauP80KL6uZrDTss0bUoeh4ZW7ZAdQ824cu/XPG7WD2KNGHrMhlDM
	 CZ7m2X4ZYuKwsyzhBII8uusAafjbGYywtlrVgEv6b8kH0akoUfh+e1JmKNw/Ce59X8
	 LyGvqebYQUfUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF2A26149A;
	Sat, 23 Nov 2024 13:37:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 473C51D93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2024 13:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33C906149A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2024 13:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJQ-HWajjI9D for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Nov 2024 13:37:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B69C161495
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B69C161495
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B69C161495
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2024 13:37:49 +0000 (UTC)
X-CSE-ConnectionGUID: a/b5tYjPTCG+sueHsLYjjw==
X-CSE-MsgGUID: G5eox9dQSdmSr/XhtKB05w==
X-IronPort-AV: E=McAfee;i="6700,10204,11265"; a="43132970"
X-IronPort-AV: E=Sophos;i="6.12,178,1728975600"; d="scan'208";a="43132970"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2024 05:37:49 -0800
X-CSE-ConnectionGUID: zpWwADdFRfq5t/fsrbv6bA==
X-CSE-MsgGUID: UidCOY16RayNL7d14Mqqmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,178,1728975600"; d="scan'208";a="128333502"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 23 Nov 2024 05:37:47 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tEqKW-0004eN-2u
 for intel-wired-lan@lists.osuosl.org; Sat, 23 Nov 2024 13:37:44 +0000
Date: Sat, 23 Nov 2024 21:37:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411232125.AKYo5yXs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732369070; x=1763905070;
 h=date:from:to:subject:message-id;
 bh=8KJCEhnHW9yqQ8UDqFOvG3xjDukurvC3j6JGNrl6E+M=;
 b=oAXMGjeQA2/0VQDVnPCAwjt47ZU/7KMu8KhzWZkirV5STpWnJeiUadnY
 5mPTIMPbknbobfZePR/ovs5budxFOUOyhJV53rcVi/qWToLGDBQgbfTBK
 V/OSnx30U7nIw30PfMjURgYZqXEeN5HBBqDHZOHru4/FSK9jKVsu9QJbW
 xCT7/UUbuSDsAvbp5rOy83sVqPSdc2QETQgV7tWmVUwCOq4xMkf8xXLn3
 vyy5ZAr4TZp/+PkeO2U7ICGL6MrCq9xhFlAfuxObWkxRpVp6o7W5s0VXD
 PbPkhIko2ggdedzsccntoUNdwLgZwcnJau24zvlf6QRD/xv9txaLtJ4ds
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oAXMGjeQ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 4b8b07968dc902d751d23a775c1a02220db267c9
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
branch HEAD: 4b8b07968dc902d751d23a775c1a02220db267c9  igc: Allow hot-swapping XDP program

elapsed time: 955m

configs tested: 196
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20241123    gcc-13.2.0
arc                   randconfig-001-20241123    gcc-14.2.0
arc                   randconfig-002-20241123    gcc-13.2.0
arc                   randconfig-002-20241123    gcc-14.2.0
arc                           tb10x_defconfig    clang-14
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                          ep93xx_defconfig    clang-14
arm                   milbeaut_m10v_defconfig    clang-14
arm                   randconfig-001-20241123    gcc-14.2.0
arm                   randconfig-002-20241123    clang-20
arm                   randconfig-002-20241123    gcc-14.2.0
arm                   randconfig-003-20241123    clang-20
arm                   randconfig-003-20241123    gcc-14.2.0
arm                   randconfig-004-20241123    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241123    clang-20
arm64                 randconfig-001-20241123    gcc-14.2.0
arm64                 randconfig-002-20241123    gcc-14.2.0
arm64                 randconfig-003-20241123    gcc-14.2.0
arm64                 randconfig-004-20241123    clang-20
arm64                 randconfig-004-20241123    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241123    gcc-14.2.0
csky                  randconfig-002-20241123    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241123    clang-20
hexagon               randconfig-001-20241123    gcc-14.2.0
hexagon               randconfig-002-20241123    clang-20
hexagon               randconfig-002-20241123    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241123    clang-19
i386        buildonly-randconfig-002-20241123    clang-19
i386        buildonly-randconfig-003-20241123    clang-19
i386        buildonly-randconfig-004-20241123    clang-19
i386        buildonly-randconfig-005-20241123    clang-19
i386        buildonly-randconfig-006-20241123    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241123    clang-19
i386                  randconfig-002-20241123    clang-19
i386                  randconfig-003-20241123    clang-19
i386                  randconfig-004-20241123    clang-19
i386                  randconfig-005-20241123    clang-19
i386                  randconfig-006-20241123    clang-19
i386                  randconfig-011-20241123    clang-19
i386                  randconfig-012-20241123    clang-19
i386                  randconfig-013-20241123    clang-19
i386                  randconfig-014-20241123    clang-19
i386                  randconfig-015-20241123    clang-19
i386                  randconfig-016-20241123    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241123    gcc-14.2.0
loongarch             randconfig-002-20241123    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    clang-14
mips                           ip32_defconfig    clang-14
mips                      maltaaprp_defconfig    clang-14
mips                          rb532_defconfig    clang-14
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241123    gcc-14.2.0
nios2                 randconfig-002-20241123    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241123    gcc-14.2.0
parisc                randconfig-002-20241123    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                    adder875_defconfig    clang-14
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      cm5200_defconfig    clang-14
powerpc                 mpc834x_itx_defconfig    clang-14
powerpc                 mpc837x_rdb_defconfig    clang-14
powerpc               randconfig-001-20241123    gcc-14.2.0
powerpc               randconfig-002-20241123    clang-20
powerpc               randconfig-002-20241123    gcc-14.2.0
powerpc               randconfig-003-20241123    clang-20
powerpc               randconfig-003-20241123    gcc-14.2.0
powerpc                     taishan_defconfig    clang-14
powerpc64             randconfig-001-20241123    gcc-14.2.0
powerpc64             randconfig-002-20241123    clang-20
powerpc64             randconfig-002-20241123    gcc-14.2.0
powerpc64             randconfig-003-20241123    clang-20
powerpc64             randconfig-003-20241123    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241123    clang-20
riscv                 randconfig-001-20241123    gcc-14.2.0
riscv                 randconfig-002-20241123    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241123    gcc-14.2.0
s390                  randconfig-002-20241123    clang-20
s390                  randconfig-002-20241123    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20241123    gcc-14.2.0
sh                    randconfig-002-20241123    gcc-14.2.0
sh                          rsk7264_defconfig    clang-14
sh                          sdk7786_defconfig    clang-14
sh                           se7705_defconfig    clang-14
sparc                            alldefconfig    clang-14
sparc                            allmodconfig    gcc-14.2.0
sparc                       sparc32_defconfig    clang-14
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241123    gcc-14.2.0
sparc64               randconfig-002-20241123    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241123    clang-20
um                    randconfig-001-20241123    gcc-14.2.0
um                    randconfig-002-20241123    clang-20
um                    randconfig-002-20241123    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241123    gcc-12
x86_64      buildonly-randconfig-002-20241123    gcc-12
x86_64      buildonly-randconfig-003-20241123    gcc-12
x86_64      buildonly-randconfig-004-20241123    gcc-12
x86_64      buildonly-randconfig-005-20241123    gcc-12
x86_64      buildonly-randconfig-006-20241123    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241123    gcc-12
x86_64                randconfig-002-20241123    gcc-12
x86_64                randconfig-003-20241123    gcc-12
x86_64                randconfig-004-20241123    gcc-12
x86_64                randconfig-005-20241123    gcc-12
x86_64                randconfig-006-20241123    gcc-12
x86_64                randconfig-011-20241123    gcc-12
x86_64                randconfig-012-20241123    gcc-12
x86_64                randconfig-013-20241123    gcc-12
x86_64                randconfig-014-20241123    gcc-12
x86_64                randconfig-015-20241123    gcc-12
x86_64                randconfig-016-20241123    gcc-12
x86_64                randconfig-071-20241123    gcc-12
x86_64                randconfig-072-20241123    gcc-12
x86_64                randconfig-073-20241123    gcc-12
x86_64                randconfig-074-20241123    gcc-12
x86_64                randconfig-075-20241123    gcc-12
x86_64                randconfig-076-20241123    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                               rhel-9.4    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241123    gcc-14.2.0
xtensa                randconfig-002-20241123    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
