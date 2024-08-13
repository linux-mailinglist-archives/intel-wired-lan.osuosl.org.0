Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC429950CC7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 21:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83BC74068C;
	Tue, 13 Aug 2024 19:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yJCVLfMgmAGb; Tue, 13 Aug 2024 19:03:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D38840661
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723575823;
	bh=IE3eBkW2as0oWXYI427MEFON42mp1e27SKCzmUPQp+M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7WaitdoFb2CXkn8B5vrmthS4y0DNXAldqgO2zHw9WVw4LAmKNNVCaPSSPf0exH8x1
	 mMNu8oLvsiYqmZWilrSRv0C1cUjEpSfKQqfQRszrqstkQt8NDY74UiYkVYdswMgMqh
	 lNQiYOgp9osYvAIvx3qoLVR7t2ytI4HvjmqtmP5UcMdjO2J26roY9/tARcM7TXeS70
	 R5KgsTXcqeW1zA3RAHE5FoxyAHIFm/kplsGaqQpZau8WobJqcc6YGeJFyW+QK6+w2I
	 xH5oN1p/ibEIQHsXwfNKPOLwfMNSvIlvOVLUkTQU6Uled+kP0VOKbsZAaE3xydmgBs
	 r7eMSg21ucNGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D38840661;
	Tue, 13 Aug 2024 19:03:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9433E1BF23B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D04F60629
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O63XaxWlgCXO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 19:03:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4705D60619
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4705D60619
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4705D60619
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:03:38 +0000 (UTC)
X-CSE-ConnectionGUID: pxQGPFJoRB2agKoJcppYMg==
X-CSE-MsgGUID: tG8FGVtETaeFaB2FVFtQSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32379458"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="32379458"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 12:03:38 -0700
X-CSE-ConnectionGUID: LU15wRDQQH6vmd0u5YHWqg==
X-CSE-MsgGUID: nEIen7ZjRQGjSqtnFqIRXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="59063857"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 13 Aug 2024 12:03:36 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sdwnu-0000fL-1e
 for intel-wired-lan@lists.osuosl.org; Tue, 13 Aug 2024 19:03:34 +0000
Date: Wed, 14 Aug 2024 03:02:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408140357.Bo644RLs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723575819; x=1755111819;
 h=date:from:to:subject:message-id;
 bh=CnOtdqpNqXpZBxm6i70eforSz/yGiM5rIQSQKLmKLp8=;
 b=a5xBIKxHr8E75mVMWfSKy1Xj+zWxq8pdtax1/DQkxGHxsi80FDozxf9r
 ZYLa4MNthM7fJw/mqwgex9vgWDG2hYPf8DZ7Q8+aRg8PYlsBeEXzFbc/3
 wWwaFrXHIrpYEXx46o7fGq22Ldloogq86EYiPwZeO3zUl22gC4R8zx5ZG
 pMA6Cm3Ap9rPyCIh76R/XjPrjTX0UY8sErIq1sKs14CcA5UC1bCAZrVni
 rgJj7IlcduM5SfiYP2mohH9gJ9jlPqVhpsTHRZ7ZC8KqCZvBsEycoL8gi
 poo2kpapAajtSI6+EQlkBJ80dF1cyVPMkWPbtWCsXWVKtIh8y9ZUKoYl7
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a5xBIKxH
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 db34a76e40b3ec2b4236e4d546324251d9bdb131
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: db34a76e40b3ec2b4236e4d546324251d9bdb131  iavf: add support for offloading tc U32 cls filters

elapsed time: 1263m

configs tested: 255
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240813   gcc-13.2.0
arc                   randconfig-002-20240813   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                       aspeed_g4_defconfig   clang-20
arm                         at91_dt_defconfig   clang-20
arm                         bcm2835_defconfig   clang-20
arm                                 defconfig   gcc-13.2.0
arm                          ep93xx_defconfig   clang-14
arm                           h3600_defconfig   clang-14
arm                        neponset_defconfig   clang-20
arm                             pxa_defconfig   clang-14
arm                   randconfig-001-20240813   gcc-13.2.0
arm                   randconfig-001-20240813   gcc-14.1.0
arm                   randconfig-002-20240813   gcc-13.2.0
arm                   randconfig-002-20240813   gcc-14.1.0
arm                   randconfig-003-20240813   gcc-13.2.0
arm                   randconfig-003-20240813   gcc-14.1.0
arm                   randconfig-004-20240813   gcc-13.2.0
arm                   randconfig-004-20240813   gcc-14.1.0
arm                           sama5_defconfig   clang-14
arm                        shmobile_defconfig   clang-20
arm                         socfpga_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240813   gcc-13.2.0
arm64                 randconfig-001-20240813   gcc-14.1.0
arm64                 randconfig-002-20240813   gcc-13.2.0
arm64                 randconfig-002-20240813   gcc-14.1.0
arm64                 randconfig-003-20240813   clang-20
arm64                 randconfig-003-20240813   gcc-13.2.0
arm64                 randconfig-004-20240813   gcc-13.2.0
arm64                 randconfig-004-20240813   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240813   gcc-13.2.0
csky                  randconfig-001-20240813   gcc-14.1.0
csky                  randconfig-002-20240813   gcc-13.2.0
csky                  randconfig-002-20240813   gcc-14.1.0
hexagon                          alldefconfig   clang-20
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240813   clang-20
hexagon               randconfig-002-20240813   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240813   gcc-12
i386         buildonly-randconfig-002-20240813   gcc-12
i386         buildonly-randconfig-003-20240813   gcc-12
i386         buildonly-randconfig-004-20240813   gcc-11
i386         buildonly-randconfig-004-20240813   gcc-12
i386         buildonly-randconfig-005-20240813   clang-18
i386         buildonly-randconfig-005-20240813   gcc-12
i386         buildonly-randconfig-006-20240813   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240813   gcc-12
i386                  randconfig-002-20240813   clang-18
i386                  randconfig-002-20240813   gcc-12
i386                  randconfig-003-20240813   gcc-12
i386                  randconfig-004-20240813   gcc-12
i386                  randconfig-005-20240813   clang-18
i386                  randconfig-005-20240813   gcc-12
i386                  randconfig-006-20240813   clang-18
i386                  randconfig-006-20240813   gcc-12
i386                  randconfig-011-20240813   gcc-12
i386                  randconfig-012-20240813   gcc-12
i386                  randconfig-013-20240813   clang-18
i386                  randconfig-013-20240813   gcc-12
i386                  randconfig-014-20240813   clang-18
i386                  randconfig-014-20240813   gcc-12
i386                  randconfig-015-20240813   clang-18
i386                  randconfig-015-20240813   gcc-12
i386                  randconfig-016-20240813   clang-18
i386                  randconfig-016-20240813   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240813   gcc-13.2.0
loongarch             randconfig-001-20240813   gcc-14.1.0
loongarch             randconfig-002-20240813   gcc-13.2.0
loongarch             randconfig-002-20240813   gcc-14.1.0
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
mips                           gcw0_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240813   gcc-13.2.0
nios2                 randconfig-001-20240813   gcc-14.1.0
nios2                 randconfig-002-20240813   gcc-13.2.0
nios2                 randconfig-002-20240813   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240813   gcc-13.2.0
parisc                randconfig-001-20240813   gcc-14.1.0
parisc                randconfig-002-20240813   gcc-13.2.0
parisc                randconfig-002-20240813   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      cm5200_defconfig   clang-20
powerpc                   currituck_defconfig   clang-20
powerpc                    gamecube_defconfig   clang-20
powerpc                     mpc5200_defconfig   clang-14
powerpc                     powernv_defconfig   clang-20
powerpc                      ppc44x_defconfig   clang-14
powerpc               randconfig-002-20240813   gcc-13.2.0
powerpc               randconfig-002-20240813   gcc-14.1.0
powerpc               randconfig-003-20240813   gcc-13.2.0
powerpc               randconfig-003-20240813   gcc-14.1.0
powerpc64             randconfig-001-20240813   gcc-13.2.0
powerpc64             randconfig-001-20240813   gcc-14.1.0
powerpc64             randconfig-002-20240813   gcc-13.2.0
powerpc64             randconfig-002-20240813   gcc-14.1.0
powerpc64             randconfig-003-20240813   gcc-13.2.0
powerpc64             randconfig-003-20240813   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240813   gcc-13.2.0
riscv                 randconfig-001-20240813   gcc-14.1.0
riscv                 randconfig-002-20240813   gcc-13.2.0
riscv                 randconfig-002-20240813   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240813   clang-20
s390                  randconfig-001-20240813   gcc-13.2.0
s390                  randconfig-002-20240813   gcc-13.2.0
s390                  randconfig-002-20240813   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240813   gcc-13.2.0
sh                    randconfig-001-20240813   gcc-14.1.0
sh                    randconfig-002-20240813   gcc-13.2.0
sh                    randconfig-002-20240813   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240813   gcc-13.2.0
sparc64               randconfig-001-20240813   gcc-14.1.0
sparc64               randconfig-002-20240813   gcc-13.2.0
sparc64               randconfig-002-20240813   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240813   gcc-12
um                    randconfig-001-20240813   gcc-13.2.0
um                    randconfig-002-20240813   clang-14
um                    randconfig-002-20240813   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240813   clang-18
x86_64       buildonly-randconfig-002-20240813   clang-18
x86_64       buildonly-randconfig-002-20240813   gcc-11
x86_64       buildonly-randconfig-003-20240813   clang-18
x86_64       buildonly-randconfig-004-20240813   clang-18
x86_64       buildonly-randconfig-004-20240813   gcc-12
x86_64       buildonly-randconfig-005-20240813   clang-18
x86_64       buildonly-randconfig-005-20240813   gcc-12
x86_64       buildonly-randconfig-006-20240813   clang-18
x86_64       buildonly-randconfig-006-20240813   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240813   clang-18
x86_64                randconfig-001-20240813   gcc-12
x86_64                randconfig-002-20240813   clang-18
x86_64                randconfig-003-20240813   clang-18
x86_64                randconfig-003-20240813   gcc-12
x86_64                randconfig-004-20240813   clang-18
x86_64                randconfig-004-20240813   gcc-12
x86_64                randconfig-005-20240813   clang-18
x86_64                randconfig-005-20240813   gcc-12
x86_64                randconfig-006-20240813   clang-18
x86_64                randconfig-011-20240813   clang-18
x86_64                randconfig-011-20240813   gcc-12
x86_64                randconfig-012-20240813   clang-18
x86_64                randconfig-012-20240813   gcc-12
x86_64                randconfig-013-20240813   clang-18
x86_64                randconfig-013-20240813   gcc-12
x86_64                randconfig-014-20240813   clang-18
x86_64                randconfig-014-20240813   gcc-11
x86_64                randconfig-015-20240813   clang-18
x86_64                randconfig-015-20240813   gcc-11
x86_64                randconfig-016-20240813   clang-18
x86_64                randconfig-016-20240813   gcc-12
x86_64                randconfig-071-20240813   clang-18
x86_64                randconfig-072-20240813   clang-18
x86_64                randconfig-073-20240813   clang-18
x86_64                randconfig-073-20240813   gcc-11
x86_64                randconfig-074-20240813   clang-18
x86_64                randconfig-074-20240813   gcc-12
x86_64                randconfig-075-20240813   clang-18
x86_64                randconfig-075-20240813   gcc-12
x86_64                randconfig-076-20240813   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240813   gcc-13.2.0
xtensa                randconfig-001-20240813   gcc-14.1.0
xtensa                randconfig-002-20240813   gcc-13.2.0
xtensa                randconfig-002-20240813   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
