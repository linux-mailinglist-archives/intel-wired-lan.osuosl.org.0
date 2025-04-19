Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 185BBA94182
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Apr 2025 06:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35DD6400FB;
	Sat, 19 Apr 2025 04:06:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8GGAMOKRRuf9; Sat, 19 Apr 2025 04:06:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 368DA400FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745035611;
	bh=htvNZBIiElr4zIyo/3YLDDXQxBjsI6VSZPZ1boDpQ6A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bxkljx+KyWKn/KL6FJoAp42nmOiT/95nosymEUwSKa4vEwVBd4/+5kAW1CI0+CxP3
	 EVhtq+0rVOyubgQk7mAAXdyfHAP/abQVzzijH0NdG6Hxc+kAZyF6QrKOc+hvc/e8mx
	 HzZiZWKQRItaB34jHVe5OEpUuW+iMj9m6FKRFOPpuk8bInkY0YbIhAPRUSByxcq2Jb
	 Zj54/ceXQgc1sAomSS5lQkkoKIzfkFYsycBrSFoSrf/B86VVxqthMFzGL0A9gA8Gk5
	 kdfrKEjjMHZUWYQPbyGrkPhX3v0GgjolxoK1QH4+PIPL+1tV0JpY7PXiJK307UHBIU
	 Bk1sQIeAs7KcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 368DA400FF;
	Sat, 19 Apr 2025 04:06:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D860E22F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Apr 2025 04:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C93AA400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Apr 2025 04:06:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BvhbHlTOaQpq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Apr 2025 04:06:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E34B6400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E34B6400F1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E34B6400F1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Apr 2025 04:06:48 +0000 (UTC)
X-CSE-ConnectionGUID: tJ/D8MzyQNuw52a5iFui6w==
X-CSE-MsgGUID: u+4zdKzWSfKgcyOtwSYZlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="46790458"
X-IronPort-AV: E=Sophos;i="6.15,223,1739865600"; d="scan'208";a="46790458"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 21:06:48 -0700
X-CSE-ConnectionGUID: 2Z69/NciQb6gupNn/j1jaQ==
X-CSE-MsgGUID: 6PJXgJGCQpGYFxPBoIOw0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,223,1739865600"; d="scan'208";a="136247763"
Received: from lkp-server01.sh.intel.com (HELO 61e10e65ea0f) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 18 Apr 2025 21:06:47 -0700
Received: from kbuild by 61e10e65ea0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u5zTY-0003aj-2G
 for intel-wired-lan@lists.osuosl.org; Sat, 19 Apr 2025 04:06:44 +0000
Date: Sat, 19 Apr 2025 12:06:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504191232.4TrGDerp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745035609; x=1776571609;
 h=date:from:to:subject:message-id;
 bh=BBqO8WaPgxsACz3SxZhWKFrjyvz6khlhGoaxR4H5nqg=;
 b=DMfwXbA3ThV/V/AB4vFp7NB6uL362zGF0jPnabKb+yI95chpWom9mnYQ
 M9OMstr2VWkUVUYkZy/fHaKsL9b4bSBqjooRw73i6YOkXAESkl8fe2u+I
 S6uVhxko+Gi4G6vyufR/Nau8FnuApJwZ8p1IXzxL989zzMtwVJC8N9eSt
 hlJziPRvZdzFx8hyjdNiy+spKRUrXqjmrstT0V/or6GIFAy2xdjd4TAXQ
 OD6YdpYOMFfB7m9xUaz81lOilPm2ElUfTU/3BZj4+bgO4vDpTi3x36KPU
 FnTDgtF1CQvdXD5i7l6iY2FlF3xNDZ9dyJgFFP6QKsF2ilO/siwDXgQEa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DMfwXbA3
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 750d0ac001e85b754404178ee8ce01cbc76a03be
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
branch HEAD: 750d0ac001e85b754404178ee8ce01cbc76a03be  MAINTAINERS: Add entry for Socfpga DWMAC ethernet glue driver

elapsed time: 1503m

configs tested: 99
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250419    gcc-14.2.0
arc                   randconfig-002-20250419    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250419    gcc-6.5.0
arm                   randconfig-002-20250419    gcc-7.5.0
arm                   randconfig-003-20250419    clang-18
arm                   randconfig-004-20250419    gcc-7.5.0
arm64                            allmodconfig    clang-19
arm64                 randconfig-001-20250419    gcc-7.5.0
arm64                 randconfig-002-20250419    gcc-9.5.0
arm64                 randconfig-003-20250419    gcc-5.5.0
arm64                 randconfig-004-20250419    clang-21
csky                  randconfig-001-20250419    gcc-11.5.0
csky                  randconfig-002-20250419    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250419    clang-21
hexagon               randconfig-002-20250419    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250419    gcc-11
i386        buildonly-randconfig-002-20250419    gcc-12
i386        buildonly-randconfig-003-20250419    clang-20
i386        buildonly-randconfig-004-20250419    clang-20
i386        buildonly-randconfig-005-20250419    clang-20
i386        buildonly-randconfig-006-20250419    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250419    gcc-14.2.0
loongarch             randconfig-002-20250419    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                        m5307c3_defconfig    gcc-14.2.0
microblaze                       alldefconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250419    gcc-7.5.0
nios2                 randconfig-002-20250419    gcc-11.5.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250419    gcc-10.5.0
parisc                randconfig-002-20250419    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                         ps3_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250419    gcc-5.5.0
powerpc               randconfig-002-20250419    gcc-9.3.0
powerpc               randconfig-003-20250419    gcc-5.5.0
powerpc64             randconfig-001-20250419    gcc-5.5.0
powerpc64             randconfig-002-20250419    gcc-10.5.0
powerpc64             randconfig-003-20250419    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250419    gcc-14.2.0
riscv                 randconfig-002-20250419    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250419    clang-21
s390                  randconfig-002-20250419    gcc-7.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250419    gcc-5.5.0
sh                    randconfig-002-20250419    gcc-11.5.0
sh                             sh03_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250419    gcc-12.4.0
sparc                 randconfig-002-20250419    gcc-8.5.0
sparc64               randconfig-001-20250419    gcc-8.5.0
sparc64               randconfig-002-20250419    gcc-10.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250419    clang-19
um                    randconfig-002-20250419    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250419    gcc-12
x86_64      buildonly-randconfig-002-20250419    gcc-11
x86_64      buildonly-randconfig-003-20250419    gcc-12
x86_64      buildonly-randconfig-004-20250419    gcc-11
x86_64      buildonly-randconfig-005-20250419    gcc-12
x86_64      buildonly-randconfig-006-20250419    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-14.2.0
xtensa                  nommu_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250419    gcc-10.5.0
xtensa                randconfig-002-20250419    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
