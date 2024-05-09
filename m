Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF05A8C1316
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 18:37:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B08B40759;
	Thu,  9 May 2024 16:37:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rcMlvKVY_CTu; Thu,  9 May 2024 16:37:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F45740715
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715272639;
	bh=mqA6xNYmy75dBEtx3eAyryeMhlbOz8ImiFT4kcbpwYE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wveoekeOZKCuC1aUOY8qQ//8fzCqeXAUNJcIPzak6ExopgrJC1BPmUEYWMtLuRMFi
	 EQLL01v6D/NlRQKeELY2e+95WZggvitcHocT4YL/FCK7AAlnHS969i8PlvJN2Satf0
	 43JPNGjfRyPbWgJmKxuiaVVdnvJmxwHBWGr9cCRdSu8lULvBC7aXcSYfhbgE2buCTo
	 rmTF4hRSrKu2W9a8bcv502/sxp1PNSdRqELSJIiUSiwQ9OhrLHp6Ahqd0zj4nIrz/L
	 ncEpO8W9uvWdeqyQTb1SZNPhVV5l0+H6AbRv6y9fvwMlXrBebZWCTlgmZY7v/KIaWU
	 fpB5RXKHn2GoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F45740715;
	Thu,  9 May 2024 16:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C8611BF337
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 16:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8863541D8E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 16:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zb2uWe7T76-G for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 16:37:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B21C4039D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B21C4039D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B21C4039D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 16:37:14 +0000 (UTC)
X-CSE-ConnectionGUID: LXor9r/LTbq1EGAp6LLgLA==
X-CSE-MsgGUID: RUPx24ZaR6+V/YS0ZoXq3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36587482"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="36587482"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 09:37:14 -0700
X-CSE-ConnectionGUID: N1RPcvb4SdaItagQVlPCxQ==
X-CSE-MsgGUID: eJ8kKIwJQXqzqdclVH0Uaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="33835309"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 09 May 2024 09:37:13 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s56la-00057l-1x
 for intel-wired-lan@lists.osuosl.org; Thu, 09 May 2024 16:37:10 +0000
Date: Fri, 10 May 2024 00:36:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405100016.qIiVTkO8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715272634; x=1746808634;
 h=date:from:to:subject:message-id;
 bh=UqwhR8j6hUgtVXfL4rCQ38LLIkXNVAGZVsuhzoYcD0Q=;
 b=cHbzbpMVbiTb/oado1xhNaCfqq4YH3KzKZs9EZIow4KnGoUzsvod25mU
 4MG4nTmuS1pFNiQqwD2gAHGFRjT/GxK1wRfNTwJYL8GUG2YyNLXFkdL0S
 TsP8y/uR/6iIyoSOK4m6hz/GKfYC10zd3r+nj5HM4ZuqVjo3P6fKEyWI3
 uYhlSOLSSHrSiLNJ9PELWyxPjafYP9ZvMEUAL38t8yd2FNOnVWgTTPaF0
 IQGki2efi7rSatMFZNrYFb6RhCfpL7rxALhXqb0254lCQi3bHDMfUGVW/
 RoknVNHzyYqcFbacQ6EjqtWczCUpdc7hFX/OfA+799DpxWkIC7fj2A8lz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cHbzbpMV
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 02754103e1f75761066bd45d467b41ab5ad725e5
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
branch HEAD: 02754103e1f75761066bd45d467b41ab5ad725e5  Merge branch 'rxrpc-miscellaneous-fixes'

elapsed time: 1459m

configs tested: 150
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
arc                   randconfig-001-20240509   gcc  
arc                   randconfig-002-20240509   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240509   gcc  
arm                         s3c6400_defconfig   gcc  
arm                           sama5_defconfig   gcc  
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-003-20240509   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240509   gcc  
csky                  randconfig-002-20240509   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240509   gcc  
i386         buildonly-randconfig-002-20240509   gcc  
i386         buildonly-randconfig-005-20240509   gcc  
i386         buildonly-randconfig-006-20240509   gcc  
i386                                defconfig   clang
i386                  randconfig-004-20240509   gcc  
i386                  randconfig-006-20240509   gcc  
i386                  randconfig-012-20240509   gcc  
i386                  randconfig-014-20240509   gcc  
i386                  randconfig-015-20240509   gcc  
i386                  randconfig-016-20240509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240509   gcc  
loongarch             randconfig-002-20240509   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
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
nios2                 randconfig-001-20240509   gcc  
nios2                 randconfig-002-20240509   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240509   gcc  
parisc                randconfig-002-20240509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc64             randconfig-002-20240509   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240509   gcc  
riscv                 randconfig-002-20240509   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240509   gcc  
s390                  randconfig-002-20240509   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                    randconfig-001-20240509   gcc  
sh                    randconfig-002-20240509   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240509   gcc  
sparc64               randconfig-002-20240509   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240509   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240509   clang
x86_64       buildonly-randconfig-002-20240509   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240509   clang
x86_64                randconfig-005-20240509   clang
x86_64                randconfig-006-20240509   clang
x86_64                randconfig-011-20240509   clang
x86_64                randconfig-012-20240509   clang
x86_64                randconfig-014-20240509   clang
x86_64                randconfig-015-20240509   clang
x86_64                randconfig-071-20240509   clang
x86_64                randconfig-072-20240509   clang
x86_64                randconfig-073-20240509   clang
x86_64                randconfig-074-20240509   clang
x86_64                randconfig-075-20240509   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa                randconfig-001-20240509   gcc  
xtensa                randconfig-002-20240509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
