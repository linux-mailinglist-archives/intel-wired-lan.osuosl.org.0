Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B829559CE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Aug 2024 23:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8079E60608;
	Sat, 17 Aug 2024 21:14:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLkME9E6MZoC; Sat, 17 Aug 2024 21:14:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4944D605F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723929298;
	bh=CspD0NZvCSlaj+3NhU2Z9Ch7HK3kzvHfs1J8xdjx75k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aslQoBQIiIhMhu7q2pIY+3+R2pLzBYQEpnSeWatEIIQOcNcfDJ18YY7XSgFvHlu7s
	 UREEcdt0Fd+bCDuONh+F8BcOC/2DHEwyoNNiwnKl05Lh6KeXLaeizP0apVllUG3rVF
	 ZkvZSyfKO0Ohj74bXfTjyNSuNvMsBRBcfZJTJexyIF99XfA3fkBH9muUxeqWssheCt
	 CbrxLZ8HD7jGYTQr2m9IYUHTKX2m3S9xwtiD3Mxd2tCwZAOVK2seeTsv/N36Uzc7BZ
	 +goIpTYUVEchv4RsexAjtWInv3jIMSDZLgHOEhMpFhgjooLGUDXafk4K7z5L3rsZ+q
	 7e0SNw/rXL66g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4944D605F5;
	Sat, 17 Aug 2024 21:14:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CC4C1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2024 21:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18BBC4035F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2024 21:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_FXnmndXurc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Aug 2024 21:14:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 340BE4034C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 340BE4034C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 340BE4034C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2024 21:14:54 +0000 (UTC)
X-CSE-ConnectionGUID: mOpQE6ECSZifGhL7sjKXHg==
X-CSE-MsgGUID: 1GYVReZ/Qi6pnMaSFTEjgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11167"; a="22348171"
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="22348171"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2024 14:14:54 -0700
X-CSE-ConnectionGUID: xGTY0qB+S22vUkl0t5B/Dg==
X-CSE-MsgGUID: Mrla1VznSA+mKLwcTEHHZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="64165119"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 17 Aug 2024 14:14:53 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sfQl8-0007op-24
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Aug 2024 21:14:50 +0000
Date: Sun, 18 Aug 2024 05:14:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408180516.zLP1B3Ap-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723929295; x=1755465295;
 h=date:from:to:subject:message-id;
 bh=qJGzdDpvLSL1qIYq97MQEtswoc/el5cFx2o6qe0ulTs=;
 b=Zl19T34YMsMTqa/CM9O7GtqJRsBwNV0JJg05whl2IoQyQEht0FqOsR37
 /uSL/BF/lXmuBCWenw+dVgVos83jwUTO3qbnpWrAp4LhjejAaN+woE3nv
 ssjsEQZm+GUKyjVHlqZsUDdq3MTkU7qMmiFFeA2zj6hOHVkQvvc84JM6U
 38NdQaA8yrRwOUD0i8M3vQGIpKwQJMg5RcJedXcPc9U5830Z4XPngoroP
 pFqNJq1WxqkSt2DX/+QI/6yNh+biwzeHXiw1PRwCkhsXn8dx2MTMF1wc0
 m4lueEGbT3Lo9+Jtn0gSzogP/IBerKLrTHoNH0SpYPZpFcMEkqKYRBDt9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zl19T34Y
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b99ed396eddf7f9c31800ab129f6482ceb77e128
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
branch HEAD: b99ed396eddf7f9c31800ab129f6482ceb77e128  ice: fix truesize operations for PAGE_SIZE >= 8192

elapsed time: 1454m

configs tested: 113
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240817   gcc-13.2.0
arc                   randconfig-002-20240817   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240817   gcc-14.1.0
arm                   randconfig-002-20240817   clang-20
arm                   randconfig-003-20240817   clang-20
arm                   randconfig-004-20240817   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240817   clang-20
arm64                 randconfig-002-20240817   gcc-14.1.0
arm64                 randconfig-003-20240817   gcc-14.1.0
arm64                 randconfig-004-20240817   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240817   gcc-14.1.0
csky                  randconfig-002-20240817   gcc-14.1.0
hexagon                           allnoconfig   clang-20
hexagon               randconfig-001-20240817   clang-20
hexagon               randconfig-002-20240817   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240817   gcc-12
i386         buildonly-randconfig-002-20240817   gcc-12
i386         buildonly-randconfig-003-20240817   clang-18
i386         buildonly-randconfig-004-20240817   gcc-12
i386         buildonly-randconfig-005-20240817   clang-18
i386         buildonly-randconfig-006-20240817   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240817   gcc-12
i386                  randconfig-002-20240817   gcc-12
i386                  randconfig-003-20240817   gcc-12
i386                  randconfig-004-20240817   clang-18
i386                  randconfig-005-20240817   gcc-12
i386                  randconfig-006-20240817   clang-18
i386                  randconfig-011-20240817   gcc-12
i386                  randconfig-012-20240817   clang-18
i386                  randconfig-013-20240817   gcc-12
i386                  randconfig-014-20240817   gcc-12
i386                  randconfig-015-20240817   gcc-12
i386                  randconfig-016-20240817   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240817   gcc-14.1.0
loongarch             randconfig-002-20240817   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240817   gcc-14.1.0
nios2                 randconfig-002-20240817   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                randconfig-001-20240817   gcc-14.1.0
parisc                randconfig-002-20240817   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc               randconfig-001-20240817   clang-14
powerpc               randconfig-002-20240817   gcc-14.1.0
powerpc64             randconfig-001-20240817   gcc-14.1.0
powerpc64             randconfig-002-20240817   clang-16
riscv                             allnoconfig   gcc-14.1.0
riscv                 randconfig-001-20240817   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                  randconfig-001-20240817   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
um                                allnoconfig   clang-17
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240817   gcc-12
x86_64       buildonly-randconfig-002-20240817   gcc-12
x86_64       buildonly-randconfig-003-20240817   gcc-11
x86_64       buildonly-randconfig-004-20240817   gcc-12
x86_64       buildonly-randconfig-005-20240817   gcc-12
x86_64       buildonly-randconfig-006-20240817   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240817   clang-18
x86_64                randconfig-002-20240817   clang-18
x86_64                randconfig-003-20240817   gcc-12
x86_64                randconfig-004-20240817   gcc-12
x86_64                randconfig-005-20240817   clang-18
x86_64                randconfig-006-20240817   clang-18
x86_64                randconfig-011-20240817   clang-18
x86_64                randconfig-012-20240817   clang-18
x86_64                randconfig-013-20240817   gcc-12
x86_64                randconfig-014-20240817   gcc-12
x86_64                randconfig-015-20240817   gcc-12
x86_64                randconfig-016-20240817   gcc-12
x86_64                randconfig-071-20240817   gcc-12
x86_64                randconfig-072-20240817   gcc-12
x86_64                randconfig-073-20240817   clang-18
x86_64                randconfig-074-20240817   gcc-12
x86_64                randconfig-075-20240817   gcc-12
x86_64                randconfig-076-20240817   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
