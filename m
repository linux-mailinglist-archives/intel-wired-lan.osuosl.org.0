Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA05AB24DD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 May 2025 19:48:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 161B340B39;
	Sat, 10 May 2025 17:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t180Edtvm8hG; Sat, 10 May 2025 17:47:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFBD840B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746899270;
	bh=SYjIA/CvxQ70Pbnm3GMB3iC9tECN2RCGf3V79D/dnYo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6V7fURQ2CJL0HAQ2+ROabp7Pom7XchL2JuuUI2/1t9gmQreW7FrPtoJMWvVLNB5bm
	 mNwb3gtG/cfNlsdEqMFHNeROIGypLHjmaowEvVvaggClMzTs1/9G4iN+LgWQxbsD6I
	 paNd4zElXjNdq2RNAGGlxgtExV6dJ9KDPTMRwUBUiDsGNRWROY/Q1eMVIQi+kTDIbQ
	 k9q+91mxsh/Yt7iqLuq7n+7Gy9gwpVI2SLHw/fnwbVCgxB6IhoHa+95P9/Sl3Zha1U
	 QhefNO8OnrLhvUYj/cLJR4SloE5QySIIOWTwFNxo4yRijjLPZgxvZ68dsMpFSl3EC+
	 IKKSqbA+TO3eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFBD840B42;
	Sat, 10 May 2025 17:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 71347E2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 17:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E4ED406D5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 17:47:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vi_db9fr04VB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 May 2025 17:47:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 729FD4074E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 729FD4074E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 729FD4074E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 17:47:45 +0000 (UTC)
X-CSE-ConnectionGUID: dYkwquEzRBqpTL9giMlP6w==
X-CSE-MsgGUID: vqjVo9x3TEO5Vw4qop1iyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11429"; a="48802828"
X-IronPort-AV: E=Sophos;i="6.15,278,1739865600"; d="scan'208";a="48802828"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2025 10:47:45 -0700
X-CSE-ConnectionGUID: qJ1briGDQ2y23Tp1pTFdRQ==
X-CSE-MsgGUID: bMfctTh3Si+Yxgv2B2NKrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,278,1739865600"; d="scan'208";a="140984980"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 10 May 2025 10:47:43 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uDoIX-000DFl-1J
 for intel-wired-lan@lists.osuosl.org; Sat, 10 May 2025 17:47:41 +0000
Date: Sun, 11 May 2025 01:47:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505110147.uuWxCjHg-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746899266; x=1778435266;
 h=date:from:to:subject:message-id;
 bh=HKydxLlYP1/ljgSAPZgJcWcKutKFXO7qEL88DMh3GnY=;
 b=RvvF0ALgppFCQBB+jxjKWQDuW3USQ1ueJgoJBGdyX6LBJC2W+ovhkeAl
 X405NaqDyU5LLQYgkRa96M7z1HO07Aep6L0npx2RVeHT0Wx1n0jKILKrM
 cEK5XPfuumgGcoVvv2IUAuaXIL3bPUSZAyKJHoeK+4shiAde+gR5kvF5k
 cP5oCELz3V5jqTKfcfZASx7cbYwxsSkjn8VUqAx04b9UXzLaVGi/EYwW5
 Vybtl+Fomjr4DL1FqDmLkQdITlVoMM5yphDYsRB6qZ9CHPqsLZdZmahWI
 jYrN4oCtxcWRgjicr3c6iW+os44RwVzoc3YUkYCAJZWLxSeKQ5iGaDVf2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RvvF0ALg
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 9cfd6b66a698631e2b76e3c67569420199a5f267
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 9cfd6b66a698631e2b76e3c67569420199a5f267  idpf: add support for Rx timestamping

elapsed time: 1455m

configs tested: 255
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                        nsim_700_defconfig    gcc-14.2.0
arc                   randconfig-001-20250510    gcc-14.2.0
arc                   randconfig-001-20250510    gcc-7.5.0
arc                   randconfig-001-20250510    gcc-8.5.0
arc                   randconfig-002-20250510    gcc-13.3.0
arc                   randconfig-002-20250510    gcc-7.5.0
arc                   randconfig-002-20250510    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-14.2.0
arm                       aspeed_g5_defconfig    gcc-14.2.0
arm                         bcm2835_defconfig    clang-21
arm                                 defconfig    gcc-14.2.0
arm                       imx_v4_v5_defconfig    gcc-14.2.0
arm                        keystone_defconfig    gcc-14.2.0
arm                          moxart_defconfig    gcc-14.2.0
arm                         mv78xx0_defconfig    clang-21
arm                             mxs_defconfig    clang-21
arm                   randconfig-001-20250510    gcc-10.5.0
arm                   randconfig-001-20250510    gcc-7.5.0
arm                   randconfig-001-20250510    gcc-8.5.0
arm                   randconfig-002-20250510    clang-21
arm                   randconfig-002-20250510    gcc-7.5.0
arm                   randconfig-002-20250510    gcc-8.5.0
arm                   randconfig-003-20250510    gcc-10.5.0
arm                   randconfig-003-20250510    gcc-7.5.0
arm                   randconfig-003-20250510    gcc-8.5.0
arm                   randconfig-004-20250510    gcc-7.5.0
arm                   randconfig-004-20250510    gcc-8.5.0
arm                           sunxi_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250510    gcc-7.5.0
arm64                 randconfig-001-20250510    gcc-8.5.0
arm64                 randconfig-002-20250510    gcc-5.5.0
arm64                 randconfig-002-20250510    gcc-7.5.0
arm64                 randconfig-002-20250510    gcc-8.5.0
arm64                 randconfig-003-20250510    clang-21
arm64                 randconfig-003-20250510    gcc-7.5.0
arm64                 randconfig-003-20250510    gcc-8.5.0
arm64                 randconfig-004-20250510    gcc-7.5.0
arm64                 randconfig-004-20250510    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250510    clang-18
csky                  randconfig-001-20250510    gcc-14.2.0
csky                  randconfig-002-20250510    clang-18
csky                  randconfig-002-20250510    gcc-13.3.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250510    clang-18
hexagon               randconfig-001-20250510    clang-21
hexagon               randconfig-002-20250510    clang-18
hexagon               randconfig-002-20250510    clang-21
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250510    gcc-12
i386        buildonly-randconfig-002-20250510    gcc-12
i386        buildonly-randconfig-003-20250510    gcc-12
i386        buildonly-randconfig-004-20250510    gcc-12
i386        buildonly-randconfig-005-20250510    gcc-12
i386        buildonly-randconfig-006-20250510    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250510    gcc-12
i386                  randconfig-002-20250510    gcc-12
i386                  randconfig-003-20250510    gcc-12
i386                  randconfig-004-20250510    gcc-12
i386                  randconfig-005-20250510    gcc-12
i386                  randconfig-006-20250510    gcc-12
i386                  randconfig-007-20250510    gcc-12
i386                  randconfig-011-20250510    clang-20
i386                  randconfig-012-20250510    clang-20
i386                  randconfig-013-20250510    clang-20
i386                  randconfig-014-20250510    clang-20
i386                  randconfig-015-20250510    clang-20
i386                  randconfig-016-20250510    clang-20
i386                  randconfig-017-20250510    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250510    clang-18
loongarch             randconfig-001-20250510    gcc-13.3.0
loongarch             randconfig-002-20250510    clang-18
loongarch             randconfig-002-20250510    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    clang-21
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          eyeq6_defconfig    gcc-14.2.0
mips                           ip22_defconfig    clang-21
mips                           mtx1_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-21
mips                        omega2p_defconfig    gcc-14.2.0
nios2                         10m50_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250510    clang-18
nios2                 randconfig-001-20250510    gcc-11.5.0
nios2                 randconfig-002-20250510    clang-18
nios2                 randconfig-002-20250510    gcc-7.5.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250510    clang-18
parisc                randconfig-001-20250510    gcc-6.5.0
parisc                randconfig-002-20250510    clang-18
parisc                randconfig-002-20250510    gcc-12.4.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      chrp32_defconfig    clang-21
powerpc                       eiger_defconfig    clang-21
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc               mpc834x_itxgp_defconfig    clang-21
powerpc                      ppc64e_defconfig    clang-21
powerpc               randconfig-001-20250510    clang-18
powerpc               randconfig-001-20250510    gcc-7.5.0
powerpc               randconfig-002-20250510    clang-17
powerpc               randconfig-002-20250510    clang-18
powerpc               randconfig-003-20250510    clang-18
powerpc               randconfig-003-20250510    clang-21
powerpc                  storcenter_defconfig    gcc-14.2.0
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250510    clang-18
powerpc64             randconfig-002-20250510    clang-18
powerpc64             randconfig-002-20250510    gcc-10.5.0
powerpc64             randconfig-003-20250510    clang-18
powerpc64             randconfig-003-20250510    clang-21
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    gcc-14.2.0
riscv                 randconfig-001-20250510    clang-21
riscv                 randconfig-001-20250510    gcc-14.2.0
riscv                 randconfig-002-20250510    clang-21
riscv                 randconfig-002-20250510    gcc-7.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250510    clang-21
s390                  randconfig-001-20250510    gcc-7.5.0
s390                  randconfig-002-20250510    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    clang-21
sh                                  defconfig    gcc-12
sh                             espt_defconfig    clang-21
sh                            hp6xx_defconfig    gcc-14.2.0
sh                            migor_defconfig    clang-21
sh                    randconfig-001-20250510    clang-21
sh                    randconfig-001-20250510    gcc-9.3.0
sh                    randconfig-002-20250510    clang-21
sh                    randconfig-002-20250510    gcc-11.5.0
sh                             sh03_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250510    clang-21
sparc                 randconfig-001-20250510    gcc-12.4.0
sparc                 randconfig-002-20250510    clang-21
sparc                 randconfig-002-20250510    gcc-14.2.0
sparc64                          alldefconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250510    clang-21
sparc64               randconfig-001-20250510    gcc-10.5.0
sparc64               randconfig-002-20250510    clang-21
sparc64               randconfig-002-20250510    gcc-14.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250510    clang-21
um                    randconfig-001-20250510    gcc-12
um                    randconfig-002-20250510    clang-21
um                    randconfig-002-20250510    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250510    clang-20
x86_64      buildonly-randconfig-002-20250510    clang-20
x86_64      buildonly-randconfig-003-20250510    clang-20
x86_64      buildonly-randconfig-003-20250510    gcc-12
x86_64      buildonly-randconfig-004-20250510    clang-20
x86_64      buildonly-randconfig-004-20250510    gcc-11
x86_64      buildonly-randconfig-005-20250510    clang-20
x86_64      buildonly-randconfig-005-20250510    gcc-12
x86_64      buildonly-randconfig-006-20250510    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250510    clang-20
x86_64                randconfig-002-20250510    clang-20
x86_64                randconfig-003-20250510    clang-20
x86_64                randconfig-004-20250510    clang-20
x86_64                randconfig-005-20250510    clang-20
x86_64                randconfig-006-20250510    clang-20
x86_64                randconfig-007-20250510    clang-20
x86_64                randconfig-008-20250510    clang-20
x86_64                randconfig-071-20250510    gcc-11
x86_64                randconfig-072-20250510    gcc-11
x86_64                randconfig-073-20250510    gcc-11
x86_64                randconfig-074-20250510    gcc-11
x86_64                randconfig-075-20250510    gcc-11
x86_64                randconfig-076-20250510    gcc-11
x86_64                randconfig-077-20250510    gcc-11
x86_64                randconfig-078-20250510    gcc-11
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250510    clang-21
xtensa                randconfig-001-20250510    gcc-8.5.0
xtensa                randconfig-002-20250510    clang-21
xtensa                randconfig-002-20250510    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
