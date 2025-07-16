Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7466B07F71
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 23:21:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE7C083F6E;
	Wed, 16 Jul 2025 21:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w5XDL5FL2q8N; Wed, 16 Jul 2025 21:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F5AE83F6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752700891;
	bh=Pdl4rvQQNrlRpCEh+hOwI3NC7ZQGVFV4pOfFQLX1AVI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=clJVXNI7Leulxlm0hAIRHfnmb/3Lfr3xTb9kgfErwIBLEp3FpBb9dCzdRfhk0+cBs
	 w+pBc8xu91Tl472ZzxN9F0ssGtCY0kAeQm1rfJNFHEfBo46L1CB3JlZZHzcOVMv5Oa
	 3Q87cDEPPL8LtABzAL8WkBsf/w5C10tpM7/a2nq2QYc8cCOEuIuRY3o8D/7ZsQFmIG
	 IOeZe1/DZw5oWL5AO2l3ap9G0hpLVgvzk91ryyLq2cuJWTxLb5werjCb2HJiEA1Tsp
	 SL1kp7bH5SBqZDDwjQcty3+j5hOROU8owf1ZMvuaLcH31sGO5ewlivtUWCIqi7/ORg
	 UanZzvZKPE3WQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F5AE83F6D;
	Wed, 16 Jul 2025 21:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D3FEB234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B89EC60AAD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:21:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h3DLlrhlAYaY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 21:21:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AA84F6088C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA84F6088C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA84F6088C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:21:28 +0000 (UTC)
X-CSE-ConnectionGUID: JSNqLHUOT2KOuhxKsSsY1Q==
X-CSE-MsgGUID: F6///jDlSeil9tnTIXj1UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="72530271"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="72530271"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 14:21:28 -0700
X-CSE-ConnectionGUID: qnPXbOaZSfmf9pL4UtJQxw==
X-CSE-MsgGUID: 3OqKv2HORdW70QZqSgeipA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="158161524"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 16 Jul 2025 14:21:28 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uc9Z7-000Cqb-1Q
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Jul 2025 21:21:25 +0000
Date: Thu, 17 Jul 2025 05:21:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507170502.8RKySpAm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752700889; x=1784236889;
 h=date:from:to:subject:message-id;
 bh=Jb8ZXgvoEuiDz/WkZ9Ibp4zLEewNaqLE2/yth4Rnx+M=;
 b=AvzxHcmiYNub79vehEv/Btryx3LYRcTjIyklLWJCpc1mRjO25eR/icme
 0wGJkEOkL6hpf/6/P2NLRr6HfhEb0TC7TBoG8s9k9WLE94bjH0xuP9b2Z
 RCPeK/n3XkB/3K9H91hiJw92Z99vylCWNUkuWajhJRzHzrx9u1kSD5EPb
 E9iI/nsc5RMEEZeptBDJxhJZG6drLVk4qceYMqAZmcA8fp6XxwlL9RyVA
 /mYY1YJZ4j6AvBJc02HpkAZpSlsFosPsngSiwGmDxO/HPks5bgZb6G5Qe
 WdfjUr9rKp/8Up1ojw1A0+Ch2cLoZ37OCdFy4SDe4vUG/BJJzSIdabPBR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AvzxHcmi
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 bedd0330a19b3a4448e67941732153ce04d3fb9b
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
branch HEAD: bedd0330a19b3a4448e67941732153ce04d3fb9b  ice: check correct pointer in fwlog debugfs

elapsed time: 1450m

configs tested: 201
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-21
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-21
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-14.2.0
arc                                 defconfig    clang-19
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20250716    clang-21
arc                   randconfig-001-20250716    gcc-13.4.0
arc                   randconfig-002-20250716    clang-21
arc                   randconfig-002-20250716    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                   randconfig-001-20250716    clang-20
arm                   randconfig-001-20250716    clang-21
arm                   randconfig-002-20250716    clang-21
arm                   randconfig-002-20250716    gcc-12.4.0
arm                   randconfig-003-20250716    clang-21
arm                   randconfig-003-20250716    gcc-8.5.0
arm                   randconfig-004-20250716    clang-21
arm                   randconfig-004-20250716    gcc-8.5.0
arm                        spear6xx_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-21
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250716    clang-21
arm64                 randconfig-001-20250716    gcc-9.5.0
arm64                 randconfig-002-20250716    clang-21
arm64                 randconfig-002-20250716    gcc-8.5.0
arm64                 randconfig-003-20250716    clang-21
arm64                 randconfig-003-20250716    gcc-8.5.0
arm64                 randconfig-004-20250716    clang-21
csky                              allnoconfig    clang-21
csky                                defconfig    clang-19
csky                  randconfig-001-20250716    gcc-14.3.0
csky                  randconfig-001-20250716    gcc-15.1.0
csky                  randconfig-002-20250716    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250716    clang-21
hexagon               randconfig-001-20250716    gcc-15.1.0
hexagon               randconfig-002-20250716    clang-21
hexagon               randconfig-002-20250716    gcc-15.1.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250716    gcc-12
i386        buildonly-randconfig-002-20250716    clang-20
i386        buildonly-randconfig-003-20250716    gcc-12
i386        buildonly-randconfig-004-20250716    gcc-11
i386        buildonly-randconfig-005-20250716    gcc-12
i386        buildonly-randconfig-006-20250716    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250716    clang-20
i386                  randconfig-002-20250716    clang-20
i386                  randconfig-003-20250716    clang-20
i386                  randconfig-004-20250716    clang-20
i386                  randconfig-005-20250716    clang-20
i386                  randconfig-006-20250716    clang-20
i386                  randconfig-007-20250716    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250716    clang-18
loongarch             randconfig-001-20250716    gcc-15.1.0
loongarch             randconfig-002-20250716    clang-21
loongarch             randconfig-002-20250716    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                           sun3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                            alldefconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-14.2.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250716    gcc-14.2.0
nios2                 randconfig-001-20250716    gcc-15.1.0
nios2                 randconfig-002-20250716    gcc-11.5.0
nios2                 randconfig-002-20250716    gcc-15.1.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250716    gcc-15.1.0
parisc                randconfig-001-20250716    gcc-8.5.0
parisc                randconfig-002-20250716    gcc-15.1.0
parisc                randconfig-002-20250716    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20250716    gcc-15.1.0
powerpc               randconfig-001-20250716    gcc-8.5.0
powerpc               randconfig-002-20250716    clang-21
powerpc               randconfig-002-20250716    gcc-15.1.0
powerpc               randconfig-003-20250716    gcc-14.3.0
powerpc               randconfig-003-20250716    gcc-15.1.0
powerpc64             randconfig-001-20250716    gcc-10.5.0
powerpc64             randconfig-001-20250716    gcc-15.1.0
powerpc64             randconfig-003-20250716    gcc-13.4.0
powerpc64             randconfig-003-20250716    gcc-15.1.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250716    gcc-8.5.0
riscv                 randconfig-002-20250716    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                                defconfig    gcc-14.2.0
s390                  randconfig-001-20250716    gcc-11.5.0
s390                  randconfig-002-20250716    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250716    gcc-15.1.0
sh                    randconfig-002-20250716    gcc-14.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250716    gcc-8.5.0
sparc                 randconfig-002-20250716    gcc-14.3.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250716    clang-20
sparc64               randconfig-002-20250716    clang-21
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250716    gcc-11
um                    randconfig-002-20250716    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250716    clang-20
x86_64      buildonly-randconfig-001-20250716    gcc-12
x86_64      buildonly-randconfig-002-20250716    clang-20
x86_64      buildonly-randconfig-003-20250716    clang-20
x86_64      buildonly-randconfig-004-20250716    clang-20
x86_64      buildonly-randconfig-005-20250716    clang-20
x86_64      buildonly-randconfig-006-20250716    clang-20
x86_64      buildonly-randconfig-006-20250716    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250716    clang-20
x86_64                randconfig-002-20250716    clang-20
x86_64                randconfig-003-20250716    clang-20
x86_64                randconfig-004-20250716    clang-20
x86_64                randconfig-005-20250716    clang-20
x86_64                randconfig-006-20250716    clang-20
x86_64                randconfig-007-20250716    clang-20
x86_64                randconfig-008-20250716    clang-20
x86_64                randconfig-071-20250716    gcc-12
x86_64                randconfig-072-20250716    gcc-12
x86_64                randconfig-073-20250716    gcc-12
x86_64                randconfig-074-20250716    gcc-12
x86_64                randconfig-075-20250716    gcc-12
x86_64                randconfig-076-20250716    gcc-12
x86_64                randconfig-077-20250716    gcc-12
x86_64                randconfig-078-20250716    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250716    gcc-9.3.0
xtensa                randconfig-002-20250716    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
