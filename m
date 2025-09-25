Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF6CBA0697
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 17:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC71880F06;
	Thu, 25 Sep 2025 15:44:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hiRS7uXNJsXI; Thu, 25 Sep 2025 15:44:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FCEB80F0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758815081;
	bh=2LGMruzL7gfP02VBA5u8Bbol+mnCQ0VWxyjbEmlgc0Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5zlUOWkRIva4KxqKD1uQNXMmqkybxu+bHl9KPKwWyhZ760el5vmzkT6UfvHgMQwIA
	 BcY1ySu5Kyvf+iMzHtUE6OPYAwteWf2qP8yBx17R6xFsqDmC7J8vr9o9BG1OUSKz/X
	 y4Ol9RX8ECUExFXegorVtMfwc/kBxL5RTp6VKRVQa7iuJwLT1ShxLzB2n3F3RSZIr0
	 KgUfs6GGWICTdxvsQZPQoEC7SIu2lYxlsrd9qdU5pWTroj8pi5g+qtIKiCPa+JSnWX
	 5xKpSLjGy46ZCpxdbr2/vDG4KYaSAXsPQor9S7Y9mjoOYrWmpcd7Q3dawwmi/nYSsf
	 Qk/BCgzN1ct8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FCEB80F0F;
	Thu, 25 Sep 2025 15:44:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C05D199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10B4480F04
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6GXKXcmSBUjA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 15:44:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7B5E80EEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7B5E80EEE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7B5E80EEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:44:38 +0000 (UTC)
X-CSE-ConnectionGUID: rvq6iSIUSx+eV3nWCQjJJg==
X-CSE-MsgGUID: pILWsuKtQzyUyFGTTf5G1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="78779527"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="78779527"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 08:44:38 -0700
X-CSE-ConnectionGUID: OS8r1EBvQKeYXKVd0wmZdg==
X-CSE-MsgGUID: gCBxKbMeTDSwrR6YvLCBhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="181660595"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 25 Sep 2025 08:44:38 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v1o94-0005MH-2W
 for intel-wired-lan@lists.osuosl.org; Thu, 25 Sep 2025 15:44:34 +0000
Date: Thu, 25 Sep 2025 23:43:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509252335.RkJOLadv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758815079; x=1790351079;
 h=date:from:to:subject:message-id;
 bh=2ii/Z7iekh5RwHWPvf0Q5pY3MAUYyxWmPWgrmAAeT8c=;
 b=EEtDotmrevENbCvfq1HagesGh6Y9LqO7r+pD1OAjydCmeXbiMwt4yedG
 KV+clLHE9Mp7gdqOr4fx/H7X7I1yx6sKD04Qkp5+NCCdV6Li8Y4jmW50z
 pbw1gwupKSBfcpm0hzMwQxdB7yv8D0FyljvMI1diYX20OPQDpZRW5sfdn
 bGyNTYHtMorCFoTdiqTZLree46aPwMfwSl0QQXlmeFU/L6ScGTJwwGTI1
 q6kkkdcB+MGB3ULBkSq10u0yjimycaiDRh5tsxlti0fTZMAEWdrod3K4b
 //INqVs4J03tH5kQ5G7ohiZHbNadqq70BNHZlP7k9tTMsSKy0PrEf0teP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EEtDotmr
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 496055b4f8c90078445a19afd9ad6b70172248a8
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
branch HEAD: 496055b4f8c90078445a19afd9ad6b70172248a8  igc: power up the PHY before the link test

elapsed time: 1449m

configs tested: 113
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250925    gcc-13.4.0
arc                   randconfig-002-20250925    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                      footbridge_defconfig    clang-17
arm                        multi_v7_defconfig    gcc-15.1.0
arm                       netwinder_defconfig    gcc-15.1.0
arm                   randconfig-001-20250925    gcc-11.5.0
arm                   randconfig-002-20250925    gcc-10.5.0
arm                   randconfig-003-20250925    gcc-8.5.0
arm                   randconfig-004-20250925    gcc-14.3.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250925    gcc-11.5.0
arm64                 randconfig-002-20250925    gcc-15.1.0
arm64                 randconfig-003-20250925    clang-19
arm64                 randconfig-004-20250925    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250925    gcc-14.3.0
csky                  randconfig-002-20250925    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250925    clang-22
hexagon               randconfig-002-20250925    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20250925    clang-20
i386        buildonly-randconfig-002-20250925    clang-20
i386        buildonly-randconfig-003-20250925    gcc-14
i386        buildonly-randconfig-004-20250925    gcc-14
i386        buildonly-randconfig-005-20250925    clang-20
i386        buildonly-randconfig-006-20250925    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250925    clang-18
loongarch             randconfig-002-20250925    gcc-12.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
microblaze                      mmu_defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250925    gcc-8.5.0
nios2                 randconfig-002-20250925    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                  or1klitex_defconfig    gcc-15.1.0
openrisc                       virt_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250925    gcc-8.5.0
parisc                randconfig-002-20250925    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                   currituck_defconfig    clang-22
powerpc               randconfig-001-20250925    clang-22
powerpc               randconfig-002-20250925    gcc-8.5.0
powerpc               randconfig-003-20250925    gcc-8.5.0
powerpc                    socrates_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250925    clang-22
powerpc64             randconfig-002-20250925    gcc-14.3.0
powerpc64             randconfig-003-20250925    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250925    clang-22
riscv                 randconfig-002-20250925    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250925    gcc-15.1.0
s390                  randconfig-002-20250925    gcc-13.4.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250925    gcc-15.1.0
sh                    randconfig-002-20250925    gcc-13.4.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250925    gcc-15.1.0
sparc                 randconfig-002-20250925    gcc-12.5.0
sparc64               randconfig-001-20250925    gcc-10.5.0
sparc64               randconfig-002-20250925    gcc-10.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250925    gcc-14
um                    randconfig-002-20250925    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250925    clang-20
x86_64      buildonly-randconfig-002-20250925    gcc-14
x86_64      buildonly-randconfig-003-20250925    gcc-14
x86_64      buildonly-randconfig-004-20250925    clang-20
x86_64      buildonly-randconfig-005-20250925    clang-20
x86_64      buildonly-randconfig-006-20250925    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250925    gcc-12.5.0
xtensa                randconfig-002-20250925    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
