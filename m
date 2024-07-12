Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1371F93008A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 20:44:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2EED61404;
	Fri, 12 Jul 2024 18:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOxVRsdw1KHp; Fri, 12 Jul 2024 18:44:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD3136138C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720809885;
	bh=ijq7SVNHjVZex7okBvRgwNgCVR/9vx6jn1NzB3+7TFw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7r5e8AOw/ZUtUHExZ3kPqWJAoeUGrxLYUqMaAzKnbKJhDLtl+veJB45rvwmI+CJO/
	 AtTwRoD+fUF3XqlrzBcw0eeC6SRSNh1hXsmWB5h/ivw3zlRj3c7aF/lz8EVIOBPPhh
	 L1y7UN/gIQftTSkUMqqublZ46AgpH66+Utbk3+aFGiA/BfUt0347NK3bh0kEZHrtGk
	 KYq16C7diqAWnZzV3bQYBUsusIaPRPbcgcufnPoww/9UQ9zTBFKGfdJA8xPukM6lH4
	 /zA6IGwe027xzDCLNXXJld3wmSYW9rKfh8gkL5G/a1/6nT5ugO+s+dMxjk2KOGx+eQ
	 uyaD5FcCcUiCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD3136138C;
	Fri, 12 Jul 2024 18:44:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1F5A1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 18:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3F9A81F2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 18:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dh7dAF39SC6L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 18:44:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ED23681C18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED23681C18
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED23681C18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 18:44:41 +0000 (UTC)
X-CSE-ConnectionGUID: 0aFqE24uQyKkH7wL3BgnIA==
X-CSE-MsgGUID: lfG8TjjiRdGgITW1s0G/9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="17976182"
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="17976182"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 11:44:41 -0700
X-CSE-ConnectionGUID: rvLWuw+uScSWErvLW6sBBQ==
X-CSE-MsgGUID: 99ihH40aQj6sSvnI/qBwag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="48740384"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 12 Jul 2024 11:44:41 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sSLG2-000b8H-18
 for intel-wired-lan@lists.osuosl.org; Fri, 12 Jul 2024 18:44:38 +0000
Date: Sat, 13 Jul 2024 02:44:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407130258.DBHrKk8P-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720809882; x=1752345882;
 h=date:from:to:subject:message-id;
 bh=1qlHPNmrhsayJfs+1XNzQKf7Q92ZcJ0tlQ+C4Me1iMg=;
 b=FOoOvJ4cxbn6/NRMGZD6LUk5c/MKW7YZoRTgzDmfVOCFQDD+dSSKLfLK
 /fVsYzjAfxF9uv7g/ud+K7wnWUo2F+ubjR+FRTRa8RrDNq/MrFRetMFEI
 2G/aYxr4iP002PclxE1PX2F5QFSTle3rX27AzH5c6MFy9odW1lhpaZv+x
 Gg0sVqyel0n6NPhktM/0iA6vcDM0XvwD6t2Q3NbFGWIx0bDrpDr7TcpUG
 ZfSmgoDzDs+2xDUu/JGFGW84dpprCRJHhxQ2fBbzNuYXcNloEUcEYlLwW
 P0WZldpFvvRAHYz4HfRzSoCP9b3r2gb7MvJkpe5mSIgXl1f6EmvT7XXsK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FOoOvJ4c
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 e10989e56f5231934103d5a4c7c8926c783924ca
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
branch HEAD: e10989e56f5231934103d5a4c7c8926c783924ca  ice: Add tracepoint for adding and removing switch rules

elapsed time: 1460m

configs tested: 259
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240712   gcc-13.2.0
arc                   randconfig-002-20240712   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                        clps711x_defconfig   clang-19
arm                                 defconfig   gcc-13.2.0
arm                          exynos_defconfig   clang-17
arm                         lpc18xx_defconfig   clang-17
arm                         lpc18xx_defconfig   clang-19
arm                        multi_v7_defconfig   clang-17
arm                   randconfig-001-20240712   clang-19
arm                   randconfig-001-20240712   gcc-13.2.0
arm                   randconfig-002-20240712   clang-19
arm                   randconfig-002-20240712   gcc-13.2.0
arm                   randconfig-003-20240712   gcc-13.2.0
arm                   randconfig-003-20240712   gcc-14.1.0
arm                   randconfig-004-20240712   clang-15
arm                   randconfig-004-20240712   gcc-13.2.0
arm                         s5pv210_defconfig   clang-19
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240712   gcc-13.2.0
arm64                 randconfig-001-20240712   gcc-14.1.0
arm64                 randconfig-002-20240712   gcc-13.2.0
arm64                 randconfig-002-20240712   gcc-14.1.0
arm64                 randconfig-003-20240712   clang-19
arm64                 randconfig-003-20240712   gcc-13.2.0
arm64                 randconfig-004-20240712   clang-17
arm64                 randconfig-004-20240712   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240712   gcc-13.2.0
csky                  randconfig-001-20240712   gcc-14.1.0
csky                  randconfig-002-20240712   gcc-13.2.0
csky                  randconfig-002-20240712   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240712   clang-14
hexagon               randconfig-002-20240712   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240712   gcc-9
i386         buildonly-randconfig-002-20240712   clang-18
i386         buildonly-randconfig-002-20240712   gcc-9
i386         buildonly-randconfig-003-20240712   clang-18
i386         buildonly-randconfig-003-20240712   gcc-9
i386         buildonly-randconfig-004-20240712   clang-18
i386         buildonly-randconfig-004-20240712   gcc-9
i386         buildonly-randconfig-005-20240712   gcc-11
i386         buildonly-randconfig-005-20240712   gcc-9
i386         buildonly-randconfig-006-20240712   clang-18
i386         buildonly-randconfig-006-20240712   gcc-9
i386                                defconfig   clang-18
i386                  randconfig-001-20240712   clang-18
i386                  randconfig-001-20240712   gcc-9
i386                  randconfig-002-20240712   clang-18
i386                  randconfig-002-20240712   gcc-9
i386                  randconfig-003-20240712   clang-18
i386                  randconfig-003-20240712   gcc-9
i386                  randconfig-004-20240712   clang-18
i386                  randconfig-004-20240712   gcc-9
i386                  randconfig-005-20240712   clang-18
i386                  randconfig-005-20240712   gcc-9
i386                  randconfig-006-20240712   clang-18
i386                  randconfig-006-20240712   gcc-9
i386                  randconfig-011-20240712   clang-18
i386                  randconfig-011-20240712   gcc-9
i386                  randconfig-012-20240712   clang-18
i386                  randconfig-012-20240712   gcc-9
i386                  randconfig-013-20240712   clang-18
i386                  randconfig-013-20240712   gcc-9
i386                  randconfig-014-20240712   gcc-10
i386                  randconfig-014-20240712   gcc-9
i386                  randconfig-015-20240712   gcc-10
i386                  randconfig-015-20240712   gcc-9
i386                  randconfig-016-20240712   gcc-12
i386                  randconfig-016-20240712   gcc-9
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240712   gcc-13.2.0
loongarch             randconfig-001-20240712   gcc-14.1.0
loongarch             randconfig-002-20240712   gcc-13.2.0
loongarch             randconfig-002-20240712   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                          ath79_defconfig   clang-17
mips                           ci20_defconfig   clang-17
mips                     decstation_defconfig   clang-19
mips                            gpr_defconfig   clang-19
mips                        omega2p_defconfig   clang-17
mips                      pic32mzda_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240712   gcc-13.2.0
nios2                 randconfig-001-20240712   gcc-14.1.0
nios2                 randconfig-002-20240712   gcc-13.2.0
nios2                 randconfig-002-20240712   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240712   gcc-13.2.0
parisc                randconfig-001-20240712   gcc-14.1.0
parisc                randconfig-002-20240712   gcc-13.2.0
parisc                randconfig-002-20240712   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      cm5200_defconfig   clang-19
powerpc                        fsp2_defconfig   clang-17
powerpc                  iss476-smp_defconfig   clang-19
powerpc                      mgcoge_defconfig   clang-19
powerpc                 mpc8313_rdb_defconfig   clang-17
powerpc                 mpc834x_itx_defconfig   clang-19
powerpc               randconfig-001-20240712   clang-15
powerpc               randconfig-001-20240712   gcc-13.2.0
powerpc               randconfig-002-20240712   clang-19
powerpc               randconfig-002-20240712   gcc-13.2.0
powerpc               randconfig-003-20240712   clang-19
powerpc               randconfig-003-20240712   gcc-13.2.0
powerpc64                        alldefconfig   clang-17
powerpc64             randconfig-001-20240712   clang-19
powerpc64             randconfig-001-20240712   gcc-13.2.0
powerpc64             randconfig-002-20240712   clang-19
powerpc64             randconfig-002-20240712   gcc-13.2.0
powerpc64             randconfig-003-20240712   gcc-13.2.0
powerpc64             randconfig-003-20240712   gcc-14.1.0
riscv                            alldefconfig   clang-19
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240712   clang-19
riscv                 randconfig-001-20240712   gcc-13.2.0
riscv                 randconfig-002-20240712   gcc-13.2.0
riscv                 randconfig-002-20240712   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240712   gcc-13.2.0
s390                  randconfig-001-20240712   gcc-14.1.0
s390                  randconfig-002-20240712   gcc-13.2.0
s390                  randconfig-002-20240712   gcc-14.1.0
s390                       zfcpdump_defconfig   clang-17
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240712   gcc-13.2.0
sh                    randconfig-001-20240712   gcc-14.1.0
sh                    randconfig-002-20240712   gcc-13.2.0
sh                    randconfig-002-20240712   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240712   gcc-13.2.0
sparc64               randconfig-001-20240712   gcc-14.1.0
sparc64               randconfig-002-20240712   gcc-13.2.0
sparc64               randconfig-002-20240712   gcc-14.1.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240712   clang-19
um                    randconfig-001-20240712   gcc-13.2.0
um                    randconfig-002-20240712   clang-15
um                    randconfig-002-20240712   gcc-13.2.0
um                           x86_64_defconfig   clang-17
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240712   clang-18
x86_64       buildonly-randconfig-002-20240712   clang-18
x86_64       buildonly-randconfig-003-20240712   clang-18
x86_64       buildonly-randconfig-004-20240712   clang-18
x86_64       buildonly-randconfig-005-20240712   clang-18
x86_64       buildonly-randconfig-006-20240712   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240712   clang-18
x86_64                randconfig-001-20240712   gcc-12
x86_64                randconfig-002-20240712   clang-18
x86_64                randconfig-002-20240712   gcc-13
x86_64                randconfig-003-20240712   clang-18
x86_64                randconfig-003-20240712   gcc-12
x86_64                randconfig-004-20240712   clang-18
x86_64                randconfig-005-20240712   clang-18
x86_64                randconfig-005-20240712   gcc-13
x86_64                randconfig-006-20240712   clang-18
x86_64                randconfig-011-20240712   clang-18
x86_64                randconfig-012-20240712   clang-18
x86_64                randconfig-013-20240712   clang-18
x86_64                randconfig-014-20240712   clang-18
x86_64                randconfig-014-20240712   gcc-13
x86_64                randconfig-015-20240712   clang-18
x86_64                randconfig-016-20240712   clang-18
x86_64                randconfig-071-20240712   clang-18
x86_64                randconfig-071-20240712   gcc-13
x86_64                randconfig-072-20240712   clang-18
x86_64                randconfig-072-20240712   gcc-11
x86_64                randconfig-073-20240712   clang-18
x86_64                randconfig-074-20240712   clang-18
x86_64                randconfig-074-20240712   gcc-9
x86_64                randconfig-075-20240712   clang-18
x86_64                randconfig-076-20240712   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240712   gcc-13.2.0
xtensa                randconfig-001-20240712   gcc-14.1.0
xtensa                randconfig-002-20240712   gcc-13.2.0
xtensa                randconfig-002-20240712   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
