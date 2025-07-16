Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61611B07B7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 18:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 347AE61443;
	Wed, 16 Jul 2025 16:49:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8B8NUKR4fPCf; Wed, 16 Jul 2025 16:49:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECEE76143D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752684549;
	bh=GRki0LsXYwwrhmRmepgVwNJIqoXcDItWDoZNsC27MdY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v65RG9MOiosUhl8pdseQtQnkSmQTV226v4amtsDT3R+geXuNJCI2N4/HFlzZUp6Bw
	 yqw3jKx3P3Ilt8sTsvVl1wd8pdT9ME3MpNOwTY3BUEvmtyE3VdHFx9CBXG0CR7YRVy
	 diatnheRje/FyN7IZtmPM08aKp8eJllkxysyZt2JEpMLofBvQ55MsDrl1Q4QUbfv9e
	 vZXledWD+zxg8Ue5KmfWB3Q5u5zZ1d6SDg9tOm5ZLKYlzkLCdGeMpGeSAq/Raw9+lt
	 C5CE/m8rhLpQrfffSb8+OcVD7oDffEw/4Md3iEX0CDEzdFH5XLFIBFqHYqBIo1qCQ/
	 +fZ7bp+6EsXSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECEE76143D;
	Wed, 16 Jul 2025 16:49:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D8CD9234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 16:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA5E26141D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 16:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kGyoTN4vQStL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 16:49:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A197F6131F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A197F6131F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A197F6131F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 16:49:04 +0000 (UTC)
X-CSE-ConnectionGUID: aRxcEjy+Thua7E8IFTk2tw==
X-CSE-MsgGUID: PZgZT4SdQZ+YV/UJXzkoeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="72393215"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="72393215"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 09:48:59 -0700
X-CSE-ConnectionGUID: 0ZpJ8bKeTDCbENGSTRy+Bw==
X-CSE-MsgGUID: MS2jO+y2QSSjkVIedfzoYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="157907279"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 16 Jul 2025 09:48:57 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uc5JP-000Ce9-0i
 for intel-wired-lan@lists.osuosl.org; Wed, 16 Jul 2025 16:48:55 +0000
Date: Thu, 17 Jul 2025 00:48:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507170051.4wvql9tv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752684546; x=1784220546;
 h=date:from:to:subject:message-id;
 bh=poHPFyCkrMNfUQj2JpQxl8xa7QXxlZIcpa5F1/HeVos=;
 b=FFChKss0JS+5Al67uEtPwmR/5UzJSKZxK8IGzTJATTxjF2SCGXmm7IlY
 TqV3Gb4zmKtSGd0sQK12zKpIhfA/D2QV/9PNtBZ4lBRAAPPAHWMo9uDuK
 Tp2ahaAAxXEReeDbBWkpNz+TzmAFJUhDHy5NBqyvGESX2+7/HehCepdMP
 mj117Cvu1kYLlCSHkn/wWlgDDzV3qIpN8Scbfswu4/jDaNQiY9NaZTNuN
 RCWKIB7mm9KA5tWMifv/2RZcdr/Q6Hw0YbEGVMeL1ZunbuQeFNyqQCVD9
 2xMeaw3CF7NDZp3772jy/9aaX7rnWaKBkxzjK9U+X80d/TREIp/v0V1m8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FFChKss0
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 0e9418961f897be59b1fab6e31ae1b09a0bae902
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
branch HEAD: 0e9418961f897be59b1fab6e31ae1b09a0bae902  selftests: net: increase inter-packet timeout in udpgro.sh

elapsed time: 1617m

configs tested: 182
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-21
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-21
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                            hsdk_defconfig    gcc-15.1.0
arc                   randconfig-001-20250716    gcc-13.4.0
arc                   randconfig-002-20250716    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                       aspeed_g4_defconfig    clang-21
arm                         bcm2835_defconfig    clang-21
arm                            qcom_defconfig    clang-21
arm                   randconfig-001-20250716    clang-20
arm                   randconfig-002-20250716    gcc-12.4.0
arm                   randconfig-003-20250716    gcc-8.5.0
arm                   randconfig-004-20250716    gcc-8.5.0
arm                       spear13xx_defconfig    gcc-15.1.0
arm                        spear6xx_defconfig    clang-21
arm                        vexpress_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-21
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250716    gcc-9.5.0
arm64                 randconfig-002-20250716    gcc-8.5.0
arm64                 randconfig-003-20250716    gcc-8.5.0
arm64                 randconfig-004-20250716    clang-21
csky                              allnoconfig    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250716    gcc-14.3.0
csky                  randconfig-002-20250716    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250716    clang-21
hexagon               randconfig-002-20250716    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
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
loongarch             randconfig-001-20250716    clang-18
loongarch             randconfig-002-20250716    clang-21
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
m68k                        m5407c3_defconfig    gcc-15.1.0
m68k                           sun3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                     loongson1b_defconfig    clang-21
mips                        maltaup_defconfig    clang-21
mips                          rb532_defconfig    clang-18
nios2                            alldefconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250716    gcc-14.2.0
nios2                 randconfig-002-20250716    gcc-11.5.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250716    gcc-8.5.0
parisc                randconfig-002-20250716    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                    amigaone_defconfig    gcc-15.1.0
powerpc                   bluestone_defconfig    clang-21
powerpc                   currituck_defconfig    clang-21
powerpc                     mpc512x_defconfig    clang-21
powerpc                 mpc8315_rdb_defconfig    clang-21
powerpc               randconfig-001-20250716    gcc-8.5.0
powerpc               randconfig-002-20250716    clang-21
powerpc               randconfig-003-20250716    gcc-14.3.0
powerpc                     stx_gp3_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250716    gcc-10.5.0
powerpc64             randconfig-002-20250716    gcc-8.5.0
powerpc64             randconfig-003-20250716    gcc-13.4.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250716    gcc-8.5.0
riscv                 randconfig-001-20250716    gcc-9.3.0
riscv                 randconfig-002-20250716    gcc-11.5.0
riscv                 randconfig-002-20250716    gcc-9.3.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250716    gcc-11.5.0
s390                  randconfig-001-20250716    gcc-9.3.0
s390                  randconfig-002-20250716    gcc-11.5.0
s390                  randconfig-002-20250716    gcc-9.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                        apsh4ad0a_defconfig    gcc-15.1.0
sh                ecovec24-romimage_defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                    randconfig-001-20250716    gcc-15.1.0
sh                    randconfig-001-20250716    gcc-9.3.0
sh                    randconfig-002-20250716    gcc-14.3.0
sh                    randconfig-002-20250716    gcc-9.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250716    gcc-8.5.0
sparc                 randconfig-001-20250716    gcc-9.3.0
sparc                 randconfig-002-20250716    gcc-14.3.0
sparc                 randconfig-002-20250716    gcc-9.3.0
sparc64               randconfig-001-20250716    clang-20
sparc64               randconfig-001-20250716    gcc-9.3.0
sparc64               randconfig-002-20250716    clang-21
sparc64               randconfig-002-20250716    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250716    gcc-11
um                    randconfig-001-20250716    gcc-9.3.0
um                    randconfig-002-20250716    gcc-12
um                    randconfig-002-20250716    gcc-9.3.0
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
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
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
xtensa                          iss_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250716    gcc-9.3.0
xtensa                randconfig-002-20250716    gcc-13.4.0
xtensa                randconfig-002-20250716    gcc-9.3.0
xtensa                         virt_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
