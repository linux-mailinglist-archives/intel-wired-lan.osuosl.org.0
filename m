Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB248A31252
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 18:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CDE360F88;
	Tue, 11 Feb 2025 17:02:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5TAhWaMMJnPs; Tue, 11 Feb 2025 17:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B394160F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739293318;
	bh=FM3rLpTlUVnKtEQW43GdOoQXfsHnsnUe9Gmt3mmMTAU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P2q6ypdkajvvdNBYBfJf0eJiW4r6Nw11IGy4gGM/IEfEWqoBUxo0AoZMn6XcWlzmQ
	 3dgafrSrylS0QIAB1XT9zCPwRQ3VjeRNjJrZ3gz1t2i1gXxJVrvBth+WKdLSAIUQ+X
	 +w1bmy36Nh+37K1BR+ksfjsbtdlMb+E01kFMKuL7wzASACZDQqGKNaMfGQSrUtweEz
	 yP7o6qhZNwjDOZM6MfQao5YRno7Aa7wScaown+83oQZxx61aqNfggWG7J6ZmU9D4o/
	 NgeLpKD2yjJJ/f62lo9AyCNRJQSO6tHn6qjl7PUxqHeVHUgk+xQ/AbAmBFPEI1URY2
	 XjiNvOQ65f56w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B394160F8B;
	Tue, 11 Feb 2025 17:01:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B0B24194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B3CD4050A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FRwdEwAQIlD7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 17:01:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3496D407A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3496D407A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3496D407A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:01:45 +0000 (UTC)
X-CSE-ConnectionGUID: GAmQnXDTTky0pBUqABfhBA==
X-CSE-MsgGUID: boNofPQZQUm6mb1vuBDkyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50557434"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="50557434"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 09:01:37 -0800
X-CSE-ConnectionGUID: Gf7wErikSFiaPzy8hiy2kg==
X-CSE-MsgGUID: +NwCU34fQoaBt1nh6KgL1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113050588"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 11 Feb 2025 09:01:36 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1thtdd-0014TJ-2Y
 for intel-wired-lan@lists.osuosl.org; Tue, 11 Feb 2025 17:01:33 +0000
Date: Wed, 12 Feb 2025 01:00:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502120150.TyxC0hkL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739293305; x=1770829305;
 h=date:from:to:subject:message-id;
 bh=oSGtGaj72tgMbbod6OhAaf/AxTMvBc6iqOMjm/S9KzA=;
 b=WE7gpEWDM15YXWrjeU7/HHCC8nxHF64JEMB7zjEqcYh66OouTfw9M4Xq
 RRHpWPHbm2hjMpUqVKLPl6cqCsThpi04V3i1xZMC09fW+qXbHF7eMfHnz
 4O2ztEGZVOo1VXM2rZBRGkpr5ESfI9CY0x87Kc1QaEgK27bQfXdRSZ0nh
 OGo6eatEV3IkpOoBxaudp/oqOqphL46N/4Ekuwy56knHYJDwigI7VBsR5
 JTrHcDZZuwhJAA0NjH4cdi4oLiMcGV4H6RofzX0VHfFN5hqH93ILsCmac
 LOTynAgw3ti6RwaFO3o+d0vIhvbZwQYY5m7a3XTKaq58pRtL+VXyjaG6R
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WE7gpEWD
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 05a7449aaaac86c85f6de8db0eae8d9ab76c8b70
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
branch HEAD: 05a7449aaaac86c85f6de8db0eae8d9ab76c8b70  ice: health.c: fix compilation on gcc 7.5

elapsed time: 1445m

configs tested: 125
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250211    gcc-13.2.0
arc                   randconfig-002-20250211    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                        multi_v7_defconfig    gcc-14.2.0
arm                   randconfig-001-20250211    gcc-14.2.0
arm                   randconfig-002-20250211    clang-21
arm                   randconfig-003-20250211    gcc-14.2.0
arm                   randconfig-004-20250211    gcc-14.2.0
arm                        realview_defconfig    clang-19
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250211    clang-17
arm64                 randconfig-002-20250211    clang-19
arm64                 randconfig-003-20250211    gcc-14.2.0
arm64                 randconfig-004-20250211    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250211    gcc-14.2.0
csky                  randconfig-002-20250211    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250211    clang-18
hexagon               randconfig-002-20250211    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250211    gcc-12
i386        buildonly-randconfig-002-20250211    gcc-12
i386        buildonly-randconfig-003-20250211    gcc-12
i386        buildonly-randconfig-004-20250211    gcc-12
i386        buildonly-randconfig-005-20250211    gcc-12
i386        buildonly-randconfig-006-20250211    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250211    gcc-14.2.0
loongarch             randconfig-002-20250211    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-16
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250211    gcc-14.2.0
nios2                 randconfig-002-20250211    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                generic-32bit_defconfig    gcc-14.2.0
parisc                randconfig-001-20250211    gcc-14.2.0
parisc                randconfig-002-20250211    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                         ps3_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250211    clang-15
powerpc               randconfig-002-20250211    clang-21
powerpc               randconfig-003-20250211    clang-19
powerpc64             randconfig-001-20250211    clang-21
powerpc64             randconfig-002-20250211    gcc-14.2.0
powerpc64             randconfig-003-20250211    clang-17
riscv                            alldefconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                               defconfig    clang-19
riscv                 randconfig-001-20250211    gcc-14.2.0
riscv                 randconfig-002-20250211    clang-19
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-15
s390                  randconfig-001-20250211    clang-21
s390                  randconfig-002-20250211    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                             espt_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                    randconfig-001-20250211    gcc-14.2.0
sh                    randconfig-002-20250211    gcc-14.2.0
sh                          rsk7201_defconfig    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250211    gcc-14.2.0
sparc                 randconfig-002-20250211    gcc-14.2.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250211    gcc-14.2.0
sparc64               randconfig-002-20250211    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250211    clang-17
um                    randconfig-002-20250211    clang-15
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250211    clang-19
x86_64      buildonly-randconfig-002-20250211    gcc-12
x86_64      buildonly-randconfig-003-20250211    clang-19
x86_64      buildonly-randconfig-004-20250211    gcc-11
x86_64      buildonly-randconfig-005-20250211    clang-19
x86_64      buildonly-randconfig-006-20250211    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250211    gcc-14.2.0
xtensa                randconfig-002-20250211    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
