Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 446379398F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 06:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF770810FA;
	Tue, 23 Jul 2024 04:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dD4lmXHzoGpk; Tue, 23 Jul 2024 04:48:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E45381122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721710104;
	bh=UDl5u/Cv6qN7EHnCHn9Xx5WgFYzk3NybaU7C1jCUFiM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IVH93d9fCbuzQaJ1reDJaTprwnlnw95cvhLtsTlolod9DwPZISN167QEb13znZr6G
	 GFcojCrL3S5W45ndFM5jrzwjgc8YKDVDrNEwCu/sRRNymBZbmjjMHDRTBiYF8+KcxL
	 LwcrtVYDLP5Y/olfrtrpYE3VYhDYeNowUDnaB0h41rQqEzlFibfWNAWCvOIITJRq2d
	 NZI8q/41Y7ibM8BEUoJUmMiJlLFd/AMvsJws33D6xgdI6u8FqxGxwatMPpqS0+Z+tP
	 4hWN7gWGJbDUmsB1d16VZ82PyozalEfg7pZy/PlJhjCnZO25VEyJ3OfNaHwbvFdLCC
	 1RP1nLph1wLRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E45381122;
	Tue, 23 Jul 2024 04:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37CF51BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 04:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30540400A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 04:48:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dpAe2JoR7nQE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 04:48:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D48D740042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D48D740042
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D48D740042
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 04:48:19 +0000 (UTC)
X-CSE-ConnectionGUID: XaSy1Ta4T2OE++/5H3NSdg==
X-CSE-MsgGUID: qd8cb5baTRCG6GBQ0JNIGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29899400"
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="29899400"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 21:48:17 -0700
X-CSE-ConnectionGUID: CT3Cg7DQSyGtZGPMNvhSmw==
X-CSE-MsgGUID: mokbzR7uTDCw67JI+o/Ogw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="51758677"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 22 Jul 2024 21:48:16 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sW7Re-000leG-0d
 for intel-wired-lan@lists.osuosl.org; Tue, 23 Jul 2024 04:48:14 +0000
Date: Tue, 23 Jul 2024 12:47:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407231222.8mnVi3rs-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721710100; x=1753246100;
 h=date:from:to:subject:message-id;
 bh=erKzGukIWPG2Z3O9nTio/m4+fBc4JokR2Vtr5AqcHTU=;
 b=NPtdYxWkcSyss6PGlgtT7fYOXIDeCetixEbQSiHnOi2PJgPU6Sj9iPLB
 2G/+J6Ol2msAj/SuB0Q8pzLfsFPRSFRLCjC+U4b1CdE9P3ADP8d62ipT5
 01xBVDxVCXtGpRnl0huoJe4sJ8axrjaFYoPV+9+BPtH9UThvBaOCeBiCI
 dxvOSwvIO9VRF2CMA3swQjnDPtWzBtSmpO4sj+5ssl/YM8+yzzQC04DYO
 7BpA7Fl86htrdvwDQq+Swl/fMc/AHEHKPsCQZIQjyBmnMk7yDVVylbZzP
 aAhYc1jrcfxVuOiHEiB7HTL0dpWT6BDJKadSqvlA2Zg7N5TfwzIuKCNPp
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NPtdYxWk
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3b20ae8da5ffd245f51329c5429f0fb33835170b
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
branch HEAD: 3b20ae8da5ffd245f51329c5429f0fb33835170b  ice: Fix recipe read procedure

elapsed time: 726m

configs tested: 190
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240723   gcc-13.2.0
arc                   randconfig-002-20240723   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                          moxart_defconfig   gcc-13.2.0
arm                   randconfig-001-20240723   gcc-14.1.0
arm                   randconfig-002-20240723   gcc-14.1.0
arm                   randconfig-003-20240723   gcc-14.1.0
arm                   randconfig-004-20240723   clang-19
arm                          sp7021_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240723   gcc-14.1.0
arm64                 randconfig-002-20240723   gcc-14.1.0
arm64                 randconfig-003-20240723   clang-19
arm64                 randconfig-004-20240723   clang-16
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240723   gcc-14.1.0
csky                  randconfig-002-20240723   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240723   clang-19
hexagon               randconfig-002-20240723   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240723   gcc-8
i386         buildonly-randconfig-002-20240723   gcc-8
i386         buildonly-randconfig-003-20240723   gcc-13
i386         buildonly-randconfig-003-20240723   gcc-8
i386         buildonly-randconfig-004-20240723   gcc-12
i386         buildonly-randconfig-004-20240723   gcc-8
i386         buildonly-randconfig-005-20240723   clang-18
i386         buildonly-randconfig-005-20240723   gcc-8
i386         buildonly-randconfig-006-20240723   clang-18
i386         buildonly-randconfig-006-20240723   gcc-8
i386                                defconfig   clang-18
i386                  randconfig-001-20240723   clang-18
i386                  randconfig-001-20240723   gcc-8
i386                  randconfig-002-20240723   gcc-12
i386                  randconfig-002-20240723   gcc-8
i386                  randconfig-003-20240723   gcc-13
i386                  randconfig-003-20240723   gcc-8
i386                  randconfig-004-20240723   gcc-10
i386                  randconfig-004-20240723   gcc-8
i386                  randconfig-005-20240723   gcc-13
i386                  randconfig-005-20240723   gcc-8
i386                  randconfig-006-20240723   gcc-13
i386                  randconfig-006-20240723   gcc-8
i386                  randconfig-011-20240723   gcc-11
i386                  randconfig-011-20240723   gcc-8
i386                  randconfig-012-20240723   clang-18
i386                  randconfig-012-20240723   gcc-8
i386                  randconfig-013-20240723   clang-18
i386                  randconfig-013-20240723   gcc-8
i386                  randconfig-014-20240723   gcc-7
i386                  randconfig-014-20240723   gcc-8
i386                  randconfig-015-20240723   gcc-13
i386                  randconfig-015-20240723   gcc-8
i386                  randconfig-016-20240723   clang-18
i386                  randconfig-016-20240723   gcc-8
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-13.2.0
loongarch             randconfig-001-20240723   gcc-14.1.0
loongarch             randconfig-002-20240723   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-13.2.0
m68k                            mac_defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                     loongson1c_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240723   gcc-14.1.0
nios2                 randconfig-002-20240723   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240723   gcc-14.1.0
parisc                randconfig-002-20240723   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                      ep88xc_defconfig   gcc-13.2.0
powerpc                 mpc8313_rdb_defconfig   gcc-13.2.0
powerpc                 mpc836x_rdk_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240723   gcc-14.1.0
powerpc               randconfig-002-20240723   gcc-14.1.0
powerpc               randconfig-003-20240723   gcc-14.1.0
powerpc64             randconfig-001-20240723   gcc-14.1.0
powerpc64             randconfig-002-20240723   gcc-14.1.0
powerpc64             randconfig-003-20240723   clang-14
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240723   gcc-14.1.0
riscv                 randconfig-002-20240723   clang-17
s390                             allmodconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240723   clang-19
s390                  randconfig-002-20240723   clang-19
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         ap325rxa_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240723   gcc-14.1.0
sh                    randconfig-002-20240723   gcc-14.1.0
sh                           se7724_defconfig   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sh                            shmin_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240723   gcc-14.1.0
sparc64               randconfig-002-20240723   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240723   gcc-10
um                    randconfig-002-20240723   gcc-8
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240723   gcc-10
x86_64       buildonly-randconfig-002-20240723   gcc-10
x86_64       buildonly-randconfig-003-20240723   gcc-10
x86_64       buildonly-randconfig-004-20240723   gcc-10
x86_64       buildonly-randconfig-005-20240723   gcc-10
x86_64       buildonly-randconfig-006-20240723   gcc-10
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240723   gcc-10
x86_64                randconfig-002-20240723   gcc-10
x86_64                randconfig-003-20240723   gcc-10
x86_64                randconfig-004-20240723   gcc-10
x86_64                randconfig-005-20240723   gcc-10
x86_64                randconfig-006-20240723   gcc-10
x86_64                randconfig-011-20240723   gcc-10
x86_64                randconfig-012-20240723   gcc-10
x86_64                randconfig-013-20240723   gcc-10
x86_64                randconfig-014-20240723   gcc-10
x86_64                randconfig-015-20240723   gcc-10
x86_64                randconfig-016-20240723   gcc-10
x86_64                randconfig-071-20240723   gcc-10
x86_64                randconfig-072-20240723   gcc-10
x86_64                randconfig-073-20240723   gcc-10
x86_64                randconfig-074-20240723   gcc-10
x86_64                randconfig-075-20240723   gcc-10
x86_64                randconfig-076-20240723   gcc-10
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240723   gcc-14.1.0
xtensa                randconfig-002-20240723   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
