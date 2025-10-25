Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFE8C09FE7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 22:52:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2436B40825;
	Sat, 25 Oct 2025 20:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VaG9jwdS7ysh; Sat, 25 Oct 2025 20:51:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23C5840802
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761425518;
	bh=aeGChpntRo1B7dPQgG4vYJntQEKfMiAnRH7odQpqGwE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OKkCRp2osER5fJCln84aNaQ442xEL7zCNLobXjN4AyuMkfZzCx38nVawi/gxwip35
	 w+m2k0ymccmAZEisaf4sNVD+5YpKM6RplT6IVPnpeXmTYhS2Wam4MQLJpNUVWXUv7r
	 CU+J/X0nr2TF7ii2iZeuZPW+3cNfTIVbDTyDXzO1kbQTwrToO0/8vtEQvq5iIDqM7W
	 kTTsRpHLGDgI0p+/X5zBf+dY55U/YRYG6yGoGLznZ6yfriH4b9zScaE1YEln/ej7dn
	 V/Lq8FKsQt1I3L8H5DLrYP00wYSBCF69iEpUQ847V4OwD6trembAxQuDZ4A5twLbeJ
	 PMUhdwXcmDNLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23C5840802;
	Sat, 25 Oct 2025 20:51:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DDFA43F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D1E681168
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:51:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qhjSCGcf0AxR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 20:51:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28FC381167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28FC381167
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28FC381167
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:51:54 +0000 (UTC)
X-CSE-ConnectionGUID: RZIPTHUmSo+Vd0zlxaHk8w==
X-CSE-MsgGUID: CS+DDr22TmmntjgsBW4mEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74165704"
X-IronPort-AV: E=Sophos;i="6.19,255,1754982000"; d="scan'208";a="74165704"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2025 13:51:54 -0700
X-CSE-ConnectionGUID: i8SBDY8dQhOTd9zwFZUP9Q==
X-CSE-MsgGUID: 21WIvkyeQiqmfm12rP9vkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,255,1754982000"; d="scan'208";a="215351974"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 25 Oct 2025 13:51:53 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vClEt-000Fac-00
 for intel-wired-lan@lists.osuosl.org; Sat, 25 Oct 2025 20:51:51 +0000
Date: Sun, 26 Oct 2025 04:51:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510260427.oyXPj6N6-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761425515; x=1792961515;
 h=date:from:to:subject:message-id;
 bh=CSWoTYxOYYmGXcelHlmbLnog2GMy441FMM2lZEYJl10=;
 b=cBdoTgmxqiSwVH+fr5IigartQgv2dInJJU66Vs80nm8A8pGl4EDW/w1w
 oG5g/mAwvYA+fwEXr8yJreJokpV1jY8Lh2027gFzRxnIzMzcmj3w//vTj
 qSeNzoXOsCgqsT+8BDJfHnGQH6Iu2EhM/P/lEcuGBb2E4/0sDPqLq7rK3
 fC9X8hFDNr4haUs5ZlvsZ6BTCIN8UM2czPKfddjujGQCUMnKCgHLiIW7h
 iCe9Y6WTOyPz4HEDrUHMKbpe7mKtVE9eRL2ksaeqMFXLuWrqc3LFN6mnn
 lFQ3R4XCKBLh7L4PezoYQ17w+bVdl+ys0ntIJSHvotikPjklCWs1okgF1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cBdoTgmx
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 1390b8b3d2bef9bfbb852fc735430798bfca36e7
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
branch HEAD: 1390b8b3d2bef9bfbb852fc735430798bfca36e7  ice: remove duplicate call to ice_deinit_hw() on error paths

elapsed time: 1447m

configs tested: 295
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20251025    clang-22
arc                   randconfig-001-20251025    gcc-10.5.0
arc                   randconfig-001-20251026    clang-20
arc                   randconfig-002-20251025    clang-22
arc                   randconfig-002-20251025    gcc-8.5.0
arc                   randconfig-002-20251026    clang-20
arc                    vdk_hs38_smp_defconfig    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                           h3600_defconfig    gcc-15.1.0
arm                            hisi_defconfig    clang-22
arm                        multi_v5_defconfig    gcc-15.1.0
arm                   randconfig-001-20251025    clang-22
arm                   randconfig-001-20251026    clang-20
arm                   randconfig-002-20251025    clang-22
arm                   randconfig-002-20251025    gcc-10.5.0
arm                   randconfig-002-20251026    clang-20
arm                   randconfig-003-20251025    clang-22
arm                   randconfig-003-20251026    clang-20
arm                   randconfig-004-20251025    clang-22
arm                   randconfig-004-20251026    clang-20
arm                           sama7_defconfig    clang-22
arm                        spear6xx_defconfig    clang-22
arm                           u8500_defconfig    clang-22
arm                        vexpress_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251025    clang-22
arm64                 randconfig-001-20251025    gcc-14.3.0
arm64                 randconfig-001-20251026    clang-20
arm64                 randconfig-002-20251025    clang-22
arm64                 randconfig-002-20251025    gcc-11.5.0
arm64                 randconfig-002-20251026    clang-20
arm64                 randconfig-003-20251025    clang-22
arm64                 randconfig-003-20251025    gcc-9.5.0
arm64                 randconfig-003-20251026    clang-20
arm64                 randconfig-004-20251025    clang-22
arm64                 randconfig-004-20251026    clang-20
csky                              allnoconfig    clang-22
csky                                defconfig    clang-19
csky                  randconfig-001-20251025    gcc-10.5.0
csky                  randconfig-001-20251025    gcc-11.5.0
csky                  randconfig-001-20251026    clang-22
csky                  randconfig-002-20251025    gcc-10.5.0
csky                  randconfig-002-20251025    gcc-13.4.0
csky                  randconfig-002-20251026    clang-22
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251025    clang-18
hexagon               randconfig-001-20251025    gcc-10.5.0
hexagon               randconfig-001-20251026    clang-22
hexagon               randconfig-002-20251025    clang-20
hexagon               randconfig-002-20251025    gcc-10.5.0
hexagon               randconfig-002-20251026    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-14
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251025    clang-20
i386        buildonly-randconfig-001-20251025    gcc-14
i386        buildonly-randconfig-001-20251026    gcc-14
i386        buildonly-randconfig-002-20251025    clang-20
i386        buildonly-randconfig-002-20251025    gcc-14
i386        buildonly-randconfig-002-20251026    gcc-14
i386        buildonly-randconfig-003-20251025    clang-20
i386        buildonly-randconfig-003-20251026    gcc-14
i386        buildonly-randconfig-004-20251025    clang-20
i386        buildonly-randconfig-004-20251026    gcc-14
i386        buildonly-randconfig-005-20251025    clang-20
i386        buildonly-randconfig-005-20251026    gcc-14
i386        buildonly-randconfig-006-20251025    clang-20
i386        buildonly-randconfig-006-20251026    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20251025    clang-20
i386                  randconfig-001-20251026    gcc-14
i386                  randconfig-002-20251025    clang-20
i386                  randconfig-002-20251026    gcc-14
i386                  randconfig-003-20251025    clang-20
i386                  randconfig-003-20251026    gcc-14
i386                  randconfig-004-20251025    clang-20
i386                  randconfig-004-20251026    gcc-14
i386                  randconfig-005-20251025    clang-20
i386                  randconfig-005-20251026    gcc-14
i386                  randconfig-006-20251025    clang-20
i386                  randconfig-006-20251026    gcc-14
i386                  randconfig-007-20251025    clang-20
i386                  randconfig-007-20251026    gcc-14
i386                  randconfig-011-20251025    gcc-14
i386                  randconfig-011-20251026    clang-20
i386                  randconfig-012-20251025    gcc-14
i386                  randconfig-012-20251026    clang-20
i386                  randconfig-013-20251025    gcc-14
i386                  randconfig-013-20251026    clang-20
i386                  randconfig-014-20251025    gcc-14
i386                  randconfig-014-20251026    clang-20
i386                  randconfig-015-20251025    gcc-14
i386                  randconfig-015-20251026    clang-20
i386                  randconfig-016-20251025    gcc-14
i386                  randconfig-016-20251026    clang-20
i386                  randconfig-017-20251025    gcc-14
i386                  randconfig-017-20251026    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251025    clang-22
loongarch             randconfig-001-20251025    gcc-10.5.0
loongarch             randconfig-001-20251026    clang-22
loongarch             randconfig-002-20251025    clang-18
loongarch             randconfig-002-20251025    gcc-10.5.0
loongarch             randconfig-002-20251026    clang-22
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        maltaup_defconfig    gcc-15.1.0
mips                        vocore2_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251025    gcc-10.5.0
nios2                 randconfig-001-20251025    gcc-11.5.0
nios2                 randconfig-001-20251026    clang-22
nios2                 randconfig-002-20251025    gcc-10.5.0
nios2                 randconfig-002-20251025    gcc-11.5.0
nios2                 randconfig-002-20251026    clang-22
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251025    gcc-10.5.0
parisc                randconfig-001-20251025    gcc-14.3.0
parisc                randconfig-001-20251026    clang-22
parisc                randconfig-002-20251025    gcc-10.5.0
parisc                randconfig-002-20251025    gcc-8.5.0
parisc                randconfig-002-20251026    clang-22
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                       ebony_defconfig    clang-22
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251025    gcc-10.5.0
powerpc               randconfig-001-20251025    gcc-11.5.0
powerpc               randconfig-001-20251026    clang-22
powerpc               randconfig-002-20251025    clang-16
powerpc               randconfig-002-20251025    gcc-10.5.0
powerpc               randconfig-002-20251026    clang-22
powerpc               randconfig-003-20251025    clang-22
powerpc               randconfig-003-20251025    gcc-10.5.0
powerpc               randconfig-003-20251026    clang-22
powerpc64             randconfig-001-20251025    clang-17
powerpc64             randconfig-001-20251025    gcc-10.5.0
powerpc64             randconfig-001-20251026    clang-22
powerpc64             randconfig-002-20251025    clang-16
powerpc64             randconfig-002-20251025    gcc-10.5.0
powerpc64             randconfig-002-20251026    clang-22
powerpc64             randconfig-003-20251025    gcc-10.5.0
powerpc64             randconfig-003-20251026    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251025    clang-22
riscv                 randconfig-002-20251025    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251025    gcc-11.5.0
s390                  randconfig-002-20251025    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20251025    gcc-11.5.0
sh                    randconfig-002-20251025    gcc-15.1.0
sh                           se7750_defconfig    gcc-15.1.0
sh                   sh7724_generic_defconfig    clang-22
sh                            titan_defconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251025    gcc-11.5.0
sparc                 randconfig-002-20251025    gcc-15.1.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251025    clang-22
sparc64               randconfig-002-20251025    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251025    clang-22
um                    randconfig-002-20251025    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251025    clang-20
x86_64      buildonly-randconfig-001-20251025    gcc-14
x86_64      buildonly-randconfig-001-20251026    gcc-14
x86_64      buildonly-randconfig-002-20251025    clang-20
x86_64      buildonly-randconfig-002-20251025    gcc-14
x86_64      buildonly-randconfig-002-20251026    gcc-14
x86_64      buildonly-randconfig-003-20251025    clang-20
x86_64      buildonly-randconfig-003-20251025    gcc-14
x86_64      buildonly-randconfig-003-20251026    gcc-14
x86_64      buildonly-randconfig-004-20251025    clang-20
x86_64      buildonly-randconfig-004-20251026    gcc-14
x86_64      buildonly-randconfig-005-20251025    clang-20
x86_64      buildonly-randconfig-005-20251026    gcc-14
x86_64      buildonly-randconfig-006-20251025    clang-20
x86_64      buildonly-randconfig-006-20251026    gcc-14
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251025    clang-20
x86_64                randconfig-001-20251026    gcc-13
x86_64                randconfig-002-20251025    clang-20
x86_64                randconfig-002-20251026    gcc-13
x86_64                randconfig-003-20251025    clang-20
x86_64                randconfig-003-20251026    gcc-13
x86_64                randconfig-004-20251025    clang-20
x86_64                randconfig-004-20251026    gcc-13
x86_64                randconfig-005-20251025    clang-20
x86_64                randconfig-005-20251026    gcc-13
x86_64                randconfig-006-20251025    clang-20
x86_64                randconfig-006-20251026    gcc-13
x86_64                randconfig-007-20251025    clang-20
x86_64                randconfig-007-20251026    gcc-13
x86_64                randconfig-008-20251025    clang-20
x86_64                randconfig-008-20251026    gcc-13
x86_64                randconfig-071-20251025    clang-20
x86_64                randconfig-071-20251026    gcc-14
x86_64                randconfig-072-20251025    clang-20
x86_64                randconfig-072-20251026    gcc-14
x86_64                randconfig-073-20251025    clang-20
x86_64                randconfig-073-20251026    gcc-14
x86_64                randconfig-074-20251025    clang-20
x86_64                randconfig-074-20251026    gcc-14
x86_64                randconfig-075-20251025    clang-20
x86_64                randconfig-075-20251026    gcc-14
x86_64                randconfig-076-20251025    clang-20
x86_64                randconfig-076-20251026    gcc-14
x86_64                randconfig-077-20251025    clang-20
x86_64                randconfig-077-20251026    gcc-14
x86_64                randconfig-078-20251025    clang-20
x86_64                randconfig-078-20251026    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251025    gcc-15.1.0
xtensa                randconfig-002-20251025    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
