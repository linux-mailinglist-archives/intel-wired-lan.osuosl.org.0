Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4629D697E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Nov 2024 15:57:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7DCD40860;
	Sat, 23 Nov 2024 14:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o5Bx0IZHNKtF; Sat, 23 Nov 2024 14:57:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 514ED40877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732373821;
	bh=StaRWY2uZbgcScQ5v3WwuAwguIXr5e63tg2nVm3akjU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UpGw/RmkU4ixlDgvWE3CI0d+cnTITf8aCpT+QfmUHUKoGXmGMeMBaEXFSTlR5mRl0
	 l1vlneirLSMZa3NGOn0vavR2/ZwTnhhMkMIansx3f3U0aE4bQ3yrRQyaeJt9a3xgLI
	 9jde1mFiucN4c18b+eiLescvsyMcdTEnwnDFATs4dYcZDt7KVK8s+OeDn/utOsU187
	 ENwBRw18h+fNU83qJXUN662tqP1f3qCixGlsYHuzslNxSYVdSrT3N5r6h/8xhOWd/C
	 ZzXb6LpD6rO7Yq1G2xXvh5EY/W+0hjzbCXkwqh6ABp+ViorUNg42E2YpagRE/Qlm4z
	 eivpmgKZVOj0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 514ED40877;
	Sat, 23 Nov 2024 14:57:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 578921D8B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2024 14:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 387B284191
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2024 14:56:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-AFu_fbBq29 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Nov 2024 14:56:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A50384181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A50384181
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A50384181
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Nov 2024 14:56:57 +0000 (UTC)
X-CSE-ConnectionGUID: VO8ASzXWSta5pfOQmMsXnQ==
X-CSE-MsgGUID: gp4FjnzLSHulazctfJJ6UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11265"; a="36182399"
X-IronPort-AV: E=Sophos;i="6.12,179,1728975600"; d="scan'208";a="36182399"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2024 06:56:57 -0800
X-CSE-ConnectionGUID: WN/S1pNYQ8eKTD9nf/dnMg==
X-CSE-MsgGUID: Dzc9VbSXTiKryOmKYrTcGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,179,1728975600"; d="scan'208";a="121702445"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 23 Nov 2024 06:56:56 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tErZ6-0004hJ-2r
 for intel-wired-lan@lists.osuosl.org; Sat, 23 Nov 2024 14:56:52 +0000
Date: Sat, 23 Nov 2024 22:56:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411232239.TJaGDhzn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732373819; x=1763909819;
 h=date:from:to:subject:message-id;
 bh=oSjp2gn46EBS1g1VN6BDcoUclI7XsLEWoCI1+6qpTTA=;
 b=CP62nEkJFEs8ATPb9HlsU/wh3iWB+SHGsXnco1oIPHzp6VktQsUtrijY
 0egksO43zKDcZZAKqah1T4wIvbkKHfPQRNsaJlJ+mq1WDMCVCjsK2TYJV
 TRecFrGG6Bu+QhqDzaUJKrLd5UdOMPUtxjIMs7itW8PuZ4GiM44t6Ubdx
 h9QPfrO3Wg2CyAeH9yjHtlYJW0u82KDMcPW9XyiDiLd7TJeD3Lf6txQAA
 rv+ddNQ/SJK+wnwv7z5s/OfWlEeVZ+ZuAk1LLMstDeQR8guqcv3ZSBaak
 NnzUbYcpcHuNN5JmT5h+qGafNfY4u8C6Taca8gKAVL11pQ09y9GtFc2a4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CP62nEkJ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 dea1e14ab094596b47ea03ece7f56a595f5c7e3a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: dea1e14ab094596b47ea03ece7f56a595f5c7e3a  ice: fix PHY timestamp extraction for ETH56G

elapsed time: 1033m

configs tested: 157
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241123    gcc-13.2.0
arc                   randconfig-002-20241123    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                       aspeed_g4_defconfig    clang-20
arm                          ep93xx_defconfig    clang-14
arm                      jornada720_defconfig    clang-20
arm                            mps2_defconfig    clang-20
arm                        mvebu_v7_defconfig    clang-15
arm                   randconfig-001-20241123    gcc-14.2.0
arm                   randconfig-002-20241123    clang-20
arm                   randconfig-003-20241123    clang-20
arm                   randconfig-004-20241123    gcc-14.2.0
arm                         socfpga_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241123    clang-20
arm64                 randconfig-002-20241123    gcc-14.2.0
arm64                 randconfig-003-20241123    gcc-14.2.0
arm64                 randconfig-004-20241123    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241123    gcc-14.2.0
csky                  randconfig-002-20241123    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241123    clang-20
hexagon               randconfig-002-20241123    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241123    clang-19
i386        buildonly-randconfig-002-20241123    clang-19
i386        buildonly-randconfig-003-20241123    gcc-12
i386        buildonly-randconfig-004-20241123    clang-19
i386        buildonly-randconfig-005-20241123    clang-19
i386        buildonly-randconfig-006-20241123    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241123    clang-19
i386                  randconfig-002-20241123    clang-19
i386                  randconfig-003-20241123    gcc-12
i386                  randconfig-004-20241123    clang-19
i386                  randconfig-005-20241123    clang-19
i386                  randconfig-006-20241123    clang-19
i386                  randconfig-011-20241123    gcc-12
i386                  randconfig-012-20241123    clang-19
i386                  randconfig-013-20241123    gcc-12
i386                  randconfig-014-20241123    gcc-12
i386                  randconfig-015-20241123    clang-19
i386                  randconfig-016-20241123    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241123    gcc-14.2.0
loongarch             randconfig-002-20241123    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          rb532_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241123    gcc-14.2.0
nios2                 randconfig-002-20241123    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20241123    gcc-14.2.0
parisc                randconfig-002-20241123    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                      arches_defconfig    gcc-14.2.0
powerpc                   bluestone_defconfig    clang-20
powerpc                        fsp2_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241123    gcc-14.2.0
powerpc               randconfig-002-20241123    clang-20
powerpc               randconfig-003-20241123    clang-20
powerpc                     tqm8541_defconfig    clang-15
powerpc64             randconfig-001-20241123    gcc-14.2.0
powerpc64             randconfig-002-20241123    clang-20
powerpc64             randconfig-003-20241123    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    clang-20
riscv                    nommu_k210_defconfig    clang-20
riscv                 randconfig-001-20241123    clang-20
riscv                 randconfig-002-20241123    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-20
s390                  randconfig-001-20241123    gcc-14.2.0
s390                  randconfig-002-20241123    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                        dreamcast_defconfig    gcc-14.2.0
sh                    randconfig-001-20241123    gcc-14.2.0
sh                    randconfig-002-20241123    gcc-14.2.0
sh                           sh2007_defconfig    gcc-14.2.0
sh                             shx3_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20241123    gcc-14.2.0
sparc64               randconfig-002-20241123    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241123    clang-20
um                    randconfig-002-20241123    clang-20
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241123    gcc-12
x86_64      buildonly-randconfig-002-20241123    gcc-12
x86_64      buildonly-randconfig-003-20241123    gcc-11
x86_64      buildonly-randconfig-004-20241123    gcc-12
x86_64      buildonly-randconfig-005-20241123    gcc-12
x86_64      buildonly-randconfig-006-20241123    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241123    clang-19
x86_64                randconfig-002-20241123    gcc-12
x86_64                randconfig-003-20241123    clang-19
x86_64                randconfig-004-20241123    clang-19
x86_64                randconfig-005-20241123    gcc-12
x86_64                randconfig-006-20241123    clang-19
x86_64                randconfig-011-20241123    gcc-12
x86_64                randconfig-012-20241123    clang-19
x86_64                randconfig-013-20241123    gcc-12
x86_64                randconfig-014-20241123    clang-19
x86_64                randconfig-015-20241123    clang-19
x86_64                randconfig-016-20241123    gcc-12
x86_64                randconfig-071-20241123    clang-19
x86_64                randconfig-072-20241123    clang-19
x86_64                randconfig-073-20241123    gcc-12
x86_64                               rhel-9.4    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241123    gcc-14.2.0
xtensa                randconfig-002-20241123    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
