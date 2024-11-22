Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4199D575A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2024 02:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D230260790;
	Fri, 22 Nov 2024 01:44:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id du4h6EHgqrbR; Fri, 22 Nov 2024 01:44:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75AAD60785
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732239872;
	bh=MpNCEjKckFg+NWJ6+aWc0V8kSb5GGwwe5Bkm/UgWpC0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=712eKw/J0PFNLa3OTIQBmDwmXIE+MBoC8ihCEO4nTEOgYH3nacUGbMrM6ku1doacg
	 BAVbc4hsAjy6XFZSBPSObshD+t880XX1NrfcUaMI5G6JpuYnX5bbyTWe/gVHSZvR/t
	 WkOBb5ydxankgLDCCbc4zrIVXOBSCMwpgyVlbUB7u8LK6lQJJe67bxQBBQ7aUotcfS
	 W3Cu5rubinuLjrWacOwGnKiMAwKgRUTZh+R33H+novQFDl+LXxapuuuy1idgUtPoi3
	 bqOUXTjboZO1C/swtPO/2g5TZJdDD5oM8pYz8jdWdg6KtQtwgYuQmZiq6aGDqxoGGZ
	 GCGiD2pY4T4PQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75AAD60785;
	Fri, 22 Nov 2024 01:44:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DE2DB69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 01:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79C8C84191
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 01:44:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89teMym9gQMU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2024 01:44:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 251488419E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 251488419E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 251488419E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 01:44:28 +0000 (UTC)
X-CSE-ConnectionGUID: 3Q/xZeSXRDuY/EbA6+7jUA==
X-CSE-MsgGUID: LkEYRT5tTJaGjmCLSSE5Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="31739925"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="31739925"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 17:44:28 -0800
X-CSE-ConnectionGUID: 6K1e+OOuTD2Q9ekeaFJqWg==
X-CSE-MsgGUID: 9Aj67IkHQnyKJ9gNhU43ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="95475393"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 21 Nov 2024 17:44:27 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tEIie-0003Yl-0y
 for intel-wired-lan@lists.osuosl.org; Fri, 22 Nov 2024 01:44:24 +0000
Date: Fri, 22 Nov 2024 09:43:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411220940.bdIch99s-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732239869; x=1763775869;
 h=date:from:to:subject:message-id;
 bh=wYNYL9DA7n7jhBsSzEc06FSIumagyGDJIxbI/0nwAtU=;
 b=XgonmHqj44oEqnljW5BT3Gqme4MLHmpwZTnHlAox/feWPgtBXPDkPqo6
 +khCVLq4kNNEaOkX5aLgkPGnTm0+2pYzOxxTW+VxY7pcUJx6Smh5EUr+o
 8/w3+HTMmMPjELimbuiIrDfhLJ31u6NqRWWrIFsTSIo0eM4Do+EaxnYot
 8kouofhosRT+ORzQcJNzf/OB3gClzhXatU7nQBEsqqbAK342UaMDmYvYW
 q/oBjtqAZ7z5BCT3qnLOwCcozmcYjeyTuwOjafBjvp8U11r6Lck333KKl
 JX3r/YNiPwDPPX7SX09lE2dOm+BwLsnboWnPQijoP43JUhJdTbp/lPgMJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XgonmHqj
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1a979fc78a8a278b6f9f68335d18d21503c96338
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
branch HEAD: 1a979fc78a8a278b6f9f68335d18d21503c96338  ixgbe: Correct BASE-BX10 compliance code

elapsed time: 1484m

configs tested: 125
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-14.2.0
alpha                  allyesconfig    gcc-14.2.0
alpha                     defconfig    gcc-14.2.0
arc                    allmodconfig    gcc-13.2.0
arc                     allnoconfig    gcc-13.2.0
arc                    allyesconfig    gcc-13.2.0
arc                       defconfig    gcc-13.2.0
arc         randconfig-001-20241121    gcc-13.2.0
arc         randconfig-001-20241122    gcc-13.2.0
arc         randconfig-002-20241121    gcc-13.2.0
arc         randconfig-002-20241122    gcc-13.2.0
arm                    allmodconfig    gcc-14.2.0
arm                     allnoconfig    clang-20
arm                    allyesconfig    gcc-14.2.0
arm               axm55xx_defconfig    clang-20
arm             imx_v6_v7_defconfig    clang-20
arm            jornada720_defconfig    clang-20
arm              keystone_defconfig    gcc-14.2.0
arm                  mps2_defconfig    clang-20
arm                 omap1_defconfig    gcc-14.2.0
arm         randconfig-001-20241121    clang-20
arm         randconfig-001-20241122    clang-17
arm         randconfig-002-20241121    gcc-14.2.0
arm         randconfig-002-20241122    gcc-14.2.0
arm         randconfig-003-20241121    clang-20
arm         randconfig-003-20241122    clang-20
arm         randconfig-004-20241121    gcc-14.2.0
arm         randconfig-004-20241122    gcc-14.2.0
arm                sp7021_defconfig    gcc-14.2.0
arm64                  allmodconfig    clang-20
arm64                   allnoconfig    gcc-14.2.0
arm64       randconfig-001-20241121    clang-20
arm64       randconfig-001-20241122    gcc-14.2.0
arm64       randconfig-002-20241121    clang-20
arm64       randconfig-002-20241122    gcc-14.2.0
arm64       randconfig-003-20241121    gcc-14.2.0
arm64       randconfig-003-20241122    gcc-14.2.0
arm64       randconfig-004-20241121    gcc-14.2.0
arm64       randconfig-004-20241122    gcc-14.2.0
csky                    allnoconfig    gcc-14.2.0
csky        randconfig-001-20241121    gcc-14.2.0
csky        randconfig-001-20241122    gcc-14.2.0
csky        randconfig-002-20241121    gcc-14.2.0
csky        randconfig-002-20241122    gcc-14.2.0
hexagon                allmodconfig    clang-20
hexagon                 allnoconfig    clang-20
hexagon                allyesconfig    clang-20
hexagon     randconfig-001-20241121    clang-20
hexagon     randconfig-001-20241122    clang-20
hexagon     randconfig-002-20241122    clang-20
i386                    allnoconfig    gcc-12
i386                   allyesconfig    gcc-12
i386                      defconfig    clang-19
loongarch              allmodconfig    gcc-14.2.0
loongarch               allnoconfig    gcc-14.2.0
loongarch   randconfig-001-20241122    gcc-14.2.0
loongarch   randconfig-002-20241122    gcc-14.2.0
m68k                   allmodconfig    gcc-14.2.0
m68k                    allnoconfig    gcc-14.2.0
m68k                   allyesconfig    gcc-14.2.0
microblaze             allmodconfig    gcc-14.2.0
microblaze              allnoconfig    gcc-14.2.0
microblaze             allyesconfig    gcc-14.2.0
mips                    allnoconfig    gcc-14.2.0
mips                 ip22_defconfig    gcc-14.2.0
nios2               10m50_defconfig    gcc-14.2.0
nios2                   allnoconfig    gcc-14.2.0
nios2       randconfig-001-20241122    gcc-14.2.0
nios2       randconfig-002-20241122    gcc-14.2.0
openrisc                allnoconfig    gcc-14.2.0
openrisc               allyesconfig    gcc-14.2.0
openrisc                  defconfig    gcc-14.2.0
openrisc        or1klitex_defconfig    gcc-14.2.0
openrisc       simple_smp_defconfig    gcc-14.2.0
parisc                 allmodconfig    gcc-14.2.0
parisc                  allnoconfig    gcc-14.2.0
parisc                 allyesconfig    gcc-14.2.0
parisc                    defconfig    gcc-14.2.0
parisc      randconfig-001-20241122    gcc-14.2.0
parisc      randconfig-002-20241122    gcc-14.2.0
powerpc                allmodconfig    gcc-14.2.0
powerpc                 allnoconfig    gcc-14.2.0
powerpc                allyesconfig    clang-20
powerpc        iss476-smp_defconfig    gcc-14.2.0
powerpc           mpc512x_defconfig    clang-20
powerpc     randconfig-001-20241122    gcc-14.2.0
powerpc     randconfig-002-20241122    clang-20
powerpc     randconfig-003-20241122    clang-20
powerpc64   randconfig-001-20241122    gcc-14.2.0
powerpc64   randconfig-002-20241122    gcc-14.2.0
powerpc64   randconfig-003-20241122    gcc-14.2.0
riscv                  allmodconfig    clang-20
riscv                   allnoconfig    gcc-14.2.0
riscv                  allyesconfig    clang-20
riscv                     defconfig    clang-20
riscv       randconfig-001-20241122    gcc-14.2.0
riscv       randconfig-002-20241122    gcc-14.2.0
s390                   allmodconfig    clang-20
s390                    allnoconfig    clang-20
s390                   allyesconfig    gcc-14.2.0
s390                      defconfig    clang-20
s390        randconfig-001-20241122    clang-20
s390        randconfig-002-20241122    clang-20
sh                     allmodconfig    gcc-14.2.0
sh                      allnoconfig    gcc-14.2.0
sh                     allyesconfig    gcc-14.2.0
sh                        defconfig    gcc-14.2.0
sh          randconfig-001-20241122    gcc-14.2.0
sh          randconfig-002-20241122    gcc-14.2.0
sh                 se7724_defconfig    gcc-14.2.0
sh              sh7757lcr_defconfig    gcc-14.2.0
sparc                  allmodconfig    gcc-14.2.0
sparc64                   defconfig    gcc-14.2.0
um                     allmodconfig    clang-20
um                      allnoconfig    clang-17
um                     allyesconfig    gcc-12
um                        defconfig    clang-20
um                   i386_defconfig    gcc-12
um                 x86_64_defconfig    clang-15
x86_64                  allnoconfig    clang-19
x86_64                 allyesconfig    clang-19
x86_64                    defconfig    gcc-11
x86_64                        kexec    clang-19
x86_64                     rhel-9.4    gcc-12
xtensa                  allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
