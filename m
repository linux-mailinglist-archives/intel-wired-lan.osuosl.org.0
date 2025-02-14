Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00946A364A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 18:34:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A75746081C;
	Fri, 14 Feb 2025 17:34:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PWVxEo7cVqYd; Fri, 14 Feb 2025 17:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32CB5607A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739554494;
	bh=2Fd5QfYDjHcvsQrZU5X6c+LqbktNXY9sJWFXcBP2fC4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=q8qozR9+Ig9ehFQ0Y+yXuHfrFd38+SKM4go0pZLlKSnEE16JYoIHs2oVb7fLkd9hd
	 H77dllr/bnJtuQUQCGimS9p/s6xnL9qCpq4RSKgeaP9MYMc7q6vqrEZFQFzmFRXEEl
	 TTzMgH2GdlJ0526jPuizno36/DAYCMdWhSWcx37dHZi58Fc9WEyp2DvAPKzmdzC8bG
	 F2aO9xO7inlwHG/G+XeLdwPlo9R8Phmemx0r3GtfKCxkf0eo0UcH0Fj33aps/ROXMO
	 gz6yTJASjPB10bsOgNwdnty7LEdbp8XgQxJ/m1GIjUfZwTuy3cnAbAJBYA/29ANtaD
	 uodnT6WOLxqaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32CB5607A3;
	Fri, 14 Feb 2025 17:34:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 38AFC1F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27A9C606C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vwR3cedsPF5R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 17:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA7A1606A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA7A1606A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA7A1606A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 17:34:50 +0000 (UTC)
X-CSE-ConnectionGUID: e7CU8UjlRs694ZZtJpRodA==
X-CSE-MsgGUID: OeF+u7ptTNOzIirFi/zNPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40021234"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40021234"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:34:50 -0800
X-CSE-ConnectionGUID: nXQNYG/eTWibv1/SVltWZA==
X-CSE-MsgGUID: +PrIKPEgTaefQkKYSsZf0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113245002"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2025 09:34:49 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tizaQ-0019wh-2L
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Feb 2025 17:34:46 +0000
Date: Sat, 15 Feb 2025 01:34:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502150121.YPdXFPDU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739554491; x=1771090491;
 h=date:from:to:subject:message-id;
 bh=BhIo948n+bJjMOBEY5PVvIFRZkFdXC0+SSqh3w1tdSQ=;
 b=M8L5aO5UzAVuQZn+WZRqZHm/txd0jprNSEFHew7ojQJqIC5rXiBFIy2R
 PwjIfVZn6TB20PhnTgyIvL7HCcmr2hCdgxBGFaBdQ2GTJbPWcRc/TbSXH
 tnBeYSL07/6maIC/VLQLFMwFaY1slVh/pwDjQNge1MUCUP9ZxYIX1q5Po
 LONiIl5zDFLqzVudIY6/lEzKfYp9XQNoLYHlBs0AzWHUWxvIr+xQwTRos
 Kb/mqBsqyJc3a/H2SCjK0twYhEhS+xuWTiictnakmweIERT8fSyiNnPs5
 6cyLe96TLJLjSMt0G4DLAY4VTCtnG1AiL0HLCb0XOsZPkZ67BYObWruas
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M8L5aO5U
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 fee5d688940690cc845937459e340e4e02598e90
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
branch HEAD: fee5d688940690cc845937459e340e4e02598e90  mlxsw: Add return value check for mlxsw_sp_port_get_stats_raw()

elapsed time: 1447m

configs tested: 206
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20250214    gcc-13.2.0
arc                   randconfig-001-20250214    gcc-14.2.0
arc                   randconfig-002-20250214    gcc-13.2.0
arc                   randconfig-002-20250214    gcc-14.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20250214    clang-16
arm                   randconfig-001-20250214    gcc-14.2.0
arm                   randconfig-002-20250214    gcc-14.2.0
arm                   randconfig-003-20250214    clang-21
arm                   randconfig-003-20250214    gcc-14.2.0
arm                   randconfig-004-20250214    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250214    gcc-14.2.0
arm64                 randconfig-002-20250214    gcc-14.2.0
arm64                 randconfig-003-20250214    gcc-14.2.0
arm64                 randconfig-004-20250214    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250214    clang-21
csky                  randconfig-001-20250214    gcc-14.2.0
csky                  randconfig-002-20250214    clang-21
csky                  randconfig-002-20250214    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-18
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250214    clang-21
hexagon               randconfig-002-20250214    clang-15
hexagon               randconfig-002-20250214    clang-21
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250214    gcc-12
i386        buildonly-randconfig-002-20250214    gcc-12
i386        buildonly-randconfig-003-20250214    clang-19
i386        buildonly-randconfig-003-20250214    gcc-12
i386        buildonly-randconfig-004-20250214    gcc-12
i386        buildonly-randconfig-005-20250214    gcc-12
i386        buildonly-randconfig-006-20250214    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250214    gcc-12
i386                  randconfig-002-20250214    gcc-12
i386                  randconfig-003-20250214    gcc-12
i386                  randconfig-004-20250214    gcc-12
i386                  randconfig-005-20250214    gcc-12
i386                  randconfig-006-20250214    gcc-12
i386                  randconfig-007-20250214    gcc-12
i386                  randconfig-011-20250214    clang-19
i386                  randconfig-012-20250214    clang-19
i386                  randconfig-013-20250214    clang-19
i386                  randconfig-014-20250214    clang-19
i386                  randconfig-015-20250214    clang-19
i386                  randconfig-016-20250214    clang-19
i386                  randconfig-017-20250214    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250214    clang-21
loongarch             randconfig-001-20250214    gcc-14.2.0
loongarch             randconfig-002-20250214    clang-21
loongarch             randconfig-002-20250214    gcc-14.2.0
m68k                             alldefconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250214    clang-21
nios2                 randconfig-001-20250214    gcc-14.2.0
nios2                 randconfig-002-20250214    clang-21
nios2                 randconfig-002-20250214    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                            defconfig    gcc-12
parisc                            allnoconfig    clang-21
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250214    clang-21
parisc                randconfig-001-20250214    gcc-14.2.0
parisc                randconfig-002-20250214    clang-21
parisc                randconfig-002-20250214    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250214    clang-21
powerpc               randconfig-001-20250214    gcc-14.2.0
powerpc               randconfig-002-20250214    clang-18
powerpc               randconfig-002-20250214    clang-21
powerpc               randconfig-003-20250214    clang-21
powerpc64             randconfig-001-20250214    clang-18
powerpc64             randconfig-001-20250214    clang-21
powerpc64             randconfig-002-20250214    clang-21
powerpc64             randconfig-002-20250214    gcc-14.2.0
powerpc64             randconfig-003-20250214    clang-21
powerpc64             randconfig-003-20250214    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250214    clang-16
riscv                 randconfig-001-20250214    clang-18
riscv                 randconfig-002-20250214    clang-16
riscv                 randconfig-002-20250214    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250214    clang-16
s390                  randconfig-001-20250214    gcc-14.2.0
s390                  randconfig-002-20250214    clang-16
s390                  randconfig-002-20250214    clang-19
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250214    clang-16
sh                    randconfig-001-20250214    gcc-14.2.0
sh                    randconfig-002-20250214    clang-16
sh                    randconfig-002-20250214    gcc-14.2.0
sh                          rsk7201_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250214    clang-16
sparc                 randconfig-001-20250214    gcc-14.2.0
sparc                 randconfig-002-20250214    clang-16
sparc                 randconfig-002-20250214    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250214    clang-16
sparc64               randconfig-001-20250214    gcc-14.2.0
sparc64               randconfig-002-20250214    clang-16
sparc64               randconfig-002-20250214    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250214    clang-16
um                    randconfig-001-20250214    gcc-12
um                    randconfig-002-20250214    clang-16
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250214    clang-19
x86_64      buildonly-randconfig-001-20250214    gcc-12
x86_64      buildonly-randconfig-002-20250214    clang-19
x86_64      buildonly-randconfig-002-20250214    gcc-12
x86_64      buildonly-randconfig-003-20250214    gcc-12
x86_64      buildonly-randconfig-004-20250214    clang-19
x86_64      buildonly-randconfig-004-20250214    gcc-12
x86_64      buildonly-randconfig-005-20250214    gcc-12
x86_64      buildonly-randconfig-006-20250214    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250214    clang-19
x86_64                randconfig-002-20250214    clang-19
x86_64                randconfig-003-20250214    clang-19
x86_64                randconfig-004-20250214    clang-19
x86_64                randconfig-005-20250214    clang-19
x86_64                randconfig-006-20250214    clang-19
x86_64                randconfig-007-20250214    clang-19
x86_64                randconfig-008-20250214    clang-19
x86_64                randconfig-071-20250214    gcc-12
x86_64                randconfig-072-20250214    gcc-12
x86_64                randconfig-073-20250214    gcc-12
x86_64                randconfig-074-20250214    gcc-12
x86_64                randconfig-075-20250214    gcc-12
x86_64                randconfig-076-20250214    gcc-12
x86_64                randconfig-077-20250214    gcc-12
x86_64                randconfig-078-20250214    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250214    clang-16
xtensa                randconfig-001-20250214    gcc-14.2.0
xtensa                randconfig-002-20250214    clang-16
xtensa                randconfig-002-20250214    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
