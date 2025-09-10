Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E9AB51D7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 18:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 099BD83F52;
	Wed, 10 Sep 2025 16:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XJKDCRHEPHNw; Wed, 10 Sep 2025 16:23:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5003683EF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757521420;
	bh=UbxskQ7A/uNlHh6aXyoNUi3Pb1ExMdOddVEfmKcjScM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6LLOPxyML1Butj15W0F7TG0GZo4dZMzc/z05Sr7r4pMfMJCafNTNRXkF3ZBqX2+G2
	 f86zMr4iZMlZsylYDa5gBgd0l1sSJkQcpwcAwx7MxsqgkIX4BQVXR/awuE1vkhN/RN
	 +blgS+fvdXueTrplxjNqni4ngLXFEuvyZ0AWg3WboAS/WZRghS1COKscETQ9D3TWm/
	 5oM6G/gT23Wk+SVFQ3gWDuyKn01+khvtCBLCjUEzoqLVUNBjZ2jlcvXT729G/ZvhTo
	 kZ8yAAUh4vOx5r43Xy6hEeuJ59s1q+eokFqIT2B7NdrTVc1U0YTt9PytCFsOfkJ/U1
	 0p26jeUhKMzmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5003683EF2;
	Wed, 10 Sep 2025 16:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C274234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 16:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DBD640B5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 16:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-flFhFb1cEc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 16:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7354C40B53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7354C40B53
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7354C40B53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 16:23:38 +0000 (UTC)
X-CSE-ConnectionGUID: eQ7pE3i3SsKvRPcc93rgjQ==
X-CSE-MsgGUID: jJ30IwNzQ4W+Jigwjlyc+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59902162"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59902162"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 09:23:38 -0700
X-CSE-ConnectionGUID: ILA17WhkSV+9Dt+AzgGyxQ==
X-CSE-MsgGUID: f8cdP5KWTqi8xszAGYvyRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="173520981"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 10 Sep 2025 09:23:37 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwNba-00067T-0N
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Sep 2025 16:23:34 +0000
Date: Thu, 11 Sep 2025 00:23:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509110018.ae1agXCi-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757521419; x=1789057419;
 h=date:from:to:subject:message-id;
 bh=SAgW+WfzzlSb3OHoNeJg0DrkPNCEnVgTz5GKPYrDYUg=;
 b=nvTMV60o+kw4av+Pr7wKMfaOa+m7ZJU9yN6Iga8ydxQp69E9PDjRiRem
 yGaANI9cBpcswLFHWnG9ltZYO8QoJPWMTsk3GYpOmXUcETD7en7MTMQkW
 nn517kzq1AEIEepX4bmZtFo2qcbx6TUFee9iEw04MX3Ld5pQBH86QEpCU
 jH1Ys9nTH8LHBTQieKXtP4QIZYnFxqbZ/rSWAuihmlaUPd+i1nI0Uhk9a
 cqam1R7cUQNZYwD9+Zlx2nYAqCcqR2QrxOGQZe/5yBNxtmYjoQhSJsj0l
 uai+eCpKhbAunwjC/5QbAXCKEyLL3SPz+79X4cp2XHBJFPeOyuE829LpK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nvTMV60o
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cd5f11bfb67f9ce06a24e2c53c5151221dfe6152
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
branch HEAD: cd5f11bfb67f9ce06a24e2c53c5151221dfe6152  ixgbe: fix too early devlink_free() in ixgbe_remove()

elapsed time: 1470m

configs tested: 98
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250910    gcc-13.4.0
arc                   randconfig-002-20250910    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250910    gcc-8.5.0
arm                   randconfig-002-20250910    gcc-8.5.0
arm                   randconfig-003-20250910    clang-16
arm                   randconfig-004-20250910    gcc-8.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250910    clang-22
arm64                 randconfig-002-20250910    clang-22
arm64                 randconfig-003-20250910    gcc-9.5.0
arm64                 randconfig-004-20250910    gcc-13.4.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250910    gcc-12.5.0
csky                  randconfig-002-20250910    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250910    clang-22
hexagon               randconfig-002-20250910    clang-22
i386        buildonly-randconfig-001-20250910    gcc-14
i386        buildonly-randconfig-002-20250910    gcc-13
i386        buildonly-randconfig-003-20250910    clang-20
i386        buildonly-randconfig-004-20250910    clang-20
i386        buildonly-randconfig-005-20250910    gcc-14
i386        buildonly-randconfig-006-20250910    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250910    clang-18
loongarch             randconfig-002-20250910    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250910    gcc-11.5.0
nios2                 randconfig-002-20250910    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250910    gcc-10.5.0
parisc                randconfig-002-20250910    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250910    gcc-8.5.0
powerpc               randconfig-002-20250910    gcc-8.5.0
powerpc               randconfig-003-20250910    clang-22
powerpc64             randconfig-002-20250910    gcc-11.5.0
powerpc64             randconfig-003-20250910    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250910    clang-22
riscv                 randconfig-002-20250910    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250910    clang-22
s390                  randconfig-002-20250910    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250910    gcc-15.1.0
sh                    randconfig-002-20250910    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250910    gcc-8.5.0
sparc                 randconfig-002-20250910    gcc-8.5.0
sparc64               randconfig-001-20250910    gcc-8.5.0
sparc64               randconfig-002-20250910    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250910    clang-22
um                    randconfig-002-20250910    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20250910    gcc-14
x86_64      buildonly-randconfig-002-20250910    clang-20
x86_64      buildonly-randconfig-003-20250910    gcc-14
x86_64      buildonly-randconfig-004-20250910    clang-20
x86_64      buildonly-randconfig-005-20250910    gcc-14
x86_64      buildonly-randconfig-006-20250910    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250910    gcc-8.5.0
xtensa                randconfig-002-20250910    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
