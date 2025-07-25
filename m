Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 091ABB12156
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 17:54:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1424B60ECE;
	Fri, 25 Jul 2025 15:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xXwaz4viAACG; Fri, 25 Jul 2025 15:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEE4561062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753458884;
	bh=UiQU5Oc+/SSCK7MShfOQ00QjpzEKDDjU55zI3ABKuIo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JPBCN55V0FgTERxEbiXERwApcupE1cDLFgUQVdRepCU7iWyo0X31XSmRP4NJzEEuv
	 JUi5GoP9nrc+ShAPBLpuNg8VflfRtyfIIVutdpm0K5f8FfTHTVLMrr/GgpMQ+hJwV2
	 dxiArMf494w+CU/Z1p0QZdDLrC0+HkprSAZd+Kit4ck3NIulTKWZgWhr9pGB0Qj4/Z
	 QNEgQ/+KMGR99wcixoVQg6wOquzwSZy0vG8jsZXhZ1bwO0D6fiUezAoN242jjtz6Bj
	 Oed1RyG/RwaLxgu/TUKcByvaQrXOQ4N7yO39LDB0E382ahDu2s6+QdDohS5Ttend4s
	 CPfZSKUCXRbAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEE4561062;
	Fri, 25 Jul 2025 15:54:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A27B3909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 15:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9456041C42
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 15:54:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kXnU3GDpa8OD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 15:54:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A8B9E41CFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8B9E41CFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8B9E41CFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 15:54:41 +0000 (UTC)
X-CSE-ConnectionGUID: d6ZKF1iyTMmdICZPpgjT9w==
X-CSE-MsgGUID: 4e6MR3loSrSq0bd3PDqNGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="55652074"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55652074"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 08:54:41 -0700
X-CSE-ConnectionGUID: 4s4+7Dc4Q5+NYcrehcuDNg==
X-CSE-MsgGUID: 9nKIn5TASDyCIIDgspIPcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="165170010"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 25 Jul 2025 08:54:41 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ufKko-000LOf-09
 for intel-wired-lan@lists.osuosl.org; Fri, 25 Jul 2025 15:54:38 +0000
Date: Fri, 25 Jul 2025 23:54:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507252300.jzPHvby8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753458881; x=1784994881;
 h=date:from:to:subject:message-id;
 bh=fZqRxLhLm41haP9BWXwwPFvlHnwuG4SoSPNwMAnzDh0=;
 b=nbi8rWSyIW7hAVDKBlBZb0FclCSdMmsvTjTUFdms0kLwWUsRwu2aWJNI
 /oMjPhzx54sxYkTBhEmPGm5uDBqdoFSmDvttwfeh2VdoU/AU1/Djkir9g
 4WN0qLnzAAlIDJ2JlqG4HU8T5aqZKvqLVxBqPV3CIxipE8tLQYdOhtr9x
 ut0kgoJ79XIh4pgNkseCqMnNryMYj3CbhBjufJzCS2jqta8RYepzSR1DI
 60TG20+K99AYSx5NDLlamcFYR9CvjQvG9VQ0hIQYh64NAo+0Oh5XwMqip
 PPDHSNnxoH/UPIv6Js1jc6eU8h8bfYlyQkTLC4sfbmf6L/pU2qd/VlKrY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nbi8rWSy
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 73754b84f285f7e2c6e462b4dd20b385b12330ac
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
branch HEAD: 73754b84f285f7e2c6e462b4dd20b385b12330ac  ice: don't leave device non-functional if Tx scheduler config fails

elapsed time: 1445m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250725    gcc-13.4.0
arc                   randconfig-002-20250725    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250725    gcc-15.1.0
arm                   randconfig-002-20250725    clang-22
arm                   randconfig-003-20250725    clang-20
arm                   randconfig-004-20250725    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250725    clang-22
arm64                 randconfig-002-20250725    gcc-12.5.0
arm64                 randconfig-003-20250725    gcc-14.3.0
arm64                 randconfig-004-20250725    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250725    gcc-11.5.0
csky                  randconfig-002-20250725    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250725    clang-22
hexagon               randconfig-002-20250725    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250725    gcc-12
i386        buildonly-randconfig-002-20250725    clang-20
i386        buildonly-randconfig-003-20250725    clang-20
i386        buildonly-randconfig-004-20250725    clang-20
i386        buildonly-randconfig-005-20250725    clang-20
i386        buildonly-randconfig-006-20250725    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch             randconfig-001-20250725    gcc-15.1.0
loongarch             randconfig-002-20250725    gcc-15.1.0
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
nios2                 randconfig-001-20250725    gcc-9.5.0
nios2                 randconfig-002-20250725    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250725    gcc-15.1.0
parisc                randconfig-002-20250725    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250725    gcc-8.5.0
powerpc               randconfig-002-20250725    clang-22
powerpc               randconfig-003-20250725    gcc-8.5.0
powerpc64             randconfig-001-20250725    clang-22
powerpc64             randconfig-002-20250725    gcc-8.5.0
powerpc64             randconfig-003-20250725    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250725    gcc-10.5.0
riscv                 randconfig-002-20250725    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250725    gcc-8.5.0
s390                  randconfig-002-20250725    clang-17
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250725    gcc-15.1.0
sh                    randconfig-002-20250725    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250725    gcc-8.5.0
sparc                 randconfig-002-20250725    gcc-11.5.0
sparc64               randconfig-001-20250725    gcc-8.5.0
sparc64               randconfig-002-20250725    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250725    clang-22
um                    randconfig-002-20250725    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250725    clang-20
x86_64      buildonly-randconfig-002-20250725    clang-20
x86_64      buildonly-randconfig-003-20250725    clang-20
x86_64      buildonly-randconfig-004-20250725    clang-20
x86_64      buildonly-randconfig-005-20250725    gcc-12
x86_64      buildonly-randconfig-006-20250725    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250725    gcc-13.4.0
xtensa                randconfig-002-20250725    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
