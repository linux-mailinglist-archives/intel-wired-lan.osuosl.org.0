Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45653B15950
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 09:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98FFC612FC;
	Wed, 30 Jul 2025 07:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQwGx3aMLclz; Wed, 30 Jul 2025 07:10:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D9B260FD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753859427;
	bh=LuNCBQrO+9l/yAxwAHL3KVOiqyZJDkjSqxmxYVRO4cg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jBih4hACaen+Ssln1EmRWqAXBigFGs73vsRMcmPOBsUrTCvJ8ZogyxtpB0SoycbWC
	 yPyW9ho34w3+E82LklPgoCtpv/3yfS8W6n1IHafB5HJrixlxabdBJIr8ZYANFgTrOw
	 F7aIFJBAKdP3KK4bcc+cNY0JEVKvOBoclfDPcNj+KnyTIXJOJnXuVmd6Fcq4G3RD8b
	 NDfwULFiREOnqXt2x7NjLbFg1r5MWtnxRsmVg2wlgfj6oaVX3yopq6Dcz+JepMu8ts
	 Cp5wlkUoJjCzj90ViiRtRkdzLqhdWGkgnYXka3R/kc8QzB89KPn/LRYusV8BwtzrIw
	 lRDjE+TPW1LSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D9B260FD1;
	Wed, 30 Jul 2025 07:10:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3C0E13D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 07:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA2414080C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 07:10:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QWW8vxbjjBAh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 07:10:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8EB8F40822
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EB8F40822
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EB8F40822
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 07:10:23 +0000 (UTC)
X-CSE-ConnectionGUID: nqUsupCMTs+4W+EDa7wq+A==
X-CSE-MsgGUID: mpQyEmf/RNuvkzevLbPFuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56298526"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56298526"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:10:23 -0700
X-CSE-ConnectionGUID: HxGXFleQQ4esE4RsrvTJCg==
X-CSE-MsgGUID: MRIa7iKnQ8SbvQssP9NZ0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="193758907"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 30 Jul 2025 00:10:22 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uh0xA-000292-0R
 for intel-wired-lan@lists.osuosl.org; Wed, 30 Jul 2025 07:10:20 +0000
Date: Wed, 30 Jul 2025 15:09:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507301515.wZCUtn3O-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753859424; x=1785395424;
 h=date:from:to:subject:message-id;
 bh=LxUrLkMo0HRL1tnIGWGkQ6RNBDdVrqGEMyociEJY8yY=;
 b=Y7N5bNC75fAUAWj8cL8I/gJUiF6RdGIh/u30HDV8JZaX2Mr9HOKL8BYm
 PKy3s4N5eKyMzkL2kd33w2ZO6gJ3Tff5hREqKMFSEXn15xefkj8DVc+kY
 eLSXCeWSo+tuGRCNpc2jONlEjcmyb3QpJVTPnZOV5sip5QUZ4h0j00Jyt
 hBjS5PyBe5fwuvS3dsMeXpyQ0vyx/QHbfYm1Lkmeo2NYM6F1XrU6G/NXg
 NVksgSZOHQg5Vx2vTSUPFUt02XvXRpWnFRVkYuHAz0bwZm54JC5Nx4cFL
 gjhbN9jQkgKS6Zap7L0fXA/csWv4DzcTZcLCfygDwwGtVbRu8qidIwSU3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y7N5bNC7
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1c97a0c2e0ec40f6575f77ba2fcbb75aa1363a96
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
branch HEAD: 1c97a0c2e0ec40f6575f77ba2fcbb75aa1363a96  ixgbe: drop unnecessary casts to u16 / int

elapsed time: 729m

configs tested: 120
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250730    gcc-8.5.0
arc                   randconfig-002-20250730    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                       aspeed_g4_defconfig    clang-22
arm                        multi_v5_defconfig    gcc-15.1.0
arm                          pxa168_defconfig    clang-19
arm                   randconfig-001-20250730    clang-22
arm                   randconfig-002-20250730    clang-20
arm                   randconfig-003-20250730    gcc-8.5.0
arm                   randconfig-004-20250730    gcc-14.3.0
arm                           sunxi_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250730    clang-22
arm64                 randconfig-002-20250730    clang-20
arm64                 randconfig-003-20250730    clang-17
arm64                 randconfig-004-20250730    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250730    gcc-14.3.0
csky                  randconfig-002-20250730    gcc-12.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250730    clang-20
hexagon               randconfig-002-20250730    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250730    clang-20
i386        buildonly-randconfig-002-20250730    clang-20
i386        buildonly-randconfig-003-20250730    gcc-12
i386        buildonly-randconfig-004-20250730    gcc-12
i386        buildonly-randconfig-005-20250730    clang-20
i386        buildonly-randconfig-006-20250730    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250730    clang-22
loongarch             randconfig-002-20250730    clang-20
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
nios2                 randconfig-001-20250730    gcc-11.5.0
nios2                 randconfig-002-20250730    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250730    gcc-14.3.0
parisc                randconfig-002-20250730    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250730    gcc-8.5.0
powerpc               randconfig-002-20250730    gcc-8.5.0
powerpc               randconfig-003-20250730    clang-22
powerpc                  storcenter_defconfig    gcc-15.1.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250730    clang-22
powerpc64             randconfig-002-20250730    clang-22
powerpc64             randconfig-003-20250730    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250730    gcc-10.5.0
riscv                 randconfig-002-20250730    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250730    clang-20
s390                  randconfig-002-20250730    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                          polaris_defconfig    gcc-15.1.0
sh                    randconfig-001-20250730    gcc-12.5.0
sh                    randconfig-002-20250730    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250730    gcc-14.3.0
sparc                 randconfig-002-20250730    gcc-14.3.0
sparc64               randconfig-001-20250730    clang-22
sparc64               randconfig-002-20250730    clang-20
um                               alldefconfig    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250730    gcc-11
um                    randconfig-002-20250730    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250730    gcc-12
x86_64      buildonly-randconfig-002-20250730    clang-20
x86_64      buildonly-randconfig-003-20250730    clang-20
x86_64      buildonly-randconfig-004-20250730    clang-20
x86_64      buildonly-randconfig-005-20250730    clang-20
x86_64      buildonly-randconfig-006-20250730    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250730    gcc-11.5.0
xtensa                randconfig-002-20250730    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
