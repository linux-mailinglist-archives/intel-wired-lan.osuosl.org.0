Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF2AAE0E0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 21:31:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69CDE60E11;
	Thu, 19 Jun 2025 19:31:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T2QLVhEpL6xX; Thu, 19 Jun 2025 19:31:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 049F060E20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750361501;
	bh=60Th1yPMMRsFYK1eXiIXIc8KNnWZ0nEmQeKFZeG+hPs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=stECV/Qp51pZDiR2KzoqqywuQhNHeokQv2Di7kbUiJxFhneNDSAWHt1eBhndMVFlu
	 Cf88lwHYoDFAoeqB2oT5Q17J/ZtCdlICyUZbKDs2btdlVpCrLILggqAXSweCorNVF4
	 7sAIhY3y2rJHGH5z3HCGv3K1YCpwylP7xmUCtvX1T5M+fUtM+0lM2y1AjB6/Eym/66
	 316U+9kVxHznpZfJyh29Fht+Y0tg4VvNeM7GDf/t06ZL8qLX+BZ8gObonlGwiK2pSn
	 rKblKTkcMaV9cnk8Z/XF7jhLnL8WNjGBIMCV6UFWstAqDNYz0sCvOfbjuRuMksnDuq
	 QkOwd+9f4C0Vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 049F060E20;
	Thu, 19 Jun 2025 19:31:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 85AE4E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 19:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 751CA403A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 19:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VE6Zjz7P3B9N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 19:31:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 41A024009D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41A024009D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41A024009D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 19:31:36 +0000 (UTC)
X-CSE-ConnectionGUID: jl/+TvhLSEGYFd+H2GjXEA==
X-CSE-MsgGUID: HSKegHNGTK+dFqv80dz8CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="75152153"
X-IronPort-AV: E=Sophos;i="6.16,249,1744095600"; d="scan'208";a="75152153"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 12:31:37 -0700
X-CSE-ConnectionGUID: ydh39jsOSoeTkri1p2KnVQ==
X-CSE-MsgGUID: 8gcde2fjRe21mX3GCbyvtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,249,1744095600"; d="scan'208";a="154730897"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 19 Jun 2025 12:31:35 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uSKyz-000L3k-1f
 for intel-wired-lan@lists.osuosl.org; Thu, 19 Jun 2025 19:31:33 +0000
Date: Fri, 20 Jun 2025 03:30:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506200334.k4J6evVC-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750361498; x=1781897498;
 h=date:from:to:subject:message-id;
 bh=7yvm+9WkZnl/YKyerVkzrK0nAyrfymg9Gjij2sSFQe0=;
 b=XEpn6TOqjP5t9wN6i4F8t/qakrwrlueV3GU3yZRyQEUERQBAx0USScWW
 6TPgIhY2AftwCcuKZNj27+HWZk3UVZHwaQ0lKWBcGMYrZqQ5S+U1HWsn3
 3rdylBzWx93j6UKSZQ+1HgqK6SOMlIgL6MBTLhZHIb5SA/WKWYSHvyIXK
 B1dLaXA1UWiGWoi2IBQvRacKhpsc/cyRCfMoNgdVPEcPoLurwChU5SJ6g
 uAHAQGqb6OeZEKl+1DRGihBlpfgc50doW/RWbZEqwqnw5PSAkLpOVn6b7
 geRrwPfOT65CrXEP/nYOJ1DyFoQIgyzGZ7g/zpor5dSPzNqqvhAfn1Q66
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XEpn6TOq
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 f82727adcf2992822e12198792af450a76ebd5ef
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: f82727adcf2992822e12198792af450a76ebd5ef  tipc: fix null-ptr-deref when acquiring remote ip of ethernet bearer

elapsed time: 1290m

configs tested: 126
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                          axs101_defconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20250619    gcc-15.1.0
arc                   randconfig-002-20250619    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                         axm55xx_defconfig    clang-21
arm                       imx_v6_v7_defconfig    clang-16
arm                          ixp4xx_defconfig    gcc-15.1.0
arm                            mps2_defconfig    clang-21
arm                        multi_v5_defconfig    gcc-15.1.0
arm                   randconfig-001-20250619    clang-21
arm                   randconfig-002-20250619    gcc-8.5.0
arm                   randconfig-003-20250619    gcc-8.5.0
arm                   randconfig-004-20250619    gcc-10.5.0
arm                        shmobile_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250619    gcc-8.5.0
arm64                 randconfig-002-20250619    gcc-9.5.0
arm64                 randconfig-003-20250619    gcc-10.5.0
arm64                 randconfig-004-20250619    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250619    gcc-11.5.0
csky                  randconfig-002-20250619    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250619    clang-21
hexagon               randconfig-002-20250619    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250619    gcc-12
i386        buildonly-randconfig-002-20250619    gcc-12
i386        buildonly-randconfig-003-20250619    clang-20
i386        buildonly-randconfig-004-20250619    clang-20
i386        buildonly-randconfig-005-20250619    clang-20
i386        buildonly-randconfig-006-20250619    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250619    gcc-15.1.0
loongarch             randconfig-002-20250619    gcc-15.1.0
m68k                             alldefconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          atari_defconfig    gcc-15.1.0
m68k                           virt_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                      bmips_stb_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250619    gcc-8.5.0
nios2                 randconfig-002-20250619    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250619    gcc-11.5.0
parisc                randconfig-002-20250619    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                      cm5200_defconfig    clang-21
powerpc                     mpc5200_defconfig    clang-21
powerpc               mpc834x_itxgp_defconfig    clang-21
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250619    gcc-9.3.0
powerpc               randconfig-002-20250619    clang-21
powerpc               randconfig-003-20250619    gcc-10.5.0
powerpc                     stx_gp3_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250619    gcc-11.5.0
powerpc64             randconfig-002-20250619    clang-21
powerpc64             randconfig-003-20250619    gcc-10.5.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250619    gcc-11.5.0
riscv                 randconfig-002-20250619    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250619    clang-19
s390                  randconfig-002-20250619    gcc-13.2.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         ecovec24_defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                    randconfig-001-20250619    gcc-9.3.0
sh                    randconfig-002-20250619    gcc-9.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250619    gcc-14.3.0
sparc                 randconfig-002-20250619    gcc-10.3.0
sparc64               randconfig-001-20250619    gcc-13.3.0
sparc64               randconfig-002-20250619    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250619    clang-19
um                    randconfig-002-20250619    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250619    clang-20
x86_64      buildonly-randconfig-002-20250619    gcc-12
x86_64      buildonly-randconfig-003-20250619    clang-20
x86_64      buildonly-randconfig-004-20250619    gcc-12
x86_64      buildonly-randconfig-005-20250619    clang-20
x86_64      buildonly-randconfig-006-20250619    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250619    gcc-9.3.0
xtensa                randconfig-002-20250619    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
