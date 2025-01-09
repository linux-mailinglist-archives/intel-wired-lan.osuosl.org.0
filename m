Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E6A07E53
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 18:06:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55C8160BEF;
	Thu,  9 Jan 2025 17:06:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15Bt0gpzwTGP; Thu,  9 Jan 2025 17:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03D1C60C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736442402;
	bh=IF4/+32HL2S9zYflEkNofhkvzHJLPGlokWogVSuJNlI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iRYX3GGbdgcWY4aCKsGWGbb4BQDNuo8tqcIXnLNr6uXlkkuknSfIedofbi8ExbHb2
	 4VeqbuTYHxEEcZ3+GcU3c75MePuxdeLwSXFN9XZyrqtnisfPd30BuZDfuO1ocSfoqU
	 g4pNj6XpWB7XIqJkPijmHKu/Y0mGu6v7VKkSW5spTmhnM7TfdSzpr5Qo1ZGI6ctlQi
	 ggRH1IjCfvfcAOp9ucVWvqr732NVU9PQpXhM4li0cd6Q921E9WOoLxqE2DlntS1Lh0
	 AqRYT9gbONvJCT/XyLT/nxaNgKh0LL+BiWxi+E/x0cS3BrXGr+6aE131RwsVQ7oo4R
	 6wLEdgcfkUmpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03D1C60C05;
	Thu,  9 Jan 2025 17:06:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B31E676C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 916AC83386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:06:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LE3r4_Ql-aTj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 17:06:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77BFA83365
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77BFA83365
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77BFA83365
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:06:39 +0000 (UTC)
X-CSE-ConnectionGUID: DsuLtkaHTYCoIb/aHZvZCw==
X-CSE-MsgGUID: 2iWKeumFSQWv+cN9UZ7WdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36946775"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="36946775"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 09:06:39 -0800
X-CSE-ConnectionGUID: HQPeHsWSRWOygh676iCbAg==
X-CSE-MsgGUID: bDZYOnC6Qni5JZ7JAYZdBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103660420"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 09 Jan 2025 09:06:38 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tVvzP-000HtF-2v
 for intel-wired-lan@lists.osuosl.org; Thu, 09 Jan 2025 17:06:35 +0000
Date: Fri, 10 Jan 2025 01:06:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501100111.hhFMqKsX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736442400; x=1767978400;
 h=date:from:to:subject:message-id;
 bh=Sxz+9ZnB+jWz2tgakMFWimvX+2CyF+CHMxgzhs3byYQ=;
 b=Eqvd+G6Ri+6Ib9j9veH0PRWd/l0dGlMPn9R8/7mFM6HYxUZmH/VJQaqf
 SQ5FHdnzLm9MBQG+XvGVGBL6oplORQBBL9Ji50U85b9QNP70MWbckFOzo
 spcRQG8O0b8OsV7Z+unY1UW+5wtn1SUEK+KoNxEozHp8mLYURB3hPCijV
 2GNx6SdL44nwuEIh99r3tNzQwvtfkuvg1vf9TOC6AA02JvSSjULb3oSqY
 6A/zWI/RuCwxpSlwKpy7pW4QGBw4kcLjkJTFwUYpgKZHy0V+KwwKrm+rs
 cdGskfsf+P5/IY2UmmjHNAEEYCWFJfvgtU68+on8h0uSPOhVJUYP4KcYr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Eqvd+G6R
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 db78475ba0d3c66d430f7ded2388cc041078a542
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
branch HEAD: db78475ba0d3c66d430f7ded2388cc041078a542  eth: gve: use appropriate helper to set xdp_features

elapsed time: 2327m

configs tested: 200
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250109    gcc-13.2.0
arc                   randconfig-002-20250109    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                                 defconfig    gcc-14.2.0
arm                      footbridge_defconfig    gcc-14.2.0
arm                          gemini_defconfig    gcc-14.2.0
arm                           imxrt_defconfig    gcc-14.2.0
arm                         lpc32xx_defconfig    clang-20
arm                       multi_v4t_defconfig    gcc-14.2.0
arm                   randconfig-001-20250109    gcc-14.2.0
arm                   randconfig-002-20250109    clang-17
arm                   randconfig-003-20250109    clang-20
arm                   randconfig-004-20250109    gcc-14.2.0
arm                           sama5_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250109    gcc-14.2.0
arm64                 randconfig-002-20250109    clang-20
arm64                 randconfig-003-20250109    gcc-14.2.0
arm64                 randconfig-004-20250109    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250109    gcc-14.2.0
csky                  randconfig-002-20250109    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250109    clang-14
hexagon               randconfig-001-20250109    gcc-14.2.0
hexagon               randconfig-002-20250109    clang-20
hexagon               randconfig-002-20250109    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20250109    clang-19
i386        buildonly-randconfig-001-20250109    gcc-12
i386        buildonly-randconfig-002-20250109    clang-19
i386        buildonly-randconfig-002-20250109    gcc-12
i386        buildonly-randconfig-003-20250109    clang-19
i386        buildonly-randconfig-004-20250109    clang-19
i386        buildonly-randconfig-005-20250109    clang-19
i386        buildonly-randconfig-006-20250109    clang-19
i386        buildonly-randconfig-006-20250109    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250109    gcc-12
i386                  randconfig-002-20250109    gcc-12
i386                  randconfig-003-20250109    gcc-12
i386                  randconfig-004-20250109    gcc-12
i386                  randconfig-005-20250109    gcc-12
i386                  randconfig-006-20250109    gcc-12
i386                  randconfig-007-20250109    gcc-12
i386                  randconfig-011-20250109    clang-19
i386                  randconfig-012-20250109    clang-19
i386                  randconfig-013-20250109    clang-19
i386                  randconfig-014-20250109    clang-19
i386                  randconfig-015-20250109    clang-19
i386                  randconfig-016-20250109    clang-19
i386                  randconfig-017-20250109    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250109    gcc-14.2.0
loongarch             randconfig-002-20250109    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
microblaze                      mmu_defconfig    clang-20
mips                              allnoconfig    gcc-14.2.0
mips                       bmips_be_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250109    gcc-14.2.0
nios2                 randconfig-002-20250109    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250109    gcc-14.2.0
parisc                randconfig-002-20250109    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc               mpc834x_itxgp_defconfig    gcc-14.2.0
powerpc                      pasemi_defconfig    clang-20
powerpc                      ppc6xx_defconfig    clang-20
powerpc               randconfig-001-20250109    clang-15
powerpc               randconfig-001-20250109    gcc-14.2.0
powerpc               randconfig-002-20250109    gcc-14.2.0
powerpc               randconfig-003-20250109    gcc-14.2.0
powerpc                     sequoia_defconfig    clang-20
powerpc                 xes_mpc85xx_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250109    gcc-14.2.0
powerpc64             randconfig-002-20250109    clang-20
powerpc64             randconfig-002-20250109    gcc-14.2.0
powerpc64             randconfig-003-20250109    clang-17
powerpc64             randconfig-003-20250109    gcc-14.2.0
riscv                            alldefconfig    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250109    gcc-14.2.0
riscv                 randconfig-002-20250109    clang-15
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250109    gcc-14.2.0
s390                  randconfig-002-20250109    clang-16
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                    randconfig-001-20250109    gcc-14.2.0
sh                    randconfig-002-20250109    gcc-14.2.0
sh                          rsk7264_defconfig    clang-20
sh                        sh7757lcr_defconfig    clang-20
sh                        sh7763rdp_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250109    gcc-14.2.0
sparc                 randconfig-002-20250109    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250109    gcc-14.2.0
sparc64               randconfig-002-20250109    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                             i386_defconfig    gcc-14.2.0
um                    randconfig-001-20250109    gcc-12
um                    randconfig-002-20250109    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250109    clang-19
x86_64      buildonly-randconfig-002-20250109    clang-19
x86_64      buildonly-randconfig-002-20250109    gcc-12
x86_64      buildonly-randconfig-003-20250109    clang-19
x86_64      buildonly-randconfig-004-20250109    clang-19
x86_64      buildonly-randconfig-005-20250109    clang-19
x86_64      buildonly-randconfig-006-20250109    clang-19
x86_64      buildonly-randconfig-006-20250109    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250109    clang-19
x86_64                randconfig-002-20250109    clang-19
x86_64                randconfig-003-20250109    clang-19
x86_64                randconfig-004-20250109    clang-19
x86_64                randconfig-005-20250109    clang-19
x86_64                randconfig-006-20250109    clang-19
x86_64                randconfig-007-20250109    clang-19
x86_64                randconfig-008-20250109    clang-19
x86_64                randconfig-071-20250109    gcc-12
x86_64                randconfig-072-20250109    gcc-12
x86_64                randconfig-073-20250109    gcc-12
x86_64                randconfig-074-20250109    gcc-12
x86_64                randconfig-075-20250109    gcc-12
x86_64                randconfig-076-20250109    gcc-12
x86_64                randconfig-077-20250109    gcc-12
x86_64                randconfig-078-20250109    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250109    gcc-14.2.0
xtensa                randconfig-002-20250109    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
