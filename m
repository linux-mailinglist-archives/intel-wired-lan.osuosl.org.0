Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4743B954506
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4C866067E;
	Fri, 16 Aug 2024 09:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jvSOjgR3jT9V; Fri, 16 Aug 2024 09:03:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CE2860B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723798990;
	bh=4XHXRyx6uZeh8SHxzxfuJGgnRz8hN9y4D5rge13+Y6M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uWhPd+x+EAXVNHRyn538aH2YaFY5muCjh86Ge+7iAIm6u46ty+q6hLKa+dOJ7hkQk
	 F3oamy9f6bIPr/T96hP6KX28cjfdZ6k7EZqPOKBE1ClWRPQgbtRfbBjvRi2y1NBnzV
	 f0okyVc46+D7YO2kQ38TPFAVrEx7EKNPt58DecJs41QUDs+Hygoqiq4hKpOmdyv8mG
	 hAZYR1RhIhbk/Wgr4d1QuGfcLXWk9At2sJBqcT+eVMEdwuC1QzZ+uvtV+TFdnnAX3+
	 zGW9ez/ltajP9uXTQzRJzbpKlOkQ6PFPCiOeE0vwM9xB4JcdHcMNLqdsWS/1r75F5w
	 C6xN1TsKl9Kqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CE2860B34;
	Fri, 16 Aug 2024 09:03:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20D001BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1902D81EB3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xD8kv9ImxT5X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:03:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67F5E81EAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67F5E81EAC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67F5E81EAC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:03:06 +0000 (UTC)
X-CSE-ConnectionGUID: Bua+iOCqQzaRmXauH8cJRA==
X-CSE-MsgGUID: mQ8XU92oSOecSjWZNa1bbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="33240400"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="33240400"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 02:03:02 -0700
X-CSE-ConnectionGUID: qztM4cZsSgi3ySZHEGzibg==
X-CSE-MsgGUID: mvjfeCKGRGmQURGErghLfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="60407056"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 16 Aug 2024 02:03:02 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sesrL-0006CE-0X
 for intel-wired-lan@lists.osuosl.org; Fri, 16 Aug 2024 09:02:59 +0000
Date: Fri, 16 Aug 2024 17:02:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408161754.A4fdH9FJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723798986; x=1755334986;
 h=date:from:to:subject:message-id;
 bh=M/HcZtSJDcEQDS9tvr5vq2I3yD93PCirpXYyQtntn+o=;
 b=A8DumL00f8vrUZij9zB1PsBssBr81B2JOiBsHjPIrkzYWa/RPBiuZKZC
 77IvHVUfo4rXLeb4NknI1CXYIAI28tEL1PMN0uc8dvcqVyeFh9vHTNp4l
 rpt1zTO0MWc/VuOPho/vxIUqw4TyQbtfEhdQEDpKHE26fkq39zOwC8d5d
 Zc6Df/FqXrrBDRHX4CuHAH3VdxXInXkf8Ue+5NgR0k7+G1pa85dLAQdrx
 5dJbBNjoUjr9dCSpdJGXabPzWEfW5M47XV3pLOi1/y2xPSLK2jnaHYnjf
 5uuO6FAEVvSdR1jW2BVWNo6siDIuv3x/F/hQp6sc2UXtnz38CsySlVQfX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A8DumL00
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 a9c60712d71ff07197b2982899b9db28ed548ded
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: a9c60712d71ff07197b2982899b9db28ed548ded  Merge branch 'uapi-net-sched-cxgb4-fix-wflex-array-member-not-at-end-warning'

elapsed time: 1746m

configs tested: 341
configs skipped: 16

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
arc                 nsimosci_hs_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240815   gcc-13.2.0
arc                   randconfig-001-20240816   gcc-13.2.0
arc                   randconfig-002-20240815   gcc-13.2.0
arc                   randconfig-002-20240816   gcc-13.2.0
arm                              alldefconfig   gcc-14.1.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                         bcm2835_defconfig   clang-20
arm                        clps711x_defconfig   gcc-13.2.0
arm                        clps711x_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                            dove_defconfig   gcc-14.1.0
arm                         lpc32xx_defconfig   gcc-13.2.0
arm                          pxa910_defconfig   gcc-13.2.0
arm                   randconfig-001-20240815   gcc-13.2.0
arm                   randconfig-001-20240816   clang-20
arm                   randconfig-001-20240816   gcc-13.2.0
arm                   randconfig-002-20240815   gcc-13.2.0
arm                   randconfig-002-20240816   clang-20
arm                   randconfig-002-20240816   gcc-13.2.0
arm                   randconfig-003-20240815   gcc-13.2.0
arm                   randconfig-003-20240816   clang-20
arm                   randconfig-003-20240816   gcc-13.2.0
arm                   randconfig-004-20240815   gcc-13.2.0
arm                   randconfig-004-20240816   clang-20
arm                   randconfig-004-20240816   gcc-13.2.0
arm                        realview_defconfig   clang-20
arm                          sp7021_defconfig   clang-20
arm                        vexpress_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   clang-20
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240815   gcc-13.2.0
arm64                 randconfig-001-20240816   clang-20
arm64                 randconfig-001-20240816   gcc-13.2.0
arm64                 randconfig-002-20240815   gcc-13.2.0
arm64                 randconfig-002-20240816   clang-20
arm64                 randconfig-002-20240816   gcc-13.2.0
arm64                 randconfig-003-20240816   clang-20
arm64                 randconfig-003-20240816   gcc-13.2.0
arm64                 randconfig-004-20240816   clang-20
arm64                 randconfig-004-20240816   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240815   gcc-13.2.0
csky                  randconfig-001-20240816   gcc-13.2.0
csky                  randconfig-001-20240816   gcc-14.1.0
csky                  randconfig-002-20240815   gcc-13.2.0
csky                  randconfig-002-20240816   gcc-13.2.0
csky                  randconfig-002-20240816   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240816   clang-20
hexagon               randconfig-002-20240816   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240815   gcc-12
i386         buildonly-randconfig-001-20240816   gcc-12
i386         buildonly-randconfig-002-20240815   gcc-12
i386         buildonly-randconfig-002-20240816   clang-18
i386         buildonly-randconfig-002-20240816   gcc-12
i386         buildonly-randconfig-003-20240815   gcc-12
i386         buildonly-randconfig-003-20240816   clang-18
i386         buildonly-randconfig-003-20240816   gcc-12
i386         buildonly-randconfig-004-20240815   gcc-12
i386         buildonly-randconfig-004-20240816   clang-18
i386         buildonly-randconfig-004-20240816   gcc-12
i386         buildonly-randconfig-005-20240815   gcc-12
i386         buildonly-randconfig-005-20240816   gcc-11
i386         buildonly-randconfig-005-20240816   gcc-12
i386         buildonly-randconfig-006-20240815   gcc-12
i386         buildonly-randconfig-006-20240816   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240815   gcc-12
i386                  randconfig-001-20240816   clang-18
i386                  randconfig-001-20240816   gcc-12
i386                  randconfig-002-20240815   gcc-12
i386                  randconfig-002-20240816   gcc-12
i386                  randconfig-003-20240815   gcc-12
i386                  randconfig-003-20240816   gcc-11
i386                  randconfig-003-20240816   gcc-12
i386                  randconfig-004-20240815   gcc-12
i386                  randconfig-004-20240816   gcc-12
i386                  randconfig-005-20240815   gcc-12
i386                  randconfig-005-20240816   clang-18
i386                  randconfig-005-20240816   gcc-12
i386                  randconfig-006-20240815   gcc-12
i386                  randconfig-006-20240816   gcc-11
i386                  randconfig-006-20240816   gcc-12
i386                  randconfig-011-20240815   gcc-12
i386                  randconfig-011-20240816   gcc-12
i386                  randconfig-012-20240815   gcc-12
i386                  randconfig-012-20240816   clang-18
i386                  randconfig-012-20240816   gcc-12
i386                  randconfig-013-20240815   gcc-12
i386                  randconfig-013-20240816   clang-18
i386                  randconfig-013-20240816   gcc-12
i386                  randconfig-014-20240815   gcc-12
i386                  randconfig-014-20240816   gcc-12
i386                  randconfig-015-20240815   gcc-12
i386                  randconfig-015-20240816   gcc-12
i386                  randconfig-016-20240815   gcc-12
i386                  randconfig-016-20240816   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240815   gcc-13.2.0
loongarch             randconfig-001-20240816   gcc-13.2.0
loongarch             randconfig-001-20240816   gcc-14.1.0
loongarch             randconfig-002-20240815   gcc-13.2.0
loongarch             randconfig-002-20240816   gcc-13.2.0
loongarch             randconfig-002-20240816   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          atari_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm63xx_defconfig   clang-20
mips                  cavium_octeon_defconfig   gcc-14.1.0
mips                           ci20_defconfig   gcc-13.2.0
mips                           ci20_defconfig   gcc-14.1.0
mips                         cobalt_defconfig   clang-20
mips                  decstation_64_defconfig   gcc-14.1.0
mips                           ip32_defconfig   clang-20
mips                          malta_defconfig   gcc-14.1.0
nios2                            alldefconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240815   gcc-13.2.0
nios2                 randconfig-001-20240816   gcc-13.2.0
nios2                 randconfig-001-20240816   gcc-14.1.0
nios2                 randconfig-002-20240815   gcc-13.2.0
nios2                 randconfig-002-20240816   gcc-13.2.0
nios2                 randconfig-002-20240816   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                    or1ksim_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240815   gcc-13.2.0
parisc                randconfig-001-20240816   gcc-13.2.0
parisc                randconfig-001-20240816   gcc-14.1.0
parisc                randconfig-002-20240815   gcc-13.2.0
parisc                randconfig-002-20240816   gcc-13.2.0
parisc                randconfig-002-20240816   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      arches_defconfig   clang-20
powerpc                        cell_defconfig   gcc-14.1.0
powerpc                   currituck_defconfig   clang-20
powerpc                          g5_defconfig   clang-20
powerpc                    gamecube_defconfig   clang-20
powerpc                  mpc866_ads_defconfig   clang-20
powerpc               randconfig-001-20240815   gcc-13.2.0
powerpc               randconfig-001-20240816   gcc-14.1.0
powerpc               randconfig-002-20240815   gcc-13.2.0
powerpc               randconfig-002-20240816   clang-20
powerpc               randconfig-002-20240816   gcc-13.2.0
powerpc               randconfig-003-20240816   gcc-14.1.0
powerpc                     sequoia_defconfig   gcc-14.1.0
powerpc                     tqm8548_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240815   gcc-13.2.0
powerpc64             randconfig-001-20240816   gcc-13.2.0
powerpc64             randconfig-001-20240816   gcc-14.1.0
powerpc64             randconfig-002-20240815   gcc-13.2.0
powerpc64             randconfig-002-20240816   clang-20
powerpc64             randconfig-002-20240816   gcc-13.2.0
powerpc64             randconfig-003-20240815   gcc-13.2.0
powerpc64             randconfig-003-20240816   gcc-13.2.0
powerpc64             randconfig-003-20240816   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-13.2.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240815   gcc-13.2.0
riscv                 randconfig-001-20240816   clang-20
riscv                 randconfig-001-20240816   gcc-13.2.0
riscv                 randconfig-002-20240815   gcc-13.2.0
riscv                 randconfig-002-20240816   clang-20
riscv                 randconfig-002-20240816   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240815   gcc-13.2.0
s390                  randconfig-001-20240816   gcc-13.2.0
s390                  randconfig-001-20240816   gcc-14.1.0
s390                  randconfig-002-20240815   gcc-13.2.0
s390                  randconfig-002-20240816   clang-20
s390                  randconfig-002-20240816   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                         ecovec24_defconfig   gcc-13.2.0
sh                 kfr2r09-romimage_defconfig   gcc-14.1.0
sh                          kfr2r09_defconfig   gcc-14.1.0
sh                    randconfig-001-20240815   gcc-13.2.0
sh                    randconfig-001-20240816   gcc-13.2.0
sh                    randconfig-001-20240816   gcc-14.1.0
sh                    randconfig-002-20240815   gcc-13.2.0
sh                    randconfig-002-20240816   gcc-13.2.0
sh                    randconfig-002-20240816   gcc-14.1.0
sh                      rts7751r2d1_defconfig   gcc-14.1.0
sh                           se7343_defconfig   gcc-13.2.0
sh                           se7750_defconfig   gcc-14.1.0
sh                   sh7724_generic_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc32_defconfig   gcc-13.2.0
sparc                       sparc64_defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240815   gcc-13.2.0
sparc64               randconfig-001-20240816   gcc-13.2.0
sparc64               randconfig-001-20240816   gcc-14.1.0
sparc64               randconfig-002-20240815   gcc-13.2.0
sparc64               randconfig-002-20240816   gcc-13.2.0
sparc64               randconfig-002-20240816   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240815   gcc-13.2.0
um                    randconfig-001-20240816   clang-20
um                    randconfig-001-20240816   gcc-13.2.0
um                    randconfig-002-20240815   gcc-13.2.0
um                    randconfig-002-20240816   gcc-12
um                    randconfig-002-20240816   gcc-13.2.0
um                           x86_64_defconfig   clang-20
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240815   gcc-12
x86_64       buildonly-randconfig-001-20240816   clang-18
x86_64       buildonly-randconfig-002-20240815   gcc-12
x86_64       buildonly-randconfig-002-20240816   clang-18
x86_64       buildonly-randconfig-003-20240815   gcc-12
x86_64       buildonly-randconfig-003-20240816   clang-18
x86_64       buildonly-randconfig-004-20240815   gcc-12
x86_64       buildonly-randconfig-004-20240816   clang-18
x86_64       buildonly-randconfig-005-20240815   gcc-12
x86_64       buildonly-randconfig-005-20240816   clang-18
x86_64       buildonly-randconfig-006-20240815   gcc-12
x86_64       buildonly-randconfig-006-20240816   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                                  kexec   clang-18
x86_64                randconfig-001-20240815   gcc-12
x86_64                randconfig-001-20240816   clang-18
x86_64                randconfig-002-20240815   gcc-12
x86_64                randconfig-002-20240816   clang-18
x86_64                randconfig-003-20240815   gcc-12
x86_64                randconfig-003-20240816   clang-18
x86_64                randconfig-004-20240815   gcc-12
x86_64                randconfig-004-20240816   clang-18
x86_64                randconfig-005-20240815   gcc-12
x86_64                randconfig-005-20240816   clang-18
x86_64                randconfig-006-20240815   gcc-12
x86_64                randconfig-006-20240816   clang-18
x86_64                randconfig-011-20240815   gcc-12
x86_64                randconfig-011-20240816   clang-18
x86_64                randconfig-012-20240815   gcc-12
x86_64                randconfig-012-20240816   clang-18
x86_64                randconfig-013-20240815   gcc-12
x86_64                randconfig-013-20240816   clang-18
x86_64                randconfig-014-20240815   gcc-12
x86_64                randconfig-014-20240816   clang-18
x86_64                randconfig-015-20240815   gcc-12
x86_64                randconfig-015-20240816   clang-18
x86_64                randconfig-016-20240815   gcc-12
x86_64                randconfig-016-20240816   clang-18
x86_64                randconfig-071-20240815   gcc-12
x86_64                randconfig-071-20240816   clang-18
x86_64                randconfig-072-20240815   gcc-12
x86_64                randconfig-072-20240816   clang-18
x86_64                randconfig-073-20240815   gcc-12
x86_64                randconfig-073-20240816   clang-18
x86_64                randconfig-074-20240815   gcc-12
x86_64                randconfig-074-20240816   clang-18
x86_64                randconfig-075-20240815   gcc-12
x86_64                randconfig-075-20240816   clang-18
x86_64                randconfig-076-20240815   gcc-12
x86_64                randconfig-076-20240816   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240815   gcc-13.2.0
xtensa                randconfig-001-20240816   gcc-13.2.0
xtensa                randconfig-001-20240816   gcc-14.1.0
xtensa                randconfig-002-20240815   gcc-13.2.0
xtensa                randconfig-002-20240816   gcc-13.2.0
xtensa                randconfig-002-20240816   gcc-14.1.0
xtensa                    xip_kc705_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
