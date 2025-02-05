Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE45A298D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 19:24:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8F7883AD3;
	Wed,  5 Feb 2025 18:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42Z5Ez66XH9I; Wed,  5 Feb 2025 18:24:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5525831F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738779849;
	bh=OcFRxt2nng3/xvInRoAKh6+7KeVIqu4sRFyImoHSvAo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rM/yrPVMmtL+ogrpRoDIibeQipFi4l+lWCmuy0PELWavZkalKdbT0tiGCfgdoObhR
	 g027m5sCU0j1qHXzWbMRq85FxEuIxKJ+oqvNB1b3gBzyHhsXgDY13B/Pq5DTkkYgGf
	 9tjs32Q/OXw5M4E2LcCBGpM7B++DM8HsmQ97OoGatXyEotihPt/S1wT6EYGniQHLjl
	 rwrxYioLvv3/xpagSm+M7t29Zhj+l8r7wUqdvB9cI30mLWKRwPVbJFg9rWZDSH1ygL
	 eD5W7b1T18mobPMZRcSGLkYAhXD/bs9oXOxY95ZuPBlsx2oEmjlPgNkZ44C7HX3jHY
	 h3r7a3laB+yog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5525831F1;
	Wed,  5 Feb 2025 18:24:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BECF7CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF701839E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:24:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYJpgDmp0JZ0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 18:24:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A4B15834F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4B15834F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4B15834F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:24:06 +0000 (UTC)
X-CSE-ConnectionGUID: IalfZWfKTFuicyTO5cKqyQ==
X-CSE-MsgGUID: O35S1LbfRiK9ysZ3kBqIAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39059013"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="39059013"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:23:24 -0800
X-CSE-ConnectionGUID: ajKmfoyrQTOz7PUHulXx8A==
X-CSE-MsgGUID: +FmJvuJyT4yDVyfefTxMnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134224694"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 05 Feb 2025 10:23:22 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tfk3U-000vuV-0z
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Feb 2025 18:23:20 +0000
Date: Thu, 06 Feb 2025 02:22:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502060250.5Fin0m4o-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738779847; x=1770315847;
 h=date:from:to:subject:message-id;
 bh=qhakq93sBNjCsuHdsfyBeR4HqPt8Tjk0ZAN8BqTTtu0=;
 b=gx0Z6P6WeuSMRdW4GrEhIhNcqjVQLdP/iiVRveSGvfZ8J88DmsHEHqRT
 TaguJ/RYzurc+k/aigYltYjL1U9uxj/4+I/znjfEDaP/MqqgC5kgmNIyZ
 01c24SdqGKHf4NzpvtFUgb3rv0o43ksLefSNWCQT1EB/+Lh2YUiOa3CsS
 tWvsC5QRQ9lyL9XDHLj3dBlvLyWOok8L7kIUrD21zljqOdMRTwrqSAmdv
 CtDl72Pn0QnabrSwVwXr+93ULG4QZLUfXPE2rLXG/amLmRo2k/JFyX2KW
 0zDTbi7OlXPGoTvSuzlCdn/4h2AGwP6y995XQlbBD76iKtmcK/rvcJTa5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gx0Z6P6W
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d0dd38db9e99c281c8a0c92afffbd203b0b0b32e
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
branch HEAD: d0dd38db9e99c281c8a0c92afffbd203b0b0b32e  ixgbe: Fix possible skb NULL pointer dereference

elapsed time: 1449m

configs tested: 87
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
arm                             allmodconfig    gcc-14.2.0
arm                              allnoconfig    clang-17
arm                             allyesconfig    gcc-14.2.0
arm                  randconfig-001-20250205    gcc-14.2.0
arm                  randconfig-002-20250205    gcc-14.2.0
arm                  randconfig-003-20250205    clang-16
arm                  randconfig-004-20250205    gcc-14.2.0
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
loongarch                        allnoconfig    gcc-14.2.0
loongarch            randconfig-001-20250205    gcc-14.2.0
loongarch            randconfig-002-20250205    gcc-14.2.0
nios2                randconfig-001-20250205    gcc-14.2.0
nios2                randconfig-002-20250205    gcc-14.2.0
openrisc                         allnoconfig    gcc-14.2.0
parisc                           allnoconfig    gcc-14.2.0
parisc               randconfig-001-20250205    gcc-14.2.0
parisc               randconfig-002-20250205    gcc-14.2.0
powerpc                          allnoconfig    gcc-14.2.0
powerpc              randconfig-001-20250205    clang-16
powerpc              randconfig-002-20250205    gcc-14.2.0
powerpc              randconfig-003-20250205    gcc-14.2.0
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
sh                   randconfig-001-20250205    gcc-14.2.0
sh                   randconfig-002-20250205    gcc-14.2.0
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
