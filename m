Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FB8780524
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 06:41:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77BEF42235;
	Fri, 18 Aug 2023 04:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77BEF42235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692333672;
	bh=BLsqL3209QScZKcaJRx05ACcG4dNj5wrIORROri2yUA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MyL+SFTjBOowxUGmCQDcNxPp4/KZihbJL3HaE5LFKgE2w2BLQ8gnJUexm0TUPW2i4
	 Z2F4oKstdHlS9ZLjRPdTzoC+45SQc1weOH68ex8Gh21b5sk2ZPWh9Xy6HuVAzyzwBM
	 Dv8fpZ54R/T0HAT7Xn8/48202EF2u7Y7S2oxUvedHizfYIxs4CbNZYCRBooALogtaD
	 NzT0C81easc4eIQMCH5XfDSoUbNFKIwXRNmRJCoia1hvHBDKTLUS1Wbmc6jFQDWm0p
	 Hfe5c8UZV3QhHzp4d14c17GGw7Id/4RtbBK6eFxGLlsvbhgezaenWaaXufi+kpcHpy
	 IyWcMJ61xCN/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JclT98tg6Nfk; Fri, 18 Aug 2023 04:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D454C41FF7;
	Fri, 18 Aug 2023 04:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D454C41FF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C11B1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 04:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6731741FEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 04:41:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6731741FEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PqvOZIDVErzb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 04:41:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C29541FE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 04:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C29541FE5
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="375789488"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="375789488"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 21:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="737995251"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="737995251"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2023 21:41:00 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWrIB-00026H-1y
 for intel-wired-lan@lists.osuosl.org; Fri, 18 Aug 2023 04:40:59 +0000
Date: Fri, 18 Aug 2023 12:39:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308181218.SbcKVheO-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692333662; x=1723869662;
 h=date:from:to:subject:message-id;
 bh=VsKWufl/LuCp7MKV7xEkhhsos6K1xqX9iHXejwZmDpI=;
 b=HtLVLlkCuzRG7o1dKEawIhYcf0WEKazMHyWJKy0xg6pXrGh0QvuQfe99
 j+6rY/UEr5kyitXUKd6FBj31U39M4tV1Va9SKhXSyD+D/bZwfJfp6caub
 ZjXA8yvaE7G3VtkkeUXIAu+I0tI3tSexMFvFSKO3tNPu4SgHpQin9O5Mr
 Az0ZyDK8x5C87o+0Cb4IkZPxUDSbMySnPdzEbZiwK6fhnCZqQqFtPa/bb
 dtiAmJOZDE3Eu/u4ybZSCm7+v47lLCSEP9GCTOrof3o9A4FvXnhi1WCFs
 MNUnmZuPVObB58Yo2ZcCgS8pkKpGRfWyTfChHVwhTnJq/mV4gqKa+IXQN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HtLVLlkC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 58aef694304afb9aa72c799dfbeb7fc5bc33f2b0
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 58aef694304afb9aa72c799dfbeb7fc5bc33f2b0  igb: Avoid starting unnecessary workqueues

elapsed time: 724m

configs tested: 136
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230818   gcc  
alpha                randconfig-r025-20230818   gcc  
alpha                randconfig-r026-20230818   gcc  
alpha                randconfig-r032-20230818   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230818   gcc  
arm                              alldefconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                         lpc32xx_defconfig   clang
arm                  randconfig-r004-20230818   clang
arm                  randconfig-r012-20230818   gcc  
arm                  randconfig-r013-20230818   gcc  
arm                  randconfig-r024-20230818   gcc  
arm                  randconfig-r035-20230818   clang
arm                  randconfig-r046-20230818   gcc  
arm                           tegra_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230818   gcc  
csky                 randconfig-r015-20230818   gcc  
csky                 randconfig-r031-20230818   gcc  
csky                 randconfig-r032-20230818   gcc  
hexagon              randconfig-r005-20230818   clang
hexagon              randconfig-r021-20230818   clang
hexagon              randconfig-r036-20230818   clang
hexagon              randconfig-r041-20230818   clang
hexagon              randconfig-r045-20230818   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230818   gcc  
i386         buildonly-randconfig-r005-20230818   gcc  
i386         buildonly-randconfig-r006-20230818   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230818   gcc  
i386                 randconfig-i002-20230818   gcc  
i386                 randconfig-i003-20230818   gcc  
i386                 randconfig-i004-20230818   gcc  
i386                 randconfig-i005-20230818   gcc  
i386                 randconfig-i006-20230818   gcc  
i386                 randconfig-i011-20230818   clang
i386                 randconfig-i012-20230818   clang
i386                 randconfig-i013-20230818   clang
i386                 randconfig-i014-20230818   clang
i386                 randconfig-i015-20230818   clang
i386                 randconfig-i016-20230818   clang
i386                 randconfig-r014-20230818   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230818   gcc  
loongarch            randconfig-r025-20230818   gcc  
loongarch            randconfig-r026-20230818   gcc  
loongarch            randconfig-r035-20230818   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r023-20230818   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           rs90_defconfig   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230818   gcc  
nios2                randconfig-r034-20230818   gcc  
openrisc             randconfig-r033-20230818   gcc  
openrisc             randconfig-r035-20230818   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   currituck_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                    socrates_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r022-20230818   clang
riscv                randconfig-r042-20230818   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230818   gcc  
s390                 randconfig-r044-20230818   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r003-20230818   gcc  
sh                   randconfig-r033-20230818   gcc  
sh                   randconfig-r036-20230818   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230818   gcc  
sparc                randconfig-r006-20230818   gcc  
sparc64              randconfig-r014-20230818   gcc  
sparc64              randconfig-r016-20230818   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230818   gcc  
x86_64       buildonly-randconfig-r002-20230818   gcc  
x86_64       buildonly-randconfig-r003-20230818   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r023-20230818   clang
x86_64               randconfig-r031-20230818   gcc  
x86_64               randconfig-r034-20230818   gcc  
x86_64               randconfig-x001-20230818   clang
x86_64               randconfig-x002-20230818   clang
x86_64               randconfig-x003-20230818   clang
x86_64               randconfig-x004-20230818   clang
x86_64               randconfig-x005-20230818   clang
x86_64               randconfig-x006-20230818   clang
x86_64               randconfig-x011-20230818   gcc  
x86_64               randconfig-x012-20230818   gcc  
x86_64               randconfig-x013-20230818   gcc  
x86_64               randconfig-x014-20230818   gcc  
x86_64               randconfig-x015-20230818   gcc  
x86_64               randconfig-x016-20230818   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
