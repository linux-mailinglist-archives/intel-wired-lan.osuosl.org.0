Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 013A0BEDCF3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Oct 2025 01:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F1336101C;
	Sat, 18 Oct 2025 23:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 19rmYARb9AaI; Sat, 18 Oct 2025 23:35:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EF4161019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760830514;
	bh=/3GIoRUeHZIfJMkItr6esyFYStceR9WQukLyhnbNIDo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YdlGtl4VX/2ncjnCi1zobO0UVVQhJjmsyf0oXOytCzHCSvAWMPLCM+kjZlSiVht/R
	 u142VmwZqr7jki/sg1OGf3cC8EWzGyU59kkoH8juqUyLJjPYL4i/G0Bg7Zrt6s+G5o
	 rQ69hp9oYcN/FJ3u9Dwe8t497k7dOqN2L6p+KWSOkpaLITjew6da+JATgbjAaAkjiv
	 on+admyNIS3as6R/zHAf+S3LqMyG50GDUGwe66XoDn9eoDDCm39dFTSh8GtZYkGoRO
	 q8cU66RMiCTUVsH5n5ODyTXvBOMAKDCyYEyRvVadOYWQVhOt93+uOYw/kP8pkKb7zS
	 oteQ1zRYynqQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EF4161019;
	Sat, 18 Oct 2025 23:35:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 68EC71CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Oct 2025 23:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B66341122
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Oct 2025 23:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rcsb5EA6Magg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Oct 2025 23:35:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EDE6741084
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE6741084
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDE6741084
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Oct 2025 23:35:10 +0000 (UTC)
X-CSE-ConnectionGUID: Z7mlghkgR5KG8QwKYagzBA==
X-CSE-MsgGUID: jYachfQ+SI2y5CGn1NF5wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73285678"
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; d="scan'208";a="73285678"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2025 16:35:10 -0700
X-CSE-ConnectionGUID: 0kTx7KX9R/+DKj8o5GVuOw==
X-CSE-MsgGUID: U3Zg7S7ZQgK3rqUEOnrBHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,239,1754982000"; d="scan'208";a="183037862"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 18 Oct 2025 16:35:09 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vAGRs-0008h1-2P
 for intel-wired-lan@lists.osuosl.org; Sat, 18 Oct 2025 23:34:59 +0000
Date: Sun, 19 Oct 2025 07:34:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510190709.ZE5XN6mP-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760830512; x=1792366512;
 h=date:from:to:subject:message-id;
 bh=DzgwfOa6Bug5X6BrHW8t5LfunE6aiIosk0mikeGUCh4=;
 b=XyLItvJ6Mc4gky3sw9sNGDY5hac9R0sh0GoWeto7GrtmzZUQpZAcT0hH
 MKg4xTj23zoys+4DDXVAWv/SS+cmVFrU3zYgDnMWC2zVBoPblaj0wgjEo
 H8xM9Op/B7zdA135JHT2uQfG10U2eo2xescgPjHnTdAmjcTGcgRwvH422
 DQRHVSiCLII1vuTh16mA8zuZxfVzL51Mvkfq7TZZ+TvnoCoABGjYonaj0
 ppxbxkQ7nCgccwFNVvkIG0rDOytEZ5C6m3kDcgQlNetYFsnTqXI+Fn3Rt
 wbpfCk4URCLLUAYCtbMcpVUjsq2c1GVLDlJ6wiLYXuqbEalsiEpneMkCC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XyLItvJ6
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 0746da01767e8a0df97ae5d031d852e932e03682
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 0746da01767e8a0df97ae5d031d852e932e03682  net: hibmcge: support pci_driver.shutdown()

elapsed time: 1444m

configs tested: 223
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                          axs101_defconfig    clang-22
arc                        nsimosci_defconfig    clang-22
arc                   randconfig-001-20251018    clang-22
arc                   randconfig-001-20251018    gcc-12.5.0
arc                   randconfig-002-20251018    clang-22
arc                   randconfig-002-20251018    gcc-8.5.0
arm                              alldefconfig    clang-22
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                       aspeed_g4_defconfig    clang-22
arm                   randconfig-001-20251018    clang-19
arm                   randconfig-001-20251018    clang-22
arm                   randconfig-002-20251018    clang-20
arm                   randconfig-002-20251018    clang-22
arm                   randconfig-003-20251018    clang-22
arm                   randconfig-004-20251018    clang-22
arm                   randconfig-004-20251018    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251018    clang-22
arm64                 randconfig-001-20251018    gcc-8.5.0
arm64                 randconfig-002-20251018    clang-22
arm64                 randconfig-003-20251018    clang-22
arm64                 randconfig-003-20251018    gcc-13.4.0
arm64                 randconfig-004-20251018    clang-22
arm64                 randconfig-004-20251018    gcc-11.5.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251018    gcc-12.5.0
csky                  randconfig-001-20251018    gcc-9.5.0
csky                  randconfig-001-20251019    clang-16
csky                  randconfig-002-20251018    gcc-12.5.0
csky                  randconfig-002-20251018    gcc-9.5.0
csky                  randconfig-002-20251019    clang-16
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251018    clang-22
hexagon               randconfig-001-20251018    gcc-12.5.0
hexagon               randconfig-001-20251019    clang-16
hexagon               randconfig-002-20251018    clang-22
hexagon               randconfig-002-20251018    gcc-12.5.0
hexagon               randconfig-002-20251019    clang-16
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251018    gcc-14
i386        buildonly-randconfig-002-20251018    gcc-14
i386        buildonly-randconfig-003-20251018    clang-20
i386        buildonly-randconfig-004-20251018    gcc-14
i386        buildonly-randconfig-005-20251018    clang-20
i386        buildonly-randconfig-006-20251018    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251018    gcc-14
i386                  randconfig-002-20251018    gcc-14
i386                  randconfig-003-20251018    gcc-14
i386                  randconfig-004-20251018    gcc-14
i386                  randconfig-005-20251018    gcc-14
i386                  randconfig-006-20251018    gcc-14
i386                  randconfig-007-20251018    gcc-14
i386                  randconfig-011-20251018    clang-20
i386                  randconfig-012-20251018    clang-20
i386                  randconfig-013-20251018    clang-20
i386                  randconfig-014-20251018    clang-20
i386                  randconfig-015-20251018    clang-20
i386                  randconfig-016-20251018    clang-20
i386                  randconfig-017-20251018    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251018    clang-22
loongarch             randconfig-001-20251018    gcc-12.5.0
loongarch             randconfig-001-20251019    clang-16
loongarch             randconfig-002-20251018    gcc-12.5.0
loongarch             randconfig-002-20251018    gcc-13.4.0
loongarch             randconfig-002-20251019    clang-16
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                          atari_defconfig    clang-22
m68k                        m5272c3_defconfig    clang-22
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm63xx_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251018    gcc-11.5.0
nios2                 randconfig-001-20251018    gcc-12.5.0
nios2                 randconfig-001-20251019    clang-16
nios2                 randconfig-002-20251018    gcc-12.5.0
nios2                 randconfig-002-20251018    gcc-8.5.0
nios2                 randconfig-002-20251019    clang-16
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251018    gcc-10.5.0
parisc                randconfig-001-20251018    gcc-12.5.0
parisc                randconfig-001-20251019    clang-16
parisc                randconfig-002-20251018    gcc-12.5.0
parisc                randconfig-002-20251018    gcc-14.3.0
parisc                randconfig-002-20251019    clang-16
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                       holly_defconfig    clang-22
powerpc                 mpc834x_itx_defconfig    clang-22
powerpc                  mpc866_ads_defconfig    clang-22
powerpc               randconfig-001-20251018    clang-22
powerpc               randconfig-001-20251018    gcc-12.5.0
powerpc               randconfig-001-20251019    clang-16
powerpc               randconfig-002-20251018    clang-22
powerpc               randconfig-002-20251018    gcc-12.5.0
powerpc               randconfig-002-20251019    clang-16
powerpc               randconfig-003-20251018    gcc-12.5.0
powerpc               randconfig-003-20251018    gcc-14.3.0
powerpc               randconfig-003-20251019    clang-16
powerpc                     tqm8555_defconfig    clang-22
powerpc                 xes_mpc85xx_defconfig    clang-22
powerpc64             randconfig-001-20251018    gcc-10.5.0
powerpc64             randconfig-001-20251018    gcc-12.5.0
powerpc64             randconfig-002-20251018    gcc-12.5.0
powerpc64             randconfig-002-20251019    clang-16
powerpc64             randconfig-003-20251018    clang-22
powerpc64             randconfig-003-20251018    gcc-12.5.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                          sdk7786_defconfig    clang-22
sparc                            alldefconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc64                             defconfig    gcc-14
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251018    clang-20
x86_64      buildonly-randconfig-001-20251018    gcc-14
x86_64      buildonly-randconfig-001-20251019    clang-20
x86_64      buildonly-randconfig-002-20251018    clang-20
x86_64      buildonly-randconfig-002-20251018    gcc-14
x86_64      buildonly-randconfig-002-20251019    clang-20
x86_64      buildonly-randconfig-003-20251018    clang-20
x86_64      buildonly-randconfig-003-20251018    gcc-14
x86_64      buildonly-randconfig-003-20251019    clang-20
x86_64      buildonly-randconfig-004-20251018    clang-20
x86_64      buildonly-randconfig-004-20251018    gcc-14
x86_64      buildonly-randconfig-004-20251019    clang-20
x86_64      buildonly-randconfig-005-20251018    clang-20
x86_64      buildonly-randconfig-005-20251018    gcc-14
x86_64      buildonly-randconfig-005-20251019    clang-20
x86_64      buildonly-randconfig-006-20251018    clang-20
x86_64      buildonly-randconfig-006-20251019    clang-20
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251018    gcc-14
x86_64                randconfig-002-20251018    gcc-14
x86_64                randconfig-003-20251018    gcc-14
x86_64                randconfig-004-20251018    gcc-14
x86_64                randconfig-005-20251018    gcc-14
x86_64                randconfig-006-20251018    gcc-14
x86_64                randconfig-007-20251018    gcc-14
x86_64                randconfig-008-20251018    gcc-14
x86_64                randconfig-071-20251018    clang-20
x86_64                randconfig-072-20251018    clang-20
x86_64                randconfig-073-20251018    clang-20
x86_64                randconfig-074-20251018    clang-20
x86_64                randconfig-075-20251018    clang-20
x86_64                randconfig-076-20251018    clang-20
x86_64                randconfig-077-20251018    clang-20
x86_64                randconfig-078-20251018    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                       common_defconfig    clang-22

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
