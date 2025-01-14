Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABC9A1104B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 19:37:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62B0641357;
	Tue, 14 Jan 2025 18:37:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pGQbv7ya8KhR; Tue, 14 Jan 2025 18:37:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4094D412A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736879837;
	bh=zIYIpCUdezZ5vZG0FPGIbc/Oi9ujFbLPeTzR4Y3hxDs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6Frtu2bFHCFqMesK6KW/zQUMO0OFUeiCfifU2HuAWJFcB+UqB6lMBYWBB/W+lreY1
	 pJwJzFa7fNa2IGZl+ZhC36WewIzA1NLB1Z4NrdhPRsLHDPJWdOkgOMX067DLQFpj5I
	 6MHRbK2z6a+tAFWlCBE+SNl29Jh8X2rMZW/E8a1Xn6Xw6K4q12dnQGu1rIrw+ztgi+
	 FJxLWoqFu3Zl2n45j6vg7RihHkquY0d/EBbSnNcO3dY65c85ld4K+qSKwgCfrJI3Gr
	 /JGdTowlPOeVC43uD53CDEHX1r8qWewJ+Qq33EGNRAb/f6gqK8ljf93jJDKnbNZmKH
	 UPXNWioPugB0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4094D412A3;
	Tue, 14 Jan 2025 18:37:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 99DA5B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7AC5A41267
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:37:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KOy449J-680m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 18:37:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 353A34125F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 353A34125F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 353A34125F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:37:14 +0000 (UTC)
X-CSE-ConnectionGUID: 7bs3UxE3T22N4Keb+3P2tA==
X-CSE-MsgGUID: SgkJgwmETUKPVkC5CXKj2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="37070739"
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="37070739"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 10:37:13 -0800
X-CSE-ConnectionGUID: LOKUL1RZQkijmc89XnjP8A==
X-CSE-MsgGUID: lZKbGD3zQNOYcqu/0j35gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109507326"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 14 Jan 2025 10:37:12 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tXlmo-000Ot3-1O
 for intel-wired-lan@lists.osuosl.org; Tue, 14 Jan 2025 18:37:10 +0000
Date: Wed, 15 Jan 2025 02:36:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501150220.FZeaCpMb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736879834; x=1768415834;
 h=date:from:to:subject:message-id;
 bh=5hdkuiezpYh+sdoQzoQ8R6mcce70X0WW3oclGGccPDc=;
 b=P3Ia6A17Lth+Q2RdhZFqwN/MAPylnS3Y2eZ5RRugumugzX54oknaaHzf
 XyI59vWOPM6ZoXtx2rLFOFy8tbEsO+gyIf5FoIFNS3S1aGGLIC49ZdVd6
 URVM/Amu5Bh0E65A3dgOtmhzHWX7jhPvPYmGadcKVrngL0eq6m4bOYhQg
 1ghYCIrH/OzGC5hJWOEthRQbdClQ8kgBAyrmiyxFv4b/8ODzM886g1Fa4
 GvRhIgjiOG8azqV/DuoLUGI+djZv0ykXxAzNfcoPN9XqiXDZPKKaMuFJ7
 7h5NVdXKQMKZ3qmwxEKBPw6WkW+v65F/jc3X/ajUTSOrYrZr9Ap3BmcJT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P3Ia6A17
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 528290b5b70261df5886e573cc3919b6e90af37d
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
branch HEAD: 528290b5b70261df5886e573cc3919b6e90af37d  ice: Fix switchdev slow-path in LAG

elapsed time: 1459m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250114    gcc-13.2.0
arc                   randconfig-002-20250114    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                         lpc18xx_defconfig    clang-19
arm                          pxa168_defconfig    clang-16
arm                   randconfig-001-20250114    clang-15
arm                   randconfig-002-20250114    clang-20
arm                   randconfig-003-20250114    gcc-14.2.0
arm                   randconfig-004-20250114    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250114    clang-17
arm64                 randconfig-002-20250114    clang-19
arm64                 randconfig-003-20250114    gcc-14.2.0
arm64                 randconfig-004-20250114    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250114    gcc-14.2.0
csky                  randconfig-002-20250114    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250114    clang-20
hexagon               randconfig-002-20250114    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250114    gcc-12
i386        buildonly-randconfig-002-20250114    clang-19
i386        buildonly-randconfig-003-20250114    clang-19
i386        buildonly-randconfig-004-20250114    gcc-12
i386        buildonly-randconfig-005-20250114    clang-19
i386        buildonly-randconfig-006-20250114    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250114    gcc-14.2.0
loongarch             randconfig-002-20250114    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          eyeq6_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250114    gcc-14.2.0
nios2                 randconfig-002-20250114    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250114    gcc-14.2.0
parisc                randconfig-002-20250114    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                   currituck_defconfig    clang-17
powerpc                       eiger_defconfig    clang-17
powerpc               randconfig-001-20250114    gcc-14.2.0
powerpc               randconfig-002-20250114    clang-20
powerpc               randconfig-003-20250114    gcc-14.2.0
powerpc                    sam440ep_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250114    clang-20
powerpc64             randconfig-002-20250114    clang-15
powerpc64             randconfig-003-20250114    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20250114    gcc-14.2.0
riscv                 randconfig-002-20250114    clang-20
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250114    clang-18
s390                  randconfig-002-20250114    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250114    gcc-14.2.0
sh                    randconfig-002-20250114    gcc-14.2.0
sh                           sh2007_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250114    gcc-14.2.0
sparc                 randconfig-002-20250114    gcc-14.2.0
sparc64               randconfig-001-20250114    gcc-14.2.0
sparc64               randconfig-002-20250114    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250114    clang-17
um                    randconfig-002-20250114    gcc-11
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250114    clang-19
x86_64      buildonly-randconfig-002-20250114    clang-19
x86_64      buildonly-randconfig-003-20250114    clang-19
x86_64      buildonly-randconfig-004-20250114    clang-19
x86_64      buildonly-randconfig-005-20250114    clang-19
x86_64      buildonly-randconfig-006-20250114    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250114    gcc-14.2.0
xtensa                randconfig-002-20250114    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
