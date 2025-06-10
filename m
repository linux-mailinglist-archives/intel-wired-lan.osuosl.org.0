Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 695CFAD4814
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 03:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4D7861712;
	Wed, 11 Jun 2025 01:41:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tfHm9eEXFpJE; Wed, 11 Jun 2025 01:41:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE7CD6170C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749606078;
	bh=IeuMKmEa6gfWj0SNoWT7QxzDhUGMuJ26jmD8ePmU8s0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wITjk12uJr7OJ0n8JOFrga8q0Eyy22DkRU3PXECdqaTt7NMTIdSRM2b4NF67zsLWu
	 wB8LLsuMdugksBrADovif7x3Ps0R1hf/kO6059OZA4nKJ7u//8uXXq/s11I1uKv8Bl
	 VOM6zszDkACjzIhWTggEaQTo/1itxg0PFKiqPypEhVRkUvSl4mj5JlYdRT0fIpTGXU
	 A2nGXuVjXGmR/eFNysxpUyLzI/pSDAlsrTrWZ86ehrUfD0YeuYOL0gxZENOgDhlUfP
	 gtZ3tw2kn44JW+QvKSuyMbf5VYG3QdjfnHvPpsOgusMa+T5x7pXUzR106B+zbjEQhF
	 cFHphwUdd+DHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE7CD6170C;
	Wed, 11 Jun 2025 01:41:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D0F1A237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 01:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6A2783EC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 01:41:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UgqLtkAzgJEi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 01:41:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B79D583EA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B79D583EA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B79D583EA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 01:41:16 +0000 (UTC)
X-CSE-ConnectionGUID: 2Vlkq1qJSIiez1EfTQtVtA==
X-CSE-MsgGUID: HU70knHaRcijOVaaNbo79Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51726728"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51726728"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 18:41:16 -0700
X-CSE-ConnectionGUID: FnxPzuQNSqK8Dy+TGu+Fmw==
X-CSE-MsgGUID: bCUWrAU5QaavMBJLfHQKuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="177925271"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 10 Jun 2025 18:41:14 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uP6JT-0008mF-0M
 for intel-wired-lan@lists.osuosl.org; Tue, 10 Jun 2025 21:15:19 +0000
Date: Wed, 11 Jun 2025 05:15:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506110505.W1RPNeP5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749606077; x=1781142077;
 h=date:from:to:subject:message-id;
 bh=MXlVMQcqd1uJnxDGyPUqNySVoqW6bDYhOGXvzm/Zbxc=;
 b=C3uHZANL19X9Mpoj27B0itqGyFCsTTvenpnpDfgEofDsTU5YjzP/By8k
 KRZnuzIg6sXInuI89Bnv86AGm7LsrcmIpTdxcA5ZTzVZTcrh6vgFaG7Ru
 I4AZwKt7geVuk1++vopxe5MNWjT4uGK6lLd5J55iSW7P9PJsukJ40vTM5
 0jbTRCKo50e3STGm6BbpRGFnt/TSR+exOq3nBAz/WV51YqJZuUBywgpwx
 qL4uneZya9kFIVCPtYiXa+oewY7TKaYEifTbGnK1rkwbWB3uKww28kvKd
 53Q+hc6sodDQ+9FJS6NtaA8kFbDC1cS+DC9ZW60ZVADIVPcu9foBv2SKK
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C3uHZANL
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 670678399edccd2b671f73ded2275b6c76c94efc
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
branch HEAD: 670678399edccd2b671f73ded2275b6c76c94efc  ixgbe: Fix typos and clarify comments in X550 driver code

elapsed time: 1450m

configs tested: 227
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250610    gcc-12.4.0
arc                   randconfig-002-20250610    gcc-12.4.0
arc                   randconfig-002-20250610    gcc-14.3.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                         lpc32xx_defconfig    gcc-15.1.0
arm                   randconfig-001-20250610    clang-19
arm                   randconfig-001-20250610    gcc-12.4.0
arm                   randconfig-002-20250610    gcc-12.4.0
arm                   randconfig-002-20250610    gcc-8.5.0
arm                   randconfig-003-20250610    clang-21
arm                   randconfig-003-20250610    gcc-12.4.0
arm                   randconfig-004-20250610    clang-16
arm                   randconfig-004-20250610    gcc-12.4.0
arm                           sama5_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250610    clang-21
arm64                 randconfig-001-20250610    gcc-12.4.0
arm64                 randconfig-002-20250610    gcc-11.5.0
arm64                 randconfig-002-20250610    gcc-12.4.0
arm64                 randconfig-003-20250610    clang-21
arm64                 randconfig-003-20250610    gcc-12.4.0
arm64                 randconfig-004-20250610    clang-18
arm64                 randconfig-004-20250610    gcc-12.4.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250610    gcc-12.4.0
csky                  randconfig-001-20250610    gcc-15.1.0
csky                  randconfig-002-20250610    gcc-14.3.0
csky                  randconfig-002-20250610    gcc-15.1.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250610    clang-21
hexagon               randconfig-001-20250610    gcc-15.1.0
hexagon               randconfig-002-20250610    clang-21
hexagon               randconfig-002-20250610    gcc-15.1.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250610    clang-20
i386        buildonly-randconfig-002-20250610    clang-20
i386        buildonly-randconfig-003-20250610    clang-20
i386        buildonly-randconfig-004-20250610    clang-20
i386        buildonly-randconfig-004-20250610    gcc-12
i386        buildonly-randconfig-005-20250610    clang-20
i386        buildonly-randconfig-006-20250610    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250610    clang-20
i386                  randconfig-002-20250610    clang-20
i386                  randconfig-003-20250610    clang-20
i386                  randconfig-004-20250610    clang-20
i386                  randconfig-005-20250610    clang-20
i386                  randconfig-006-20250610    clang-20
i386                  randconfig-007-20250610    clang-20
i386                  randconfig-011-20250610    clang-20
i386                  randconfig-012-20250610    clang-20
i386                  randconfig-013-20250610    clang-20
i386                  randconfig-014-20250610    clang-20
i386                  randconfig-015-20250610    clang-20
i386                  randconfig-016-20250610    clang-20
i386                  randconfig-017-20250610    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch                 loongson3_defconfig    gcc-15.1.0
loongarch             randconfig-001-20250610    gcc-15.1.0
loongarch             randconfig-002-20250610    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm63xx_defconfig    gcc-15.1.0
mips                          eyeq5_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250610    gcc-15.1.0
nios2                 randconfig-001-20250610    gcc-8.5.0
nios2                 randconfig-002-20250610    gcc-13.3.0
nios2                 randconfig-002-20250610    gcc-15.1.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250610    gcc-10.5.0
parisc                randconfig-001-20250610    gcc-15.1.0
parisc                randconfig-002-20250610    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                      arches_defconfig    gcc-15.1.0
powerpc                  mpc866_ads_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250610    gcc-10.5.0
powerpc               randconfig-001-20250610    gcc-15.1.0
powerpc               randconfig-002-20250610    gcc-15.1.0
powerpc               randconfig-002-20250610    gcc-8.5.0
powerpc               randconfig-003-20250610    clang-21
powerpc               randconfig-003-20250610    gcc-15.1.0
powerpc                     tqm8560_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250610    clang-21
powerpc64             randconfig-001-20250610    gcc-15.1.0
powerpc64             randconfig-002-20250610    clang-21
powerpc64             randconfig-002-20250610    gcc-15.1.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-12
riscv                               defconfig    gcc-15.1.0
riscv                 randconfig-001-20250610    gcc-14.3.0
riscv                 randconfig-001-20250610    gcc-9.3.0
riscv                 randconfig-002-20250610    clang-16
riscv                 randconfig-002-20250610    gcc-9.3.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250610    gcc-8.5.0
s390                  randconfig-001-20250610    gcc-9.3.0
s390                  randconfig-002-20250610    gcc-14.3.0
s390                  randconfig-002-20250610    gcc-9.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                        edosk7760_defconfig    gcc-15.1.0
sh                    randconfig-001-20250610    gcc-9.3.0
sh                    randconfig-002-20250610    gcc-15.1.0
sh                    randconfig-002-20250610    gcc-9.3.0
sh                          rsk7264_defconfig    gcc-15.1.0
sh                     sh7710voipgw_defconfig    gcc-15.1.0
sparc                            alldefconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250610    gcc-15.1.0
sparc                 randconfig-001-20250610    gcc-9.3.0
sparc                 randconfig-002-20250610    gcc-12.4.0
sparc                 randconfig-002-20250610    gcc-9.3.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250610    gcc-8.5.0
sparc64               randconfig-001-20250610    gcc-9.3.0
sparc64               randconfig-002-20250610    gcc-8.5.0
sparc64               randconfig-002-20250610    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250610    gcc-11
um                    randconfig-001-20250610    gcc-9.3.0
um                    randconfig-002-20250610    gcc-12
um                    randconfig-002-20250610    gcc-9.3.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250610    clang-20
x86_64      buildonly-randconfig-001-20250610    gcc-12
x86_64      buildonly-randconfig-002-20250610    gcc-12
x86_64      buildonly-randconfig-003-20250610    clang-20
x86_64      buildonly-randconfig-003-20250610    gcc-12
x86_64      buildonly-randconfig-004-20250610    clang-20
x86_64      buildonly-randconfig-004-20250610    gcc-12
x86_64      buildonly-randconfig-005-20250610    gcc-12
x86_64      buildonly-randconfig-006-20250610    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250610    clang-20
x86_64                randconfig-002-20250610    clang-20
x86_64                randconfig-003-20250610    clang-20
x86_64                randconfig-004-20250610    clang-20
x86_64                randconfig-005-20250610    clang-20
x86_64                randconfig-006-20250610    clang-20
x86_64                randconfig-007-20250610    clang-20
x86_64                randconfig-008-20250610    clang-20
x86_64                randconfig-071-20250610    clang-20
x86_64                randconfig-072-20250610    clang-20
x86_64                randconfig-073-20250610    clang-20
x86_64                randconfig-074-20250610    clang-20
x86_64                randconfig-075-20250610    clang-20
x86_64                randconfig-076-20250610    clang-20
x86_64                randconfig-077-20250610    clang-20
x86_64                randconfig-078-20250610    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250610    gcc-11.5.0
xtensa                randconfig-001-20250610    gcc-9.3.0
xtensa                randconfig-002-20250610    gcc-12.4.0
xtensa                randconfig-002-20250610    gcc-9.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
