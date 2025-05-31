Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C6EAC9967
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 May 2025 07:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F135E60A8D;
	Sat, 31 May 2025 05:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C8cEyJdhGUNS; Sat, 31 May 2025 05:29:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D569760A6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748669379;
	bh=3okUo1e1+knrqgVBelzWXo36cLDlsljQEwqD8pA4JOI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0/FmbWnQkfJcHVurHoeJxkCboRrJEXy8vV3UC+S6aXW5OTItgDzztTcIWR7RmK11+
	 jmCeErNQ0u0bKkK+3MOvAsKuVe3swD9ieo+qLsyWUzCJUe+lyY8r1T7Z/9B4y3/ETl
	 TNKqCRP9JRWiZmVJrZlopbtEUSCpmpUCJXrxOcGlABk4q81vp1MCjyGhxSz0zPOek7
	 1+mYGkCIlB+T7pD7/xU0p5oXSktnQ9efbLrG8+MubfWuI1uNs9IT7QacR9jXviRWAB
	 bLLFrSGJwZd/NFLsLzLCgXo0bQ3b3ARlS9JZ9McScNopnmETJuQCEWBnF77Aq4V5y3
	 sZNlPZjnqyrhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D569760A6C;
	Sat, 31 May 2025 05:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 99003127
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 05:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F8E8400BA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 05:29:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d78ARtFtiP9A for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 May 2025 05:29:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1BF4540025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BF4540025
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BF4540025
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 05:29:36 +0000 (UTC)
X-CSE-ConnectionGUID: R+kEnMaJRFOTYlhCw1MrPg==
X-CSE-MsgGUID: nHaHvBcoRNa4PzlQOwVnZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11449"; a="68311355"
X-IronPort-AV: E=Sophos;i="6.16,197,1744095600"; d="scan'208";a="68311355"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 22:29:36 -0700
X-CSE-ConnectionGUID: KwzKYpmVRMO7c/IgVfzUfg==
X-CSE-MsgGUID: ahsmHp6GSMiMi6UapjBq8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,197,1744095600"; d="scan'208";a="144707524"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 30 May 2025 22:29:35 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uLEmj-000YD6-00
 for intel-wired-lan@lists.osuosl.org; Sat, 31 May 2025 05:29:33 +0000
Date: Sat, 31 May 2025 13:29:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505311358.EIM2vrRj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748669377; x=1780205377;
 h=date:from:to:subject:message-id;
 bh=KONFSH9tdNjQcV2RE3gJsqgUMkelxotK8btRKjBfM7E=;
 b=LC30XIg6i2htkSI77+vKqWyQzrP0eeijFYlmMWQ6TZinuqvFxeKaDiyR
 gnHM/Tvqya+jxuF/eZ80/Lf1c7zJ87arcIZO947p907h4lQks3Q93uDE0
 TkyGOhUsMpNzWI34uTnSxC7+C1wBXiOCjkdT2n2V0qmrTdhhK049K6SWS
 U8yeZ8EIQ8OnOfG7OzAkOHAelVieH5A3Hgxgwp5pGqgV4j3KryAXMvsRd
 EM2kYlqSKl9Z/7TGc9CYAO5e4IPI9vAu6Yl6Rzn/xGVcqnYsTNXf2o92e
 KSEG/KOc6BcTEOmuyYB96DRR7jkt7qvZ5TRiPtXWH408hqFqIfPzYjxok
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LC30XIg6
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 42bf88e865be649ceb8c5cd32a283ffb8aff0ace
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
branch HEAD: 42bf88e865be649ceb8c5cd32a283ffb8aff0ace  e1000e: set fixed clock frequency indication for Nahum 11 and Nahum 13

elapsed time: 725m

configs tested: 122
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                      axs103_smp_defconfig    gcc-15.1.0
arc                   randconfig-001-20250531    gcc-15.1.0
arc                   randconfig-002-20250531    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                      footbridge_defconfig    clang-17
arm                   randconfig-001-20250531    gcc-13.3.0
arm                   randconfig-002-20250531    gcc-13.3.0
arm                   randconfig-003-20250531    gcc-7.5.0
arm                   randconfig-004-20250531    gcc-7.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250531    gcc-10.5.0
arm64                 randconfig-002-20250531    clang-20
arm64                 randconfig-003-20250531    clang-21
arm64                 randconfig-004-20250531    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250531    gcc-12.4.0
csky                  randconfig-002-20250531    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250531    clang-21
hexagon               randconfig-002-20250531    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250531    gcc-12
i386        buildonly-randconfig-002-20250531    gcc-12
i386        buildonly-randconfig-003-20250531    gcc-12
i386        buildonly-randconfig-004-20250531    clang-20
i386        buildonly-randconfig-005-20250531    clang-20
i386        buildonly-randconfig-006-20250531    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250531    gcc-15.1.0
loongarch             randconfig-002-20250531    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                        omega2p_defconfig    clang-21
mips                           xway_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250531    gcc-10.5.0
nios2                 randconfig-002-20250531    gcc-5.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250531    gcc-7.5.0
parisc                randconfig-002-20250531    gcc-10.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                      ppc44x_defconfig    clang-21
powerpc                      ppc64e_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250531    gcc-11.5.0
powerpc               randconfig-002-20250531    gcc-5.5.0
powerpc               randconfig-003-20250531    gcc-8.5.0
powerpc                        warp_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250531    clang-21
powerpc64             randconfig-003-20250531    clang-17
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250531    gcc-15.1.0
riscv                 randconfig-002-20250531    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250531    gcc-9.3.0
s390                  randconfig-002-20250531    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                        edosk7760_defconfig    gcc-15.1.0
sh                    randconfig-001-20250531    gcc-15.1.0
sh                    randconfig-002-20250531    gcc-10.5.0
sh                          rsk7201_defconfig    gcc-15.1.0
sh                           sh2007_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250531    gcc-8.5.0
sparc                 randconfig-002-20250531    gcc-6.5.0
sparc                       sparc32_defconfig    gcc-15.1.0
sparc64               randconfig-001-20250531    gcc-12.4.0
sparc64               randconfig-002-20250531    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250531    gcc-12
um                    randconfig-002-20250531    gcc-11
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250531    clang-20
x86_64      buildonly-randconfig-002-20250531    gcc-12
x86_64      buildonly-randconfig-003-20250531    gcc-12
x86_64      buildonly-randconfig-004-20250531    gcc-12
x86_64      buildonly-randconfig-005-20250531    clang-20
x86_64      buildonly-randconfig-006-20250531    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250531    gcc-9.3.0
xtensa                randconfig-002-20250531    gcc-13.3.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
