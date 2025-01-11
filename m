Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 458ACA0A4EE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jan 2025 18:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D493340740;
	Sat, 11 Jan 2025 17:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id spR06i64K__D; Sat, 11 Jan 2025 17:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85B3340732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736615122;
	bh=mCbJ9/uakVgNDYRRMmwgMo4e1OWV+gUh6c5OppUz41k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jJ4A0DvE5IOs83ArZNWk7ba97QndIYVRx/z2XU1oPbgx9oX30wvyf3timXLggZj0f
	 HuGdqBak/ryckXfr6Zy+jwDN4UnN9gdvpuWr3/iHFC2TreG5HljV3ftdn+sie5IzwX
	 FJ59qDDsuLFq+hbXzHEcneTmMo7aqdcBMBmwbqH5CbSES52yRQtw4nuNDEjxIuDZch
	 CTwfxSCPeIgu1TY3xjsbmg3UH7paQOVNQxW2Usbk8pyeLHmZDy+A9bUyknx+1TCbcZ
	 X9lxJFOfvX1fZLszkw906T5u4BGfu3thxLJeCPGO9q3ONPgih4P39ulUkWE7YDt3iA
	 bZNbivajh8TBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85B3340732;
	Sat, 11 Jan 2025 17:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B30E1950
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 17:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F1EA8108B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 17:05:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id diT2yJVUcovk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jan 2025 17:05:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 470E58108E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 470E58108E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 470E58108E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 17:05:18 +0000 (UTC)
X-CSE-ConnectionGUID: 5AiG7iRVSRe0A2xU6899DA==
X-CSE-MsgGUID: WKpyU0eWRSSSBIySDgsutA==
X-IronPort-AV: E=McAfee;i="6700,10204,11312"; a="48310061"
X-IronPort-AV: E=Sophos;i="6.12,307,1728975600"; d="scan'208";a="48310061"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2025 09:05:18 -0800
X-CSE-ConnectionGUID: MDyzLy/ZQCebXbkhYvhyMA==
X-CSE-MsgGUID: LcZ3L2/tT1yoMCU/WfaTiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,307,1728975600"; d="scan'208";a="104587481"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 11 Jan 2025 09:05:17 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tWevD-000L19-1o
 for intel-wired-lan@lists.osuosl.org; Sat, 11 Jan 2025 17:05:15 +0000
Date: Sun, 12 Jan 2025 01:05:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501120109.4FgaUotU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736615119; x=1768151119;
 h=date:from:to:subject:message-id;
 bh=ek5Jj8aABDwBn9D/dOrAlPNJwCGduEK7nUv9Z2jFinw=;
 b=NTIQotBO9WRs1gv8D+2l4VELJ098oN12Wn12SYx6PDLJ8vtSxVGJRP7S
 fpi71M8vydZUa4/BTRBnmh7+dAOstuiz6RWdPZ5DQtAqmEaMFoLgFJJY5
 1npXL7rZSMEoN8T8XK9BYBTGSfNU0CZgK0WvZcKaXKmLuNWzxyflOVqMk
 VJ7dJUBbHB9PqZ9LmRIOL8yqqva/xPOKYiibFDCy1f4VGhUkcQjks6qFK
 0CPS9gDHgF8PKb6e52XmAzfn4IXpv1mtfkkdLsg1WzOSe7QZYbwtPyY8b
 ycur6inum3B4NFHQzyxyzuTrWIZ+jEk3sCEUdx2yQVGggXdUbBsg+t9wn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NTIQotBO
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 69a2fd4a5bf00106a4d12424bde1f73d44187cd8
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
branch HEAD: 69a2fd4a5bf00106a4d12424bde1f73d44187cd8  ice: Fix switchdev slow-path in LAG

elapsed time: 1444m

configs tested: 78
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                               allnoconfig    gcc-13.2.0
arc                   randconfig-001-20250111    gcc-13.2.0
arc                   randconfig-002-20250111    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                            dove_defconfig    gcc-14.2.0
arm                      jornada720_defconfig    clang-20
arm                   randconfig-001-20250111    clang-16
arm                   randconfig-002-20250111    gcc-14.2.0
arm                   randconfig-003-20250111    clang-20
arm                   randconfig-004-20250111    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250111    gcc-14.2.0
arm64                 randconfig-002-20250111    clang-20
arm64                 randconfig-003-20250111    clang-18
arm64                 randconfig-004-20250111    clang-16
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250111    gcc-14.2.0
csky                  randconfig-002-20250111    gcc-14.2.0
hexagon               randconfig-001-20250111    clang-20
hexagon               randconfig-002-20250111    clang-15
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250111    gcc-12
i386        buildonly-randconfig-002-20250111    gcc-11
i386        buildonly-randconfig-003-20250111    gcc-12
i386        buildonly-randconfig-004-20250111    gcc-12
i386        buildonly-randconfig-005-20250111    gcc-12
i386        buildonly-randconfig-006-20250111    clang-19
loongarch             randconfig-001-20250111    gcc-14.2.0
loongarch             randconfig-002-20250111    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250111    gcc-14.2.0
nios2                 randconfig-002-20250111    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250111    gcc-14.2.0
parisc                randconfig-002-20250111    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250111    gcc-14.2.0
powerpc               randconfig-002-20250111    gcc-14.2.0
powerpc               randconfig-003-20250111    gcc-14.2.0
powerpc64             randconfig-001-20250111    gcc-14.2.0
powerpc64             randconfig-002-20250111    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250111    clang-18
riscv                 randconfig-002-20250111    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250111    clang-20
s390                  randconfig-002-20250111    clang-19
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250111    gcc-14.2.0
sh                    randconfig-002-20250111    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250111    gcc-14.2.0
sparc                 randconfig-002-20250111    gcc-14.2.0
sparc64               randconfig-001-20250111    gcc-14.2.0
sparc64               randconfig-002-20250111    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20250111    clang-18
um                    randconfig-002-20250111    clang-20
x86_64                            allnoconfig    clang-19
x86_64      buildonly-randconfig-001-20250111    clang-19
x86_64      buildonly-randconfig-002-20250111    gcc-12
x86_64      buildonly-randconfig-003-20250111    gcc-12
x86_64      buildonly-randconfig-004-20250111    clang-19
x86_64      buildonly-randconfig-005-20250111    gcc-12
x86_64      buildonly-randconfig-006-20250111    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250111    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
