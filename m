Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44019B31600
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 13:00:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0223F40A2A;
	Fri, 22 Aug 2025 11:00:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5I8dBl-gJQ6n; Fri, 22 Aug 2025 11:00:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DCA640A0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755860432;
	bh=kqPt0bGPqQSeU3VrgHJbKcUb4MyUpwCV4+V3mjxM2KQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2OixDInxiCep3hKJv/DFO6G+VR3jdVfpmP6Ga9xeB8SqGcYNRNxje+RKr3AblMLOq
	 0e+NCVUydtNYMfFDaSsK9gHtxzxLyFZEkzQFAcyasNYxooAGqXXC1QNboVAAoM3SFs
	 Z0g+L51lU5B9k5xW62eJowen1EowwKgmXdHdckIQ37SqLRU3yO7aSC3YgfR9hl/9LK
	 b7HbRYILett0rrcXdRGxnsdSoY4kP6RF5mgDSMfrgFNppE/ZKBLfF8maKKaB6u8lDJ
	 5skASGr/G2pvTlZnjqy2uQhQdZ2TCeTsQv2DYsCjDrf3HxeixiOK9hhGq3oEtIr+95
	 5ORn2v4hpIRKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DCA640A0B;
	Fri, 22 Aug 2025 11:00:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 714491C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 11:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D96581DFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 11:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNvnpKxOEXBn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 11:00:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 51D4381DED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51D4381DED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51D4381DED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 11:00:28 +0000 (UTC)
X-CSE-ConnectionGUID: YevT32ibSqORgFOyWutjSg==
X-CSE-MsgGUID: 9uSoOb/XSUKjovP9QGVZvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="57878631"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="57878631"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 04:00:27 -0700
X-CSE-ConnectionGUID: 8c36U3nzSs+UwQVKFHXXgg==
X-CSE-MsgGUID: ldWVZYq3QoOGo6KaaVyJqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="169506731"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 22 Aug 2025 04:00:27 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1upPVQ-000LBr-1f
 for intel-wired-lan@lists.osuosl.org; Fri, 22 Aug 2025 11:00:24 +0000
Date: Fri, 22 Aug 2025 18:59:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508221807.jSYgwxMw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755860429; x=1787396429;
 h=date:from:to:subject:message-id;
 bh=pxBAC4t9NFwP4phTfqlHCPUt16Xg0AprZIq2YcpodsQ=;
 b=N1P9yJrg6OEb+tr7W/y42gtrDU2hvuxyt2+4GG1acrb/n+yZUsTaUPZH
 x2Haox704+DgF/CAl0iRbB+nY56IfqPC6cHrVUw9+iOUQ+0zuaS2+g7q4
 1znvv2VCSWE8ZpL4vKc8MMQfdm7gvxfjefxqkxW9yZbedKcJOywQjXcy7
 5CocS/I/XrU1CE3PnaBmydNN9RxINbBAvL2rTYJFLJ1kAygz/7qjL1Rk/
 tbJFnV8nm3RS0ZivzteWMYjP8Iay8jIFA6tBaSxcKs+jS6Nn4jlpoeEXt
 XPvsI6Ud6HsBQh0i7siAjNR8+oGVuhdydmaaPcAJejB6ShblrUG/e9IaY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N1P9yJrg
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 07cf71bf25cd4e5735ff13468e7b86f02c3665cb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 07cf71bf25cd4e5735ff13468e7b86f02c3665cb  net: page_pool: add page_pool_get()

elapsed time: 1110m

configs tested: 112
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250822    gcc-8.5.0
arc                   randconfig-002-20250822    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250822    clang-22
arm                   randconfig-002-20250822    gcc-8.5.0
arm                   randconfig-003-20250822    clang-22
arm                   randconfig-004-20250822    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250822    clang-22
arm64                 randconfig-002-20250822    clang-22
arm64                 randconfig-003-20250822    clang-17
arm64                 randconfig-004-20250822    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250822    gcc-9.5.0
csky                  randconfig-002-20250822    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250822    clang-22
hexagon               randconfig-002-20250822    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250822    gcc-12
i386        buildonly-randconfig-002-20250822    clang-20
i386        buildonly-randconfig-003-20250822    gcc-12
i386        buildonly-randconfig-004-20250822    gcc-12
i386        buildonly-randconfig-005-20250822    gcc-12
i386        buildonly-randconfig-006-20250822    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250822    clang-22
loongarch             randconfig-002-20250822    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250822    gcc-11.5.0
nios2                 randconfig-002-20250822    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250822    gcc-9.5.0
parisc                randconfig-002-20250822    gcc-12.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250822    clang-22
powerpc               randconfig-002-20250822    gcc-11.5.0
powerpc               randconfig-003-20250822    clang-18
powerpc64             randconfig-001-20250822    gcc-13.4.0
powerpc64             randconfig-002-20250822    clang-22
powerpc64             randconfig-003-20250822    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250822    gcc-8.5.0
riscv                 randconfig-002-20250822    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250822    clang-22
s390                  randconfig-002-20250822    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250822    gcc-12.5.0
sh                    randconfig-002-20250822    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250822    gcc-15.1.0
sparc                 randconfig-002-20250822    gcc-8.5.0
sparc64               randconfig-001-20250822    gcc-8.5.0
sparc64               randconfig-002-20250822    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250822    gcc-12
um                    randconfig-002-20250822    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250822    clang-20
x86_64      buildonly-randconfig-002-20250822    gcc-12
x86_64      buildonly-randconfig-003-20250822    clang-20
x86_64      buildonly-randconfig-004-20250822    clang-20
x86_64      buildonly-randconfig-005-20250822    clang-20
x86_64      buildonly-randconfig-006-20250822    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250822    gcc-9.5.0
xtensa                randconfig-002-20250822    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
