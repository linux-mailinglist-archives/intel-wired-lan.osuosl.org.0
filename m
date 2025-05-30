Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BEAAC8636
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 04:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26CCE81FB9;
	Fri, 30 May 2025 02:21:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z6L2aKPmL-b5; Fri, 30 May 2025 02:21:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB1BA81FD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748571687;
	bh=qyPQtqLxccf1ztNnB0dvhup2TAUis9GxCmkWOKMxJt8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hJAOiy+Vf81W8hPvBrvF9vG2RzTo6dsYPztkW03yEaGIvef1OkbDeaubmFNNpH2by
	 jZx9A3LPNdn2My6lO0FYY5qqD0Cm/2DuwWX9z4k1TUEF7zyV6z3ET2VkGgJdaoC4CR
	 ggpl4faduFJDfhkrgpL5xios+VUXLnlFr/fARXDon372+Y+M3p4ai3HyeVULbgvYVf
	 8Y+4jvIqCH/j5RQ0dXEJyMIl41wSPkzoSCk6gt9vzNWxZkTZ3NfDIST5OUOXaVzVsC
	 Gnj3zAv8l+O42IyKDhtZ4qbM3dh0xwQWWsAnVeHzAnyi7sO+LkNWFDlXHuo/FZVqYu
	 z7FReSuWrpUsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB1BA81FD6;
	Fri, 30 May 2025 02:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 65ACD236
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 02:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BD9F4217C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 02:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oDcKKGAF8xi3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 02:21:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5420C42179
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5420C42179
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5420C42179
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 02:21:24 +0000 (UTC)
X-CSE-ConnectionGUID: gSejdD25RyiNb87HVgL5SQ==
X-CSE-MsgGUID: sGENfEibRiGGk7oqy1kwCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="61322264"
X-IronPort-AV: E=Sophos;i="6.16,194,1744095600"; d="scan'208";a="61322264"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 19:21:24 -0700
X-CSE-ConnectionGUID: t4NFm0VuTi6Z+6x3C5PTWA==
X-CSE-MsgGUID: gctbJg1BTEKqsXOD+39r5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,194,1744095600"; d="scan'208";a="143566307"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 29 May 2025 19:21:23 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uKpN3-000XGi-02
 for intel-wired-lan@lists.osuosl.org; Fri, 30 May 2025 02:21:21 +0000
Date: Fri, 30 May 2025 10:20:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505301040.7eHo8RiJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748571685; x=1780107685;
 h=date:from:to:subject:message-id;
 bh=2pUuGSbbrjpGkCC3iAsyDq0S/Lf0ZLg+NeHzEM5o2Ug=;
 b=Gap2j43s+aE3uY0WV6HK44cnm/CT9MKvf/Ld8LB2hnx6lYTATQGxR5y7
 PaPV+kV4XTMtG/h8XfABvLrLdVU2zntoMHgUy9+mAuJ1e6Vl5U9bErQ36
 zDwYUOPhuwHDxvxPFU0hjR3AS5OhBcCKy7h4T+PvBCqHMmrPUyhND2GXR
 LWW4Y2w/43iNB5tt5vT883pwbRNde7PNz1Bi64d91xCHMhgOz7tsT0u+3
 ffN+pISGSvr4IZNxyEON+eCm5IzFIg1A6gamxDLloiEJ7Ra0DNl2y4LP3
 FfVPokJZ1eJAgJKYWvYMm+78RO8TCCN3oZHvJ9hnJfjpYCkxKGDpfXKGK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gap2j43s
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 27eab4c644236a9324084a70fe79e511cbd07393
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 27eab4c644236a9324084a70fe79e511cbd07393  net: lan966x: Make sure to insert the vlan tags also in host mode

elapsed time: 729m

configs tested: 150
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.1.0
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250530    gcc-15.1.0
arc                   randconfig-002-20250530    gcc-10.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                     davinci_all_defconfig    clang-19
arm                       imx_v6_v7_defconfig    clang-16
arm                         mv78xx0_defconfig    clang-19
arm                        mvebu_v5_defconfig    gcc-15.1.0
arm                            qcom_defconfig    clang-21
arm                   randconfig-001-20250530    gcc-15.1.0
arm                   randconfig-002-20250530    gcc-14.3.0
arm                   randconfig-003-20250530    clang-21
arm                   randconfig-004-20250530    clang-21
arm                           spitz_defconfig    gcc-15.1.0
arm                           tegra_defconfig    gcc-15.1.0
arm                           u8500_defconfig    gcc-15.1.0
arm                       versatile_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250530    gcc-12.3.0
arm64                 randconfig-002-20250530    gcc-5.5.0
arm64                 randconfig-003-20250530    gcc-7.5.0
arm64                 randconfig-004-20250530    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250530    gcc-15.1.0
csky                  randconfig-002-20250530    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250530    clang-21
hexagon               randconfig-002-20250530    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250530    clang-20
i386        buildonly-randconfig-002-20250530    clang-20
i386        buildonly-randconfig-003-20250530    clang-20
i386        buildonly-randconfig-004-20250530    clang-20
i386        buildonly-randconfig-005-20250530    clang-20
i386        buildonly-randconfig-006-20250530    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250530    gcc-15.1.0
loongarch             randconfig-002-20250530    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
m68k                          multi_defconfig    gcc-15.1.0
m68k                        stmark2_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          ath25_defconfig    clang-21
mips                          ath79_defconfig    gcc-15.1.0
mips                           mtx1_defconfig    clang-21
mips                        qi_lb60_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250530    gcc-5.5.0
nios2                 randconfig-002-20250530    gcc-10.5.0
openrisc                         alldefconfig    gcc-15.1.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           alldefconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                generic-64bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20250530    gcc-12.4.0
parisc                randconfig-002-20250530    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                        fsp2_defconfig    gcc-15.1.0
powerpc                       holly_defconfig    clang-21
powerpc                  iss476-smp_defconfig    gcc-15.1.0
powerpc               mpc834x_itxgp_defconfig    clang-21
powerpc                    mvme5100_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250530    gcc-14.3.0
powerpc               randconfig-002-20250530    clang-21
powerpc               randconfig-003-20250530    gcc-8.5.0
powerpc                     sequoia_defconfig    clang-17
powerpc                     skiroot_defconfig    clang-21
powerpc                     tqm8540_defconfig    gcc-15.1.0
powerpc                     tqm8548_defconfig    clang-21
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc                 xes_mpc85xx_defconfig    gcc-15.1.0
powerpc64                        alldefconfig    clang-21
powerpc64             randconfig-001-20250530    gcc-14.3.0
powerpc64             randconfig-002-20250530    clang-21
powerpc64             randconfig-003-20250530    gcc-15.1.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250530    gcc-15.1.0
riscv                 randconfig-002-20250530    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250530    clang-20
s390                  randconfig-002-20250530    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                             espt_defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                          polaris_defconfig    gcc-15.1.0
sh                    randconfig-001-20250530    gcc-14.3.0
sh                    randconfig-002-20250530    gcc-15.1.0
sh                           se7206_defconfig    gcc-15.1.0
sh                           se7343_defconfig    gcc-15.1.0
sh                           se7751_defconfig    gcc-15.1.0
sh                           sh2007_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250530    gcc-8.5.0
sparc                 randconfig-002-20250530    gcc-10.3.0
sparc64               randconfig-001-20250530    gcc-8.5.0
sparc64               randconfig-002-20250530    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250530    gcc-11
um                    randconfig-002-20250530    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250530    clang-20
x86_64      buildonly-randconfig-002-20250530    clang-20
x86_64      buildonly-randconfig-003-20250530    gcc-12
x86_64      buildonly-randconfig-004-20250530    gcc-11
x86_64      buildonly-randconfig-005-20250530    clang-20
x86_64      buildonly-randconfig-006-20250530    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                          iss_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250530    gcc-15.1.0
xtensa                randconfig-002-20250530    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
