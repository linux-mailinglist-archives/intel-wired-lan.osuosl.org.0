Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 996387E62B6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 04:45:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CBFC61266;
	Thu,  9 Nov 2023 03:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CBFC61266
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699501516;
	bh=HetR0S1kBC8qb/eTGc2HRjuSxDELXmnEzx0ptgUoe7U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GoQE17LsnJwMkjYG0D77mhwmfY+KQSkBeKKqrqXaXuBenv9zt5UMk4Qbl3TuJLiEp
	 17YZUM7zJlisfOJvDbDt1nLtX306SzBNp2LtzmHFf3Vv0Lu8CYGMyTIe4EuVm+oXqs
	 Kf75Wl8Ql12io0wdWSzvHqhC9mmg/ZnjEDSbq/ZyJ0CXpb718w9nCTZA2/qFzuKes0
	 gsziRzCKvoAK5x1HIprqQZT5WUX7gSAV3yotgJs0bAOG24xnRBZujPqgfExoxhLwYs
	 7NFgwmLW+avbxwQ97Ka19+bdCSBlRJmYFR3FmeeNeBJ1uAEBxeDqBxjREmu9XuQvhy
	 qlfNIDyM0jfJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wgjF6qn3RobP; Thu,  9 Nov 2023 03:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5B4561263;
	Thu,  9 Nov 2023 03:45:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5B4561263
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 996201BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 03:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E550812EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 03:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E550812EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fAvCUxftujq2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 03:45:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FB8E81284
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 03:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FB8E81284
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="2870241"
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; 
   d="scan'208";a="2870241"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 19:45:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; 
   d="scan'208";a="4410953"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 08 Nov 2023 19:45:04 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r0vyY-0008TX-15
 for intel-wired-lan@lists.osuosl.org; Thu, 09 Nov 2023 03:45:02 +0000
Date: Thu, 09 Nov 2023 11:44:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311091101.KpK5xriH-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699501508; x=1731037508;
 h=date:from:to:subject:message-id;
 bh=Vlu5lJPisHCDgup4u4Wbn8VKcsljU9gZ0cQbzn6vikU=;
 b=MuA4ObDd3qjdiq09YRU3tAIctddjEMIlYb1uQvYh9VfMNTSxt7knNyhn
 dfVzT83G79ftKKpz7AbHhYZyJJbJ8voaaIsxxRnuTel4CSBhpJLOu2hYj
 iEYBd9zOVESZhEU8bObZfaeZyQkMn2XNIw6Ob0/P6eSev68rtwFO26gMB
 G1lkw8TGq9O9Vw9+/pfYiQN6WP2e8KYIiD3YeA6LXHKWGFU6Ab8NdPXJO
 OkjBaOPGXEMEGIEB5uVgkd+tExJO/+C0mcVjbs2EIvCx2BOFAXMubWJ7K
 w83VWwltzQl5X8nTQ1bvxMzWB+okKJcD9qSJeJfSjb0iaq+xNUrIenXyX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MuA4ObDd
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 aa54d846f3613fa9651786308c6f438e8705aff1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: aa54d846f3613fa9651786308c6f438e8705aff1  i40e: Fix devlink port unregistering

elapsed time: 3012m

configs tested: 140
configs skipped: 2

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
arc                   randconfig-001-20231108   gcc  
arc                   randconfig-002-20231108   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231108   gcc  
csky                  randconfig-002-20231108   gcc  
i386         buildonly-randconfig-001-20231108   gcc  
i386         buildonly-randconfig-002-20231108   gcc  
i386         buildonly-randconfig-003-20231108   gcc  
i386         buildonly-randconfig-004-20231108   gcc  
i386         buildonly-randconfig-005-20231108   gcc  
i386         buildonly-randconfig-006-20231108   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231108   gcc  
i386                  randconfig-002-20231108   gcc  
i386                  randconfig-003-20231108   gcc  
i386                  randconfig-004-20231108   gcc  
i386                  randconfig-005-20231108   gcc  
i386                  randconfig-006-20231108   gcc  
i386                  randconfig-011-20231108   gcc  
i386                  randconfig-012-20231108   gcc  
i386                  randconfig-013-20231108   gcc  
i386                  randconfig-014-20231108   gcc  
i386                  randconfig-015-20231108   gcc  
i386                  randconfig-016-20231108   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231108   gcc  
loongarch             randconfig-002-20231108   gcc  
m68k                              allnoconfig   gcc  
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
nios2                 randconfig-001-20231108   gcc  
nios2                 randconfig-002-20231108   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231108   gcc  
parisc                randconfig-002-20231108   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc               randconfig-001-20231108   gcc  
powerpc               randconfig-002-20231108   gcc  
powerpc               randconfig-003-20231108   gcc  
powerpc64             randconfig-001-20231108   gcc  
powerpc64             randconfig-002-20231108   gcc  
powerpc64             randconfig-003-20231108   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231108   gcc  
riscv                 randconfig-002-20231108   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231108   gcc  
s390                  randconfig-002-20231108   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231108   gcc  
sh                    randconfig-002-20231108   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231108   gcc  
sparc                 randconfig-002-20231108   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231108   gcc  
sparc64               randconfig-002-20231108   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231108   gcc  
um                    randconfig-002-20231108   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231108   gcc  
x86_64       buildonly-randconfig-002-20231108   gcc  
x86_64       buildonly-randconfig-003-20231108   gcc  
x86_64       buildonly-randconfig-004-20231108   gcc  
x86_64       buildonly-randconfig-005-20231108   gcc  
x86_64       buildonly-randconfig-006-20231108   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231108   gcc  
x86_64                randconfig-001-20231109   gcc  
x86_64                randconfig-002-20231108   gcc  
x86_64                randconfig-002-20231109   gcc  
x86_64                randconfig-003-20231108   gcc  
x86_64                randconfig-003-20231109   gcc  
x86_64                randconfig-004-20231108   gcc  
x86_64                randconfig-004-20231109   gcc  
x86_64                randconfig-005-20231108   gcc  
x86_64                randconfig-005-20231109   gcc  
x86_64                randconfig-006-20231108   gcc  
x86_64                randconfig-006-20231109   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                randconfig-001-20231108   gcc  
xtensa                randconfig-002-20231108   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
