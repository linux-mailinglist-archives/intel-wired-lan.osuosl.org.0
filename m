Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60D98CE455
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 12:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 682874048F;
	Fri, 24 May 2024 10:39:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SSzK_LVkjsYw; Fri, 24 May 2024 10:39:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E43DC41ACE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716547192;
	bh=PvmdJ0PdKRXNxAHk48ylNem5Us3DP4OY26ora30CdCc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ceqx7RNthWTDcT2a6kPe641YiNuDZ2UO/S1cl6kxoa1nTjm9Q3q4e/iG70I2qBkLC
	 Ln4yfsnCCF/IWSQiaty0frFALlLv+EnUA3NGWOV/IwCFeEyVR/m29cnhK9SHC136Za
	 /z/kFb5Ex+q0k4wZ9iKP8Z0j31ojExdNY19HN8PH6F7ib93/+6bllqJqUXDUFEAg5b
	 Ep9dTsqX+aCUsn/W1T/qOnXDglaKN5RVsWNVHE1jkXNZCldYbkfoz3BcdqyoqY933a
	 8jgg/XftGFj2LK67nG2qetb3j2UnpnOWy+eYWbY6yKpkpkU7/QKD8ZNIU0Ja9rcjKY
	 5uFuU3uLPhCbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E43DC41ACE;
	Fri, 24 May 2024 10:39:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98BE01CF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 10:39:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 843FF8243B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 10:39:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42W3fY5uuzHL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 10:39:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2DEEC82404
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DEEC82404
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DEEC82404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 10:39:47 +0000 (UTC)
X-CSE-ConnectionGUID: mGa22kg/ShOL+A7hx+DxxQ==
X-CSE-MsgGUID: mcOXbWiBQwGxqTc3q33sbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="11677526"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="11677526"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:39:47 -0700
X-CSE-ConnectionGUID: UQYjS2XDTc6DUUUNr0ShDQ==
X-CSE-MsgGUID: hyyqzcCiTdyybEo0rGVPwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="64792321"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 24 May 2024 03:39:46 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sASKt-0004pF-1K
 for intel-wired-lan@lists.osuosl.org; Fri, 24 May 2024 10:39:43 +0000
Date: Fri, 24 May 2024 18:39:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405241808.heWeaUxM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716547188; x=1748083188;
 h=date:from:to:subject:message-id;
 bh=+Qz1FUOIwzoqLGVnvcjqqcOsP3q78smng6uw9Osq/yc=;
 b=SaI1qvyIwcpR4n3vyDoSCEdDp4lLZxCTfTKztAiE0mbBbDJ09U25fFrR
 MYt+pkFXWrtyCo0RX17NTL/gB6YA6yc9b1eJ4HEEL8F0bGYs4rN1aoH2N
 6bV34SPSJHD5bSzi089uvw4LCOUdJwBuWfvvXs8krEPBoExEtPGe9bkq7
 lmrXAiuU+v9SsG+pesTwJoQLQYUYDPiM1ljIxFLf4tKo6ljJAs1mIC3UW
 P5hWXdA0bzy9P/jKVkCVZTYE2DxMM5CNl8KBOS1TzX6NscKrzBxNvMB4L
 Zni2WC9N5RYYUnHZl3gf2girA0UR6232rw9/pr1bpJ6uE7dLmZt2KOHf1
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SaI1qvyI
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 c71e3a5cffd5309d7f84444df03d5b72600cc417
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: c71e3a5cffd5309d7f84444df03d5b72600cc417  r8169: Fix possible ring buffer corruption on fragmented Tx packets.

elapsed time: 1190m

configs tested: 155
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                 nsimosci_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240524   gcc  
arc                   randconfig-002-20240524   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        keystone_defconfig   gcc  
arm                   randconfig-002-20240524   gcc  
arm                   randconfig-003-20240524   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-003-20240524   gcc  
arm64                 randconfig-004-20240524   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240524   gcc  
csky                  randconfig-002-20240524   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240524   clang
i386         buildonly-randconfig-002-20240524   clang
i386         buildonly-randconfig-003-20240524   gcc  
i386         buildonly-randconfig-004-20240524   clang
i386         buildonly-randconfig-005-20240524   clang
i386         buildonly-randconfig-006-20240524   clang
i386                                defconfig   clang
i386                  randconfig-001-20240524   clang
i386                  randconfig-002-20240524   clang
i386                  randconfig-003-20240524   clang
i386                  randconfig-004-20240524   clang
i386                  randconfig-005-20240524   gcc  
i386                  randconfig-006-20240524   clang
i386                  randconfig-011-20240524   clang
i386                  randconfig-012-20240524   gcc  
i386                  randconfig-013-20240524   gcc  
i386                  randconfig-014-20240524   clang
i386                  randconfig-015-20240524   clang
i386                  randconfig-016-20240524   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240524   gcc  
loongarch             randconfig-002-20240524   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                  decstation_64_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240524   gcc  
nios2                 randconfig-002-20240524   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240524   gcc  
parisc                randconfig-002-20240524   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      ep88xc_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc               randconfig-001-20240524   gcc  
powerpc               randconfig-002-20240524   gcc  
powerpc64             randconfig-001-20240524   gcc  
powerpc64             randconfig-002-20240524   gcc  
powerpc64             randconfig-003-20240524   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240524   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240524   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                    randconfig-001-20240524   gcc  
sh                    randconfig-002-20240524   gcc  
sh                           se7619_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240524   gcc  
sparc64               randconfig-002-20240524   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240524   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-003-20240524   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240524   clang
x86_64                randconfig-003-20240524   clang
x86_64                randconfig-004-20240524   clang
x86_64                randconfig-005-20240524   clang
x86_64                randconfig-012-20240524   clang
x86_64                randconfig-013-20240524   clang
x86_64                randconfig-016-20240524   clang
x86_64                randconfig-072-20240524   clang
x86_64                randconfig-075-20240524   clang
x86_64                randconfig-076-20240524   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240524   gcc  
xtensa                randconfig-002-20240524   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
