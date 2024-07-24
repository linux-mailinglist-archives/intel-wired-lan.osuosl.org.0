Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9422793B944
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 00:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09C86406FA;
	Wed, 24 Jul 2024 22:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 07mdHhZYEouz; Wed, 24 Jul 2024 22:46:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A7C5406E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721861205;
	bh=fdHUdMmIlPDXzUuBvyxMHbjry4hd9pWqs86ee2AFuaM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b4fkAoVgXf/IllAhFOJl9ZkacTZkRjYTLAmhOPn9N5E118Oh5oeiegTPx+fp7cWHa
	 PAEKeYIQDmhKDf191gmlfOwlk02UhFR45OTmMEwru1oqq+rPeaTEBtwZDRHzjqoNfJ
	 Ubv7C8a3VZUxwQWjjvsAFjbKlMqffTKrYvJNPLMNMBLcsh6dIX3i/jFRXOqe6TB0ic
	 nSAUbcxdbOr4+RHWeh6K0iVqlmwgn+i1KkxRDdq3OVgB+1xvQveuGlVmeFXQpQkqwq
	 nM1x5zG1ig+JXLdjcm75Wq/hpUq7jC4cP+0Iu7S4oxLp9UhBDecD6pnusLN47bBcIq
	 b0jb2OihVHBZw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A7C5406E5;
	Wed, 24 Jul 2024 22:46:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 791C21BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 22:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7403840952
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 22:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z02zqxZlbu8S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 22:46:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4180C401F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4180C401F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4180C401F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 22:46:40 +0000 (UTC)
X-CSE-ConnectionGUID: 7lKhXGI5THaaTFsHjrGkig==
X-CSE-MsgGUID: yQXneU4+TZetOpEro0546g==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30191001"
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="30191001"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 15:46:40 -0700
X-CSE-ConnectionGUID: 6Hzcg2+sSuOVamNJoGhrPA==
X-CSE-MsgGUID: rPsz452uSi+4u1D2LCv3MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="52665627"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 24 Jul 2024 15:46:40 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sWkkn-000nVJ-2J
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Jul 2024 22:46:37 +0000
Date: Thu, 25 Jul 2024 06:45:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407250637.9wr2DAEm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721861201; x=1753397201;
 h=date:from:to:subject:message-id;
 bh=mx6irONApcvsyGZ3DQKZbParP977aGMGNF8H0+d1Z80=;
 b=E4Mf1CwfuPCJM6qfq8x7mYvu/PCMPH2WY5IXnBaDbSdqMdmkd1wdqYYl
 mgyepkRKeD+4Mt7fXDvE/eiRAPbGgEOcNjh4IQk8pxDkP1hBLe2jnzRdn
 oTZANW8m9zRZfG7TKa9LVIGzKfzh4rFLWsW77tmtvRA/m9nub/Njni02J
 qkS6bo9MWYFgCvJzGfw7G6R16MP15H/dQlYnTRwn7Mb1z/sXshneR0xzb
 BOcs4dtd+wFsKZNu6NwQDNMrmyk7u/Zxd1RHNw9UxmVKH1C0mBNHq7nuL
 F2qJ4FvviEwlWvmKar62ptQ0UHEZpxdAh5S9/Z7pBBGZObtdaCeHv2usF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E4Mf1Cwf
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f8d49cdc0fbcaa7a8ed948f5e7dddea530d61b25
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
branch HEAD: f8d49cdc0fbcaa7a8ed948f5e7dddea530d61b25  ice: Skip PTP HW writes during PTP reset procedure

elapsed time: 1449m

configs tested: 234
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240724   gcc-13.2.0
arc                   randconfig-002-20240724   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                       aspeed_g5_defconfig   gcc-14.1.0
arm                     davinci_all_defconfig   clang-19
arm                                 defconfig   gcc-13.2.0
arm                           omap1_defconfig   gcc-14.1.0
arm                   randconfig-001-20240724   clang-19
arm                   randconfig-001-20240724   gcc-13.2.0
arm                   randconfig-002-20240724   clang-19
arm                   randconfig-002-20240724   gcc-13.2.0
arm                   randconfig-003-20240724   clang-19
arm                   randconfig-003-20240724   gcc-13.2.0
arm                   randconfig-004-20240724   gcc-13.2.0
arm                   randconfig-004-20240724   gcc-14.1.0
arm                       spear13xx_defconfig   gcc-14.1.0
arm                           spitz_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240724   gcc-13.2.0
arm64                 randconfig-001-20240724   gcc-14.1.0
arm64                 randconfig-002-20240724   gcc-13.2.0
arm64                 randconfig-002-20240724   gcc-14.1.0
arm64                 randconfig-003-20240724   gcc-13.2.0
arm64                 randconfig-003-20240724   gcc-14.1.0
arm64                 randconfig-004-20240724   gcc-13.2.0
arm64                 randconfig-004-20240724   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240724   gcc-13.2.0
csky                  randconfig-001-20240724   gcc-14.1.0
csky                  randconfig-002-20240724   gcc-13.2.0
csky                  randconfig-002-20240724   gcc-14.1.0
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240724   clang-19
hexagon               randconfig-002-20240724   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240724   clang-18
i386         buildonly-randconfig-002-20240724   clang-18
i386         buildonly-randconfig-002-20240724   gcc-9
i386         buildonly-randconfig-003-20240724   clang-18
i386         buildonly-randconfig-004-20240724   clang-18
i386         buildonly-randconfig-005-20240724   clang-18
i386         buildonly-randconfig-006-20240724   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240724   clang-18
i386                  randconfig-002-20240724   clang-18
i386                  randconfig-003-20240724   clang-18
i386                  randconfig-004-20240724   clang-18
i386                  randconfig-004-20240724   gcc-9
i386                  randconfig-005-20240724   clang-18
i386                  randconfig-006-20240724   clang-18
i386                  randconfig-011-20240724   clang-18
i386                  randconfig-011-20240724   gcc-13
i386                  randconfig-012-20240724   clang-18
i386                  randconfig-013-20240724   clang-18
i386                  randconfig-013-20240724   gcc-13
i386                  randconfig-014-20240724   clang-18
i386                  randconfig-014-20240724   gcc-8
i386                  randconfig-015-20240724   clang-18
i386                  randconfig-015-20240724   gcc-13
i386                  randconfig-016-20240724   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240724   gcc-13.2.0
loongarch             randconfig-001-20240724   gcc-14.1.0
loongarch             randconfig-002-20240724   gcc-13.2.0
loongarch             randconfig-002-20240724   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                         bigsur_defconfig   gcc-14.1.0
mips                      pic32mzda_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240724   gcc-13.2.0
nios2                 randconfig-001-20240724   gcc-14.1.0
nios2                 randconfig-002-20240724   gcc-13.2.0
nios2                 randconfig-002-20240724   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240724   gcc-13.2.0
parisc                randconfig-001-20240724   gcc-14.1.0
parisc                randconfig-002-20240724   gcc-13.2.0
parisc                randconfig-002-20240724   gcc-14.1.0
parisc64                         alldefconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                     ksi8560_defconfig   gcc-14.1.0
powerpc                 mpc837x_rdb_defconfig   gcc-14.1.0
powerpc                      pmac32_defconfig   clang-19
powerpc               randconfig-001-20240724   clang-19
powerpc               randconfig-001-20240724   gcc-13.2.0
powerpc               randconfig-002-20240724   gcc-13.2.0
powerpc               randconfig-002-20240724   gcc-14.1.0
powerpc               randconfig-003-20240724   clang-19
powerpc               randconfig-003-20240724   gcc-13.2.0
powerpc                     redwood_defconfig   clang-19
powerpc                     tqm8560_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240724   clang-19
powerpc64             randconfig-001-20240724   gcc-13.2.0
powerpc64             randconfig-002-20240724   gcc-13.2.0
powerpc64             randconfig-002-20240724   gcc-14.1.0
powerpc64             randconfig-003-20240724   clang-19
powerpc64             randconfig-003-20240724   gcc-13.2.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-14.1.0
riscv                    nommu_virt_defconfig   clang-19
riscv                 randconfig-001-20240724   gcc-13.2.0
riscv                 randconfig-001-20240724   gcc-14.1.0
riscv                 randconfig-002-20240724   gcc-13.2.0
riscv                 randconfig-002-20240724   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240724   gcc-13.2.0
s390                  randconfig-001-20240724   gcc-14.1.0
s390                  randconfig-002-20240724   clang-19
s390                  randconfig-002-20240724   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                            migor_defconfig   gcc-14.1.0
sh                    randconfig-001-20240724   gcc-13.2.0
sh                    randconfig-001-20240724   gcc-14.1.0
sh                    randconfig-002-20240724   gcc-13.2.0
sh                    randconfig-002-20240724   gcc-14.1.0
sh                        sh7763rdp_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240724   gcc-13.2.0
sparc64               randconfig-001-20240724   gcc-14.1.0
sparc64               randconfig-002-20240724   gcc-13.2.0
sparc64               randconfig-002-20240724   gcc-14.1.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                                  defconfig   clang-19
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-13
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240724   clang-15
um                    randconfig-001-20240724   gcc-13.2.0
um                    randconfig-002-20240724   gcc-13
um                    randconfig-002-20240724   gcc-13.2.0
um                           x86_64_defconfig   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240724   clang-18
x86_64       buildonly-randconfig-002-20240724   clang-18
x86_64       buildonly-randconfig-003-20240724   clang-18
x86_64       buildonly-randconfig-003-20240724   gcc-13
x86_64       buildonly-randconfig-004-20240724   clang-18
x86_64       buildonly-randconfig-005-20240724   clang-18
x86_64       buildonly-randconfig-006-20240724   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240724   clang-18
x86_64                randconfig-002-20240724   clang-18
x86_64                randconfig-003-20240724   clang-18
x86_64                randconfig-004-20240724   clang-18
x86_64                randconfig-004-20240724   gcc-10
x86_64                randconfig-005-20240724   clang-18
x86_64                randconfig-006-20240724   clang-18
x86_64                randconfig-006-20240724   gcc-13
x86_64                randconfig-011-20240724   clang-18
x86_64                randconfig-012-20240724   clang-18
x86_64                randconfig-013-20240724   clang-18
x86_64                randconfig-014-20240724   clang-18
x86_64                randconfig-015-20240724   clang-18
x86_64                randconfig-016-20240724   clang-18
x86_64                randconfig-071-20240724   clang-18
x86_64                randconfig-072-20240724   clang-18
x86_64                randconfig-073-20240724   clang-18
x86_64                randconfig-074-20240724   clang-18
x86_64                randconfig-075-20240724   clang-18
x86_64                randconfig-076-20240724   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240724   gcc-13.2.0
xtensa                randconfig-001-20240724   gcc-14.1.0
xtensa                randconfig-002-20240724   gcc-13.2.0
xtensa                randconfig-002-20240724   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
