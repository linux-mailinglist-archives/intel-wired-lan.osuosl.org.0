Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E215B1C80D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 17:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AA0D844AB;
	Wed,  6 Aug 2025 15:00:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tHfPwV6toSvg; Wed,  6 Aug 2025 15:00:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1A08844A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754492422;
	bh=ZcO+a1jfwECRf+Q3QMLE3tNog0p6Xmcgrs8hERgL07Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=clCH4SdlbEC/502bfqFefqxVC/5Fy+o7qxnX8yJ2F+bZfWaCDx+uJn0Bnr5nbvq7L
	 rI/+h14IallQHhmyczRgwbZGcyXcITK8w+vV3uRwDK0+xH4ELof2imZYct+Tbumukg
	 NHGvzlabmhZA1DnE+scb2OOLaAN4Eu2pPZeTm5hbbiHKbO+OBCzfOPPzJi95hbxx2X
	 pHG+CZKRgMmrqS/foX2svkgU+aVgGUNGYaUVMwMKIlt1FdNwSwNYua+XPY7BaVMVtw
	 kICncFnkaV4cBwTtG07vCYAFvP/4hM0JhvvmLZy/Y/kSa1Cn1tHSPBMqPkTv0GjqT8
	 uDJmwsout77IQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1A08844A4;
	Wed,  6 Aug 2025 15:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2A6A233
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 15:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98CB041CD4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 15:00:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pVKOWdmYjx5i for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 15:00:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86D1841B6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86D1841B6C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86D1841B6C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 15:00:20 +0000 (UTC)
X-CSE-ConnectionGUID: SvNUhBeNS42PwOuK37GIZw==
X-CSE-MsgGUID: Q0sbpxD5Sl6rqjK3EcE2CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56955776"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56955776"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 08:00:20 -0700
X-CSE-ConnectionGUID: Fzd24KzoRX6IHOiLc4SubQ==
X-CSE-MsgGUID: BmedmiSHR16v22lBsvCBMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="170063093"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 06 Aug 2025 08:00:12 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ujfcM-0001nY-0m
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Aug 2025 14:59:56 +0000
Date: Wed, 06 Aug 2025 22:58:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508062208.Yu6eWVF5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754492421; x=1786028421;
 h=date:from:to:subject:message-id;
 bh=v75IRWGHJDnWqZ9QoNhvvqJ1xcLF7M9GQGDE5knFtwg=;
 b=MEuOtmbk0p3xgF6JuLyXYygU7b8/WGA4kBugvfvvweWtYZyAs9Dpl9SQ
 sTVRh49NfSM66f3kRLJ5NO3D+8runPaN2shyWFeSJznuYzguSNHI9Tarv
 nVk95liadDC0gcOG3Hhv6ugIwY7U0J24AXSajPaOg2U6WBZC6hR4Vi/1e
 zHsR6yPrZ/PwiQiIhEO+dgqJRZR2HuKshbK6E92pNDrDGhgFE3B03XuGn
 JL6/NYlg4aPfi6NWxY6VLKL0oxsUh8/Bs3/8rTGLB1dqjy77umPZEiEke
 vIipo9qeCJRxEOD7rgraXzPIXkqm9WpaZAHOTGrKwfZSMLCBmbBWRnJ5Y
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MEuOtmbk
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 6a22f661a253cf945efc84f98f278b109998f3e1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 6a22f661a253cf945efc84f98f278b109998f3e1  ixgbe: prevent from unwanted interface name changes

elapsed time: 1022m

configs tested: 200
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250806    gcc-12.5.0
arc                   randconfig-002-20250806    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                            hisi_defconfig    gcc-15.1.0
arm                       multi_v4t_defconfig    clang-16
arm                       omap2plus_defconfig    gcc-15.1.0
arm                   randconfig-001-20250806    gcc-10.5.0
arm                   randconfig-002-20250806    gcc-13.4.0
arm                   randconfig-003-20250806    gcc-10.5.0
arm                   randconfig-004-20250806    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250806    clang-20
arm64                 randconfig-002-20250806    clang-22
arm64                 randconfig-003-20250806    gcc-9.5.0
arm64                 randconfig-004-20250806    clang-17
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250806    gcc-10.5.0
csky                  randconfig-002-20250806    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250806    clang-18
hexagon               randconfig-002-20250806    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250806    clang-20
i386        buildonly-randconfig-002-20250806    gcc-11
i386        buildonly-randconfig-003-20250806    clang-20
i386        buildonly-randconfig-004-20250806    gcc-12
i386        buildonly-randconfig-005-20250806    gcc-12
i386        buildonly-randconfig-006-20250806    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250806    clang-20
i386                  randconfig-002-20250806    clang-20
i386                  randconfig-003-20250806    clang-20
i386                  randconfig-004-20250806    clang-20
i386                  randconfig-005-20250806    clang-20
i386                  randconfig-006-20250806    clang-20
i386                  randconfig-007-20250806    clang-20
i386                  randconfig-011-20250806    gcc-12
i386                  randconfig-012-20250806    gcc-12
i386                  randconfig-013-20250806    gcc-12
i386                  randconfig-014-20250806    gcc-12
i386                  randconfig-015-20250806    gcc-12
i386                  randconfig-016-20250806    gcc-12
i386                  randconfig-017-20250806    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250806    clang-18
loongarch             randconfig-002-20250806    clang-22
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                         apollo_defconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                        m5407c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                   sb1250_swarm_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250806    gcc-10.5.0
nios2                 randconfig-002-20250806    gcc-11.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
openrisc                            defconfig    gcc-15.1.0
openrisc                    or1ksim_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250806    gcc-15.1.0
parisc                randconfig-002-20250806    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                         ps3_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250806    clang-22
powerpc               randconfig-002-20250806    gcc-14.3.0
powerpc               randconfig-003-20250806    clang-22
powerpc                     stx_gp3_defconfig    gcc-15.1.0
powerpc                 xes_mpc85xx_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250806    gcc-15.1.0
powerpc64             randconfig-002-20250806    gcc-10.5.0
powerpc64             randconfig-003-20250806    clang-18
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250806    clang-20
riscv                 randconfig-002-20250806    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-12
s390                  randconfig-001-20250806    gcc-14.3.0
s390                  randconfig-002-20250806    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250806    gcc-15.1.0
sh                    randconfig-002-20250806    gcc-10.5.0
sh                        sh7763rdp_defconfig    gcc-15.1.0
sh                            titan_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250806    gcc-11.5.0
sparc                 randconfig-002-20250806    gcc-13.4.0
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250806    gcc-8.5.0
sparc64               randconfig-002-20250806    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250806    clang-16
um                    randconfig-002-20250806    gcc-12
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250806    gcc-12
x86_64      buildonly-randconfig-002-20250806    clang-20
x86_64      buildonly-randconfig-003-20250806    gcc-12
x86_64      buildonly-randconfig-004-20250806    gcc-12
x86_64      buildonly-randconfig-005-20250806    clang-20
x86_64      buildonly-randconfig-006-20250806    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250806    clang-20
x86_64                randconfig-002-20250806    clang-20
x86_64                randconfig-003-20250806    clang-20
x86_64                randconfig-004-20250806    clang-20
x86_64                randconfig-005-20250806    clang-20
x86_64                randconfig-006-20250806    clang-20
x86_64                randconfig-007-20250806    clang-20
x86_64                randconfig-008-20250806    clang-20
x86_64                randconfig-071-20250806    gcc-12
x86_64                randconfig-072-20250806    gcc-12
x86_64                randconfig-073-20250806    gcc-12
x86_64                randconfig-074-20250806    gcc-12
x86_64                randconfig-075-20250806    gcc-12
x86_64                randconfig-076-20250806    gcc-12
x86_64                randconfig-077-20250806    gcc-12
x86_64                randconfig-078-20250806    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250806    gcc-13.4.0
xtensa                randconfig-002-20250806    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
