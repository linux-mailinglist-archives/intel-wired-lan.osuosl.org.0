Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 461578505A1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 18:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 079E9606A3;
	Sat, 10 Feb 2024 17:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ly4bysvFAVnn; Sat, 10 Feb 2024 17:14:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9BE7606B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707585277;
	bh=hphKF67NIivhDjxKqpHyUB+LU/e0v7XySOgiZnR2ke0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a0uIRiAo7Kx/7rTF3Brho/WYXTNaH3xOUmV4MQVx1ngOdyUpPLyH6TliA929051dY
	 Mv8bb06mKPANpsRf2YlN6esByND6pPIWLOxQCUMqHt8XMq2g+kN1zuWjKI6WKFlLDl
	 CMhL4/0beRwNoSptyT0vvkxJxttQptJ4VrE1ASx8xOeEPmlDy6SG+eKi5JPtP9z8ga
	 mAGTm/F5MPsc11ZzXm2HWQWOne8iuimCenUwPHS7qnn3CTYkYWpYnVqGZf3XT1xrTq
	 FB/8Hdn1tkJgH9uvmjHgGHyr2fNL75ziY3AsJVwCWNqkWdj7n0oXJwQcNDO6iZcTgK
	 KMY4KPS9KVlZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9BE7606B3;
	Sat, 10 Feb 2024 17:14:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3B1F1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 17:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBECD40956
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 17:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1BDWx6yNdGTV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 17:14:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A32F4094F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A32F4094F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A32F4094F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 17:14:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10980"; a="27026792"
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; d="scan'208";a="27026792"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 09:14:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="6839155"
Received: from lkp-server01.sh.intel.com (HELO 01f0647817ea) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 10 Feb 2024 09:14:31 -0800
Received: from kbuild by 01f0647817ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rYqvt-0005u4-0O
 for intel-wired-lan@lists.osuosl.org; Sat, 10 Feb 2024 17:14:29 +0000
Date: Sun, 11 Feb 2024 01:13:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402110153.QEqdCoKG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707585273; x=1739121273;
 h=date:from:to:subject:message-id;
 bh=2UeJV3/OheouL28/c58SJPHzgP6CQLma47aOOwE6pkA=;
 b=n2rHIl2z2ndBX7zT+0Q1tlF+AGjNYor3nImvTCCE8oM9GPcalDQzajaO
 3rOLTxDOPj879l2D6vFJ5LieLWC39JdFVq5InrE78SB+J+iS6t5m+Fzcb
 IFQn9f4ry4j/OB0iueu+jA+kOl6JCzckd+9s/oBdlNRzdXIhApxuQ3D79
 WhVQX9yfXFrW6VAqdvWd9pHv0U3KyIg7HYUKtvdDSHzCvyLldpaj+FPhU
 7fqllyF4byOWVRP6CXNnHy6v6UqyohnEdljWcITrBwWs0OJN5kq15CCTh
 2lSiJjd1+alq946nwxGKzw5ES3JR2KmQutrKROEJ3Ys2NyBmMNeJ7dqyc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n2rHIl2z
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 02d9009f4e8c27dcf10c3e39bc0666436686a219
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
branch HEAD: 02d9009f4e8c27dcf10c3e39bc0666436686a219  selftests: net: add more missing kernel config

elapsed time: 2241m

configs tested: 262
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240209   gcc  
arc                   randconfig-001-20240210   gcc  
arc                   randconfig-002-20240209   gcc  
arc                   randconfig-002-20240210   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                            dove_defconfig   gcc  
arm                      jornada720_defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                        mvebu_v5_defconfig   gcc  
arm                             mxs_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                   randconfig-001-20240210   gcc  
arm                   randconfig-002-20240209   gcc  
arm                   randconfig-002-20240210   gcc  
arm                   randconfig-003-20240209   gcc  
arm                   randconfig-003-20240210   gcc  
arm                   randconfig-004-20240209   gcc  
arm                   randconfig-004-20240210   gcc  
arm                        shmobile_defconfig   gcc  
arm                         socfpga_defconfig   gcc  
arm                       spear13xx_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm                       versatile_defconfig   gcc  
arm                        vexpress_defconfig   gcc  
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240210   clang
arm64                 randconfig-002-20240210   gcc  
arm64                 randconfig-003-20240210   gcc  
arm64                 randconfig-004-20240210   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240209   gcc  
csky                  randconfig-001-20240210   gcc  
csky                  randconfig-002-20240209   gcc  
csky                  randconfig-002-20240210   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240210   clang
hexagon               randconfig-002-20240210   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240210   clang
i386         buildonly-randconfig-002-20240210   gcc  
i386         buildonly-randconfig-003-20240209   gcc  
i386         buildonly-randconfig-003-20240210   clang
i386         buildonly-randconfig-004-20240210   clang
i386         buildonly-randconfig-005-20240210   clang
i386         buildonly-randconfig-006-20240209   gcc  
i386         buildonly-randconfig-006-20240210   clang
i386                                defconfig   clang
i386                  randconfig-001-20240210   gcc  
i386                  randconfig-002-20240209   gcc  
i386                  randconfig-002-20240210   gcc  
i386                  randconfig-003-20240210   clang
i386                  randconfig-004-20240210   clang
i386                  randconfig-005-20240210   gcc  
i386                  randconfig-006-20240209   gcc  
i386                  randconfig-006-20240210   gcc  
i386                  randconfig-011-20240209   gcc  
i386                  randconfig-011-20240210   clang
i386                  randconfig-012-20240209   gcc  
i386                  randconfig-012-20240210   clang
i386                  randconfig-013-20240210   clang
i386                  randconfig-014-20240209   gcc  
i386                  randconfig-014-20240210   gcc  
i386                  randconfig-015-20240209   gcc  
i386                  randconfig-015-20240210   gcc  
i386                  randconfig-016-20240209   gcc  
i386                  randconfig-016-20240210   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240209   gcc  
loongarch             randconfig-001-20240210   gcc  
loongarch             randconfig-002-20240209   gcc  
loongarch             randconfig-002-20240210   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson2k_defconfig   gcc  
mips                           xway_defconfig   clang
nios2                         3c120_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240209   gcc  
nios2                 randconfig-001-20240210   gcc  
nios2                 randconfig-002-20240209   gcc  
nios2                 randconfig-002-20240210   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240209   gcc  
parisc                randconfig-001-20240210   gcc  
parisc                randconfig-002-20240209   gcc  
parisc                randconfig-002-20240210   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      bamboo_defconfig   clang
powerpc                      cm5200_defconfig   clang
powerpc                        fsp2_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                   microwatt_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                      obs600_defconfig   clang
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-001-20240210   gcc  
powerpc               randconfig-002-20240210   clang
powerpc               randconfig-003-20240209   gcc  
powerpc               randconfig-003-20240210   gcc  
powerpc                      walnut_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240210   clang
powerpc64             randconfig-002-20240210   clang
powerpc64             randconfig-003-20240210   clang
riscv                            alldefconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240210   gcc  
riscv                 randconfig-002-20240210   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240209   gcc  
s390                  randconfig-001-20240210   gcc  
s390                  randconfig-002-20240209   gcc  
s390                  randconfig-002-20240210   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240209   gcc  
sh                    randconfig-001-20240210   gcc  
sh                    randconfig-002-20240209   gcc  
sh                    randconfig-002-20240210   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7343_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240209   gcc  
sparc64               randconfig-001-20240210   gcc  
sparc64               randconfig-002-20240209   gcc  
sparc64               randconfig-002-20240210   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240209   gcc  
um                    randconfig-001-20240210   gcc  
um                    randconfig-002-20240210   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240210   gcc  
x86_64       buildonly-randconfig-002-20240210   gcc  
x86_64       buildonly-randconfig-003-20240209   clang
x86_64       buildonly-randconfig-003-20240210   gcc  
x86_64       buildonly-randconfig-004-20240210   clang
x86_64       buildonly-randconfig-005-20240209   clang
x86_64       buildonly-randconfig-005-20240210   clang
x86_64       buildonly-randconfig-006-20240210   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240209   clang
x86_64                randconfig-001-20240210   clang
x86_64                randconfig-002-20240210   clang
x86_64                randconfig-003-20240210   gcc  
x86_64                randconfig-004-20240209   clang
x86_64                randconfig-004-20240210   clang
x86_64                randconfig-005-20240210   clang
x86_64                randconfig-006-20240210   gcc  
x86_64                randconfig-011-20240209   clang
x86_64                randconfig-011-20240210   gcc  
x86_64                randconfig-012-20240209   clang
x86_64                randconfig-012-20240210   clang
x86_64                randconfig-013-20240210   clang
x86_64                randconfig-014-20240209   clang
x86_64                randconfig-014-20240210   clang
x86_64                randconfig-015-20240210   gcc  
x86_64                randconfig-016-20240209   clang
x86_64                randconfig-016-20240210   clang
x86_64                randconfig-071-20240210   gcc  
x86_64                randconfig-072-20240209   clang
x86_64                randconfig-072-20240210   gcc  
x86_64                randconfig-073-20240209   clang
x86_64                randconfig-073-20240210   clang
x86_64                randconfig-074-20240210   gcc  
x86_64                randconfig-075-20240210   clang
x86_64                randconfig-076-20240209   clang
x86_64                randconfig-076-20240210   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                           alldefconfig   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                randconfig-001-20240209   gcc  
xtensa                randconfig-001-20240210   gcc  
xtensa                randconfig-002-20240209   gcc  
xtensa                randconfig-002-20240210   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
