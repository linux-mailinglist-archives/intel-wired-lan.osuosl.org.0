Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D40999E6C9A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 11:53:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E0D3405C3;
	Fri,  6 Dec 2024 10:53:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59aub6ANcRly; Fri,  6 Dec 2024 10:53:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33C55405B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733482379;
	bh=RGz8CHuE4HXVbfg6U5LslgsbGMrAuaUqPhGCL+nMLmI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Kd8sOtlRlJyB71TllcbyDOwfwH5KXWpFjfLTjXMs19InDsHsPjmi4WsHglktTVfVP
	 PYbrKKfR7qm6rnzstSYzYPnxMOnJtDB6rRaYDw4OfIEkY/eSl5Bd9jK8qmNlHzVkzL
	 Ke3L2ZR9/CnmOLjRvAzPY6fCXXSdRFbjgWV6RloLpPX353+U4vF2BLVYFvGATK5qmh
	 rO1oizwQ3I4y+lq+TVUh8RH2/zP83164zkCPvv3/quRapr9T+2UAniJR6/O8+l98g8
	 2Zz6ml4QNmcMFWapsL+RTaClGAVKUo3ooqJzxQKZqd3SNQFWoj8F7Iql+uPmZ+7usS
	 mPYOiLWW2i/BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33C55405B3;
	Fri,  6 Dec 2024 10:52:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 488D1ECA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 10:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34FD86115D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 10:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wvBsgSPHnfjU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 10:52:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06ECC608B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06ECC608B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06ECC608B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 10:52:55 +0000 (UTC)
X-CSE-ConnectionGUID: xWH94K/hQSGv+8/9tOLN0Q==
X-CSE-MsgGUID: XrkaBoxXQmmngxzaHl2XwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="37764807"
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="37764807"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 02:52:55 -0800
X-CSE-ConnectionGUID: oadHmjfDQCurhgyekyWfpA==
X-CSE-MsgGUID: 3gbdX6H6TY2s0J3vwTfADQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="94057116"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 06 Dec 2024 02:52:54 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tJVx5-0000x3-32
 for intel-wired-lan@lists.osuosl.org; Fri, 06 Dec 2024 10:52:51 +0000
Date: Fri, 06 Dec 2024 18:49:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412061859.NB5OodKI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733482376; x=1765018376;
 h=date:from:to:subject:message-id;
 bh=qShCM0dXb3ZB8dzS8yJQoeLVZX8ryylwhmXhEe5GUtI=;
 b=c2MMp9HjdJISLUpC0Qzq/unpN4cIeBjSe92rrl5x5ZPiCdSvLyHlGpby
 6lh0IWhenYUUfB5KRc8kigkI/egBFLF6O6J8woE2gi9zcVFjBCNu71v57
 4Gl2IqP3MS3ugiQcAxUfbwrAU0ItBhBsYr5pqpyr5mqxq0j6EAC1Xju/m
 6GgnPTWEgGSlEEyIe7WeZtgBtsJPHE/tfu3WcV3w61Mi4AQ+ND0ThE4t7
 gMVALnsW1fj9QwQhikt5DUP175i3ivkmII/jaSBNhadFIO7/cRCrNzb7C
 4q5ygV3RP1zazo/DrCxDLVzQTLR6KzV+whW7QU5lWve83+bX61EqdqwAz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c2MMp9Hj
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 f930594981cd9db15315c0ca03292a91828e39f0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: f930594981cd9db15315c0ca03292a91828e39f0  Merge branch 'ethtool-generate-uapi-header-from-the-spec'

elapsed time: 810m

configs tested: 225
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
arc                              alldefconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                         haps_hs_defconfig    gcc-13.2.0
arc                        nsimosci_defconfig    gcc-14.2.0
arc                            randconfig-001    gcc-13.2.0
arc                   randconfig-001-20241206    gcc-13.2.0
arc                   randconfig-001-20241206    gcc-14.2.0
arc                            randconfig-002    gcc-13.2.0
arc                   randconfig-002-20241206    gcc-13.2.0
arc                   randconfig-002-20241206    gcc-14.2.0
arc                        vdk_hs38_defconfig    gcc-14.2.0
arc                    vdk_hs38_smp_defconfig    gcc-14.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                     am200epdkit_defconfig    gcc-14.2.0
arm                       aspeed_g5_defconfig    gcc-14.2.0
arm                          collie_defconfig    gcc-14.2.0
arm                          exynos_defconfig    clang-20
arm                            mps2_defconfig    clang-20
arm                         mv78xx0_defconfig    gcc-14.2.0
arm                        mvebu_v7_defconfig    gcc-14.2.0
arm                           omap1_defconfig    clang-20
arm                          pxa910_defconfig    gcc-14.2.0
arm                            randconfig-001    gcc-14.2.0
arm                   randconfig-001-20241206    gcc-14.2.0
arm                            randconfig-002    gcc-14.2.0
arm                   randconfig-002-20241206    gcc-14.2.0
arm                            randconfig-003    clang-20
arm                   randconfig-003-20241206    gcc-14.2.0
arm                            randconfig-004    gcc-14.2.0
arm                   randconfig-004-20241206    clang-20
arm                   randconfig-004-20241206    gcc-14.2.0
arm                        realview_defconfig    clang-20
arm                             rpc_defconfig    gcc-14.2.0
arm                         s5pv210_defconfig    gcc-14.2.0
arm                        shmobile_defconfig    gcc-14.2.0
arm                          sp7021_defconfig    gcc-14.2.0
arm                           spitz_defconfig    gcc-14.2.0
arm                           stm32_defconfig    gcc-14.2.0
arm                           u8500_defconfig    gcc-13.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                          randconfig-001    gcc-14.2.0
arm64                 randconfig-001-20241206    clang-14
arm64                 randconfig-001-20241206    gcc-14.2.0
arm64                          randconfig-002    gcc-14.2.0
arm64                 randconfig-002-20241206    gcc-14.2.0
arm64                          randconfig-003    clang-15
arm64                 randconfig-003-20241206    clang-20
arm64                 randconfig-003-20241206    gcc-14.2.0
arm64                          randconfig-004    clang-20
arm64                 randconfig-004-20241206    clang-20
arm64                 randconfig-004-20241206    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386                             alldefconfig    clang-20
i386                 buildonly-randconfig-001    gcc-12
i386        buildonly-randconfig-001-20241206    clang-19
i386                 buildonly-randconfig-002    clang-19
i386                 buildonly-randconfig-002    gcc-12
i386        buildonly-randconfig-002-20241206    clang-19
i386                 buildonly-randconfig-003    clang-19
i386                 buildonly-randconfig-003    gcc-12
i386        buildonly-randconfig-003-20241206    clang-19
i386                 buildonly-randconfig-004    gcc-12
i386        buildonly-randconfig-004-20241206    clang-19
i386                 buildonly-randconfig-005    gcc-12
i386        buildonly-randconfig-005-20241206    clang-19
i386                 buildonly-randconfig-006    gcc-12
i386        buildonly-randconfig-006-20241206    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
m68k                             alldefconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    clang-20
m68k                            mac_defconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
m68k                        mvme147_defconfig    clang-20
m68k                        mvme16x_defconfig    gcc-14.2.0
m68k                           sun3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         bigsur_defconfig    gcc-14.2.0
mips                           ci20_defconfig    gcc-14.2.0
mips                            gpr_defconfig    clang-20
mips                           ip27_defconfig    gcc-14.2.0
mips                           ip28_defconfig    clang-20
mips                           ip30_defconfig    gcc-14.2.0
mips                           jazz_defconfig    clang-20
mips                     loongson1b_defconfig    clang-15
mips                      maltaaprp_defconfig    clang-20
mips                           xway_defconfig    clang-20
nios2                         10m50_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                  or1klitex_defconfig    gcc-14.2.0
openrisc                 simple_smp_defconfig    clang-20
openrisc                       virt_defconfig    gcc-14.2.0
parisc                           alldefconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-64bit_defconfig    gcc-14.2.0
parisc64                         alldefconfig    clang-20
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                     asp8347_defconfig    gcc-14.2.0
powerpc                   bluestone_defconfig    gcc-13.2.0
powerpc                      cm5200_defconfig    gcc-14.2.0
powerpc                   currituck_defconfig    gcc-14.2.0
powerpc                       ebony_defconfig    clang-18
powerpc                       eiger_defconfig    gcc-14.2.0
powerpc                     ep8248e_defconfig    clang-20
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc                    ge_imp3a_defconfig    gcc-13.2.0
powerpc                       holly_defconfig    clang-20
powerpc                       holly_defconfig    gcc-14.2.0
powerpc                        icon_defconfig    clang-20
powerpc                  iss476-smp_defconfig    gcc-14.2.0
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc                 linkstation_defconfig    clang-20
powerpc                   lite5200b_defconfig    gcc-14.2.0
powerpc                      mgcoge_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    gcc-14.2.0
powerpc                 mpc8313_rdb_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    gcc-13.2.0
powerpc                 mpc832x_rdb_defconfig    gcc-14.2.0
powerpc               mpc834x_itxgp_defconfig    gcc-14.2.0
powerpc                 mpc836x_rdk_defconfig    gcc-14.2.0
powerpc                 mpc837x_rdb_defconfig    clang-20
powerpc                  mpc885_ads_defconfig    gcc-14.2.0
powerpc                     ppa8548_defconfig    clang-20
powerpc                       ppc64_defconfig    clang-18
powerpc                      ppc6xx_defconfig    gcc-14.2.0
powerpc                         ps3_defconfig    gcc-14.2.0
powerpc                     redwood_defconfig    gcc-14.2.0
powerpc                     skiroot_defconfig    gcc-14.2.0
powerpc                     tqm8540_defconfig    clang-20
powerpc                     tqm8540_defconfig    gcc-14.2.0
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc                     tqm8560_defconfig    clang-20
powerpc                        warp_defconfig    gcc-14.2.0
powerpc64                        alldefconfig    clang-18
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-13.2.0
riscv                    nommu_virt_defconfig    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                        dreamcast_defconfig    clang-18
sh                ecovec24-romimage_defconfig    gcc-13.2.0
sh                         ecovec24_defconfig    clang-20
sh                         ecovec24_defconfig    gcc-14.2.0
sh                        edosk7705_defconfig    gcc-14.2.0
sh                        edosk7760_defconfig    clang-20
sh                        edosk7760_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                          landisk_defconfig    clang-20
sh                            migor_defconfig    gcc-14.2.0
sh                          r7780mp_defconfig    clang-18
sh                          rsk7264_defconfig    gcc-14.2.0
sh                          rsk7269_defconfig    clang-18
sh                          sdk7786_defconfig    clang-20
sh                           se7206_defconfig    clang-20
sh                           se7343_defconfig    clang-20
sh                           se7721_defconfig    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sh                           se7724_defconfig    gcc-14.2.0
sh                           se7750_defconfig    gcc-14.2.0
sh                   secureedge5410_defconfig    clang-18
sh                   secureedge5410_defconfig    gcc-14.2.0
sh                             sh03_defconfig    clang-20
sh                           sh2007_defconfig    gcc-14.2.0
sh                     sh7710voipgw_defconfig    clang-20
sh                        sh7757lcr_defconfig    clang-20
sh                        sh7763rdp_defconfig    clang-20
sh                        sh7763rdp_defconfig    gcc-14.2.0
sh                             shx3_defconfig    gcc-14.2.0
sh                            titan_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                           x86_64_defconfig    gcc-13.2.0
x86_64      buildonly-randconfig-001-20241206    clang-19
x86_64      buildonly-randconfig-002-20241206    clang-19
x86_64      buildonly-randconfig-003-20241206    clang-19
x86_64      buildonly-randconfig-004-20241206    clang-19
x86_64      buildonly-randconfig-005-20241206    clang-19
x86_64      buildonly-randconfig-006-20241206    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    gcc-14.2.0
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
