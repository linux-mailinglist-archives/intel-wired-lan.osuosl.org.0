Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DD0A69478
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 17:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6A1E811B7;
	Wed, 19 Mar 2025 16:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qvo21GoUyX5; Wed, 19 Mar 2025 16:14:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 155B8811BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742400864;
	bh=lFI397zcfuvDvDbesldNEbAWFoiXRzX6YmZkRWLs5oo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fVsRbQsYZa+TtQRLQQDmw1K/GWs8RgSaMDgy60Jhz2SnxqQlJodTQNtfDkfhcCLGs
	 GSoLh7K/VbpZr3L5RvCABU5nJIncjS+tVPNpSgQDLa/bJ2jmYX1INL06XPOGcCw0m3
	 dJF+LEp3Hs4An++f3XO4U9+iOn4rIOB38tMzxz5t0//HqdyR4FQ8c0pcq3VsmYtRp9
	 E5f1bt5gFfW4E8AFfTWvIkXWMqgfCD9u0oMsIzO6iz8rI5aS5X0hzeRBajtAi8rk+U
	 klE2C647cdm/JPQfeW15lTtbxJpOvcH0/jdLcbjW76+kOHrfkG6qbSRNxMlywB7TrD
	 58qQnNCm/8fHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 155B8811BC;
	Wed, 19 Mar 2025 16:14:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D5081CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7F6D40134
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oLl8vVlUQGnR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 16:14:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D65A5400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D65A5400CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D65A5400CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:14:20 +0000 (UTC)
X-CSE-ConnectionGUID: cNa/jkniRAydTHG98XXmgg==
X-CSE-MsgGUID: s+UTD0BSRDqg8YTbewVGJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43520258"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43520258"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 09:14:21 -0700
X-CSE-ConnectionGUID: qJdMYRESSrGxW/6agk3d2Q==
X-CSE-MsgGUID: OPzM4kI1RJ6LLDjtfT+nQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123612043"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 19 Mar 2025 09:14:19 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tuw3d-000FVC-0m
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Mar 2025 16:14:17 +0000
Date: Thu, 20 Mar 2025 00:13:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503200037.ImB8n4go-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742400861; x=1773936861;
 h=date:from:to:subject:message-id;
 bh=qQW7vU+49s16lHc15ifg26+6eALkGfX0cSe3dFQu0Os=;
 b=bqESTYxAdDBp7Dv2sr06n6qEXKKkLlYMM7wkJKprOhNQW+ewoelg+Mag
 LcIJlsF1ib3wbrnfGl3/jO3s17tuIuQ/64SP2l8cA0CQP4FHiEl1da+EZ
 pb0tngVf77gkb7BjqjhWNfwDJquei++b85wH67CaqB/rjRvUwj67RGMff
 R3MkJxLeQFmvUX6wrpFjen6BFY0W8KcOkwgb2BSbNRF7ROCg9e3UK73ez
 zByZ51fZAPJbT0kJKfmgdoiZ8h0THXRvTWPlHDh/jB6KxAqk8eNuWNUCT
 CxW8sboS5w9BPZOwABECLgB7Qo4xRo5Ro3+zGGHRspbKjKge5HOkroEQs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bqESTYxA
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 9a81fc3480bf5dbe2bf80e278c440770f6ba2692
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
branch HEAD: 9a81fc3480bf5dbe2bf80e278c440770f6ba2692  ipv6: Set errno after ip_fib_metrics_init() in ip6_route_info_create().

elapsed time: 1605m

configs tested: 256
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                             allnoconfig    gcc-6.5.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-9.3.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-13.3.0
arc                               allnoconfig    gcc-8.5.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-10.5.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250319    gcc-14.2.0
arc                   randconfig-001-20250319    gcc-7.5.0
arc                   randconfig-002-20250319    gcc-14.2.0
arc                   randconfig-002-20250319    gcc-7.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-13.3.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-13.3.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                        multi_v5_defconfig    gcc-14.2.0
arm                   randconfig-001-20250319    clang-18
arm                   randconfig-001-20250319    gcc-7.5.0
arm                   randconfig-002-20250319    clang-21
arm                   randconfig-002-20250319    gcc-7.5.0
arm                   randconfig-003-20250319    clang-20
arm                   randconfig-003-20250319    gcc-7.5.0
arm                   randconfig-004-20250319    clang-16
arm                   randconfig-004-20250319    gcc-7.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-13.3.0
arm64                             allnoconfig    gcc-8.5.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250319    gcc-14.2.0
arm64                 randconfig-001-20250319    gcc-7.5.0
arm64                 randconfig-002-20250319    gcc-7.5.0
arm64                 randconfig-003-20250319    gcc-12.3.0
arm64                 randconfig-003-20250319    gcc-7.5.0
arm64                 randconfig-004-20250319    gcc-7.5.0
csky                              allnoconfig    gcc-13.3.0
csky                              allnoconfig    gcc-9.3.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250319    gcc-10.5.0
csky                  randconfig-001-20250319    gcc-14.2.0
csky                  randconfig-002-20250319    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-13.3.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250319    clang-21
hexagon               randconfig-001-20250319    gcc-10.5.0
hexagon               randconfig-002-20250319    clang-16
hexagon               randconfig-002-20250319    gcc-10.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250319    gcc-12
i386        buildonly-randconfig-002-20250319    gcc-12
i386        buildonly-randconfig-003-20250319    gcc-12
i386        buildonly-randconfig-004-20250319    clang-20
i386        buildonly-randconfig-004-20250319    gcc-12
i386        buildonly-randconfig-005-20250319    gcc-12
i386        buildonly-randconfig-006-20250319    clang-20
i386        buildonly-randconfig-006-20250319    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250319    gcc-11
i386                  randconfig-002-20250319    gcc-11
i386                  randconfig-003-20250319    gcc-11
i386                  randconfig-004-20250319    gcc-11
i386                  randconfig-005-20250319    gcc-11
i386                  randconfig-006-20250319    gcc-11
i386                  randconfig-007-20250319    gcc-11
i386                  randconfig-011-20250319    gcc-12
i386                  randconfig-012-20250319    gcc-12
i386                  randconfig-013-20250319    gcc-12
i386                  randconfig-014-20250319    gcc-12
i386                  randconfig-015-20250319    gcc-12
i386                  randconfig-016-20250319    gcc-12
i386                  randconfig-017-20250319    gcc-12
loongarch                        allmodconfig    gcc-12.4.0
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-13.3.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250319    gcc-10.5.0
loongarch             randconfig-001-20250319    gcc-14.2.0
loongarch             randconfig-002-20250319    gcc-10.5.0
loongarch             randconfig-002-20250319    gcc-14.2.0
m68k                             allmodconfig    gcc-12.4.0
m68k                             allmodconfig    gcc-8.5.0
m68k                              allnoconfig    gcc-11.5.0
m68k                              allnoconfig    gcc-5.5.0
m68k                             allyesconfig    gcc-12.4.0
m68k                             allyesconfig    gcc-6.5.0
m68k                                defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-12.4.0
microblaze                       allmodconfig    gcc-9.3.0
microblaze                        allnoconfig    gcc-11.5.0
microblaze                       allyesconfig    gcc-12.4.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-9.3.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-10.5.0
mips                              allnoconfig    gcc-11.5.0
mips                            gpr_defconfig    clang-18
mips                           ip22_defconfig    gcc-14.2.0
mips                           ip28_defconfig    clang-18
mips                      pic32mzda_defconfig    gcc-14.2.0
mips                         rt305x_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-8.5.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250319    gcc-10.5.0
nios2                 randconfig-001-20250319    gcc-14.2.0
nios2                 randconfig-002-20250319    gcc-10.5.0
openrisc                          allnoconfig    clang-15
openrisc                         allyesconfig    gcc-10.5.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-10.5.0
parisc                           allmodconfig    gcc-5.5.0
parisc                            allnoconfig    clang-15
parisc                           allyesconfig    gcc-10.5.0
parisc                           allyesconfig    gcc-9.3.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250319    gcc-10.5.0
parisc                randconfig-002-20250319    gcc-10.5.0
parisc                randconfig-002-20250319    gcc-5.5.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-10.5.0
powerpc                           allnoconfig    clang-15
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-10.5.0
powerpc                    amigaone_defconfig    gcc-14.2.0
powerpc                    gamecube_defconfig    clang-18
powerpc                   motionpro_defconfig    clang-18
powerpc                 mpc8315_rdb_defconfig    clang-18
powerpc               randconfig-001-20250319    gcc-10.5.0
powerpc               randconfig-001-20250319    gcc-9.3.0
powerpc               randconfig-002-20250319    clang-21
powerpc               randconfig-002-20250319    gcc-10.5.0
powerpc               randconfig-003-20250319    clang-21
powerpc               randconfig-003-20250319    gcc-10.5.0
powerpc                     taishan_defconfig    gcc-14.2.0
powerpc                 xes_mpc85xx_defconfig    clang-18
powerpc64             randconfig-001-20250319    clang-20
powerpc64             randconfig-001-20250319    gcc-10.5.0
powerpc64             randconfig-002-20250319    gcc-10.5.0
powerpc64             randconfig-002-20250319    gcc-5.5.0
powerpc64             randconfig-003-20250319    clang-21
powerpc64             randconfig-003-20250319    gcc-10.5.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-10.5.0
riscv                             allnoconfig    clang-15
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-10.5.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250319    clang-20
riscv                 randconfig-001-20250319    gcc-6.5.0
riscv                 randconfig-002-20250319    clang-17
riscv                 randconfig-002-20250319    gcc-6.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-9.3.0
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-13.2.0
s390                             allyesconfig    gcc-9.3.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250319    gcc-11.5.0
s390                  randconfig-001-20250319    gcc-6.5.0
s390                  randconfig-002-20250319    gcc-6.5.0
s390                  randconfig-002-20250319    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                               allmodconfig    gcc-9.3.0
sh                                allnoconfig    gcc-10.5.0
sh                                allnoconfig    gcc-11.5.0
sh                               allyesconfig    gcc-14.2.0
sh                               allyesconfig    gcc-9.3.0
sh                                  defconfig    gcc-12
sh                          lboxre2_defconfig    gcc-14.2.0
sh                          polaris_defconfig    clang-18
sh                    randconfig-001-20250319    gcc-11.5.0
sh                    randconfig-001-20250319    gcc-6.5.0
sh                    randconfig-002-20250319    gcc-14.2.0
sh                    randconfig-002-20250319    gcc-6.5.0
sh                   secureedge5410_defconfig    clang-18
sparc                            allmodconfig    gcc-6.5.0
sparc                            allmodconfig    gcc-9.3.0
sparc                             allnoconfig    gcc-11.5.0
sparc                             allnoconfig    gcc-6.5.0
sparc                 randconfig-001-20250319    gcc-6.5.0
sparc                 randconfig-002-20250319    gcc-13.3.0
sparc                 randconfig-002-20250319    gcc-6.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250319    gcc-14.2.0
sparc64               randconfig-001-20250319    gcc-6.5.0
sparc64               randconfig-002-20250319    gcc-14.2.0
sparc64               randconfig-002-20250319    gcc-6.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-15
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250319    gcc-12
um                    randconfig-001-20250319    gcc-6.5.0
um                    randconfig-002-20250319    gcc-11
um                    randconfig-002-20250319    gcc-6.5.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250319    clang-20
x86_64      buildonly-randconfig-001-20250319    gcc-12
x86_64      buildonly-randconfig-002-20250319    clang-20
x86_64      buildonly-randconfig-002-20250319    gcc-12
x86_64      buildonly-randconfig-003-20250319    gcc-12
x86_64      buildonly-randconfig-004-20250319    gcc-11
x86_64      buildonly-randconfig-004-20250319    gcc-12
x86_64      buildonly-randconfig-005-20250319    clang-20
x86_64      buildonly-randconfig-005-20250319    gcc-12
x86_64      buildonly-randconfig-006-20250319    clang-20
x86_64      buildonly-randconfig-006-20250319    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250319    clang-20
x86_64                randconfig-002-20250319    clang-20
x86_64                randconfig-003-20250319    clang-20
x86_64                randconfig-004-20250319    clang-20
x86_64                randconfig-005-20250319    clang-20
x86_64                randconfig-006-20250319    clang-20
x86_64                randconfig-007-20250319    clang-20
x86_64                randconfig-008-20250319    clang-20
x86_64                randconfig-071-20250319    gcc-12
x86_64                randconfig-072-20250319    gcc-12
x86_64                randconfig-073-20250319    gcc-12
x86_64                randconfig-074-20250319    gcc-12
x86_64                randconfig-075-20250319    gcc-12
x86_64                randconfig-076-20250319    gcc-12
x86_64                randconfig-077-20250319    gcc-12
x86_64                randconfig-078-20250319    gcc-12
x86_64                               rhel-9.4    clang-20
xtensa                            allnoconfig    gcc-11.5.0
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250319    gcc-10.5.0
xtensa                randconfig-001-20250319    gcc-6.5.0
xtensa                randconfig-002-20250319    gcc-14.2.0
xtensa                randconfig-002-20250319    gcc-6.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
