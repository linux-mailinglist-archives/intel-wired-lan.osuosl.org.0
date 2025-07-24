Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 106A1B10A31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 14:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A69AF821F5;
	Thu, 24 Jul 2025 12:29:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ku7UkbtNK76; Thu, 24 Jul 2025 12:29:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7219A821F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753360163;
	bh=19dLUCyFhwUjwe/4XCbdY1lnFHP9WSO6rxEO9Umly9g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RTcgmhvJrZanAiNV93pHRao9PurqWqIdCFhThraRbGOBHmrbKeCnFV7sWg6ValTYp
	 RTe6nyUAJQwlLEzD/m/7rBLuMtH4oSaEuTp9MIT7nqQNBejD+ysyZurF1AbKxELN9B
	 sezzUei1VOmOhnOxu3yT6nanmIO11Rt2Rw/x+QUQ8Kg04DBPwktc0v3K1CxRdkjvpj
	 Itrsmh/fALfvc5Qd5KY16cixf7R2PQSuslur3U6PH2eb+kd6QFDEwgdjxzeduwLzK+
	 +vInrBKCEfocF56l3Uc1P/OoMxk13EeDl46RLKIch/oQdhX5dafFzBvQJjt1VUOek+
	 V8Tbyhac98PZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7219A821F7;
	Thu, 24 Jul 2025 12:29:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FF8DDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 12:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51FAF403CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 12:29:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3HhQ4hCYocJe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 12:29:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 69BD64049A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69BD64049A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69BD64049A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 12:29:21 +0000 (UTC)
X-CSE-ConnectionGUID: 4jZfirM1ScyK+Yd0cjoN6g==
X-CSE-MsgGUID: sqHnOpvqSN2GuY0y5vb0sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="54886799"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="54886799"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 05:29:21 -0700
X-CSE-ConnectionGUID: pLcnzOSQTluCUB/EGLZFdA==
X-CSE-MsgGUID: RLrqDSlTTrWwu734zPynWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="160189633"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 24 Jul 2025 05:29:20 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uev4Y-000KQV-12
 for intel-wired-lan@lists.osuosl.org; Thu, 24 Jul 2025 12:29:18 +0000
Date: Thu, 24 Jul 2025 20:29:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507242003.b9U1Oy9N-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753360161; x=1784896161;
 h=date:from:to:subject:message-id;
 bh=+wXV/MgV75N1t4PKG4jfBCQ0rxolu1Zn9rb5jYwxrZ8=;
 b=gyaMShiWEaZCsoy3kVewg8hJcTvPamlEv50Xl5H31l95ZxBZLzLlum2S
 J678tHI9SI9cx8a2JF2rJxAXhSvsrwSTv5ccux3W27lVmwmJb1jzzB+id
 dcgLLBByZfrOAKYaEkk3ft+Nyy6R4vEOCl+ahIAWShkIhahtiFEEaNjr6
 UFGuZirisbYrpQiGxidOVluojtq1xrq5lt17JoXz5gh/3WFUVZiMAkNL2
 fX48fZ1I/fPPQ/CeF7I3aocoOduOLhzBXYFmtF6RqJ+IX5s7HrPsjW0ss
 ZLqDY7xlbkwhQzLeCMT9kIQDCzWJZHt5w4VGB/TMkvhxMeHhebjc49QpQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gyaMShiW
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 56613001dfc9b2e35e2d6ba857cbc2eb0bac4272
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
branch HEAD: 56613001dfc9b2e35e2d6ba857cbc2eb0bac4272  Merge branch 'mlx5-next' of git://git.kernel.org/pub/scm/linux/kernel/git/mellanox/linux

elapsed time: 2087m

configs tested: 119
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250724    gcc-13.4.0
arc                   randconfig-002-20250724    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                           omap1_defconfig    gcc-15.1.0
arm                   randconfig-001-20250724    gcc-10.5.0
arm                   randconfig-002-20250724    clang-22
arm                   randconfig-003-20250724    gcc-8.5.0
arm                   randconfig-004-20250724    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250724    gcc-8.5.0
arm64                 randconfig-002-20250724    clang-22
arm64                 randconfig-003-20250724    gcc-13.4.0
arm64                 randconfig-004-20250724    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250724    gcc-13.4.0
csky                  randconfig-002-20250724    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250724    clang-22
hexagon               randconfig-002-20250724    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250724    gcc-12
i386        buildonly-randconfig-002-20250724    clang-20
i386        buildonly-randconfig-003-20250724    clang-20
i386        buildonly-randconfig-004-20250724    clang-20
i386        buildonly-randconfig-005-20250724    clang-20
i386        buildonly-randconfig-006-20250724    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250724    clang-22
loongarch             randconfig-002-20250724    gcc-13.4.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        stmark2_defconfig    gcc-15.1.0
m68k                          sun3x_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                         3c120_defconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250724    gcc-11.5.0
nios2                 randconfig-002-20250724    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                 simple_smp_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250724    gcc-14.3.0
parisc                randconfig-002-20250724    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250724    clang-22
powerpc               randconfig-002-20250724    gcc-8.5.0
powerpc               randconfig-003-20250724    clang-22
powerpc                     tqm8541_defconfig    clang-22
powerpc64             randconfig-001-20250724    clang-22
powerpc64             randconfig-002-20250724    gcc-13.4.0
powerpc64             randconfig-003-20250724    gcc-15.1.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250724    gcc-13.4.0
riscv                 randconfig-002-20250724    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250724    clang-22
s390                  randconfig-002-20250724    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250724    gcc-13.4.0
sh                    randconfig-002-20250724    gcc-15.1.0
sh                           se7722_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250724    gcc-15.1.0
sparc                 randconfig-002-20250724    gcc-8.5.0
sparc64               randconfig-001-20250724    gcc-8.5.0
sparc64               randconfig-002-20250724    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250724    clang-22
um                    randconfig-002-20250724    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250724    gcc-12
x86_64      buildonly-randconfig-002-20250724    clang-20
x86_64      buildonly-randconfig-003-20250724    gcc-12
x86_64      buildonly-randconfig-004-20250724    gcc-12
x86_64      buildonly-randconfig-005-20250724    clang-20
x86_64      buildonly-randconfig-006-20250724    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250724    gcc-12.5.0
xtensa                randconfig-002-20250724    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
