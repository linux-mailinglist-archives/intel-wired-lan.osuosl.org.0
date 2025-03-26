Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B85E6A71AF8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Mar 2025 16:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F07014073F;
	Wed, 26 Mar 2025 15:46:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OS_rZCLsoCXX; Wed, 26 Mar 2025 15:46:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3F4640744
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743003999;
	bh=PksqOFHNLNtEpSmK+lK20s9nOP6dxDPu46ROAXH8gN4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0rVNHdahemv17BUS3vdzO7eXm9ziX6lKDTPuNAupzUJUzwbbNuMlgxPi5DW08HxPl
	 d05yVR8WKUrgdXkzgVEEsPnIFHozOpn8Tm8rxbKobGP8uoqWZpHUd/fOFmQggZMZBK
	 Sx1jHmBW+IJk3PKPSZqM91YCde+wSFYq6aN2p32Fv5XkXIsx31wa9t+Z3NtWNJRAYk
	 Vmh+M6LBFLo0CEPAecm8ugUm9z8/GIjeJ4fEM9q4tq3EnhHZfXZjdmTsbcnRgi+gsn
	 /wlDTcMIr40lFJ2gmgaKOUiBaoHbuvbTV7t84ey8JUO9DkSvPSJs4w6oCvKCwFQuBk
	 1OgRq9niaDykw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3F4640744;
	Wed, 26 Mar 2025 15:46:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EC1BFE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 15:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE5EA4071F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 15:46:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mb98N8gNLyg9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Mar 2025 15:46:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DE894406D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE894406D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE894406D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 15:46:35 +0000 (UTC)
X-CSE-ConnectionGUID: 5SGujhnrQkSv83bc20SBMQ==
X-CSE-MsgGUID: yqbIS5peQq+m6oqBdOyvEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="31907061"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="31907061"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 08:46:35 -0700
X-CSE-ConnectionGUID: amN/2AGMRc6SfxdI/cFyaA==
X-CSE-MsgGUID: wekYLEklT0CCGPgdK8JiRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="124612750"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 26 Mar 2025 08:46:34 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1txSxc-0005qq-2L
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Mar 2025 15:46:32 +0000
Date: Wed, 26 Mar 2025 23:46:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503262301.XcY0JKd8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743003996; x=1774539996;
 h=date:from:to:subject:message-id;
 bh=w44LMa2rp5PF530ETaZkBZckMZEPVIntDRT+8MlVM1g=;
 b=ZhAVRNOLluBYdG3M2eJTxFzNd4wvN3kc1MREIMVr9Foztq2+3BqdTRxo
 yT8/PguUqPDKHeWcIKjiNfVRY6MmAIrS+X9p7Y7WadG3aninQBiUrh8hu
 EUNUbtJWHhzH78D2efBY64ryPdnA89cC9djtUe676t4bZsyffPwENaPMh
 W6lvQl2+qnZ6+Y3FpOdJfVk24b9fwV35uBww+VDP6LYTWEt4lxpn0cUS4
 gdsJHYvtKSa1gA+FBRlgD4QSWiXu3dTsM/OOz/UVgwjWedBMRHfHzk7qV
 xRdQPkqjp4Re2wDts4W0jC5FESC6uuUOMRdCFCxB02ML5zs7LPWqbh6vm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZhAVRNOL
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7bfc05a17feb3aeafb184cc4121f8f964485bb8b
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
branch HEAD: 7bfc05a17feb3aeafb184cc4121f8f964485bb8b  idpf: fix adapter NULL pointer dereference on reboot

elapsed time: 1449m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250326    gcc-14.2.0
arc                   randconfig-002-20250326    gcc-8.5.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250326    gcc-7.5.0
arm                   randconfig-002-20250326    clang-21
arm                   randconfig-003-20250326    gcc-8.5.0
arm                   randconfig-004-20250326    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250326    clang-21
arm64                 randconfig-002-20250326    clang-21
arm64                 randconfig-003-20250326    gcc-8.5.0
arm64                 randconfig-004-20250326    gcc-6.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250326    gcc-14.2.0
csky                  randconfig-002-20250326    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250326    clang-21
hexagon               randconfig-002-20250326    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250326    gcc-12
i386        buildonly-randconfig-002-20250326    clang-20
i386        buildonly-randconfig-003-20250326    clang-20
i386        buildonly-randconfig-004-20250326    clang-20
i386        buildonly-randconfig-005-20250326    gcc-12
i386        buildonly-randconfig-006-20250326    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250326    gcc-14.2.0
loongarch             randconfig-002-20250326    gcc-12.4.0
m68k                             alldefconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                            q40_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250326    gcc-12.4.0
nios2                 randconfig-002-20250326    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
openrisc                       virt_defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250326    gcc-13.3.0
parisc                randconfig-002-20250326    gcc-7.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc               randconfig-001-20250326    clang-21
powerpc               randconfig-002-20250326    gcc-6.5.0
powerpc               randconfig-003-20250326    clang-19
powerpc                     tqm8548_defconfig    clang-21
powerpc64             randconfig-001-20250326    clang-21
powerpc64             randconfig-002-20250326    gcc-8.5.0
powerpc64             randconfig-003-20250326    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250326    clang-21
riscv                 randconfig-002-20250326    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-15
s390                  randconfig-001-20250326    clang-15
s390                  randconfig-002-20250326    clang-15
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                        dreamcast_defconfig    gcc-14.2.0
sh                    randconfig-001-20250326    gcc-6.5.0
sh                    randconfig-002-20250326    gcc-6.5.0
sh                            shmin_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250326    gcc-11.5.0
sparc                 randconfig-002-20250326    gcc-5.5.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250326    gcc-5.5.0
sparc64               randconfig-002-20250326    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250326    clang-15
um                    randconfig-002-20250326    gcc-11
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20250326    clang-20
x86_64      buildonly-randconfig-002-20250326    gcc-11
x86_64      buildonly-randconfig-003-20250326    clang-20
x86_64      buildonly-randconfig-004-20250326    clang-20
x86_64      buildonly-randconfig-005-20250326    clang-20
x86_64      buildonly-randconfig-006-20250326    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250326    gcc-7.5.0
xtensa                randconfig-002-20250326    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
