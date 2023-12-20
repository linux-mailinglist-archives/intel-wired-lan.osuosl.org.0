Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3946F81A7FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 22:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA19861573;
	Wed, 20 Dec 2023 21:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA19861573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703107195;
	bh=8BIL2i4EvvOwSa8zkiUqYeRMV7Gmgfhp74+mW/8WYEM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P1IyBtjK7HQKB9q5Au2RK8dbhQ3GRqIKLsL0ODkbrFApIg54NPtwC+uJdHdsUu379
	 BUUk+ktlVZUyevUdABipLpq7vqDbeRNO7TxqwNttuMkQpTVHbiZPveyoIk0w34yZH/
	 nVm4L44Lpbz5ac8AqItUqzQOtBj6EOaHmRYslGh4jzuE9MYE0ld28X6QN0DGcXZSms
	 rqhG/NUpwWJ+OdejDCUyoYbdKoXANJeBPYXSaW8vzqTBjMQ/AG+QIwb1d78B+hq7c/
	 oNFxhBqDW6iW6jDNpT+SQ+NOmmbhzpeZbbuD9mYoaohINY44Vzg5DIUY1Wt+s4FCI5
	 CyM6IWMGm2BgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aInVZTAPvowB; Wed, 20 Dec 2023 21:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 680C2610B3;
	Wed, 20 Dec 2023 21:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 680C2610B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C04781BF361
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 21:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 975288278F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 21:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 975288278F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuiCOBw_ev0u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 21:19:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6213681403
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 21:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6213681403
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3106323"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; 
   d="scan'208";a="3106323"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 13:19:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="10895112"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 20 Dec 2023 13:19:46 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rG3yi-0007Ur-03
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Dec 2023 21:19:44 +0000
Date: Thu, 21 Dec 2023 05:18:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312210552.yHsZPgSJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703107189; x=1734643189;
 h=date:from:to:subject:message-id;
 bh=FQPwRw1eHmPadynZz3nlK1smyKQVJEVDkt5t48SQq0A=;
 b=A19LBp9nNtFRcrk91nNQ1X/8OuFhxXC0UNUClwi1ACNwIzZilz0AVIGR
 rv76i8NK2eDsWFyCqkR24PpWn0ITSQvsxokK9m6vplter2jdYwv/UaLSU
 3Vpyrxk24PsSz4g4hjuf3A5ikFXwkhskEZpIbp2C6i5HIibh6d5iy/aPX
 9ZgtrMCh8nUdelZ8ULylqxx2h8RLLYxaHVsArPjjd8XxqKHmDQgnLd898
 tUGKLBXfZsvkx3z06wlKsSl1oUk9goHMPrloZcZoFwuMXfQy0P+TZc0KV
 c2FEwbtPpXTFgVxZg6n71L1u373tVKg2CEGLnzr3XKzi6rPTQJVeuUxXk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A19LBp9n
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 1728df7fc11bf09322852ff05e73908244011594
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 1728df7fc11bf09322852ff05e73908244011594  Merge tag 'for-netdev' of https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next

elapsed time: 1577m

configs tested: 136
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
arc                              allmodconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20231220   gcc  
arc                   randconfig-002-20231220   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                   randconfig-001-20231220   gcc  
arm                   randconfig-002-20231220   gcc  
arm                   randconfig-003-20231220   gcc  
arm                   randconfig-004-20231220   gcc  
arm64                            allmodconfig   clang
arm64                 randconfig-001-20231220   gcc  
arm64                 randconfig-002-20231220   gcc  
arm64                 randconfig-003-20231220   gcc  
arm64                 randconfig-004-20231220   gcc  
csky                             allmodconfig   gcc  
csky                             allyesconfig   gcc  
csky                  randconfig-001-20231220   gcc  
csky                  randconfig-002-20231220   gcc  
hexagon               randconfig-001-20231220   clang
hexagon               randconfig-002-20231220   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231220   gcc  
i386         buildonly-randconfig-002-20231220   gcc  
i386         buildonly-randconfig-003-20231220   gcc  
i386         buildonly-randconfig-004-20231220   gcc  
i386         buildonly-randconfig-005-20231220   gcc  
i386         buildonly-randconfig-006-20231220   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231220   gcc  
i386                  randconfig-002-20231220   gcc  
i386                  randconfig-003-20231220   gcc  
i386                  randconfig-004-20231220   gcc  
i386                  randconfig-005-20231220   gcc  
i386                  randconfig-006-20231220   gcc  
i386                  randconfig-011-20231220   clang
i386                  randconfig-012-20231220   clang
i386                  randconfig-013-20231220   clang
i386                  randconfig-014-20231220   clang
i386                  randconfig-015-20231220   clang
i386                  randconfig-016-20231220   clang
loongarch                        allmodconfig   gcc  
loongarch             randconfig-001-20231220   gcc  
loongarch             randconfig-002-20231220   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                        mvme147_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                       allyesconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1830-neo_defconfig   clang
mips                        qi_lb60_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                 randconfig-001-20231220   gcc  
nios2                 randconfig-002-20231220   gcc  
openrisc                         allyesconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                randconfig-001-20231220   gcc  
parisc                randconfig-002-20231220   gcc  
powerpc                          allmodconfig   clang
powerpc                          allyesconfig   clang
powerpc                        cell_defconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                      pasemi_defconfig   gcc  
powerpc               randconfig-001-20231220   gcc  
powerpc               randconfig-002-20231220   gcc  
powerpc               randconfig-003-20231220   gcc  
powerpc                        warp_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20231220   gcc  
powerpc64             randconfig-002-20231220   gcc  
powerpc64             randconfig-003-20231220   gcc  
riscv                            allmodconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                 randconfig-001-20231220   gcc  
riscv                 randconfig-002-20231220   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20231220   clang
s390                  randconfig-002-20231220   clang
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                    randconfig-001-20231220   gcc  
sh                    randconfig-002-20231220   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20231220   gcc  
sparc64               randconfig-002-20231220   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20231220   gcc  
um                    randconfig-002-20231220   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231220   gcc  
x86_64       buildonly-randconfig-002-20231220   gcc  
x86_64       buildonly-randconfig-003-20231220   gcc  
x86_64       buildonly-randconfig-004-20231220   gcc  
x86_64       buildonly-randconfig-005-20231220   gcc  
x86_64       buildonly-randconfig-006-20231220   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231220   clang
x86_64                randconfig-002-20231220   clang
x86_64                randconfig-003-20231220   clang
x86_64                randconfig-004-20231220   clang
x86_64                randconfig-005-20231220   clang
x86_64                randconfig-006-20231220   clang
x86_64                randconfig-011-20231220   gcc  
x86_64                randconfig-012-20231220   gcc  
x86_64                randconfig-013-20231220   gcc  
x86_64                randconfig-014-20231220   gcc  
x86_64                randconfig-015-20231220   gcc  
x86_64                randconfig-016-20231220   gcc  
x86_64                randconfig-071-20231220   gcc  
x86_64                randconfig-072-20231220   gcc  
x86_64                randconfig-073-20231220   gcc  
x86_64                randconfig-074-20231220   gcc  
x86_64                randconfig-075-20231220   gcc  
x86_64                randconfig-076-20231220   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20231220   gcc  
xtensa                randconfig-002-20231220   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
