Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715FC820712
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Dec 2023 17:05:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF04D405D5;
	Sat, 30 Dec 2023 16:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF04D405D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703952343;
	bh=ClhM8GQ++qWabq+ZgV2hVDpzbX1os/aqs43pc0EPLew=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lEsjiZ/MQxGBEJlw62L2gsNryWuhBjvvQwgSpQSGD1obLAuSyTI+l0Hebxt/G8Mje
	 +UADJoGh3yMFA4i/F8d2k/dOQEO60SzAtAkIMYOdPyyeRl0VDEBgh9xZ71KpPO2qWd
	 cKvQPOX3XC+OMmbfSIwKsya7VJ8iccrC90xd2hwf1HKFUepwlvL6Y7SaiAlHYproAF
	 8QJKIw8E70hAwhzeG1QMAuQqxCcOZmNJy47w2TGK2d0Jj9FpCfNx4Y+c5r/OtbLmyD
	 FNOlnbl193VyXb1D4Xq3YFJt9l6UqBXbVALkN63P/U0ThUYUBreFgRmskjlpdaUqxk
	 jQo2ZTIxunBYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Or6f7XlSC18I; Sat, 30 Dec 2023 16:05:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43E24405B8;
	Sat, 30 Dec 2023 16:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43E24405B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52CF91BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Dec 2023 16:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E69460FBA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Dec 2023 16:05:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E69460FBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Huo5wIt2c56u for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Dec 2023 16:05:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7A3760ABA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Dec 2023 16:05:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7A3760ABA
X-IronPort-AV: E=McAfee;i="6600,9927,10939"; a="10305163"
X-IronPort-AV: E=Sophos;i="6.04,318,1695711600"; d="scan'208";a="10305163"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2023 07:24:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10939"; a="782544665"
X-IronPort-AV: E=Sophos;i="6.04,318,1695711600"; d="scan'208";a="782544665"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 30 Dec 2023 07:24:48 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rJbCg-000IVp-18
 for intel-wired-lan@lists.osuosl.org; Sat, 30 Dec 2023 15:24:46 +0000
Date: Sat, 30 Dec 2023 23:24:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312302300.4ycNHoPu-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703952336; x=1735488336;
 h=date:from:to:subject:message-id;
 bh=nYU74aiYuu2cUsOQk7vQfEG6M7y9Ibon6phH5dvSmgM=;
 b=YPRWlPlKS7rduISIZLKy7dzSy9TNovcApbuXSDT7+buNUigdEZqeDazz
 X1V2k7+/YUAtu89o7RE1DdUdu3Xvhc3uxiW5AZSTg/T2Lcd6rKx8GIiVg
 vtqBrYZJOK/uYMpvWgsiPcjv8r5VknqKSPvmqfp4kJkqoByAgzxS43n9d
 K6R8zOgUUQD4bg+V7CtyZDVVcvRajb7V79P+dSVoQNGRsjNGJzr5MB2HY
 HgcnoXVj5AwN6HJUtYke4rmPR4uKezr8rwjHbvUyVV53LUChwaapUFkYo
 txrHCwU2/8iy49gIA9N5rDPgXzcJ3Hw9Len+JRj0LQ+GmQEZGw76qaKZ8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YPRWlPlK
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 33d3ac4a8206182e99e8a0ee23ac7097a2a911ba
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 33d3ac4a8206182e99e8a0ee23ac7097a2a911ba  ice: fix Get link status data length

elapsed time: 1449m

configs tested: 179
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
arc                        nsim_700_defconfig   gcc  
arc                   randconfig-001-20231230   gcc  
arc                   randconfig-002-20231230   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                         orion5x_defconfig   clang
arm                   randconfig-001-20231230   clang
arm                   randconfig-002-20231230   clang
arm                   randconfig-003-20231230   clang
arm                   randconfig-004-20231230   clang
arm                        realview_defconfig   gcc  
arm                           sama7_defconfig   clang
arm                           sunxi_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231230   clang
arm64                 randconfig-002-20231230   clang
arm64                 randconfig-003-20231230   clang
arm64                 randconfig-004-20231230   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231230   gcc  
csky                  randconfig-002-20231230   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231230   clang
hexagon               randconfig-002-20231230   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231229   clang
i386         buildonly-randconfig-002-20231229   clang
i386         buildonly-randconfig-003-20231229   clang
i386         buildonly-randconfig-004-20231229   clang
i386         buildonly-randconfig-005-20231229   clang
i386         buildonly-randconfig-006-20231229   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231229   clang
i386                  randconfig-002-20231229   clang
i386                  randconfig-003-20231229   clang
i386                  randconfig-004-20231229   clang
i386                  randconfig-005-20231229   clang
i386                  randconfig-006-20231229   clang
i386                  randconfig-011-20231229   gcc  
i386                  randconfig-012-20231229   gcc  
i386                  randconfig-013-20231229   gcc  
i386                  randconfig-014-20231229   gcc  
i386                  randconfig-015-20231229   gcc  
i386                  randconfig-016-20231229   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231230   gcc  
loongarch             randconfig-002-20231230   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                     cu1830-neo_defconfig   clang
mips                     loongson1c_defconfig   clang
mips                          rm200_defconfig   gcc  
nios2                         3c120_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231230   gcc  
nios2                 randconfig-002-20231230   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231230   gcc  
parisc                randconfig-002-20231230   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      chrp32_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc               randconfig-001-20231230   clang
powerpc               randconfig-002-20231230   clang
powerpc               randconfig-003-20231230   clang
powerpc64             randconfig-001-20231230   clang
powerpc64             randconfig-002-20231230   clang
powerpc64             randconfig-003-20231230   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231230   clang
riscv                 randconfig-002-20231230   clang
riscv                          rv32_defconfig   clang
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231230   gcc  
s390                  randconfig-002-20231230   gcc  
s390                       zfcpdump_defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231230   gcc  
sh                    randconfig-002-20231230   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231230   gcc  
sparc64               randconfig-002-20231230   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231230   clang
um                    randconfig-002-20231230   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231230   clang
x86_64       buildonly-randconfig-002-20231230   clang
x86_64       buildonly-randconfig-003-20231230   clang
x86_64       buildonly-randconfig-004-20231230   clang
x86_64       buildonly-randconfig-005-20231230   clang
x86_64       buildonly-randconfig-006-20231230   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231230   gcc  
x86_64                randconfig-002-20231230   gcc  
x86_64                randconfig-003-20231230   gcc  
x86_64                randconfig-004-20231230   gcc  
x86_64                randconfig-005-20231230   gcc  
x86_64                randconfig-006-20231230   gcc  
x86_64                randconfig-011-20231230   clang
x86_64                randconfig-012-20231230   clang
x86_64                randconfig-013-20231230   clang
x86_64                randconfig-014-20231230   clang
x86_64                randconfig-015-20231230   clang
x86_64                randconfig-016-20231230   clang
x86_64                randconfig-071-20231230   clang
x86_64                randconfig-072-20231230   clang
x86_64                randconfig-073-20231230   clang
x86_64                randconfig-074-20231230   clang
x86_64                randconfig-075-20231230   clang
x86_64                randconfig-076-20231230   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231230   gcc  
xtensa                randconfig-002-20231230   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
