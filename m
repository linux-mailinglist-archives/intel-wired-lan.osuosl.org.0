Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 966AAAC9B65
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 May 2025 16:44:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0A1483DF0;
	Sat, 31 May 2025 14:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bvK9sdEtJ2Zl; Sat, 31 May 2025 14:44:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CF8983DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748702662;
	bh=KBXKHMx5GD75VpN4pKTJhUcj9vF3anQLI9iqct5FpdA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aih8fXTW8ruoyhFdMKSo2qR7h1EAFKrgMuQ2m9sttYnwur0H1p0ZsOJQnqEz/N1/S
	 CtSL5dsGqVd23jrhEVpsbaDe8woR4ZlYVeO6rMjjQot4HJqDos/gj+ewjkF5hXHUFx
	 s3JHB8qiLFhed8tL63mpMz1w5HaAfvpg2vWgLxOCibVXjimSpepTlvKSSsZuPYPj5x
	 HBxmnpZVLOqlxwgm6jKObQMJFyMat/viuosY/cxKMEYO+hVjAXuQXi2vyxJ57xhlb6
	 lkmO+szJjY2Crz+VUbZUgILy+0g+hMcIhMcxaS/Cd51hBqeWG1QQsOdXUy6KikwhIb
	 DpsNc0rTtjS/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CF8983DFD;
	Sat, 31 May 2025 14:44:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78B26117
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 14:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EA7E41682
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 14:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mAYIB1kgL_4F for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 May 2025 14:44:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3CBC140CFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CBC140CFA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CBC140CFA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 May 2025 14:44:19 +0000 (UTC)
X-CSE-ConnectionGUID: BT16ZrYqTomymfQUAJavqA==
X-CSE-MsgGUID: 1IP5aV5LTSWtV5JhZdcBlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11450"; a="38405155"
X-IronPort-AV: E=Sophos;i="6.16,198,1744095600"; d="scan'208";a="38405155"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2025 07:44:18 -0700
X-CSE-ConnectionGUID: 7r9qgAcKTIOXescDFXRwPw==
X-CSE-MsgGUID: 3CnWCdN0TVO+Ay9VQ5gcBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,198,1744095600"; d="scan'208";a="144460019"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 31 May 2025 07:44:17 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uLNRX-000YSC-24
 for intel-wired-lan@lists.osuosl.org; Sat, 31 May 2025 14:44:15 +0000
Date: Sat, 31 May 2025 22:43:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505312244.fgyQJYD5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748702659; x=1780238659;
 h=date:from:to:subject:message-id;
 bh=Fgzv+bRnzSXsx5NGZv+Z/ZEgFIBLjWNnkJeLVxhQFnE=;
 b=KNqlCKOS0QEBG2A4Lq9ZIE7/ATJYJe9+EHbEV+VZO/t26j1D5g3mnl7W
 uURnahjMUrriEW8BRReahEiDWKfpWZLfHigYPEbyiwCLVC41FYv0u7PRa
 cZOTmYSH8omLuHZrvn0KMH/6dnPLmikQlqIlQM9pQNtQP9Q4sxrvAlUwk
 1oMHGNwaSU1CvJyZKdmq/T+Gu9gWZFPVvEi6h9Cw+gBfr+d70kPHkE6Kb
 Yzj84GIc46EjUaa/LmBPXRRh+eSi+LYuWUf1aKA0AtevOv3VlPCGSsru9
 YkppSPWsArNSmeXTzMPYTLyLuxRCQq+4nBmXZUgKwXCJCKIBd6dsMJ7Xw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KNqlCKOS
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 9dc63d8ff182150d7d7b318ab9389702a2c0a292
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 9dc63d8ff182150d7d7b318ab9389702a2c0a292  idpf: avoid mailbox timeout delays during reset

elapsed time: 988m

configs tested: 215
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                      axs103_smp_defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                            hsdk_defconfig    gcc-15.1.0
arc                        nsimosci_defconfig    gcc-15.1.0
arc                   randconfig-001-20250531    gcc-15.1.0
arc                   randconfig-002-20250531    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                          ep93xx_defconfig    clang-21
arm                      footbridge_defconfig    gcc-15.1.0
arm                            hisi_defconfig    gcc-15.1.0
arm                        mvebu_v7_defconfig    gcc-15.1.0
arm                   randconfig-001-20250531    gcc-13.3.0
arm                   randconfig-002-20250531    gcc-13.3.0
arm                   randconfig-003-20250531    gcc-7.5.0
arm                   randconfig-004-20250531    gcc-7.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250531    gcc-10.5.0
arm64                 randconfig-002-20250531    clang-20
arm64                 randconfig-003-20250531    clang-21
arm64                 randconfig-004-20250531    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250531    gcc-12.4.0
csky                  randconfig-001-20250531    gcc-7.5.0
csky                  randconfig-002-20250531    gcc-15.1.0
csky                  randconfig-002-20250531    gcc-7.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250531    clang-21
hexagon               randconfig-001-20250531    gcc-7.5.0
hexagon               randconfig-002-20250531    clang-21
hexagon               randconfig-002-20250531    gcc-7.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250531    gcc-12
i386        buildonly-randconfig-002-20250531    gcc-12
i386        buildonly-randconfig-003-20250531    gcc-12
i386        buildonly-randconfig-004-20250531    clang-20
i386        buildonly-randconfig-005-20250531    clang-20
i386        buildonly-randconfig-006-20250531    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250531    clang-20
i386                  randconfig-002-20250531    clang-20
i386                  randconfig-003-20250531    clang-20
i386                  randconfig-004-20250531    clang-20
i386                  randconfig-005-20250531    clang-20
i386                  randconfig-006-20250531    clang-20
i386                  randconfig-007-20250531    clang-20
i386                  randconfig-011-20250531    clang-20
i386                  randconfig-012-20250531    clang-20
i386                  randconfig-013-20250531    clang-20
i386                  randconfig-014-20250531    clang-20
i386                  randconfig-015-20250531    clang-20
i386                  randconfig-016-20250531    clang-20
i386                  randconfig-017-20250531    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch                 loongson3_defconfig    gcc-15.1.0
loongarch             randconfig-001-20250531    gcc-15.1.0
loongarch             randconfig-001-20250531    gcc-7.5.0
loongarch             randconfig-002-20250531    gcc-15.1.0
loongarch             randconfig-002-20250531    gcc-7.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          amiga_defconfig    gcc-15.1.0
m68k                       bvme6000_defconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                        omega2p_defconfig    gcc-15.1.0
mips                           xway_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250531    gcc-10.5.0
nios2                 randconfig-001-20250531    gcc-7.5.0
nios2                 randconfig-002-20250531    gcc-5.5.0
nios2                 randconfig-002-20250531    gcc-7.5.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250531    gcc-7.5.0
parisc                randconfig-002-20250531    gcc-10.5.0
parisc                randconfig-002-20250531    gcc-7.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                       ebony_defconfig    gcc-15.1.0
powerpc                 linkstation_defconfig    clang-20
powerpc                 mpc836x_rdk_defconfig    gcc-15.1.0
powerpc                      ppc44x_defconfig    gcc-15.1.0
powerpc                       ppc64_defconfig    clang-21
powerpc                      ppc64e_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250531    gcc-11.5.0
powerpc               randconfig-001-20250531    gcc-7.5.0
powerpc               randconfig-002-20250531    gcc-5.5.0
powerpc               randconfig-002-20250531    gcc-7.5.0
powerpc               randconfig-003-20250531    gcc-7.5.0
powerpc               randconfig-003-20250531    gcc-8.5.0
powerpc                        warp_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250531    clang-21
powerpc64             randconfig-001-20250531    gcc-7.5.0
powerpc64             randconfig-003-20250531    clang-17
powerpc64             randconfig-003-20250531    gcc-7.5.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    clang-21
riscv                 randconfig-001-20250531    gcc-15.1.0
riscv                 randconfig-002-20250531    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250531    gcc-9.3.0
s390                  randconfig-002-20250531    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                ecovec24-romimage_defconfig    gcc-15.1.0
sh                        edosk7760_defconfig    gcc-15.1.0
sh                    randconfig-001-20250531    gcc-15.1.0
sh                    randconfig-002-20250531    gcc-10.5.0
sh                          rsk7201_defconfig    gcc-15.1.0
sh                           se7721_defconfig    gcc-15.1.0
sh                           sh2007_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250531    gcc-8.5.0
sparc                 randconfig-002-20250531    gcc-6.5.0
sparc                       sparc32_defconfig    gcc-15.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250531    gcc-12.4.0
sparc64               randconfig-002-20250531    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250531    gcc-12
um                    randconfig-002-20250531    gcc-11
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250531    clang-20
x86_64      buildonly-randconfig-002-20250531    gcc-12
x86_64      buildonly-randconfig-003-20250531    gcc-12
x86_64      buildonly-randconfig-004-20250531    gcc-12
x86_64      buildonly-randconfig-005-20250531    clang-20
x86_64      buildonly-randconfig-006-20250531    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250531    clang-20
x86_64                randconfig-002-20250531    clang-20
x86_64                randconfig-003-20250531    clang-20
x86_64                randconfig-004-20250531    clang-20
x86_64                randconfig-005-20250531    clang-20
x86_64                randconfig-006-20250531    clang-20
x86_64                randconfig-007-20250531    clang-20
x86_64                randconfig-008-20250531    clang-20
x86_64                randconfig-071-20250531    clang-20
x86_64                randconfig-072-20250531    clang-20
x86_64                randconfig-073-20250531    clang-20
x86_64                randconfig-074-20250531    clang-20
x86_64                randconfig-075-20250531    clang-20
x86_64                randconfig-076-20250531    clang-20
x86_64                randconfig-077-20250531    clang-20
x86_64                randconfig-078-20250531    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250531    gcc-9.3.0
xtensa                randconfig-002-20250531    gcc-13.3.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
