Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEAB89FCDD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 18:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3689660D71;
	Wed, 10 Apr 2024 16:31:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TGTpKJ4g8sFt; Wed, 10 Apr 2024 16:31:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0C1C60BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712766680;
	bh=ZB0ZupHRIB3QhdidIdtGmjwGHqEZPDqSEHKkSnS0O9o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Vx0GX1zlcI0x5wG3/T0RKdky0y4z781oXrN3T2GEhg4/mUSZu6xyydL5zxU2J46wk
	 tE6gXGjQL1xO6hgmlNhvhI5l1jiKDyVHd8sGkVUfNRIRViRzPb1ryIAVAPd3wBv91l
	 DS2WDjJEYwokTEHf/dqKaYZDMqMbcbyO7uCGJC/8Sy5geME+Lf5tQzAJHIN96YRyu1
	 kp3aQVxYd9f7crH5KmrXrsJobtViOqQJoj73Xms1L+XfalsZsL3g1o9EXo2AbXfDxb
	 w084/BKTdxkEhyHsTXOOq7+yG0FaaLLCYe7UBW7sFjVkvjngv1bb/qY9GK31Y0/EET
	 MBEOAuUrIxTeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0C1C60BA4;
	Wed, 10 Apr 2024 16:31:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 572051BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 16:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FADE8208E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 16:31:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rwsLrubjXu_8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 16:31:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF8D982089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF8D982089
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF8D982089
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 16:31:17 +0000 (UTC)
X-CSE-ConnectionGUID: QpI5qF2wQvqkoW92tfW3hw==
X-CSE-MsgGUID: HlXm/YxxQD6Ag5k+foTGIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11934132"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11934132"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:31:17 -0700
X-CSE-ConnectionGUID: EPs5VXy2R/evi/w9iXVZzw==
X-CSE-MsgGUID: ZR4MtyD/TLu/m8imM42WwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="21050667"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 10 Apr 2024 09:31:16 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ruaqv-0007Z0-1V
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Apr 2024 16:31:13 +0000
Date: Thu, 11 Apr 2024 00:31:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404110011.XdZd4hM2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712766678; x=1744302678;
 h=date:from:to:subject:message-id;
 bh=B8YathB2swJisypYtwTx4ZYyVT3BRuYiu2YTztARgh4=;
 b=aHEftOnEUKZRYCk+Sjsc5rEICK1EIV+J9OZXQB02DIhd1kzS9YalIe4O
 LiA8QJC3i+3dzVC9MgbQF97HYN/2QuD5nz2MuvkssWqANDU8t1KQdyRLR
 mK1oboJG+Opyh5IYPGrS9R5RxUpNsNy8bQFASECu0vFObwnujKDcbsYAx
 /p8aR+V5JoI99bjJ9Vkq6OhNBcppvuPlG15/BsNvlHx1SxkbumKQ8gVeB
 B39aRO4ausy623r6IGr0U02uGO0dRMaIyq9n1Juj4i5zy4Or3X1Uc5w2m
 jW5I101UUabrohply+k6PnK4hLRxFWDt5LYU6hQllfllDz01suZnCl3FC
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aHEftOnE
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 cf1b7201df59fb936f40f4a807433fe3f2ce310a
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
branch HEAD: cf1b7201df59fb936f40f4a807433fe3f2ce310a  ipv4/route: avoid unused-but-set-variable warning

elapsed time: 1525m

configs tested: 183
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
arc                   randconfig-001-20240410   gcc  
arc                   randconfig-002-20240410   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240410   gcc  
arm                   randconfig-002-20240410   clang
arm                   randconfig-003-20240410   gcc  
arm                   randconfig-004-20240410   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240410   clang
arm64                 randconfig-002-20240410   gcc  
arm64                 randconfig-003-20240410   gcc  
arm64                 randconfig-004-20240410   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240410   gcc  
csky                  randconfig-002-20240410   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240410   clang
hexagon               randconfig-002-20240410   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240410   gcc  
i386         buildonly-randconfig-002-20240410   clang
i386         buildonly-randconfig-003-20240410   clang
i386         buildonly-randconfig-004-20240410   clang
i386         buildonly-randconfig-005-20240410   gcc  
i386         buildonly-randconfig-006-20240410   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240410   clang
i386                  randconfig-002-20240410   clang
i386                  randconfig-003-20240410   gcc  
i386                  randconfig-004-20240410   gcc  
i386                  randconfig-005-20240410   gcc  
i386                  randconfig-006-20240410   clang
i386                  randconfig-011-20240410   clang
i386                  randconfig-012-20240410   clang
i386                  randconfig-013-20240410   gcc  
i386                  randconfig-014-20240410   clang
i386                  randconfig-015-20240410   gcc  
i386                  randconfig-016-20240410   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240410   gcc  
loongarch             randconfig-002-20240410   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240410   gcc  
nios2                 randconfig-002-20240410   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240410   gcc  
parisc                randconfig-002-20240410   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        cell_defconfig   gcc  
powerpc               randconfig-001-20240410   gcc  
powerpc               randconfig-002-20240410   gcc  
powerpc               randconfig-003-20240410   gcc  
powerpc64             randconfig-001-20240410   gcc  
powerpc64             randconfig-002-20240410   gcc  
powerpc64             randconfig-003-20240410   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                 randconfig-001-20240410   gcc  
riscv                 randconfig-002-20240410   gcc  
s390                             alldefconfig   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240410   clang
s390                  randconfig-002-20240410   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20240410   gcc  
sh                    randconfig-002-20240410   gcc  
sh                           se7712_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240410   gcc  
sparc64               randconfig-002-20240410   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240410   clang
um                    randconfig-002-20240410   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240410   gcc  
x86_64       buildonly-randconfig-002-20240410   clang
x86_64       buildonly-randconfig-003-20240410   clang
x86_64       buildonly-randconfig-004-20240410   gcc  
x86_64       buildonly-randconfig-005-20240410   clang
x86_64       buildonly-randconfig-006-20240410   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240410   clang
x86_64                randconfig-002-20240410   gcc  
x86_64                randconfig-003-20240410   clang
x86_64                randconfig-004-20240410   clang
x86_64                randconfig-005-20240410   gcc  
x86_64                randconfig-006-20240410   clang
x86_64                randconfig-011-20240410   gcc  
x86_64                randconfig-012-20240410   gcc  
x86_64                randconfig-013-20240410   gcc  
x86_64                randconfig-014-20240410   clang
x86_64                randconfig-015-20240410   gcc  
x86_64                randconfig-016-20240410   clang
x86_64                randconfig-071-20240410   gcc  
x86_64                randconfig-072-20240410   clang
x86_64                randconfig-073-20240410   gcc  
x86_64                randconfig-074-20240410   clang
x86_64                randconfig-075-20240410   gcc  
x86_64                randconfig-076-20240410   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240410   gcc  
xtensa                randconfig-002-20240410   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
