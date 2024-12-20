Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2E19F95FA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 17:06:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3948883E41;
	Fri, 20 Dec 2024 16:06:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b9U4GrGW4uvq; Fri, 20 Dec 2024 16:06:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA13183E42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734710808;
	bh=KQ1wqn9LqY8J9KusfKx81uvlX0kSK1vIvEjBi9d58ls=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PZlyijkYSkEB5hZYxZzXonlIWREjqQSyGl6bHWiHCaACHTtqp+W65zft2sHex7Evp
	 862GlqXKY0+4wa2K5beTYA+epYwLUw7is9p3O+iF5+6jyLFkhALZwalr/1wZes5ssx
	 v+Yodp6Ovyqb1m/g2RLqXZpvXkrr03WiLsvSZJp1+0sFiZjYqsUK9ldMC4XNQJ2Bh4
	 6stVmlGERzb+QSKBNnZuTSfbjaJq83scDkBbVkq4+kXYpPBbfn4enf5qEBEZo6/FA2
	 sM+Iwd7oQzG5qEqfSEVEx63iephvfUpyVhvXa6tScPEm6xbvHAWJFZS/MuM4+qgL4f
	 1KAeu1LeZUPWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA13183E42;
	Fri, 20 Dec 2024 16:06:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1216C730
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 16:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA86E83E41
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 16:06:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vtNVS3i1-VCs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 16:06:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B2ADB81B36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2ADB81B36
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B2ADB81B36
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 16:06:45 +0000 (UTC)
X-CSE-ConnectionGUID: aW2XP50sTFOn+fE5vzBwmA==
X-CSE-MsgGUID: xE5x+2+OT+msnPb9laiKsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35408889"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="35408889"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 08:06:45 -0800
X-CSE-ConnectionGUID: NNQh8YTHTMyI4vmjzE+iuA==
X-CSE-MsgGUID: kGOjg1AXSeqmJW/EWZTwXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="98367509"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 20 Dec 2024 08:06:43 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tOfWT-0001NC-1C
 for intel-wired-lan@lists.osuosl.org; Fri, 20 Dec 2024 16:06:41 +0000
Date: Sat, 21 Dec 2024 00:05:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412210037.LxQLh4Hi-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734710806; x=1766246806;
 h=date:from:to:subject:message-id;
 bh=DwckOAi24YA/JknAKs5lcq1U6dHAA6++I+DGg6Fo1ek=;
 b=Y3hCkTFe4rfDnwlSJLyV3zOOWcRuzxLYjtj8U3qqP4uL7xQd6q+/VTfm
 75Kuc5o4878Mxq1RPvsW+tUkjJeoksXPaKxwI8PPlfciPmw94vAIaNH6u
 22clYHBCcmc7xoCabFT0i3Kl/dQNKRSS+253qFWXxyeIA21cr1qgyQz4N
 MWfSAeT4J5PQtUJSg0YI0rA2hWvGhd51XnPzpFtGuiIFKGyBCs106M/l3
 Ai6eOVhB/X8D0q/RBBIWQ9yBczzv3DuMm0xiKZcs4BpYwHEBrsLewylPX
 g5aJdNsO4yGE9sTfPM3292wxMcyJUOuFTUz9fSB9uihvaOsDr7oTt/uZL
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y3hCkTFe
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 6b3099ebca13ecc5d0e7d07b438672addbd65da6
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
branch HEAD: 6b3099ebca13ecc5d0e7d07b438672addbd65da6  Merge branch 'net-fib_rules-add-flow-label-selector-support'

elapsed time: 1454m

configs tested: 176
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241220    gcc-13.2.0
arc                   randconfig-002-20241220    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                          moxart_defconfig    gcc-14.2.0
arm                   randconfig-001-20241220    clang-19
arm                   randconfig-001-20241220    gcc-13.2.0
arm                   randconfig-002-20241220    gcc-13.2.0
arm                   randconfig-002-20241220    gcc-14.2.0
arm                   randconfig-003-20241220    gcc-13.2.0
arm                   randconfig-003-20241220    gcc-14.2.0
arm                   randconfig-004-20241220    clang-20
arm                   randconfig-004-20241220    gcc-13.2.0
arm                        spear3xx_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241220    clang-17
arm64                 randconfig-001-20241220    gcc-13.2.0
arm64                 randconfig-002-20241220    clang-19
arm64                 randconfig-002-20241220    gcc-13.2.0
arm64                 randconfig-003-20241220    clang-20
arm64                 randconfig-003-20241220    gcc-13.2.0
arm64                 randconfig-004-20241220    clang-19
arm64                 randconfig-004-20241220    gcc-13.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241220    gcc-14.2.0
csky                  randconfig-002-20241220    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241220    clang-20
hexagon               randconfig-001-20241220    gcc-14.2.0
hexagon               randconfig-002-20241220    clang-20
hexagon               randconfig-002-20241220    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241220    gcc-12
i386        buildonly-randconfig-002-20241220    gcc-12
i386        buildonly-randconfig-003-20241220    gcc-12
i386        buildonly-randconfig-004-20241220    clang-19
i386        buildonly-randconfig-005-20241220    gcc-12
i386        buildonly-randconfig-006-20241220    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241220    clang-19
i386                  randconfig-002-20241220    clang-19
i386                  randconfig-003-20241220    clang-19
i386                  randconfig-004-20241220    clang-19
i386                  randconfig-005-20241220    clang-19
i386                  randconfig-006-20241220    clang-19
i386                  randconfig-007-20241220    clang-19
i386                  randconfig-011-20241220    gcc-12
i386                  randconfig-012-20241220    gcc-12
i386                  randconfig-013-20241220    gcc-12
i386                  randconfig-014-20241220    gcc-12
i386                  randconfig-015-20241220    gcc-12
i386                  randconfig-016-20241220    gcc-12
i386                  randconfig-017-20241220    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241220    gcc-14.2.0
loongarch             randconfig-002-20241220    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          atari_defconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           gcw0_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241220    gcc-14.2.0
nios2                 randconfig-002-20241220    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241220    gcc-14.2.0
parisc                randconfig-002-20241220    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                     ep8248e_defconfig    gcc-14.2.0
powerpc                          g5_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241220    clang-15
powerpc               randconfig-001-20241220    gcc-14.2.0
powerpc               randconfig-002-20241220    gcc-14.2.0
powerpc               randconfig-003-20241220    gcc-14.2.0
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20241220    gcc-14.2.0
powerpc64             randconfig-002-20241220    clang-19
powerpc64             randconfig-002-20241220    gcc-14.2.0
powerpc64             randconfig-003-20241220    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241220    clang-20
riscv                 randconfig-001-20241220    gcc-14.2.0
riscv                 randconfig-002-20241220    clang-19
riscv                 randconfig-002-20241220    clang-20
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241220    clang-20
s390                  randconfig-001-20241220    gcc-14.2.0
s390                  randconfig-002-20241220    clang-20
s390                  randconfig-002-20241220    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                    randconfig-001-20241220    clang-20
sh                    randconfig-001-20241220    gcc-14.2.0
sh                    randconfig-002-20241220    clang-20
sh                    randconfig-002-20241220    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241220    clang-20
sparc                 randconfig-001-20241220    gcc-14.2.0
sparc                 randconfig-002-20241220    clang-20
sparc                 randconfig-002-20241220    gcc-14.2.0
sparc64               randconfig-001-20241220    clang-20
sparc64               randconfig-001-20241220    gcc-14.2.0
sparc64               randconfig-002-20241220    clang-20
sparc64               randconfig-002-20241220    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    clang-20
um                    randconfig-001-20241220    clang-20
um                    randconfig-002-20241220    clang-20
x86_64                           alldefconfig    gcc-14.2.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241220    clang-19
x86_64      buildonly-randconfig-001-20241220    gcc-12
x86_64      buildonly-randconfig-002-20241220    clang-19
x86_64      buildonly-randconfig-003-20241220    clang-19
x86_64      buildonly-randconfig-003-20241220    gcc-12
x86_64      buildonly-randconfig-004-20241220    clang-19
x86_64      buildonly-randconfig-004-20241220    gcc-12
x86_64      buildonly-randconfig-005-20241220    clang-19
x86_64      buildonly-randconfig-006-20241220    clang-19
x86_64      buildonly-randconfig-006-20241220    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241220    gcc-11
x86_64                randconfig-002-20241220    gcc-11
x86_64                randconfig-003-20241220    gcc-11
x86_64                randconfig-004-20241220    gcc-11
x86_64                randconfig-005-20241220    gcc-11
x86_64                randconfig-006-20241220    gcc-11
x86_64                randconfig-007-20241220    gcc-11
x86_64                randconfig-008-20241220    gcc-11
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241220    clang-20
xtensa                randconfig-001-20241220    gcc-14.2.0
xtensa                randconfig-002-20241220    clang-20
xtensa                randconfig-002-20241220    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
