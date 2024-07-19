Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBC0937DB4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jul 2024 00:01:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 696D240C63;
	Fri, 19 Jul 2024 22:01:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M3t6sR4Q2eiL; Fri, 19 Jul 2024 22:01:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A8C540C5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721426513;
	bh=LeW3xTN2kV0WaBMdUuA3NisMDV2aSIc44WwJjlXbMqw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RkxA2X8H3xrKoUtNXRtRH0aUCphO0Ca1sAUA+lONUb/jJYR7SEKUGDd18NOqAI9va
	 tYVWag1rlNqNJvxzDND+qFywbR3uXGZKUrcibd1h/oogtr2Y947CGluNOPsP2bDnME
	 LQEEWi2XkGKyjHKjWQvRmVDP7Im4Ab1FsecWlcM/R9kAWTB2dvu6xRuBACa/s2B58B
	 pKhVG0Q4789qq09N9A7JrucIlUKX07aN8KZfFi817kpUbRWrKJ1qAAWKREDnxkfUzA
	 rkea1nuaKSSNPxb3664m5/6k9dNRZejNVjf6fcSomAxf2/Z5Dhn+xavaoh0Ax/a4jK
	 kTiViWJiATlyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A8C540C5B;
	Fri, 19 Jul 2024 22:01:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE30E1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 22:01:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B935083F0B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 22:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BOUswl9F5feW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2024 22:01:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21A798211F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21A798211F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21A798211F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2024 22:01:49 +0000 (UTC)
X-CSE-ConnectionGUID: 4poVZ8jfR/2+Xyqtp03MUw==
X-CSE-MsgGUID: clYytUDeQKiELtXDc7M8FA==
X-IronPort-AV: E=McAfee;i="6700,10204,11138"; a="18907568"
X-IronPort-AV: E=Sophos;i="6.09,221,1716274800"; d="scan'208";a="18907568"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2024 15:01:49 -0700
X-CSE-ConnectionGUID: 2NPd9dUQTS6I11BatQGKGw==
X-CSE-MsgGUID: I7nuipmuRMmPGZ5yJ9U1nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,221,1716274800"; d="scan'208";a="55534756"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 19 Jul 2024 15:01:47 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sUvfd-000ick-0w
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Jul 2024 22:01:45 +0000
Date: Sat, 20 Jul 2024 06:01:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407200631.sTF4TlzB-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721426510; x=1752962510;
 h=date:from:to:subject:message-id;
 bh=wFa1qJ4CGVZGLwxcFcyXHsrKR8a7NXeMJyzCNsZKHxE=;
 b=W5HI5WuG/ZbJqX9VB7ZMfc+9RfAkMlCvES9VjhBl4WaSaGxUTitx2bQh
 u2BHPWzj9Le9N/yBPEolKW6X7OlP87oNKwNmoT+xNnqVWM90jzECnqFGV
 9fISRS9CAUGbd9xBh+FNVuc7lfDN9cn6iXHO9L21fBxSRUmrcAdHckXM6
 XWdQvR8AhJiB/vv69pZ/r0EWSEUSDclK/C7XuPnbES08zq6rxYgikfAB1
 7GdgL2c2pcAwru5PTzZ609qwnpO7WBXUzYn5KRq+S5rf9nZsfxSELMrGR
 ZJARM9Ze2adtK3oChIt9Y5/ShT7fQTiz0r4MUgDouw1yIUFts9XAjOpQr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W5HI5WuG
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 aac5f8c21b761a08e1f74833958b21a05fb7942a
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
branch HEAD: aac5f8c21b761a08e1f74833958b21a05fb7942a  ice: Adjust over allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()

elapsed time: 1391m

configs tested: 263
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              alldefconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240719   gcc-13.2.0
arc                   randconfig-002-20240719   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                   randconfig-001-20240719   clang-19
arm                   randconfig-001-20240719   gcc-13.2.0
arm                   randconfig-002-20240719   gcc-13.2.0
arm                   randconfig-002-20240719   gcc-14.1.0
arm                   randconfig-003-20240719   gcc-13.2.0
arm                   randconfig-003-20240719   gcc-14.1.0
arm                   randconfig-004-20240719   clang-19
arm                   randconfig-004-20240719   gcc-13.2.0
arm                         s3c6400_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240719   gcc-13.2.0
arm64                 randconfig-001-20240719   gcc-14.1.0
arm64                 randconfig-002-20240719   gcc-13.2.0
arm64                 randconfig-002-20240719   gcc-14.1.0
arm64                 randconfig-003-20240719   gcc-13.2.0
arm64                 randconfig-003-20240719   gcc-14.1.0
arm64                 randconfig-004-20240719   gcc-13.2.0
arm64                 randconfig-004-20240719   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240719   gcc-13.2.0
csky                  randconfig-001-20240719   gcc-14.1.0
csky                  randconfig-002-20240719   gcc-13.2.0
csky                  randconfig-002-20240719   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240719   clang-19
hexagon               randconfig-002-20240719   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240719   clang-18
i386         buildonly-randconfig-001-20240720   clang-18
i386         buildonly-randconfig-002-20240719   clang-18
i386         buildonly-randconfig-002-20240720   clang-18
i386         buildonly-randconfig-003-20240719   clang-18
i386         buildonly-randconfig-003-20240719   gcc-10
i386         buildonly-randconfig-003-20240720   clang-18
i386         buildonly-randconfig-004-20240719   clang-18
i386         buildonly-randconfig-004-20240720   clang-18
i386         buildonly-randconfig-005-20240719   clang-18
i386         buildonly-randconfig-005-20240719   gcc-10
i386         buildonly-randconfig-005-20240720   clang-18
i386         buildonly-randconfig-006-20240719   clang-18
i386         buildonly-randconfig-006-20240720   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240719   clang-18
i386                  randconfig-001-20240720   clang-18
i386                  randconfig-002-20240719   clang-18
i386                  randconfig-002-20240720   clang-18
i386                  randconfig-003-20240719   clang-18
i386                  randconfig-003-20240720   clang-18
i386                  randconfig-004-20240719   clang-18
i386                  randconfig-004-20240719   gcc-13
i386                  randconfig-004-20240720   clang-18
i386                  randconfig-005-20240719   clang-18
i386                  randconfig-005-20240720   clang-18
i386                  randconfig-006-20240719   clang-18
i386                  randconfig-006-20240720   clang-18
i386                  randconfig-011-20240719   clang-18
i386                  randconfig-011-20240720   clang-18
i386                  randconfig-012-20240719   clang-18
i386                  randconfig-012-20240720   clang-18
i386                  randconfig-013-20240719   clang-18
i386                  randconfig-013-20240720   clang-18
i386                  randconfig-014-20240719   clang-18
i386                  randconfig-014-20240720   clang-18
i386                  randconfig-015-20240719   clang-18
i386                  randconfig-015-20240719   gcc-13
i386                  randconfig-015-20240720   clang-18
i386                  randconfig-016-20240719   clang-18
i386                  randconfig-016-20240719   gcc-13
i386                  randconfig-016-20240720   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240719   gcc-13.2.0
loongarch             randconfig-001-20240719   gcc-14.1.0
loongarch             randconfig-002-20240719   gcc-13.2.0
loongarch             randconfig-002-20240719   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         amcore_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
m68k                          sun3x_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                         bigsur_defconfig   gcc-13.2.0
mips                       bmips_be_defconfig   gcc-13.2.0
mips                      fuloong2e_defconfig   gcc-13.2.0
mips                           ip28_defconfig   gcc-13.2.0
mips                      maltaaprp_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   gcc-13.2.0
mips                   sb1250_swarm_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240719   gcc-13.2.0
nios2                 randconfig-001-20240719   gcc-14.1.0
nios2                 randconfig-002-20240719   gcc-13.2.0
nios2                 randconfig-002-20240719   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-32bit_defconfig   gcc-13.2.0
parisc                randconfig-001-20240719   gcc-13.2.0
parisc                randconfig-001-20240719   gcc-14.1.0
parisc                randconfig-002-20240719   gcc-13.2.0
parisc                randconfig-002-20240719   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                    gamecube_defconfig   gcc-13.2.0
powerpc                   lite5200b_defconfig   gcc-13.2.0
powerpc                 mpc837x_rdb_defconfig   gcc-13.2.0
powerpc                     powernv_defconfig   gcc-13.2.0
powerpc                      ppc64e_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240719   gcc-13.2.0
powerpc               randconfig-001-20240719   gcc-14.1.0
powerpc               randconfig-002-20240719   gcc-13.2.0
powerpc               randconfig-002-20240719   gcc-14.1.0
powerpc               randconfig-003-20240719   gcc-13.2.0
powerpc               randconfig-003-20240719   gcc-14.1.0
powerpc64             randconfig-001-20240719   gcc-13.2.0
powerpc64             randconfig-002-20240719   gcc-13.2.0
powerpc64             randconfig-002-20240719   gcc-14.1.0
powerpc64             randconfig-003-20240719   gcc-13.2.0
powerpc64             randconfig-003-20240719   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-13.2.0
riscv                 randconfig-001-20240719   clang-19
riscv                 randconfig-001-20240719   gcc-13.2.0
riscv                 randconfig-002-20240719   clang-19
riscv                 randconfig-002-20240719   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240719   clang-19
s390                  randconfig-001-20240719   gcc-13.2.0
s390                  randconfig-002-20240719   clang-19
s390                  randconfig-002-20240719   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                ecovec24-romimage_defconfig   gcc-13.2.0
sh                     magicpanelr2_defconfig   gcc-13.2.0
sh                          r7785rp_defconfig   gcc-13.2.0
sh                    randconfig-001-20240719   gcc-13.2.0
sh                    randconfig-001-20240719   gcc-14.1.0
sh                    randconfig-002-20240719   gcc-13.2.0
sh                    randconfig-002-20240719   gcc-14.1.0
sh                           se7705_defconfig   gcc-13.2.0
sh                           se7712_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-13.2.0
sh                   sh7770_generic_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sh                              ul2_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240719   gcc-13.2.0
sparc64               randconfig-001-20240719   gcc-14.1.0
sparc64               randconfig-002-20240719   gcc-13.2.0
sparc64               randconfig-002-20240719   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240719   clang-19
um                    randconfig-001-20240719   gcc-13.2.0
um                    randconfig-002-20240719   gcc-13
um                    randconfig-002-20240719   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240719   gcc-13
x86_64       buildonly-randconfig-002-20240719   gcc-13
x86_64       buildonly-randconfig-003-20240719   gcc-13
x86_64       buildonly-randconfig-004-20240719   gcc-13
x86_64       buildonly-randconfig-005-20240719   gcc-13
x86_64       buildonly-randconfig-006-20240719   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240719   gcc-13
x86_64                randconfig-002-20240719   gcc-13
x86_64                randconfig-003-20240719   gcc-13
x86_64                randconfig-004-20240719   gcc-13
x86_64                randconfig-005-20240719   gcc-13
x86_64                randconfig-006-20240719   gcc-13
x86_64                randconfig-011-20240719   gcc-13
x86_64                randconfig-012-20240719   gcc-13
x86_64                randconfig-013-20240719   gcc-13
x86_64                randconfig-014-20240719   gcc-13
x86_64                randconfig-015-20240719   gcc-13
x86_64                randconfig-016-20240719   gcc-13
x86_64                randconfig-071-20240719   gcc-13
x86_64                randconfig-072-20240719   gcc-13
x86_64                randconfig-073-20240719   gcc-13
x86_64                randconfig-074-20240719   gcc-13
x86_64                randconfig-075-20240719   gcc-13
x86_64                randconfig-076-20240719   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240719   gcc-13.2.0
xtensa                randconfig-001-20240719   gcc-14.1.0
xtensa                randconfig-002-20240719   gcc-13.2.0
xtensa                randconfig-002-20240719   gcc-14.1.0
xtensa                         virt_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
