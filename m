Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D23A7572C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Mar 2025 17:27:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83CE640C6D;
	Sat, 29 Mar 2025 16:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id owDbtUoAgESw; Sat, 29 Mar 2025 16:27:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5D9940BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743265639;
	bh=61mnL/C+nGT2dnTb9cakfCzDX+dG4ouSmsZVP8LBYFY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Jlz7Ot3yY6NMRTNeKdhoDK+nktEkLSawMs2LjkoJ/79x78wFUD/z9uskd60YA1GID
	 9AcEg78W4a3p1Zf94B5VYFM5HCopdVyvwifrcmKiTkXHJ11eMCugiPAcgf9qG+FWEg
	 XVIvr56HWHR/polXbdot8/66RioG8dwvNmZs3J+S15xBKfip5wF2mst/f/iMJGS4Ix
	 xpn9Km52NLrxCOd1PyKCoqlgXIELp12SltozrhGrUbGYyXzyL6BlvQf8XkugMoeg7r
	 inhXT00KaeX8IaFRIAPuPFrq06FcLqXodWsK4zbcCTAkwUX5wHtq5kc8CSjVddCFVt
	 VfBgFgBFekTsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5D9940BE0;
	Sat, 29 Mar 2025 16:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 97CE219C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Mar 2025 16:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AC8782CE4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Mar 2025 16:27:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D5ZNiylQb5ql for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Mar 2025 16:27:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6543C84034
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6543C84034
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6543C84034
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Mar 2025 16:27:16 +0000 (UTC)
X-CSE-ConnectionGUID: qBW669T2RRuJ/UTAqsGb7Q==
X-CSE-MsgGUID: GGjqCCfJRVOBwNwH37j7ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11388"; a="44522527"
X-IronPort-AV: E=Sophos;i="6.14,286,1736841600"; d="scan'208";a="44522527"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2025 09:27:16 -0700
X-CSE-ConnectionGUID: W2U1PosSQmaJEWSM6584Hg==
X-CSE-MsgGUID: xxmQKMWeSySfwntruRu0iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,286,1736841600"; d="scan'208";a="162959627"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 29 Mar 2025 09:27:14 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tyZ1c-0008Dz-16
 for intel-wired-lan@lists.osuosl.org; Sat, 29 Mar 2025 16:27:12 +0000
Date: Sun, 30 Mar 2025 00:26:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503300025.k8l38LX2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743265637; x=1774801637;
 h=date:from:to:subject:message-id;
 bh=BvpYtj0oCH3LusVFtiiyQzWU/iiIIldO8Mpk92caS0k=;
 b=Tkzm9cMkH2Evo28xxyXJFZjZouFNWpVHibwStEwyKBEfsUKCYrQkINWL
 FCwzq3n1T5j/0NPPTbTm1q/J/GGFGsmZy/SvE7NqufhQE/lDiMC4/rLvD
 a8brjh6X3CCgO6V598cjpzWqL4k60e7YP0YeBYw4u8aIdGNknB42UFK0T
 /P2pFkRtcg6kjb667/zCBeoJHZ7L9g+CXybcI9VaTMXWD8Vk3ZoZ/O54+
 iGXo88u/0zs65D8MFAPV4WROpuOznTJqLZiALLzDK5CoBQncqKHFjenhn
 p0Wp7b8FUaerKrNyNq31cdbyPufUxb2Wb3k505589PoxGAxBPjm9uRuFC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tkzm9cMk
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5a354b7a1668f76e7d0737cebd9064b6095e0712
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 5a354b7a1668f76e7d0737cebd9064b6095e0712  ice: Check VF VSI Pointer Value in ice_vc_add_fdir_fltr()

elapsed time: 1447m

configs tested: 129
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                   randconfig-001-20250329    gcc-14.2.0
arc                   randconfig-002-20250329    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                         lpc32xx_defconfig    clang-17
arm                            mps2_defconfig    clang-21
arm                        neponset_defconfig    gcc-14.2.0
arm                   randconfig-001-20250329    gcc-9.3.0
arm                   randconfig-002-20250329    clang-17
arm                   randconfig-003-20250329    clang-21
arm                   randconfig-004-20250329    clang-21
arm                           sunxi_defconfig    gcc-14.2.0
arm                        vexpress_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250329    gcc-7.5.0
arm64                 randconfig-002-20250329    gcc-9.5.0
arm64                 randconfig-003-20250329    gcc-5.5.0
arm64                 randconfig-004-20250329    gcc-5.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250329    gcc-11.5.0
csky                  randconfig-002-20250329    gcc-13.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250329    clang-21
hexagon               randconfig-002-20250329    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250329    gcc-12
i386        buildonly-randconfig-002-20250329    gcc-12
i386        buildonly-randconfig-003-20250329    clang-20
i386        buildonly-randconfig-004-20250329    gcc-11
i386        buildonly-randconfig-005-20250329    gcc-12
i386        buildonly-randconfig-006-20250329    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                 loongson3_defconfig    gcc-14.2.0
loongarch             randconfig-001-20250329    gcc-14.2.0
loongarch             randconfig-002-20250329    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    clang-21
mips                           gcw0_defconfig    clang-14
mips                        vocore2_defconfig    clang-15
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250329    gcc-7.5.0
nios2                 randconfig-002-20250329    gcc-7.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250329    gcc-6.5.0
parisc                randconfig-002-20250329    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                     ksi8560_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250329    gcc-5.5.0
powerpc               randconfig-002-20250329    gcc-5.5.0
powerpc               randconfig-003-20250329    gcc-9.3.0
powerpc                     tqm8541_defconfig    clang-21
powerpc64             randconfig-001-20250329    gcc-9.3.0
powerpc64             randconfig-002-20250329    gcc-9.3.0
powerpc64             randconfig-003-20250329    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250329    gcc-14.2.0
riscv                 randconfig-002-20250329    gcc-14.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-15
s390                  randconfig-001-20250329    gcc-8.5.0
s390                  randconfig-002-20250329    gcc-6.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                    randconfig-001-20250329    gcc-5.5.0
sh                    randconfig-002-20250329    gcc-11.5.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250329    gcc-8.5.0
sparc                 randconfig-002-20250329    gcc-8.5.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250329    gcc-6.5.0
sparc64               randconfig-002-20250329    gcc-14.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250329    gcc-12
um                    randconfig-002-20250329    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250329    clang-20
x86_64      buildonly-randconfig-002-20250329    gcc-12
x86_64      buildonly-randconfig-003-20250329    gcc-12
x86_64      buildonly-randconfig-004-20250329    clang-20
x86_64      buildonly-randconfig-005-20250329    clang-20
x86_64      buildonly-randconfig-006-20250329    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250329    gcc-10.5.0
xtensa                randconfig-002-20250329    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
