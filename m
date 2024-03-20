Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28411881167
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 12:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D30DA40839;
	Wed, 20 Mar 2024 11:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rC7hWOE-KAmh; Wed, 20 Mar 2024 11:59:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AD2E4084C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710935954;
	bh=xEz/ywJwbp2nKL+DLAkZTmL3i3QxY1LcI0ajfNNzYhc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=axad4z/diqG66HFN9P5ow/7+m9twtNBBaqsYFuM+ebw9n8FLJSsI4YJs/xLrEFKUq
	 lCgwmRXu4xLBY42JC2GAXaN7FU1hiGSKchGSzBmReev9Efg/HTjVUQ7GBlgCOuxLgu
	 XIMDe77/jhBJsWxw+rvn9kQVR6TLtBnookCHn2gDSkDwCJ94fKYVOjdLxenEk+5h/J
	 jpE+Q2osGT1XZOqYPtEhLDAkd6Ou7SqmebJyQqbRC8KiRQeqv1xe/dh/A21X7LTtV3
	 w98u0WKCRynMDpSN+jNlAGGayjOasxaAuO2+UKApxEBfrPmc+07yYOgTuZ8sj8DM3h
	 6/IOqSNhEr2eg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AD2E4084C;
	Wed, 20 Mar 2024 11:59:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D4891BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED43781242
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9W8LG56kM6EZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 11:59:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8CC3380F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CC3380F52
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CC3380F52
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:59:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="31291743"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="31291743"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 04:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14018523"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 20 Mar 2024 04:59:08 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rmub4-000IaV-2D
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Mar 2024 11:59:06 +0000
Date: Wed, 20 Mar 2024 19:59:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403201901.NdAdc5Gt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710935950; x=1742471950;
 h=date:from:to:subject:message-id;
 bh=BxT+iNbOhGO6HLsMv4THzM9BJZg3UBd+P1QPfAY7cwI=;
 b=f8te0BXZTK/TLvd5dKZNw4Jbc11LnZItuWptjPz1/9b8FD+c+WntdJhi
 61bagRCtjikxyzIHy335jBovXvuA7cPHaNr0bFUauQaJOpgzZQJvSD8M7
 oZBAeJyTyGoG/ldktpMZbStAE8+1JTTnfjZcMU6kL9w1hRWSzL1xL0jRc
 F5PBVdbiRUWwIlCnevbDfjMes2kB6E1mwjCuFSEF5ZK/4/m1HgThRVZGk
 nCtDYNMf/6O46uDws55q10C5Mq03I8/59Nc0FjSyHFCCgLaZx7leboLt5
 VP0n/G1zaNSdNR/IRWTUyiTuPR1+tT2vRyzbHxW74/vvDGnEf+tS1ZKT4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f8te0BXZ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e343aa3989b97d13cadcdd3a1c38dbc5c9ed4c04
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: e343aa3989b97d13cadcdd3a1c38dbc5c9ed4c04  i40e: Enforce software interrupt during busy-poll exit

elapsed time: 927m

configs tested: 178
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                   randconfig-001-20240320   gcc  
arc                   randconfig-002-20240320   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          ixp4xx_defconfig   gcc  
arm                        multi_v7_defconfig   gcc  
arm                   randconfig-001-20240320   gcc  
arm                   randconfig-002-20240320   gcc  
arm                   randconfig-003-20240320   gcc  
arm                   randconfig-004-20240320   gcc  
arm                           spitz_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240320   clang
arm64                 randconfig-002-20240320   gcc  
arm64                 randconfig-003-20240320   clang
arm64                 randconfig-004-20240320   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240320   gcc  
csky                  randconfig-002-20240320   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240320   clang
hexagon               randconfig-002-20240320   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240320   clang
i386         buildonly-randconfig-002-20240320   gcc  
i386         buildonly-randconfig-003-20240320   gcc  
i386         buildonly-randconfig-004-20240320   clang
i386         buildonly-randconfig-005-20240320   gcc  
i386         buildonly-randconfig-006-20240320   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240320   clang
i386                  randconfig-002-20240320   clang
i386                  randconfig-003-20240320   clang
i386                  randconfig-004-20240320   clang
i386                  randconfig-005-20240320   clang
i386                  randconfig-006-20240320   gcc  
i386                  randconfig-011-20240320   clang
i386                  randconfig-012-20240320   clang
i386                  randconfig-013-20240320   clang
i386                  randconfig-014-20240320   clang
i386                  randconfig-015-20240320   gcc  
i386                  randconfig-016-20240320   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240320   gcc  
loongarch             randconfig-002-20240320   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240320   gcc  
nios2                 randconfig-002-20240320   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc                randconfig-001-20240320   gcc  
parisc                randconfig-002-20240320   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     kmeter1_defconfig   gcc  
powerpc                       maple_defconfig   clang
powerpc               randconfig-001-20240320   gcc  
powerpc               randconfig-002-20240320   clang
powerpc               randconfig-003-20240320   gcc  
powerpc                     stx_gp3_defconfig   clang
powerpc                     tqm8540_defconfig   gcc  
powerpc                     tqm8555_defconfig   clang
powerpc64             randconfig-001-20240320   gcc  
powerpc64             randconfig-002-20240320   gcc  
powerpc64             randconfig-003-20240320   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240320   clang
riscv                 randconfig-002-20240320   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240320   clang
s390                  randconfig-002-20240320   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240320   gcc  
sh                    randconfig-002-20240320   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240320   gcc  
sparc64               randconfig-002-20240320   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240320   gcc  
um                    randconfig-002-20240320   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240320   gcc  
x86_64       buildonly-randconfig-002-20240320   clang
x86_64       buildonly-randconfig-003-20240320   clang
x86_64       buildonly-randconfig-004-20240320   clang
x86_64       buildonly-randconfig-005-20240320   gcc  
x86_64       buildonly-randconfig-006-20240320   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240320   clang
x86_64                randconfig-002-20240320   clang
x86_64                randconfig-003-20240320   gcc  
x86_64                randconfig-004-20240320   clang
x86_64                randconfig-005-20240320   clang
x86_64                randconfig-006-20240320   clang
x86_64                randconfig-011-20240320   gcc  
x86_64                randconfig-012-20240320   gcc  
x86_64                randconfig-013-20240320   gcc  
x86_64                randconfig-014-20240320   gcc  
x86_64                randconfig-015-20240320   clang
x86_64                randconfig-016-20240320   gcc  
x86_64                randconfig-071-20240320   clang
x86_64                randconfig-072-20240320   gcc  
x86_64                randconfig-073-20240320   clang
x86_64                randconfig-074-20240320   gcc  
x86_64                randconfig-075-20240320   gcc  
x86_64                randconfig-076-20240320   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240320   gcc  
xtensa                randconfig-002-20240320   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
