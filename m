Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9B6B12172
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 18:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B01883033;
	Fri, 25 Jul 2025 16:07:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDuzkjplWYwq; Fri, 25 Jul 2025 16:07:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3CA682AC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753459665;
	bh=4qGoVk+6CARyCZJQu34UrOpVhe6H1riauajTGMMHVCc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7NsUl6qxJmoS46GBZFKbWG4vp+q+qL5x4R2Ndbs4GC30D0JlyebqN2F1jO1+TAaAs
	 e4ru5EvHIQIQFEjF8Kx6aBi4Yeku8/T1EzvlWM52PBmlBmRoaTCVQVm3wzIpjqi1lr
	 L5bYQSHu+VdU8a3UoIrR11JNmgfnaqbae4LPYeXU2B8Q+EPYZ7gYufWCynuXhTNAQ1
	 9vu2UB6arezvCA9cvJaBvRh41TMaF8Ve9Mc8SC7TOvaIzJOTVM/6K9QawYPvBEv2qE
	 68BWFKe6uQ2sz5YkAoWuUoi0dskHXfORlWm2rVu7DBiyZDZR4ttYgjeV594iDlbgsf
	 v8BytuUvPmykA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3CA682AC3;
	Fri, 25 Jul 2025 16:07:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AD4E5909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 16:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F53641EC0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 16:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0Mtn9vIqyvf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 16:07:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8425140899
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8425140899
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8425140899
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 16:07:43 +0000 (UTC)
X-CSE-ConnectionGUID: ZyCnego2QNOir8IskvFr6w==
X-CSE-MsgGUID: sq+ykldlTlON3lSVBKgX3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="67234919"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="67234919"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 09:07:43 -0700
X-CSE-ConnectionGUID: QtFWHSsvSiOXAGk/mMiq5A==
X-CSE-MsgGUID: P3tCJozrTOStJDpg7b/UbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="192003450"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 25 Jul 2025 09:07:41 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ufKxP-000LPX-1s
 for intel-wired-lan@lists.osuosl.org; Fri, 25 Jul 2025 16:07:39 +0000
Date: Sat, 26 Jul 2025 00:07:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507260002.2IaERZ94-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753459664; x=1784995664;
 h=date:from:to:subject:message-id;
 bh=y5rzqdD0B2qoJ0st9vg3pwW7wwHJra2ahU8tWDOLYNM=;
 b=btYYSiDHqZ7H7Uaap7xT/1s8ksiOATGLhMC0bIPTSfat2NeLxDHrA7Yv
 S4mfvQKBERPMTA1h6a9UgCS+1e9Lj2H7p4Z63LUNktBC0ITzteDMX4E5B
 X+09lVWQabXCsxzaFtH/K72rhsIhHXS9XXln/Ch7bbuUF5LR6GHvGsgFh
 ldIosl6iBpnk6jLsidAjof4KybkJwZIOm0HELDd45hCuO3bs7Q5oniy21
 d9kiVJ2b3C2gvvpG9fKFKJHYjVKXHtyT2oxcqR3FN389uSYnflxvH4+/U
 ggVB2UCDW7RcmedcycSYQnyWNg1nWe3TvkMyOeVHy4qTplxNXCF3SniNq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=btYYSiDH
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 026cea3c61c2d42f47665bf8b1e2357f4bfb812d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 026cea3c61c2d42f47665bf8b1e2357f4bfb812d  i40e: use libie_aq_str

elapsed time: 1242m

configs tested: 215
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250725    gcc-12.5.0
arc                   randconfig-001-20250725    gcc-13.4.0
arc                   randconfig-002-20250725    gcc-11.5.0
arc                   randconfig-002-20250725    gcc-12.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                   randconfig-001-20250725    gcc-12.5.0
arm                   randconfig-001-20250725    gcc-15.1.0
arm                   randconfig-002-20250725    clang-22
arm                   randconfig-002-20250725    gcc-12.5.0
arm                   randconfig-003-20250725    clang-20
arm                   randconfig-003-20250725    gcc-12.5.0
arm                   randconfig-004-20250725    clang-22
arm                   randconfig-004-20250725    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250725    clang-22
arm64                 randconfig-001-20250725    gcc-12.5.0
arm64                 randconfig-002-20250725    gcc-12.5.0
arm64                 randconfig-003-20250725    gcc-12.5.0
arm64                 randconfig-003-20250725    gcc-14.3.0
arm64                 randconfig-004-20250725    clang-22
arm64                 randconfig-004-20250725    gcc-12.5.0
csky                              allnoconfig    clang-22
csky                                defconfig    clang-19
csky                  randconfig-001-20250725    gcc-11.5.0
csky                  randconfig-001-20250725    gcc-15.1.0
csky                  randconfig-002-20250725    gcc-10.5.0
csky                  randconfig-002-20250725    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250725    clang-22
hexagon               randconfig-001-20250725    gcc-15.1.0
hexagon               randconfig-002-20250725    clang-22
hexagon               randconfig-002-20250725    gcc-15.1.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250725    gcc-12
i386        buildonly-randconfig-002-20250725    clang-20
i386        buildonly-randconfig-002-20250725    gcc-12
i386        buildonly-randconfig-003-20250725    clang-20
i386        buildonly-randconfig-003-20250725    gcc-12
i386        buildonly-randconfig-004-20250725    clang-20
i386        buildonly-randconfig-004-20250725    gcc-12
i386        buildonly-randconfig-005-20250725    clang-20
i386        buildonly-randconfig-005-20250725    gcc-12
i386        buildonly-randconfig-006-20250725    clang-20
i386        buildonly-randconfig-006-20250725    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250725    clang-20
i386                  randconfig-002-20250725    clang-20
i386                  randconfig-003-20250725    clang-20
i386                  randconfig-004-20250725    clang-20
i386                  randconfig-005-20250725    clang-20
i386                  randconfig-006-20250725    clang-20
i386                  randconfig-007-20250725    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250725    gcc-15.1.0
loongarch             randconfig-002-20250725    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                       m5208evb_defconfig    clang-22
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           mtx1_defconfig    clang-22
mips                        omega2p_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250725    gcc-15.1.0
nios2                 randconfig-001-20250725    gcc-9.5.0
nios2                 randconfig-002-20250725    gcc-15.1.0
nios2                 randconfig-002-20250725    gcc-8.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250725    gcc-15.1.0
parisc                randconfig-002-20250725    gcc-15.1.0
parisc                randconfig-002-20250725    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    clang-22
powerpc                  mpc866_ads_defconfig    clang-22
powerpc               randconfig-001-20250725    gcc-15.1.0
powerpc               randconfig-001-20250725    gcc-8.5.0
powerpc               randconfig-002-20250725    clang-22
powerpc               randconfig-002-20250725    gcc-15.1.0
powerpc               randconfig-003-20250725    gcc-15.1.0
powerpc               randconfig-003-20250725    gcc-8.5.0
powerpc64             randconfig-001-20250725    clang-22
powerpc64             randconfig-001-20250725    gcc-15.1.0
powerpc64             randconfig-002-20250725    gcc-15.1.0
powerpc64             randconfig-002-20250725    gcc-8.5.0
powerpc64             randconfig-003-20250725    gcc-10.5.0
powerpc64             randconfig-003-20250725    gcc-15.1.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250725    gcc-10.5.0
riscv                 randconfig-002-20250725    clang-22
riscv                 randconfig-002-20250725    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250725    gcc-10.5.0
s390                  randconfig-001-20250725    gcc-8.5.0
s390                  randconfig-002-20250725    clang-17
s390                  randconfig-002-20250725    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                     magicpanelr2_defconfig    clang-22
sh                    randconfig-001-20250725    gcc-10.5.0
sh                    randconfig-001-20250725    gcc-15.1.0
sh                    randconfig-002-20250725    gcc-10.5.0
sh                    randconfig-002-20250725    gcc-15.1.0
sh                            titan_defconfig    clang-22
sh                              ul2_defconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250725    gcc-10.5.0
sparc                 randconfig-001-20250725    gcc-8.5.0
sparc                 randconfig-002-20250725    gcc-10.5.0
sparc                 randconfig-002-20250725    gcc-11.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250725    gcc-10.5.0
sparc64               randconfig-001-20250725    gcc-8.5.0
sparc64               randconfig-002-20250725    gcc-10.5.0
sparc64               randconfig-002-20250725    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250725    clang-22
um                    randconfig-001-20250725    gcc-10.5.0
um                    randconfig-002-20250725    clang-22
um                    randconfig-002-20250725    gcc-10.5.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250725    clang-20
x86_64      buildonly-randconfig-002-20250725    clang-20
x86_64      buildonly-randconfig-003-20250725    clang-20
x86_64      buildonly-randconfig-004-20250725    clang-20
x86_64      buildonly-randconfig-005-20250725    clang-20
x86_64      buildonly-randconfig-005-20250725    gcc-12
x86_64      buildonly-randconfig-006-20250725    clang-20
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250725    gcc-12
x86_64                randconfig-002-20250725    gcc-12
x86_64                randconfig-003-20250725    gcc-12
x86_64                randconfig-004-20250725    gcc-12
x86_64                randconfig-005-20250725    gcc-12
x86_64                randconfig-006-20250725    gcc-12
x86_64                randconfig-007-20250725    gcc-12
x86_64                randconfig-008-20250725    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250725    gcc-10.5.0
xtensa                randconfig-001-20250725    gcc-13.4.0
xtensa                randconfig-002-20250725    gcc-10.5.0
xtensa                randconfig-002-20250725    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
