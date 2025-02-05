Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27351A298D1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 19:23:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9A3C416C2;
	Wed,  5 Feb 2025 18:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zwYtK5HDI-Bc; Wed,  5 Feb 2025 18:23:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A017A41268
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738779807;
	bh=LM4SM3CKPYhEtwUcx2pJTtBhIp6f4U/32hLiU2Hfb2A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0F10lp2elpdO3X8u8YUfbHo6E3Dt/+pTPGpeO5rQlQdKA5oeBuA4Zp9EzmdClA6WM
	 AQykpwP+Eh2H8e9ySXmZgNGN4ROOCi5T4FXnxOyX6UeC9AZJ54dLmGXvTYICk76on2
	 6yCfvDDFGhw88jA1GpSfP3J9htoNdDkWVKL8Vy0wzLDODuEtyYowTy4SPziRukMWh2
	 gvdiAgVLuM+3XY1Hh1JtBAS5rtx14OdjHM/6ltrA9SleRPpPGaeOR0RN/dpMjVRNH3
	 pciOC3uObmN7WhK32iv0DyXj7nI4yRYdBXyJGWGlkfkLVopPCQdIQIyBzUZOuHcd0b
	 rXybACSVTtImg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A017A41268;
	Wed,  5 Feb 2025 18:23:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4315B12A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2771F839E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8-GYqK4El8uX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 18:23:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 36F6A834F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36F6A834F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36F6A834F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:23:23 +0000 (UTC)
X-CSE-ConnectionGUID: b2etqU1DSrCNWcqYHor7ow==
X-CSE-MsgGUID: RKVBHUoOR9i1uU69ddPwWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43020373"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="43020373"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:23:23 -0800
X-CSE-ConnectionGUID: IhlaM+DlRraWHZ+C6aVX9g==
X-CSE-MsgGUID: a38jpF5tR9miGdT+ijjRcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115938315"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 05 Feb 2025 10:23:22 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tfk3U-000vuX-13
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Feb 2025 18:23:20 +0000
Date: Thu, 06 Feb 2025 02:22:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502060237.oNa9FYw8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738779804; x=1770315804;
 h=date:from:to:subject:message-id;
 bh=cK77w9I/6mUxKUo2tvtzw9VFDsuwjc/aFfePOcffWBw=;
 b=ArgdheKHc20klcNteRGMI+8xnN3pVK690WnUjei2FJ31tHc+Fzu4JlQe
 nXdo1ePlGxLJ1H5qBVVABZ4ceQFs0rt1p+m8v4zl9sSI8XP9zjYXGsT4C
 tfPm0oJPTOdyrc1ix1zOblwl9jQVZu8vJWbn7P6xWalbriF3NtdRmvehl
 K/06C+KjU7oQT/vyPiZGMpX9Z69O4HLU9BMg0+63a6aTH4Vlh0aRUohmX
 iCBhsJZvg4kRg26gTl9lPpEStqcrF+6DMEije61QS8WF/rtwVNYO5m4/0
 xdhs5WeHFnJaHUW79sND5j1Qd65sVNf8oIvyZvw7RM6McotAECRjB4GjF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ArgdheKH
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e60440b10420f91c9135df66ba2033324a7f3ff7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: e60440b10420f91c9135df66ba2033324a7f3ff7  ixgbe: Fix possible skb NULL pointer dereference

elapsed time: 1449m

configs tested: 99
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allnoconfig    gcc-14.2.0
alpha                           allyesconfig    gcc-14.2.0
arc                             allmodconfig    gcc-13.2.0
arc                              allnoconfig    gcc-13.2.0
arc                             allyesconfig    gcc-13.2.0
arc                  randconfig-001-20250205    gcc-13.2.0
arc                  randconfig-002-20250205    gcc-13.2.0
arc                   vdk_hs38_smp_defconfig    gcc-13.2.0
arm                             allmodconfig    gcc-14.2.0
arm                              allnoconfig    clang-17
arm                             allyesconfig    gcc-14.2.0
arm                           mmp2_defconfig    gcc-14.2.0
arm                  randconfig-001-20250205    gcc-14.2.0
arm                  randconfig-002-20250205    gcc-14.2.0
arm                  randconfig-003-20250205    clang-16
arm                  randconfig-004-20250205    gcc-14.2.0
arm                          u8500_defconfig    gcc-14.2.0
arm64                           allmodconfig    clang-18
arm64                            allnoconfig    gcc-14.2.0
arm64                randconfig-001-20250205    gcc-14.2.0
arm64                randconfig-002-20250205    gcc-14.2.0
arm64                randconfig-003-20250205    gcc-14.2.0
arm64                randconfig-004-20250205    gcc-14.2.0
csky                             allnoconfig    gcc-14.2.0
csky                 randconfig-001-20250205    gcc-14.2.0
csky                 randconfig-002-20250205    gcc-14.2.0
hexagon                         allmodconfig    clang-21
hexagon                          allnoconfig    clang-21
hexagon                         allyesconfig    clang-18
hexagon              randconfig-001-20250205    clang-17
hexagon              randconfig-002-20250205    clang-19
i386                            allmodconfig    gcc-12
i386                             allnoconfig    gcc-12
i386                            allyesconfig    gcc-12
i386       buildonly-randconfig-001-20250205    gcc-12
i386       buildonly-randconfig-002-20250205    gcc-12
i386       buildonly-randconfig-003-20250205    gcc-12
i386       buildonly-randconfig-004-20250205    gcc-11
i386       buildonly-randconfig-005-20250205    clang-19
i386       buildonly-randconfig-006-20250205    clang-19
i386                               defconfig    clang-19
loongarch                       alldefconfig    gcc-14.2.0
loongarch                        allnoconfig    gcc-14.2.0
loongarch            randconfig-001-20250205    gcc-14.2.0
loongarch            randconfig-002-20250205    gcc-14.2.0
nios2                randconfig-001-20250205    gcc-14.2.0
nios2                randconfig-002-20250205    gcc-14.2.0
openrisc                         allnoconfig    gcc-14.2.0
openrisc                        allyesconfig    gcc-14.2.0
parisc                          allmodconfig    gcc-14.2.0
parisc                           allnoconfig    gcc-14.2.0
parisc                          allyesconfig    gcc-14.2.0
parisc               randconfig-001-20250205    gcc-14.2.0
parisc               randconfig-002-20250205    gcc-14.2.0
powerpc                          allnoconfig    gcc-14.2.0
powerpc                         allyesconfig    clang-16
powerpc                     ppc44x_defconfig    clang-21
powerpc              randconfig-001-20250205    clang-16
powerpc              randconfig-002-20250205    gcc-14.2.0
powerpc              randconfig-003-20250205    gcc-14.2.0
powerpc                 storcenter_defconfig    gcc-14.2.0
powerpc64            randconfig-001-20250205    clang-18
powerpc64            randconfig-002-20250205    gcc-14.2.0
powerpc64            randconfig-003-20250205    clang-18
riscv                            allnoconfig    gcc-14.2.0
riscv                randconfig-001-20250205    gcc-14.2.0
riscv                randconfig-002-20250205    gcc-14.2.0
s390                            allmodconfig    clang-19
s390                             allnoconfig    clang-21
s390                            allyesconfig    gcc-14.2.0
s390                 randconfig-001-20250205    clang-17
s390                 randconfig-002-20250205    clang-19
sh                              allmodconfig    gcc-14.2.0
sh                              allyesconfig    gcc-14.2.0
sh                           migor_defconfig    gcc-14.2.0
sh                   randconfig-001-20250205    gcc-14.2.0
sh                   randconfig-002-20250205    gcc-14.2.0
sh                  rts7751r2dplus_defconfig    gcc-14.2.0
sparc                           allmodconfig    gcc-14.2.0
sparc                randconfig-001-20250205    gcc-14.2.0
sparc                randconfig-002-20250205    gcc-14.2.0
sparc64              randconfig-001-20250205    gcc-14.2.0
sparc64              randconfig-002-20250205    gcc-14.2.0
um                              allmodconfig    clang-21
um                               allnoconfig    clang-18
um                              allyesconfig    gcc-12
um                   randconfig-001-20250205    gcc-11
um                   randconfig-002-20250205    clang-21
x86_64                           allnoconfig    clang-19
x86_64                          allyesconfig    clang-19
x86_64     buildonly-randconfig-001-20250205    clang-19
x86_64     buildonly-randconfig-002-20250205    clang-19
x86_64     buildonly-randconfig-003-20250205    clang-19
x86_64     buildonly-randconfig-004-20250205    gcc-12
x86_64     buildonly-randconfig-005-20250205    clang-19
x86_64     buildonly-randconfig-006-20250205    clang-19
x86_64                             defconfig    gcc-11
xtensa               randconfig-001-20250205    gcc-14.2.0
xtensa               randconfig-002-20250205    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
