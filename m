Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E30DFB56213
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Sep 2025 17:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2980C84121;
	Sat, 13 Sep 2025 15:50:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TwQOTnHyW1b6; Sat, 13 Sep 2025 15:50:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55DF684132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757778654;
	bh=aZ5xmiTN20YZU/838QDcxNIkBmBxKREmjeMxLSI+Ggs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4AQOEtsMFSdgtzBml8upBc3NeAWuRrgGXYEMonQKKzoL9cZ6Pu4I+TXgBPpU50UQn
	 w+FFzHkANOWbdKTBM5vnizyjFVnP1NaaOU35qDEmqta2j8ekBqVkULRMZ6z/Z6PVbF
	 94WR01NRfe7UGjMvgLZ7mpqZUIyH5Udn+i0u3J3zICaRB182RvGxGb3IvFMu1HqfvL
	 qPKlOcQUshNp+RGwzKA6gfHUuj9371BNsI90zoRSvkaZyB/WEL/U8OAqB11Z6CM1+I
	 HTzxQ89XRI+4yx2fs6Gbm1MEIRvhL3OwZSXlXgSCv77MEUikSecnOX0sRa2AmQ3Fiz
	 3vFFFob8nxVxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55DF684132;
	Sat, 13 Sep 2025 15:50:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 17F9A117
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 15:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0962B414C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 15:50:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id koOLCaYiBz0e for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Sep 2025 15:50:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ACE3E414C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACE3E414C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACE3E414C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 15:50:50 +0000 (UTC)
X-CSE-ConnectionGUID: hi9W6JgVQ+m7aSxCuOHktQ==
X-CSE-MsgGUID: ENHM1QywTqyd52SLt1Db7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60156852"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60156852"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 08:50:49 -0700
X-CSE-ConnectionGUID: BqHpkKSZT3ee9DGEC7q0tQ==
X-CSE-MsgGUID: VR5IMvBVQtOVThLXECdOiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,262,1751266800"; d="scan'208";a="178562343"
Received: from lkp-server02.sh.intel.com (HELO eb5fdfb2a9b7) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 13 Sep 2025 08:50:48 -0700
Received: from kbuild by eb5fdfb2a9b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uxSWT-0001dk-1o
 for intel-wired-lan@lists.osuosl.org; Sat, 13 Sep 2025 15:50:45 +0000
Date: Sat, 13 Sep 2025 23:50:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509132356.bVHo5WgQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757778651; x=1789314651;
 h=date:from:to:subject:message-id;
 bh=snOOBPTdYzIYn7j1cDa/fGxnbqAGpGcRja6D3w65NEE=;
 b=k/+3+b29D9Q64ShmQP8Uv2yHHmWaYsQGwQnMoh1LvP5HCJattL5YNabj
 3OylQqqdiMhRkp1FPse3R8ifSUMr9iFV5JeOI50juHE2Lj/uYneijyqUm
 ypEz6kfuoLjx1Iidq801rXC5w9nE2gWGep01hTPQDixYhxYIjLJlKRyN6
 Vn9wtSRB77KzNOvmXOYcWQoo2h++8M9olwHd3wlc3ovdszZKuas+Gjold
 i/BVHWGkcu00/SZf+22A6/ngL2g0SndPg/ikxK9VEMba6tnykAeg/EPY1
 v5i5IK7DROlg+zGFRthIG4U0Gp/Z+pu45jE2PRyiO3d75smm6E4aE1IIB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k/+3+b29
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 2690cb089502b80b905f2abdafd1bf2d54e1abef
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
branch HEAD: 2690cb089502b80b905f2abdafd1bf2d54e1abef  dpaa2-switch: fix buffer pool seeding for control traffic

elapsed time: 2241m

configs tested: 126
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250913    gcc-10.5.0
arc                   randconfig-002-20250913    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                           h3600_defconfig    gcc-15.1.0
arm                   randconfig-001-20250913    clang-20
arm                   randconfig-002-20250913    clang-22
arm                   randconfig-003-20250913    clang-22
arm                   randconfig-004-20250913    gcc-14.3.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250913    clang-22
arm64                 randconfig-002-20250913    gcc-14.3.0
arm64                 randconfig-003-20250913    clang-22
arm64                 randconfig-004-20250913    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250913    gcc-11.5.0
csky                  randconfig-002-20250913    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250913    clang-16
hexagon               randconfig-002-20250913    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250912    gcc-14
i386        buildonly-randconfig-001-20250913    gcc-14
i386        buildonly-randconfig-002-20250912    clang-20
i386        buildonly-randconfig-002-20250913    clang-20
i386        buildonly-randconfig-003-20250912    gcc-13
i386        buildonly-randconfig-003-20250913    clang-20
i386        buildonly-randconfig-004-20250912    clang-20
i386        buildonly-randconfig-004-20250913    clang-20
i386        buildonly-randconfig-005-20250912    gcc-14
i386        buildonly-randconfig-005-20250913    clang-20
i386        buildonly-randconfig-006-20250912    clang-20
i386        buildonly-randconfig-006-20250913    gcc-14
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250913    clang-18
loongarch             randconfig-002-20250913    clang-22
m68k                             alldefconfig    gcc-15.1.0
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
nios2                 randconfig-001-20250913    gcc-8.5.0
nios2                 randconfig-002-20250913    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250913    gcc-12.5.0
parisc                randconfig-002-20250913    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250913    gcc-8.5.0
powerpc               randconfig-002-20250913    clang-22
powerpc               randconfig-003-20250913    gcc-10.5.0
powerpc64             randconfig-001-20250913    gcc-10.5.0
powerpc64             randconfig-002-20250913    clang-22
powerpc64             randconfig-003-20250913    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250913    gcc-13.4.0
riscv                 randconfig-002-20250913    clang-20
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250913    clang-22
s390                  randconfig-002-20250913    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250913    gcc-9.5.0
sh                    randconfig-002-20250913    gcc-14.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250913    gcc-15.1.0
sparc                 randconfig-002-20250913    gcc-8.5.0
sparc64               randconfig-001-20250913    gcc-8.5.0
sparc64               randconfig-002-20250913    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250913    gcc-14
um                    randconfig-002-20250913    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250912    gcc-14
x86_64      buildonly-randconfig-001-20250913    clang-20
x86_64      buildonly-randconfig-002-20250912    gcc-14
x86_64      buildonly-randconfig-002-20250913    gcc-14
x86_64      buildonly-randconfig-003-20250912    clang-20
x86_64      buildonly-randconfig-003-20250913    gcc-12
x86_64      buildonly-randconfig-004-20250912    clang-20
x86_64      buildonly-randconfig-004-20250913    gcc-14
x86_64      buildonly-randconfig-005-20250912    clang-20
x86_64      buildonly-randconfig-005-20250913    clang-20
x86_64      buildonly-randconfig-006-20250912    gcc-14
x86_64      buildonly-randconfig-006-20250913    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250913    gcc-14.3.0
xtensa                randconfig-002-20250913    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
