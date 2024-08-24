Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1707195E00E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Aug 2024 23:50:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2BFF80E49;
	Sat, 24 Aug 2024 21:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CFgAdB4N5yDg; Sat, 24 Aug 2024 21:50:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0614480E88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724536221;
	bh=7gtBORTUmrJL4Eh/cqjrh8z7nkMhWV9hKTtOTCK14i0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s4EeuSKI99azx079zkATNk5wxlnrQ+PWnj6a6Npxt1Quw/J5laKrfjV6Zmi8mV6u3
	 v7C709sIrAnA8n/RYkia/UEUD9/QYjlxdZtzH2VnHZrrJPAn221EpXp024R1rfZZrI
	 +mEH3RxXZ6Kh39XkKKnCFbAENVBAfNFwiQa/jDo8csvLTDdgIlLc69zxJh9lS3/7xx
	 aSld+Rn4DSnoesVsLwBqJ75PbKGW0AW2Yc50TqBaqwwHg6kv5xtDzvk7GWiiqTcbNr
	 wLc4adxHJXqbUQcQeZoIjDyhQm1oURb+fzV1JzC1HUmpmlVzAx31s2yhmD0ZfeNrmj
	 t8kuKOHuaj6VQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0614480E88;
	Sat, 24 Aug 2024 21:50:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96AF51BF31B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 21:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84A22605EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 21:50:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r2Pr2_loAcs2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Aug 2024 21:50:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75ABC605C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75ABC605C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75ABC605C3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 21:50:17 +0000 (UTC)
X-CSE-ConnectionGUID: dWYOo1+xRkGaIIT4Xoymsg==
X-CSE-MsgGUID: 7+BNA11GQtKzZmiBLsSHkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="48382594"
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="48382594"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2024 14:50:17 -0700
X-CSE-ConnectionGUID: r1Mk61Y6R02+o7C2prDY9A==
X-CSE-MsgGUID: U3fQJ8EGSx2TetAEYrmj1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,174,1719903600"; d="scan'208";a="92867755"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 24 Aug 2024 14:50:16 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1shyeD-000El7-10
 for intel-wired-lan@lists.osuosl.org; Sat, 24 Aug 2024 21:50:13 +0000
Date: Sun, 25 Aug 2024 05:49:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408250538.mOuv1Iw3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724536219; x=1756072219;
 h=date:from:to:subject:message-id;
 bh=epU81cCz+51v0BkEVPhvZ1V0+gIjg5PQd+UBJ6FBhJc=;
 b=kb7dTtffv1MWPZO2/MbfWU6BSq5kmXqBbpHjecenKb4WqULNYQiB3nrK
 +hL/rcsZ0f27c1HxT/o7bFn7RTeFd97teiz4fgVin10ZTYwRLs7kqmzsl
 Ltn7gGEqkhbebrBYHBL19CBPs3ar/F5qNrUJBDDiLNzZxYaL7pNz30izE
 gnW99AmAh1k1FbeVpXWWR6e7XmHl6U8Pn/3LKyYnahsXV1hvX8xHlgFmS
 SMCqKD7zZVm1g7Lq0ryo0JJVf1fiV/1/dvqHc8BFJDsqOon45VwawUpYt
 UzpqdAAYdvXKF/x6M5ICWaVbaXdKYwdt9IrST3zlg2pwwVmeqjsMBBw2J
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kb7dTtff
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7b7a3483ba0434fc237bd19b1bfd60944c24b8cb
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
branch HEAD: 7b7a3483ba0434fc237bd19b1bfd60944c24b8cb  igb: Always call igb_xdp_ring_update_tail() under Tx lock

elapsed time: 1445m

configs tested: 183
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                   randconfig-001-20240824   gcc-13.2.0
arc                   randconfig-002-20240824   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                       aspeed_g4_defconfig   clang-20
arm                         at91_dt_defconfig   clang-20
arm                                 defconfig   gcc-13.2.0
arm                      footbridge_defconfig   gcc-13.2.0
arm                          gemini_defconfig   clang-20
arm                      integrator_defconfig   clang-20
arm                       multi_v4t_defconfig   gcc-13.2.0
arm                         mv78xx0_defconfig   clang-20
arm                        mvebu_v5_defconfig   clang-20
arm                         nhk8815_defconfig   clang-20
arm                   randconfig-001-20240824   gcc-13.2.0
arm                   randconfig-002-20240824   gcc-13.2.0
arm                   randconfig-003-20240824   gcc-13.2.0
arm                   randconfig-004-20240824   gcc-13.2.0
arm                             rpc_defconfig   clang-20
arm                        spear3xx_defconfig   gcc-13.2.0
arm                           spitz_defconfig   clang-20
arm                           sunxi_defconfig   gcc-13.2.0
arm                        vexpress_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240824   gcc-13.2.0
arm64                 randconfig-002-20240824   gcc-13.2.0
arm64                 randconfig-003-20240824   gcc-13.2.0
arm64                 randconfig-004-20240824   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240824   gcc-13.2.0
csky                  randconfig-002-20240824   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240824   clang-18
i386         buildonly-randconfig-002-20240824   clang-18
i386         buildonly-randconfig-003-20240824   clang-18
i386         buildonly-randconfig-004-20240824   clang-18
i386         buildonly-randconfig-005-20240824   clang-18
i386         buildonly-randconfig-006-20240824   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240824   clang-18
i386                  randconfig-002-20240824   clang-18
i386                  randconfig-003-20240824   clang-18
i386                  randconfig-004-20240824   clang-18
i386                  randconfig-005-20240824   clang-18
i386                  randconfig-006-20240824   clang-18
i386                  randconfig-011-20240824   clang-18
i386                  randconfig-012-20240824   clang-18
i386                  randconfig-013-20240824   clang-18
i386                  randconfig-014-20240824   clang-18
i386                  randconfig-015-20240824   clang-18
i386                  randconfig-016-20240824   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240824   gcc-13.2.0
loongarch             randconfig-002-20240824   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                       bmips_be_defconfig   gcc-13.2.0
mips                         cobalt_defconfig   clang-20
mips                 decstation_r4k_defconfig   gcc-13.2.0
mips                      loongson3_defconfig   gcc-13.2.0
mips                          rb532_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240824   gcc-13.2.0
nios2                 randconfig-002-20240824   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240824   gcc-13.2.0
parisc                randconfig-002-20240824   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                      bamboo_defconfig   gcc-13.2.0
powerpc                      cm5200_defconfig   clang-20
powerpc                     ep8248e_defconfig   clang-20
powerpc                    gamecube_defconfig   clang-20
powerpc                      katmai_defconfig   clang-20
powerpc                 mpc837x_rdb_defconfig   gcc-13.2.0
powerpc                      pasemi_defconfig   clang-20
powerpc                      pcm030_defconfig   clang-20
powerpc                     powernv_defconfig   clang-20
powerpc                      ppc44x_defconfig   clang-20
powerpc                      ppc64e_defconfig   clang-20
powerpc               randconfig-001-20240824   gcc-13.2.0
powerpc                     tqm8548_defconfig   clang-20
powerpc                     tqm8555_defconfig   clang-20
powerpc                         wii_defconfig   clang-20
powerpc64             randconfig-001-20240824   gcc-13.2.0
powerpc64             randconfig-002-20240824   gcc-13.2.0
powerpc64             randconfig-003-20240824   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                    nommu_k210_defconfig   clang-20
riscv                 randconfig-001-20240824   gcc-13.2.0
riscv                 randconfig-002-20240824   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                          debug_defconfig   clang-20
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240824   gcc-13.2.0
s390                  randconfig-002-20240824   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                          landisk_defconfig   gcc-13.2.0
sh                    randconfig-001-20240824   gcc-13.2.0
sh                    randconfig-002-20240824   gcc-13.2.0
sh                          rsk7203_defconfig   gcc-13.2.0
sh                        sh7785lcr_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240824   gcc-13.2.0
sparc64               randconfig-002-20240824   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240824   gcc-13.2.0
um                    randconfig-002-20240824   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240824   clang-18
x86_64       buildonly-randconfig-002-20240824   clang-18
x86_64       buildonly-randconfig-003-20240824   clang-18
x86_64       buildonly-randconfig-004-20240824   clang-18
x86_64       buildonly-randconfig-005-20240824   clang-18
x86_64       buildonly-randconfig-006-20240824   clang-18
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240824   clang-18
x86_64                randconfig-002-20240824   clang-18
x86_64                randconfig-003-20240824   clang-18
x86_64                randconfig-004-20240824   clang-18
x86_64                randconfig-005-20240824   clang-18
x86_64                randconfig-006-20240824   clang-18
x86_64                randconfig-011-20240824   clang-18
x86_64                randconfig-012-20240824   clang-18
x86_64                randconfig-013-20240824   clang-18
x86_64                randconfig-014-20240824   clang-18
x86_64                randconfig-015-20240824   clang-18
x86_64                randconfig-016-20240824   clang-18
x86_64                randconfig-071-20240824   clang-18
x86_64                randconfig-072-20240824   clang-18
x86_64                randconfig-073-20240824   clang-18
x86_64                randconfig-074-20240824   clang-18
x86_64                randconfig-075-20240824   clang-18
x86_64                randconfig-076-20240824   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240824   gcc-13.2.0
xtensa                randconfig-002-20240824   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
