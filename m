Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EC1961A92
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 01:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E440E811E2;
	Tue, 27 Aug 2024 23:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhmcfuQn-pFB; Tue, 27 Aug 2024 23:28:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74BD28120E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724801307;
	bh=E/SmsHK6gYgjiW8hGysM82W/gf7hYu3BmIvMWaQ2nEY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JmauyFtccvHbKc2hU1DHFGYWfT9zEAZOu8K6McM+JiRFB3xPFl3IVywyjbOrxJHnC
	 fY3T+Ng1KwZ47+VHhiZ6OCqqN4RzKk2r74pWjNSTIGX9EDRHcgOuqZ5k8RBDI4oy81
	 o7ZccmwrNKfpurJqmX3/SktstXq4Qr7WXcoBTFjWf+WFaQU6jJHfpQqjtLlJHn7lTU
	 c1lGV2MPfVfdYHflOrsAzzGqilZakXzxa7e4oF/uF9snJp8jYmj+1cdwJbJo3uIqge
	 wErGeAU8Ze959tLSprHsgTgy/klm5pOZyFSPnNfOIrcwT3It7vTsieeY0GlIeGYHxk
	 ryJLYZEjmN2Yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74BD28120E;
	Tue, 27 Aug 2024 23:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D96F81BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4D3640188
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:28:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eBZpdCa-tDcg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 23:28:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 77A0540184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77A0540184
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77A0540184
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:28:23 +0000 (UTC)
X-CSE-ConnectionGUID: 1YgurwuqTSSkzNWf6Sna+w==
X-CSE-MsgGUID: BaQGAW9XQPKb/kOOvyxtZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="34465075"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="34465075"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 16:28:22 -0700
X-CSE-ConnectionGUID: tGfPbvH9Qsq+sx3TE7V8Xw==
X-CSE-MsgGUID: a45L8A8XTdmwH7Bp8LUNWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63369545"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 27 Aug 2024 16:28:21 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sj5bn-000KCM-0S
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Aug 2024 23:28:19 +0000
Date: Wed, 28 Aug 2024 07:27:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408280723.38Wtxlya-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724801304; x=1756337304;
 h=date:from:to:subject:message-id;
 bh=anClxilycqwdaC+Y99gfCgmGLYdZYlqpmvN+bX/tEvo=;
 b=FHwlDqmRO6lRktNunAIxbDYGn7QxZ/mgpPSSHmWqbxsM4fGl51mIiZ2E
 9EpKqiCzcY7FgJ1DGzfse21juuEG6xgUrEPcB4U3bYbRwfHG2BMtPGAoX
 ngKood93/1tb/CM5RUaR2uu44wl19gWbZeAkNVuBvaNoftE1f+gNDVUvD
 RyfFoG1nsZYAt4CZMmrVoGgGr2NiXrEUpYOxfpaKh53BIyw1Hb3InV19a
 6N6L1QJGBqJBQu24NblfDJTLkAZ0PnmtDNq7qhnM5bca4E4abvKnnCT0h
 1k0c9z3qW2ewxPnGA7sVCf58XB/1GTyq+jvs/fkz5l1YKh4MxtE9c0Cyq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FHwlDqmR
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 025f455f893c9f39ec392d7237d1de55d2d00101
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 025f455f893c9f39ec392d7237d1de55d2d00101  ice: Add MDD logging via devlink health

elapsed time: 1459m

configs tested: 127
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc-13.3.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                   randconfig-001-20240827   gcc-13.2.0
arc                   randconfig-002-20240827   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                   randconfig-001-20240827   clang-20
arm                   randconfig-002-20240827   gcc-14.1.0
arm                   randconfig-003-20240827   clang-20
arm                   randconfig-004-20240827   gcc-14.1.0
arm                         s5pv210_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240827   gcc-14.1.0
arm64                 randconfig-002-20240827   clang-14
arm64                 randconfig-003-20240827   clang-14
arm64                 randconfig-004-20240827   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240827   gcc-14.1.0
csky                  randconfig-002-20240827   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240827   clang-20
hexagon               randconfig-002-20240827   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240827   gcc-12
i386         buildonly-randconfig-002-20240827   clang-18
i386         buildonly-randconfig-003-20240827   gcc-12
i386         buildonly-randconfig-004-20240827   clang-18
i386         buildonly-randconfig-005-20240827   clang-18
i386         buildonly-randconfig-006-20240827   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240827   gcc-12
i386                  randconfig-002-20240827   gcc-12
i386                  randconfig-003-20240827   gcc-12
i386                  randconfig-004-20240827   gcc-12
i386                  randconfig-005-20240827   gcc-12
i386                  randconfig-006-20240827   clang-18
i386                  randconfig-011-20240827   clang-18
i386                  randconfig-012-20240827   clang-18
i386                  randconfig-013-20240827   clang-18
i386                  randconfig-014-20240827   gcc-12
i386                  randconfig-015-20240827   gcc-12
i386                  randconfig-016-20240827   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240827   gcc-14.1.0
loongarch             randconfig-002-20240827   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                      mmu_defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240827   gcc-14.1.0
nios2                 randconfig-002-20240827   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240827   gcc-14.1.0
parisc                randconfig-002-20240827   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc               randconfig-001-20240827   clang-14
powerpc               randconfig-002-20240827   gcc-14.1.0
powerpc               randconfig-003-20240827   clang-20
powerpc                    socrates_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240827   gcc-14.1.0
powerpc64             randconfig-002-20240827   gcc-14.1.0
powerpc64             randconfig-003-20240827   clang-14
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240827   clang-20
riscv                 randconfig-002-20240827   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240827   clang-20
s390                  randconfig-002-20240827   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                         ecovec24_defconfig   gcc-14.1.0
sh                            migor_defconfig   gcc-14.1.0
sh                    randconfig-001-20240827   gcc-14.1.0
sh                    randconfig-002-20240827   gcc-14.1.0
sh                          rsk7203_defconfig   gcc-14.1.0
sh                           se7712_defconfig   gcc-14.1.0
sh                   secureedge5410_defconfig   gcc-14.1.0
sh                             shx3_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240827   gcc-14.1.0
sparc64               randconfig-002-20240827   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240827   gcc-12
um                    randconfig-002-20240827   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240827   gcc-14.1.0
xtensa                randconfig-002-20240827   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
