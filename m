Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A92E9B8CED3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 20:26:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B7C1410E3;
	Sat, 20 Sep 2025 18:26:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xo3PPbsdDu9K; Sat, 20 Sep 2025 18:26:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54D73410D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758392799;
	bh=qihrlGITrM4IbjQSzjSJHSlVzE/HcmAHd1AgB1NyTYs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yY+rqiJOFd5G187peqYjFe/Am4OA4onGplTIsTIonZW00yUjcOG6WIHQGyj1/jS/1
	 Ym5vpROgCXEFBQh45MG/Adk2egUCa+yo+XmdRKBo/O8k85wsI8Ueu5Ov2I97IAHQkg
	 RzqKtLWdiHSDfL/JsNG4lUl65hyhLULwEXlxkveyYo9yp1ZgwN1gcnDTmzomj1qz2x
	 6EkIO3src7wN5F8pjVBGWhmPtFmxsclBQbGSauMIQTITqiHvcDkS9C3yXWzA2Qepi9
	 ikLbsz1nJhnpVj9Jcb/QkK3w8FujT+JoYJkx9ZFDxI6dTUAL6297tV0DofWSo2h2Up
	 reofWfqQWjuxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54D73410D1;
	Sat, 20 Sep 2025 18:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F3231D7F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 18:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D70DB61626
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 18:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xIiZ6PZE1gTK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 18:26:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED10E61623
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED10E61623
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED10E61623
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 18:26:35 +0000 (UTC)
X-CSE-ConnectionGUID: 6VhS+KWqQuC7aum2g6WeUg==
X-CSE-MsgGUID: e9OE184gQ92CCCLtStO0Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60768920"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60768920"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 11:26:35 -0700
X-CSE-ConnectionGUID: jEcLlIxVQjC+b08i0YklzA==
X-CSE-MsgGUID: pAhmoqCpQsyotwImwSGWWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,281,1751266800"; d="scan'208";a="206861236"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 20 Sep 2025 11:26:35 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v02I4-0005fI-1G
 for intel-wired-lan@lists.osuosl.org; Sat, 20 Sep 2025 18:26:32 +0000
Date: Sun, 21 Sep 2025 02:25:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509210245.FFhvzV3U-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758392796; x=1789928796;
 h=date:from:to:subject:message-id;
 bh=ENCQLsQDKUnr0YH4k66zFZpsTTWuoCbszvkDqH0SUXA=;
 b=GEO6jDZSL7hxT+zPCwXphIQMmyda/gr0RIWm7V7GOpSufyOOZPJqDgQi
 81jxVbEDZ27cfuSIJlJtFxLSNM+z9HxQgEp1bWwTI7t4IldZts9xi6G0I
 gIHdMKsTlowtYXX1nY+kdSO4Glq1J+VgK97bltQwdzebZ0oBbyN80/VBn
 2qS2FD/yZferUJ0YYx7LkpSy6lEBmLoENqWjECglQlCE7fp3H0Mc6ZdYt
 X59dQBkjmPpWcJJF3KSRmYLf00sE8BjR+rWYqjAQOEjNy/Q3jfxHfOoyO
 xn0W3nOlkvjruNwxl1ZtIPkkS0DQN+/VWjprN0Zs4gNb2nHO8mFRtr89v
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GEO6jDZS
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 b99dd77076bd3fddac6f7f1cbfa081c38fde17f5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: b99dd77076bd3fddac6f7f1cbfa081c38fde17f5  i40e: improve VF MAC filters accounting

elapsed time: 1447m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250920    gcc-9.5.0
arc                   randconfig-002-20250920    gcc-9.5.0
arm                               allnoconfig    clang-22
arm                       aspeed_g4_defconfig    clang-22
arm                   randconfig-001-20250920    gcc-12.5.0
arm                   randconfig-002-20250920    clang-22
arm                   randconfig-003-20250920    clang-22
arm                   randconfig-004-20250920    clang-22
arm                        realview_defconfig    clang-16
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250920    clang-20
arm64                 randconfig-002-20250920    clang-22
arm64                 randconfig-003-20250920    clang-18
arm64                 randconfig-004-20250920    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250920    gcc-10.5.0
csky                  randconfig-002-20250920    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250920    clang-22
hexagon               randconfig-002-20250920    clang-22
i386        buildonly-randconfig-001-20250920    clang-20
i386        buildonly-randconfig-002-20250920    clang-20
i386        buildonly-randconfig-003-20250920    clang-20
i386        buildonly-randconfig-004-20250920    gcc-13
i386        buildonly-randconfig-005-20250920    clang-20
i386        buildonly-randconfig-006-20250920    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250920    clang-22
loongarch             randconfig-002-20250920    gcc-12.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                       bvme6000_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250920    gcc-9.5.0
nios2                 randconfig-002-20250920    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250920    gcc-8.5.0
parisc                randconfig-002-20250920    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                        fsp2_defconfig    gcc-15.1.0
powerpc                  mpc866_ads_defconfig    clang-22
powerpc               randconfig-001-20250920    clang-17
powerpc               randconfig-002-20250920    clang-22
powerpc               randconfig-003-20250920    clang-22
powerpc64             randconfig-001-20250920    clang-16
powerpc64             randconfig-002-20250920    gcc-10.5.0
powerpc64             randconfig-003-20250920    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250920    clang-22
riscv                 randconfig-002-20250920    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250920    clang-20
s390                  randconfig-002-20250920    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250920    gcc-14.3.0
sh                    randconfig-002-20250920    gcc-12.5.0
sh                      rts7751r2d1_defconfig    gcc-15.1.0
sh                            shmin_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250920    gcc-8.5.0
sparc                 randconfig-002-20250920    gcc-14.3.0
sparc64               randconfig-001-20250920    gcc-8.5.0
sparc64               randconfig-002-20250920    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250920    clang-22
um                    randconfig-002-20250920    clang-22
x86_64      buildonly-randconfig-001-20250920    clang-20
x86_64      buildonly-randconfig-002-20250920    clang-20
x86_64      buildonly-randconfig-003-20250920    clang-20
x86_64      buildonly-randconfig-004-20250920    clang-20
x86_64      buildonly-randconfig-005-20250920    gcc-14
x86_64      buildonly-randconfig-006-20250920    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250920    gcc-8.5.0
xtensa                randconfig-002-20250920    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
