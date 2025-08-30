Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6710CB3CABB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 14:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 253E16074E;
	Sat, 30 Aug 2025 12:10:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWwHSy4ce36m; Sat, 30 Aug 2025 12:10:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A2960752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756555851;
	bh=po/YVTcwI3Gghy91HaIyZAqb9gsK3IeAsmDQ195oZiQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hLak4pQe/c1DQ8HWbeR4weBX4uo2vRFp2YTBzBGGjk8so1FSrIgYitbl0NRr0Yrsr
	 nC74F2JLRgcDsagslIJYAIUJsrm9H42sAsz6WJP3gZNQ724EdNdPkBzyBUDCiE6kBi
	 JiHG3pLO8WgSWzcITuGVWUzGkk6o7Ts9LNC2hTujIdtwaQ7LeTXUqO6qrW05fG596Y
	 ZI4Tga0U1I5PS1UyvbT5MzqJxpBWvzQgjI4gelkT6c5pbR5dbS64mVeZjsNpiPMdc6
	 w9IvOaSccXvlADfuhN0ta1rfjLe6M/5q+inRK8/9FCQbkmMrwRnEWWJgCpIz7OcyG7
	 WsG4tYvvNKaEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4A2960752;
	Sat, 30 Aug 2025 12:10:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DD6C69
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 12:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F97060748
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 12:10:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EaO4pcaxNYXt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Aug 2025 12:10:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5E0E760745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E0E760745
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E0E760745
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 12:10:48 +0000 (UTC)
X-CSE-ConnectionGUID: KnLrrmcjTI+xLdWn8Wlv1w==
X-CSE-MsgGUID: GPo+HquQRSmdgKzOKt648A==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="57849174"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="57849174"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2025 05:10:48 -0700
X-CSE-ConnectionGUID: D/CHpGa/QZ2rO6NQgJoILw==
X-CSE-MsgGUID: XBRu8UIDQBOLlKNShdpJOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="175864595"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 30 Aug 2025 05:10:46 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1usKPf-000VLX-1f
 for intel-wired-lan@lists.osuosl.org; Sat, 30 Aug 2025 12:10:39 +0000
Date: Sat, 30 Aug 2025 20:09:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508302039.QF5T4nLI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756555848; x=1788091848;
 h=date:from:to:subject:message-id;
 bh=PWY3tomh2oSlNx0OcY3EK+PlCUBQpUPltvBWD2uYRGM=;
 b=JJ+xMPGwOAmsD3E70rv44xeErALaif/xKuAByFZ/P5wygRS/de1gAo2u
 8hIvFqoZv5J6R3UhOz6DWvO0aAFugUGlaQigwvRoBCsgZfLWYGfvg4BYM
 1LbrqrtZW2hwXulWSWTrzCdzqeHAhnQkKed04CYeR3btfGEEK/Z4x+XaW
 fnN9WgHEBmBu5KdUnrsY7fjKpsZmkFjeFFvppyYKIPiMgcqu0lAid0Rov
 MCXAX5LR0623kI+tFHB9TmWVIZ5PbfmSpPOqcXfUhailSh0/PT6NM/de+
 W6WRHBrwlq7vb7fcF/0g0G89SY8nhqMA649okJEzg3rmWMhDuWTd4h9xQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JJ+xMPGw
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 29828b81a46a3ae55ebc053fce512219172560ba
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
branch HEAD: 29828b81a46a3ae55ebc053fce512219172560ba  Merge branch '100GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue

elapsed time: 2160m

configs tested: 229
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250829    gcc-8.5.0
arc                   randconfig-001-20250830    clang-22
arc                   randconfig-001-20250830    gcc-8.5.0
arc                   randconfig-002-20250829    gcc-10.5.0
arc                   randconfig-002-20250830    clang-22
arc                   randconfig-002-20250830    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                         orion5x_defconfig    gcc-15.1.0
arm                   randconfig-001-20250829    gcc-10.5.0
arm                   randconfig-001-20250830    clang-22
arm                   randconfig-001-20250830    gcc-11.5.0
arm                   randconfig-002-20250829    clang-22
arm                   randconfig-002-20250830    clang-22
arm                   randconfig-003-20250829    clang-22
arm                   randconfig-003-20250830    clang-19
arm                   randconfig-003-20250830    clang-22
arm                   randconfig-004-20250829    clang-22
arm                   randconfig-004-20250830    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250829    clang-22
arm64                 randconfig-001-20250830    clang-22
arm64                 randconfig-001-20250830    gcc-10.5.0
arm64                 randconfig-002-20250829    gcc-12.5.0
arm64                 randconfig-002-20250830    clang-22
arm64                 randconfig-003-20250829    clang-22
arm64                 randconfig-003-20250830    clang-22
arm64                 randconfig-003-20250830    gcc-8.5.0
arm64                 randconfig-004-20250829    gcc-9.5.0
arm64                 randconfig-004-20250830    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250830    gcc-10.5.0
csky                  randconfig-002-20250830    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250830    clang-22
hexagon               randconfig-002-20250830    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250830    clang-20
i386        buildonly-randconfig-002-20250830    clang-20
i386        buildonly-randconfig-003-20250830    clang-20
i386        buildonly-randconfig-004-20250830    gcc-12
i386        buildonly-randconfig-005-20250830    clang-20
i386        buildonly-randconfig-006-20250830    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250830    clang-20
i386                  randconfig-002-20250830    clang-20
i386                  randconfig-003-20250830    clang-20
i386                  randconfig-004-20250830    clang-20
i386                  randconfig-005-20250830    clang-20
i386                  randconfig-006-20250830    clang-20
i386                  randconfig-007-20250830    clang-20
i386                  randconfig-011-20250830    gcc-12
i386                  randconfig-012-20250830    gcc-12
i386                  randconfig-013-20250830    gcc-12
i386                  randconfig-014-20250830    gcc-12
i386                  randconfig-015-20250830    gcc-12
i386                  randconfig-016-20250830    gcc-12
i386                  randconfig-017-20250830    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250830    clang-22
loongarch             randconfig-002-20250830    clang-18
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                        m5272c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          ath25_defconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                           ip28_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250830    gcc-11.5.0
nios2                 randconfig-002-20250830    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250830    gcc-10.5.0
parisc                randconfig-002-20250830    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      katmai_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250830    gcc-15.1.0
powerpc               randconfig-002-20250830    clang-22
powerpc               randconfig-003-20250830    clang-22
powerpc                     tqm8548_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250830    clang-17
powerpc64             randconfig-002-20250830    gcc-14.3.0
powerpc64             randconfig-003-20250830    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    gcc-15.1.0
riscv                 randconfig-001-20250829    clang-22
riscv                 randconfig-001-20250830    gcc-11.5.0
riscv                 randconfig-001-20250830    gcc-8.5.0
riscv                 randconfig-002-20250829    gcc-9.5.0
riscv                 randconfig-002-20250830    clang-22
riscv                 randconfig-002-20250830    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250829    gcc-11.5.0
s390                  randconfig-001-20250830    clang-22
s390                  randconfig-001-20250830    gcc-11.5.0
s390                  randconfig-002-20250829    gcc-8.5.0
s390                  randconfig-002-20250830    gcc-11.5.0
s390                  randconfig-002-20250830    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250829    gcc-10.5.0
sh                    randconfig-001-20250830    gcc-11.5.0
sh                    randconfig-002-20250829    gcc-15.1.0
sh                    randconfig-002-20250830    gcc-11.5.0
sh                    randconfig-002-20250830    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250829    gcc-15.1.0
sparc                 randconfig-001-20250830    gcc-11.5.0
sparc                 randconfig-001-20250830    gcc-13.4.0
sparc                 randconfig-002-20250829    gcc-15.1.0
sparc                 randconfig-002-20250830    gcc-11.5.0
sparc                 randconfig-002-20250830    gcc-8.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250829    clang-20
sparc64               randconfig-001-20250830    gcc-11.5.0
sparc64               randconfig-002-20250829    clang-22
sparc64               randconfig-002-20250830    clang-20
sparc64               randconfig-002-20250830    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250830    gcc-11.5.0
um                    randconfig-001-20250830    gcc-12
um                    randconfig-002-20250829    gcc-12
um                    randconfig-002-20250830    gcc-11.5.0
um                    randconfig-002-20250830    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250830    clang-20
x86_64      buildonly-randconfig-002-20250830    gcc-12
x86_64      buildonly-randconfig-003-20250830    clang-20
x86_64      buildonly-randconfig-004-20250830    gcc-12
x86_64      buildonly-randconfig-005-20250830    gcc-12
x86_64      buildonly-randconfig-006-20250830    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                randconfig-001-20250830    gcc-11
x86_64                randconfig-002-20250830    gcc-11
x86_64                randconfig-003-20250830    gcc-11
x86_64                randconfig-004-20250830    gcc-11
x86_64                randconfig-005-20250830    gcc-11
x86_64                randconfig-006-20250830    gcc-11
x86_64                randconfig-007-20250830    gcc-11
x86_64                randconfig-008-20250830    gcc-11
x86_64                randconfig-071-20250830    gcc-12
x86_64                randconfig-072-20250830    gcc-12
x86_64                randconfig-073-20250830    gcc-12
x86_64                randconfig-074-20250830    gcc-12
x86_64                randconfig-075-20250830    gcc-12
x86_64                randconfig-076-20250830    gcc-12
x86_64                randconfig-077-20250830    gcc-12
x86_64                randconfig-078-20250830    gcc-12
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250829    gcc-11.5.0
xtensa                randconfig-001-20250830    gcc-11.5.0
xtensa                randconfig-001-20250830    gcc-12.5.0
xtensa                randconfig-002-20250829    gcc-11.5.0
xtensa                randconfig-002-20250830    gcc-11.5.0
xtensa                randconfig-002-20250830    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
