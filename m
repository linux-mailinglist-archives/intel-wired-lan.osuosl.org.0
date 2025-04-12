Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CE1A86E68
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Apr 2025 19:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AAB141766;
	Sat, 12 Apr 2025 17:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L1y33Qtmx7CY; Sat, 12 Apr 2025 17:28:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 319384060E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744478925;
	bh=AC1O8hi+i+iGkNsLBK6tyGko5Eo73sHtGk0zq1ONxqY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uTMmjNKoHn5AVKJQurt1+DzZ1FYdtk+s0OQSn/4oASLuTfFFir8LgQOpZe1IQldWs
	 6Y2iR1hbm9fXSqDwFXnhbMCttb2lUf0+oeMdPP7b+R5YwSI+wWljrYqr3gJWIamjbh
	 WFEZvWogcoUgQBXPAU10w8vTJrxp9M979DA2Lj7xGVIuwNQXfDhFcCI6EjUkCLGZlJ
	 FMkBEZdxQyeq2Jj+6++5JZpybBCIUZKcYRVMehYmgnOuH5m2F0p8J3KNO9PsQVkDoW
	 0SRDIqeBJiSYZ1Vbrj+3BafulW0MWA6bc9jDxCBbfadxMFGCtblwNEHDfZlOXNTvWX
	 4bN7L/wHikuhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 319384060E;
	Sat, 12 Apr 2025 17:28:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 263D2108
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 17:28:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C56E81090
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 17:28:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PXNd_nB6UrZr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Apr 2025 17:28:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EB1F580E00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB1F580E00
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB1F580E00
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 17:28:41 +0000 (UTC)
X-CSE-ConnectionGUID: dZmEPxlhTtaPULF2EAkyrw==
X-CSE-MsgGUID: PIiVbPcgQ2GJXU4e6iGPlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="56667461"
X-IronPort-AV: E=Sophos;i="6.15,208,1739865600"; d="scan'208";a="56667461"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2025 10:28:40 -0700
X-CSE-ConnectionGUID: 3KetquJnRcOABN4sqlNleA==
X-CSE-MsgGUID: VEyeXsKMQ2OLJhldVcwX0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,208,1739865600"; d="scan'208";a="134309469"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 12 Apr 2025 10:28:39 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u3eej-000Bzj-2W
 for intel-wired-lan@lists.osuosl.org; Sat, 12 Apr 2025 17:28:37 +0000
Date: Sun, 13 Apr 2025 01:28:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504130155.pNKu9NxE-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744478922; x=1776014922;
 h=date:from:to:subject:message-id;
 bh=G/USVEEZwzRmJwSs7vlrxvdMv6pmfgLxIdnAcY5lmD0=;
 b=ahoxvbQ92QbowEharBb8sIk0bHJnZk8ndiaJrsLpEZdWj9tbSg53nqPd
 LoTYJm69lFs+rHctN67gIUheRB9RC4DkMCwoydW5rlLOI8stukx2bM6NC
 7tFaboghAaV4vvdXHTZZbZc+FKWv+p4/mWwdybTdwv0LF9GxK3fm/ZVdd
 ZjIpf9ChA9gmUsuXcQHE8NWGXmbQOxaUDD6Kg7MAmIQLbDo9ABHpwm7zG
 iDjpzOswONRWC+UL4+GsBZv+sCXA/sCt5zokzUwmcVY5bv4vY1vLj6Db2
 0fizE5eB7pouMt3SkWwK2sBECWFmeneg144qQB4nKcvQ7MgrZBWtuS4Sj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ahoxvbQ9
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 1a931c4f5e6862e61a4b130cb76b422e1415f644
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 1a931c4f5e6862e61a4b130cb76b422e1415f644  igc: add lock preventing multiple simultaneous PTM transactions

elapsed time: 1442m

configs tested: 99
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250412    gcc-14.2.0
arc                   randconfig-002-20250412    gcc-14.2.0
arc                    vdk_hs38_smp_defconfig    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                           imxrt_defconfig    clang-21
arm                        mvebu_v5_defconfig    gcc-14.2.0
arm                   randconfig-001-20250412    clang-21
arm                   randconfig-002-20250412    gcc-7.5.0
arm                   randconfig-003-20250412    clang-21
arm                   randconfig-004-20250412    clang-21
arm64                            allmodconfig    clang-19
arm64                 randconfig-001-20250412    clang-21
arm64                 randconfig-002-20250412    clang-21
arm64                 randconfig-003-20250412    gcc-8.5.0
arm64                 randconfig-004-20250412    clang-21
csky                  randconfig-001-20250412    gcc-14.2.0
csky                  randconfig-002-20250412    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250412    clang-21
hexagon               randconfig-002-20250412    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250412    clang-20
i386        buildonly-randconfig-002-20250412    clang-20
i386        buildonly-randconfig-003-20250412    clang-20
i386        buildonly-randconfig-004-20250412    clang-20
i386        buildonly-randconfig-005-20250412    clang-20
i386        buildonly-randconfig-006-20250412    gcc-11
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250412    gcc-14.2.0
loongarch             randconfig-002-20250412    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                   sb1250_swarm_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250412    gcc-8.5.0
nios2                 randconfig-002-20250412    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250412    gcc-7.5.0
parisc                randconfig-002-20250412    gcc-9.3.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                     ksi8560_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250412    clang-18
powerpc               randconfig-002-20250412    clang-21
powerpc               randconfig-003-20250412    clang-18
powerpc64             randconfig-001-20250412    clang-21
powerpc64             randconfig-002-20250412    clang-21
powerpc64             randconfig-003-20250412    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250412    clang-20
riscv                 randconfig-002-20250412    gcc-8.5.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250412    clang-18
s390                  randconfig-002-20250412    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250412    gcc-14.2.0
sh                    randconfig-002-20250412    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250412    gcc-10.3.0
sparc                 randconfig-002-20250412    gcc-13.3.0
sparc64               randconfig-001-20250412    gcc-13.3.0
sparc64               randconfig-002-20250412    gcc-5.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250412    gcc-12
um                    randconfig-002-20250412    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250412    gcc-12
x86_64      buildonly-randconfig-002-20250412    clang-20
x86_64      buildonly-randconfig-003-20250412    gcc-11
x86_64      buildonly-randconfig-004-20250412    clang-20
x86_64      buildonly-randconfig-005-20250412    clang-20
x86_64      buildonly-randconfig-006-20250412    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250412    gcc-14.2.0
xtensa                randconfig-002-20250412    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
