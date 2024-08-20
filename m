Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B436B95888B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 16:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 532E58121E;
	Tue, 20 Aug 2024 14:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMUJIc8TGP-C; Tue, 20 Aug 2024 14:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A112781221
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724162862;
	bh=u0OiGxk45od9t26r9JAcoG+I87UUZBs8MhCuo2/sMJc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lFWGdJ6Fpq2GwWSQJFb4XlDjD6pVKijMxOjhLtqS2YZ2GPtGxK17YRByNyMYoDXWh
	 sJNk7Uk6Ko/BR3TBSkbnoushK4bKFDisD+5k34hgLSKXgq0hsHB32NdWRdTjiX4cX4
	 f9XwPAERrDKF0PSPmFCmTgu0rg4CLjxr6LWUyy9gpg+JQYKAraN7Dn6JoxfPdNzDtC
	 3aF8Q/dzqJve1bWiqsJGm/PR6vuO8Y4xr+yyB3GtuBlm1NE4P+nZtzKiOHmBkC7qcc
	 1UP9XlnAgdLeDOzlZLSGhLqKyzjDdF0EA/FgnRlh561zb+aXdUwNWMjHyG3nSia/Hm
	 mSxUshmvBbaow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A112781221;
	Tue, 20 Aug 2024 14:07:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AECCA1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 14:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97A894047C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 14:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VqC3Z_HBtr88 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 14:07:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3651B4039D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3651B4039D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3651B4039D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 14:07:39 +0000 (UTC)
X-CSE-ConnectionGUID: SRyJ39qKTBqxaHF3nFQ0QQ==
X-CSE-MsgGUID: xHWx+WgBRDOWPyqLi6yJ0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22271300"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22271300"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 07:07:39 -0700
X-CSE-ConnectionGUID: B7n84DFYQhKQPD5S8KobgA==
X-CSE-MsgGUID: foHeLdv8R324mkHJKW7pxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65610810"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 20 Aug 2024 07:07:37 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sgPWJ-000AG8-1X
 for intel-wired-lan@lists.osuosl.org; Tue, 20 Aug 2024 14:07:35 +0000
Date: Tue, 20 Aug 2024 22:06:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408202257.I9vWXOEh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724162861; x=1755698861;
 h=date:from:to:subject:message-id;
 bh=eALGwoiPmkonu8x9vPA6gYeIGqa8mqydANmwDUVPPww=;
 b=IZWscpm9FMm2wa6EaCl0UyNWRFOMzgVQ0NyJlA3b8CJNmPB9pKh/BAr3
 1ESQJmhBrgXaat7DDk8m9hOoNNJBljteI+jSqjPQGeuWy31dHbFemx8N1
 2IskOzVBZEgERB/7QiegRckK7eofjx/NTnWq10el3bZmd/PwQmqLcYUOs
 ik4gL8pfnPJBx5y9tYTOnD1cL5oBoBudKh+P5a+5+xsRxmU4Zd94mGV1o
 lnSAlDSvyz+0NZXkew4Wk0pgNb125pMnGydkK8r3CTnG1F0KoFAmul4q5
 A7tsYdG3idGQAauw0hCTtxNasrgLG4+sPFiWSuw1TNR4cZPInBAKosgE3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IZWscpm9
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 dfb8faf0d8cd9ca3deb729bc0304af41548f4977
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
branch HEAD: dfb8faf0d8cd9ca3deb729bc0304af41548f4977  ice: use internal pf id instead of function number

elapsed time: 901m

configs tested: 166
configs skipped: 5

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
arc                            hsdk_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                         assabet_defconfig   gcc-13.2.0
arm                          collie_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                         mv78xx0_defconfig   gcc-14.1.0
arm                           sama5_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240820   clang-18
i386         buildonly-randconfig-002-20240820   clang-18
i386         buildonly-randconfig-003-20240820   clang-18
i386         buildonly-randconfig-004-20240820   clang-18
i386         buildonly-randconfig-005-20240820   clang-18
i386         buildonly-randconfig-006-20240820   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240820   clang-18
i386                  randconfig-002-20240820   clang-18
i386                  randconfig-003-20240820   clang-18
i386                  randconfig-004-20240820   clang-18
i386                  randconfig-005-20240820   clang-18
i386                  randconfig-006-20240820   clang-18
i386                  randconfig-011-20240820   clang-18
i386                  randconfig-012-20240820   clang-18
i386                  randconfig-013-20240820   clang-18
i386                  randconfig-014-20240820   clang-18
i386                  randconfig-015-20240820   clang-18
i386                  randconfig-016-20240820   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5208evb_defconfig   gcc-13.2.0
m68k                        m5272c3_defconfig   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                      bmips_stb_defconfig   gcc-13.2.0
mips                      maltasmvp_defconfig   gcc-14.1.0
mips                      pic32mzda_defconfig   gcc-14.1.0
mips                       rbtx49xx_defconfig   gcc-14.1.0
mips                          rm200_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      arches_defconfig   gcc-14.1.0
powerpc                 canyonlands_defconfig   gcc-13.2.0
powerpc                     ep8248e_defconfig   gcc-13.2.0
powerpc                        icon_defconfig   gcc-14.1.0
powerpc                       maple_defconfig   gcc-13.2.0
powerpc                     mpc5200_defconfig   gcc-13.2.0
powerpc                 mpc832x_rdb_defconfig   gcc-13.2.0
powerpc                      ppc64e_defconfig   gcc-13.2.0
powerpc                      ppc6xx_defconfig   gcc-13.2.0
powerpc                      ppc6xx_defconfig   gcc-14.1.0
powerpc                         ps3_defconfig   gcc-14.1.0
powerpc                    socrates_defconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                             espt_defconfig   gcc-14.1.0
sh                 kfr2r09-romimage_defconfig   gcc-13.2.0
sh                           se7619_defconfig   gcc-13.2.0
sh                           se7705_defconfig   gcc-13.2.0
sh                             sh03_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240820   clang-18
x86_64       buildonly-randconfig-002-20240820   clang-18
x86_64       buildonly-randconfig-003-20240820   clang-18
x86_64       buildonly-randconfig-004-20240820   clang-18
x86_64       buildonly-randconfig-005-20240820   clang-18
x86_64       buildonly-randconfig-006-20240820   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240820   clang-18
x86_64                randconfig-002-20240820   clang-18
x86_64                randconfig-003-20240820   clang-18
x86_64                randconfig-004-20240820   clang-18
x86_64                randconfig-005-20240820   clang-18
x86_64                randconfig-006-20240820   clang-18
x86_64                randconfig-011-20240820   clang-18
x86_64                randconfig-012-20240820   clang-18
x86_64                randconfig-013-20240820   clang-18
x86_64                randconfig-014-20240820   clang-18
x86_64                randconfig-015-20240820   clang-18
x86_64                randconfig-016-20240820   clang-18
x86_64                randconfig-071-20240820   clang-18
x86_64                randconfig-072-20240820   clang-18
x86_64                randconfig-073-20240820   clang-18
x86_64                randconfig-074-20240820   clang-18
x86_64                randconfig-075-20240820   clang-18
x86_64                randconfig-076-20240820   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
