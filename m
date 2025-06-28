Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B339AECA68
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jun 2025 23:40:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40CEC60908;
	Sat, 28 Jun 2025 21:40:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oN4zlKy-N9-b; Sat, 28 Jun 2025 21:40:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B041608DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751146815;
	bh=5/nbAFN6kWYuJ18QCi7oeeFex7ivvO9uiuD/lGvy3Mc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fgoSkCz/vjDuONWH/XZw4s2+1Wz27xb6j4ik1Q2uDoNTwdz5bFyltUBBBndJyb24H
	 oQZJNsmnaYItGGoaFxoQpQDWtnOFlplbCXus2dUHUO0uf1YPa2DgqZLLoxYmDQje2Q
	 j7n2LsYetcR8sWjD3XEWKPG+TzKe+5Kpn6Sj5EPr4HuFqjT7JYFJXKpPy3xuchUcFm
	 oVysn8LDTsKX3HQk6pdnsd9lD7KjRYcElFLFZomTp2rM7pTfPQcCYjWOOjoYX2GhVx
	 WGPRjCRcJ1RonDAayV/M4vTBEyoSSLfwGHAq+/gzf3WJjPKkLSEcPl951J+rXY/hlB
	 YYEWut37MOLtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B041608DD;
	Sat, 28 Jun 2025 21:40:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BA311154
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jun 2025 21:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A10A7608F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jun 2025 21:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b29RVXWf0Jw2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jun 2025 21:40:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 46166608D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46166608D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46166608D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jun 2025 21:40:12 +0000 (UTC)
X-CSE-ConnectionGUID: DXONQ8zRSWqX8d6QmyxkPA==
X-CSE-MsgGUID: Y16UkjRTTryekO+UPIhASg==
X-IronPort-AV: E=McAfee;i="6800,10657,11478"; a="63673052"
X-IronPort-AV: E=Sophos;i="6.16,273,1744095600"; d="scan'208";a="63673052"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2025 14:40:11 -0700
X-CSE-ConnectionGUID: I1j/Tmq8R/2YDueICcDe7g==
X-CSE-MsgGUID: RqvPACY1SZWM062pEI4GBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,273,1744095600"; d="scan'208";a="158596436"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 28 Jun 2025 14:40:09 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uVdHL-000XPQ-22
 for intel-wired-lan@lists.osuosl.org; Sat, 28 Jun 2025 21:40:07 +0000
Date: Sun, 29 Jun 2025 05:39:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506290519.qfl1kdw6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751146812; x=1782682812;
 h=date:from:to:subject:message-id;
 bh=y65/lumCc9hkTRJHXlpfPizVupDvZ6tkSrkJN5o+1Eo=;
 b=im8IocCqPDDrubawSGofIblXZSQvQ9MiyJz+cgaVubqiYV8y0J/t1Dg4
 4rOnPQQ7y2t5URUNwRJBnH5QIOqr19cJc+f/LsUzUx6kpLQC6pcJue8VF
 gbH3jIDRavPr5wR/Omw6iozaYDTL7FqiJ7m090mG6C9uV4PYHzOpZm8hQ
 38xrqDV90GiJv4Ld8fdlJqhyh/nWfj7pvNhxw8qgAvy9Tdl13gcgTFhhY
 UpsTuFkswTuR4Mu9G0YDIFntHS+4dSXPKmsKM7m4ktVkJV1rVHjnzX1cx
 dzvRFcvEqFTSSEDmPi932KRYT6xcenawsnup+zXTFkRFOyKblm9WqNojU
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=im8IocCq
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ccc077fb3633bd8405045ae36fcf78be81eec973
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
branch HEAD: ccc077fb3633bd8405045ae36fcf78be81eec973  i40e: When removing VF MAC filters, only check PF-set MAC

elapsed time: 1443m

configs tested: 116
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250628    gcc-8.5.0
arc                   randconfig-002-20250628    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                            dove_defconfig    gcc-15.1.0
arm                   randconfig-001-20250628    gcc-12.4.0
arm                   randconfig-002-20250628    clang-21
arm                   randconfig-003-20250628    clang-17
arm                   randconfig-004-20250628    clang-17
arm                           stm32_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250628    gcc-14.3.0
arm64                 randconfig-002-20250628    clang-21
arm64                 randconfig-003-20250628    clang-21
arm64                 randconfig-004-20250628    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250628    gcc-14.3.0
csky                  randconfig-002-20250628    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250628    clang-21
hexagon               randconfig-002-20250628    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250628    clang-20
i386        buildonly-randconfig-002-20250628    clang-20
i386        buildonly-randconfig-003-20250628    gcc-12
i386        buildonly-randconfig-004-20250628    clang-20
i386        buildonly-randconfig-005-20250628    clang-20
i386        buildonly-randconfig-006-20250628    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250628    gcc-12.4.0
loongarch             randconfig-002-20250628    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         apollo_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    clang-18
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250628    gcc-8.5.0
nios2                 randconfig-002-20250628    gcc-9.3.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250628    gcc-8.5.0
parisc                randconfig-002-20250628    gcc-12.4.0
parisc64                         alldefconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     mpc5200_defconfig    clang-21
powerpc                 mpc8315_rdb_defconfig    clang-21
powerpc                         ps3_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250628    gcc-8.5.0
powerpc               randconfig-002-20250628    clang-19
powerpc               randconfig-003-20250628    clang-21
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20250628    clang-20
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250628    clang-21
riscv                 randconfig-002-20250628    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250628    clang-21
s390                  randconfig-002-20250628    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                     magicpanelr2_defconfig    gcc-15.1.0
sh                          r7780mp_defconfig    gcc-15.1.0
sh                    randconfig-001-20250628    gcc-15.1.0
sh                    randconfig-002-20250628    gcc-9.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250628    gcc-8.5.0
sparc                 randconfig-002-20250628    gcc-12.4.0
sparc64               randconfig-001-20250628    gcc-8.5.0
sparc64               randconfig-002-20250628    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250628    gcc-12
um                    randconfig-002-20250628    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250628    gcc-12
x86_64      buildonly-randconfig-002-20250628    clang-20
x86_64      buildonly-randconfig-003-20250628    gcc-12
x86_64      buildonly-randconfig-004-20250628    clang-20
x86_64      buildonly-randconfig-005-20250628    clang-20
x86_64      buildonly-randconfig-006-20250628    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250628    gcc-11.5.0
xtensa                randconfig-002-20250628    gcc-10.5.0
xtensa                         virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
