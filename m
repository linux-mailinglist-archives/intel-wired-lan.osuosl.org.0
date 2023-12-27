Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFCB81F171
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 19:37:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D95841625;
	Wed, 27 Dec 2023 18:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D95841625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703702243;
	bh=9WTxHd6UFw+/NpEIAm825m9LlMHNq3wjcLGdau5dKUk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZPXJDB7Igiy7Dbg7mE2RRNx7LTGE2KwvgNpcd0XPedeLoZ3xk898EAc4WK3op5mPs
	 YFRjtgx5nIyHBQWmGJiCljfyapOcBlHONPXzfNopoaDGde6tim1C7q3riH0oVBScMi
	 6rQ153ZVQBYLZuolpLqEC4xWg2p+vV24JxohixEjvSNk57G8/mRoHVpTdgDj6ronJw
	 G28IgySD+dzdWDjqutvNxxPyEgmjTF4u8Ha8dYVxesg5+KxqMKhz37sNTIF9Xv7Of5
	 MLVH1+upChBVe2gU9kqUUCHntX+Tm3oDpgL2euU0zNGCv1CfFrHZcvW0FiPvzr6fmc
	 usVJIK57v8PKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQSxkoZ_oLBQ; Wed, 27 Dec 2023 18:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDA9B404C8;
	Wed, 27 Dec 2023 18:37:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDA9B404C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AFBD1BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 18:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E842460C05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 18:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E842460C05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52foK43DLYO0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 18:37:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDF2460B7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 18:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDF2460B7C
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="376616827"
X-IronPort-AV: E=Sophos;i="6.04,310,1695711600"; d="scan'208";a="376616827"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 10:37:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="868923409"
X-IronPort-AV: E=Sophos;i="6.04,310,1695711600"; d="scan'208";a="868923409"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Dec 2023 10:37:07 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rIYm4-000Ffh-03
 for intel-wired-lan@lists.osuosl.org; Wed, 27 Dec 2023 18:37:01 +0000
Date: Thu, 28 Dec 2023 02:36:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312280213.kMQAribq-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703702234; x=1735238234;
 h=date:from:to:subject:message-id;
 bh=O/DvnV7b/tbRtK0cU1OfI0xEOcZxVbbTGSuBJW4kguY=;
 b=OPXrPnsbOFBKke2iJ0nGBDXI/2UO3ICk2N1OKUu4jGMB0NzbUxs0ssO4
 WObc3yfM7TEX1pSQm6e2bzpg45A+nl/Qf3F8zJp3DcbXL6kVeX6wD9ETp
 7kfk6Dcv9h++eoYgV1MmSB7cCeC3B/USXCbBONwBgWrQqbgY1rkycTHR8
 ZUqoUrOZAw4GcIU5O81uGPk4bc3qy8fHQ1L2Cd0Vz+JNNSoNXc4GLTOSb
 ff3QOv7nj5HBQQ2aT5OnucUuGm8Cd5yrMp5gNwyjhcyRf7tcQR283vnXh
 Ynlado8qy6PdlBFvLLTQ4ZSaGmpEQ+C1tTj7/b9PnbR6/vOVrqOe3QQIX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OPXrPnsb
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 a613fb464dc4d8902d1dbca836a0872a80d36296
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: a613fb464dc4d8902d1dbca836a0872a80d36296  idpf: avoid compiler introduced padding in virtchnl2_rss_key struct

elapsed time: 1452m

configs tested: 185
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                   randconfig-001-20231227   gcc  
arc                   randconfig-002-20231227   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                                 defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20231227   clang
arm                   randconfig-002-20231227   clang
arm                   randconfig-003-20231227   clang
arm                   randconfig-004-20231227   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231227   clang
arm64                 randconfig-002-20231227   clang
arm64                 randconfig-003-20231227   clang
arm64                 randconfig-004-20231227   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231227   gcc  
csky                  randconfig-002-20231227   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231227   clang
hexagon               randconfig-002-20231227   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231227   clang
i386         buildonly-randconfig-002-20231227   clang
i386         buildonly-randconfig-003-20231227   clang
i386         buildonly-randconfig-004-20231227   clang
i386         buildonly-randconfig-005-20231227   clang
i386         buildonly-randconfig-006-20231227   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231227   clang
i386                  randconfig-002-20231227   clang
i386                  randconfig-003-20231227   clang
i386                  randconfig-004-20231227   clang
i386                  randconfig-005-20231227   clang
i386                  randconfig-006-20231227   clang
i386                  randconfig-011-20231227   gcc  
i386                  randconfig-012-20231227   gcc  
i386                  randconfig-013-20231227   gcc  
i386                  randconfig-014-20231227   gcc  
i386                  randconfig-015-20231227   gcc  
i386                  randconfig-016-20231227   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231227   gcc  
loongarch             randconfig-002-20231227   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                       bmips_be_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231227   gcc  
nios2                 randconfig-002-20231227   gcc  
openrisc                         alldefconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231227   gcc  
parisc                randconfig-002-20231227   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                       holly_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc               randconfig-001-20231227   clang
powerpc               randconfig-002-20231227   clang
powerpc               randconfig-003-20231227   clang
powerpc                     redwood_defconfig   gcc  
powerpc64             randconfig-001-20231227   clang
powerpc64             randconfig-002-20231227   clang
powerpc64             randconfig-003-20231227   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231227   clang
riscv                 randconfig-002-20231227   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231227   gcc  
s390                  randconfig-002-20231227   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20231227   gcc  
sh                    randconfig-002-20231227   gcc  
sh                           se7722_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231227   gcc  
sparc64               randconfig-002-20231227   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231227   clang
um                    randconfig-002-20231227   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231227   clang
x86_64       buildonly-randconfig-002-20231227   clang
x86_64       buildonly-randconfig-003-20231227   clang
x86_64       buildonly-randconfig-004-20231227   clang
x86_64       buildonly-randconfig-005-20231227   clang
x86_64       buildonly-randconfig-006-20231227   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231227   gcc  
x86_64                randconfig-002-20231227   gcc  
x86_64                randconfig-003-20231227   gcc  
x86_64                randconfig-004-20231227   gcc  
x86_64                randconfig-005-20231227   gcc  
x86_64                randconfig-006-20231227   gcc  
x86_64                randconfig-011-20231227   clang
x86_64                randconfig-012-20231227   clang
x86_64                randconfig-013-20231227   clang
x86_64                randconfig-014-20231227   clang
x86_64                randconfig-015-20231227   clang
x86_64                randconfig-016-20231227   clang
x86_64                randconfig-071-20231227   clang
x86_64                randconfig-072-20231227   clang
x86_64                randconfig-073-20231227   clang
x86_64                randconfig-074-20231227   clang
x86_64                randconfig-075-20231227   clang
x86_64                randconfig-076-20231227   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231227   gcc  
xtensa                randconfig-002-20231227   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
