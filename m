Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC423AF9393
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 15:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9486E40E20;
	Fri,  4 Jul 2025 13:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dHNdZzmMn50w; Fri,  4 Jul 2025 13:05:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DAD740DFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751634358;
	bh=wwHzsw63rwEBbjqPVX29K69yruyu9ffoDckckSMI450=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5+CGp2Ud92Nj1SSh7TcbfB+wlPFFaFDoV2nxZwBFwehfAZ6u0wMad1Z1bfMowau32
	 1bC05ZBftkOmqv47eqDbMRocUJ4HgblcKet+KjjDh+UcXQrta13tm+fYrxX3+I38Tp
	 ELMwS/PJVjIn4Z4p0IyNX6i+nfC78i/DYm0+nCgsi8+qa2C25ohHCB7VzOZqJ4szyQ
	 nx+bekl9MqQ2gkq/x4fTOSsTgaFIt9aFLWBZYBH2AxQ8+90rflVSv2CL/59syJnpMJ
	 s+DC8GF/wg6a31SghhlKgze/1p9m4LgsLp22htVyYsXWDznMyz3/8S/tgN0ecDKA60
	 O9sPz3DitXlKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DAD740DFA;
	Fri,  4 Jul 2025 13:05:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBC821EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 13:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA36983E6B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 13:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c8kyrsLaG3qO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 13:05:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EA4EE83E65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA4EE83E65
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA4EE83E65
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 13:05:55 +0000 (UTC)
X-CSE-ConnectionGUID: 2f8XqlE2Si2B1fDW5nquGw==
X-CSE-MsgGUID: Ox5oNN9/RnKI+V97BiTitA==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="54068663"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="54068663"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 06:05:55 -0700
X-CSE-ConnectionGUID: iDG/X5wkT12PYFwv9gWHkA==
X-CSE-MsgGUID: 1Oik++seRlmImqgq6uBwiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="155215897"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 04 Jul 2025 06:05:54 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uXg6y-0003k2-1n
 for intel-wired-lan@lists.osuosl.org; Fri, 04 Jul 2025 13:05:52 +0000
Date: Fri, 04 Jul 2025 21:05:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507042131.l8qzD38E-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751634356; x=1783170356;
 h=date:from:to:subject:message-id;
 bh=ZAhWJYAFQ1Fcomp4QzrVkzOLaGyHrMDpPThKD7VJkm0=;
 b=JkhzjjmOaliqYgUaIgyY1mlAelL1WcCsSEBElAnVUsODZm9A1O32ljOP
 Suu02NhJbBl1Yhdppv7S8hcYvt9yfYiOVcCxSzVuksLf/KfHxh7Gvdj96
 piS2ha/jYiNabExL6VZ8phV12Zas5QC1WPJdAulM3y40YEKpc/L4ef+ye
 DTiJDCxWlpjxpOrTl7erTMnhjNIKmWBYJPKD/CoY2ah/NjJWWd248DqvL
 gfxqOdWQCZLTnzYpIkEzKRYM0SnykeUiLMIA/tAHGHEwkbjpS76DJFX1b
 r/6yQiqGQsFt9NT5jGRQOJGkfip5wR/2L8/wvVovdbiq+h2USZsr+/IaQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JkhzjjmO
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6dbc64bfa1f08ecc3770d1c795ecdde25167fe63
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
branch HEAD: 6dbc64bfa1f08ecc3770d1c795ecdde25167fe63  e1000e: ignore uninitialized checksum word on tgp

elapsed time: 1080m

configs tested: 126
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250704    gcc-8.5.0
arc                   randconfig-002-20250704    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                      integrator_defconfig    clang-21
arm                       omap2plus_defconfig    gcc-15.1.0
arm                   randconfig-001-20250704    gcc-8.5.0
arm                   randconfig-002-20250704    clang-21
arm                   randconfig-003-20250704    gcc-8.5.0
arm                   randconfig-004-20250704    gcc-13.4.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250704    gcc-14.3.0
arm64                 randconfig-002-20250704    clang-21
arm64                 randconfig-003-20250704    clang-16
arm64                 randconfig-004-20250704    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250704    gcc-15.1.0
csky                  randconfig-002-20250704    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250704    clang-21
hexagon               randconfig-002-20250704    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250704    gcc-12
i386        buildonly-randconfig-002-20250704    clang-20
i386        buildonly-randconfig-003-20250704    clang-20
i386        buildonly-randconfig-004-20250704    clang-20
i386        buildonly-randconfig-005-20250704    clang-20
i386        buildonly-randconfig-006-20250704    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250704    gcc-15.1.0
loongarch             randconfig-002-20250704    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                           sun3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250704    gcc-8.5.0
nios2                 randconfig-002-20250704    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250704    gcc-14.3.0
parisc                randconfig-002-20250704    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                  iss476-smp_defconfig    gcc-15.1.0
powerpc                     rainier_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250704    clang-21
powerpc               randconfig-002-20250704    gcc-9.3.0
powerpc               randconfig-003-20250704    clang-21
powerpc64                        alldefconfig    clang-21
powerpc64             randconfig-001-20250704    clang-18
powerpc64             randconfig-002-20250704    gcc-10.5.0
powerpc64             randconfig-003-20250704    clang-18
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250704    clang-21
riscv                 randconfig-002-20250704    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250704    gcc-15.1.0
s390                  randconfig-002-20250704    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250704    gcc-15.1.0
sh                    randconfig-002-20250704    gcc-13.4.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250704    gcc-11.5.0
sparc                 randconfig-002-20250704    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250704    gcc-13.4.0
sparc64               randconfig-002-20250704    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250704    clang-21
um                    randconfig-002-20250704    clang-21
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250704    clang-20
x86_64      buildonly-randconfig-002-20250704    gcc-12
x86_64      buildonly-randconfig-003-20250704    clang-20
x86_64      buildonly-randconfig-004-20250704    clang-20
x86_64      buildonly-randconfig-005-20250704    clang-20
x86_64      buildonly-randconfig-006-20250704    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250704    gcc-12.4.0
xtensa                randconfig-002-20250704    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
