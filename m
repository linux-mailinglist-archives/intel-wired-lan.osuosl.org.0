Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B82C8AE9DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 16:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1161406BC;
	Tue, 23 Apr 2024 14:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6gmUDHiQxHPO; Tue, 23 Apr 2024 14:52:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50833405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713883970;
	bh=xwR8DFu/L7c7YI+AcYBS5fMmNJCCy9xNmc63LbdFu+E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uzxFPcqtuWBhEEnKmMBV1HCkKcSkNBxWWmk/ZfRxsCMv7SqGyULAhIetpk4EfCkQF
	 yWLGix+imWitP39mTvOcwOSgS7tgOL35VZKJ5yJWx6A5THLwEBGzSEcP/3oKajv7u5
	 gOal8IrfiC38R56eOnjtjmzeaetxWxwhRyH2sn1Ep9WV5s/Ne/Z2rMXlUL1cye4SFK
	 A+T4deaWcNCBplvoD2ErOIxhDq2FGjPmTVv3IDVbhh31aTcfEydrJWiqGhqDCnhMe8
	 F1jQDvzyHNzBasc7IAHKGX9GO1vCrfWaZkDeseW598S/Bw+I5h78C8Vi8X4nFmgepf
	 HLC5IfxtxNDJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50833405FA;
	Tue, 23 Apr 2024 14:52:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D09D11BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB29D81F34
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:52:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pzpvk6p7bKk0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 14:52:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8EE6D81F2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EE6D81F2A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EE6D81F2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:52:46 +0000 (UTC)
X-CSE-ConnectionGUID: qol9a+glRSqdV1Jwy4eVLw==
X-CSE-MsgGUID: 9h0WShVZQGmHHJ/cObOGPw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13255904"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="13255904"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 07:52:41 -0700
X-CSE-ConnectionGUID: +bzDI6AdTCSNMRugUcVn0g==
X-CSE-MsgGUID: WdVz3jWrSx6a81btRleiSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="61848019"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 23 Apr 2024 07:52:33 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rzHVW-0000FW-2U
 for intel-wired-lan@lists.osuosl.org; Tue, 23 Apr 2024 14:52:30 +0000
Date: Tue, 23 Apr 2024 22:52:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404232221.VY7uBDG0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713883966; x=1745419966;
 h=date:from:to:subject:message-id;
 bh=6ZnYh3fKnKKwmSfvp91hAI2ble9WddwARUe9Zq73g0c=;
 b=Fr/zyi9Hj3xEOG18qdLfD6RcltNt/dfh763JSPqHKJWRxugDD177XZGg
 HcPHvh6+i5WV+vJBSkgwYGoVsaHbCaNT4A6q9/hpmWWuhP8oEam165Hv6
 NxdkuyEeeYHRr7Vw7PRNnIsXOQ35aVGDsMc4L/g5aYmMpNJSca548//wM
 ENHr1M1EXcDQwUpzWb9AooKJPiztAHoNfVrkfYGRExSv3JIz+AUqFwlPq
 PpavXA+Q0Q61PgjXarj4EURPHkAevdQEdFFR1IpGN48csqEHrpDcwnFoB
 cJ+ulWB6umVNfyZxFQHtKYigmcTK+PFXV3fPI/nsPikU2sTV2UqnQuPgC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fr/zyi9H
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 9afff0de30db149a1bf440db26a3ddd6a4f260d8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 9afff0de30db149a1bf440db26a3ddd6a4f260d8  ice: Document tx_scheduling_layers parameter

elapsed time: 1059m

configs tested: 159
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
arc                                 defconfig   gcc  
arc                   randconfig-001-20240423   gcc  
arc                   randconfig-002-20240423   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          moxart_defconfig   gcc  
arm                   randconfig-001-20240423   clang
arm                   randconfig-002-20240423   clang
arm                   randconfig-003-20240423   clang
arm                   randconfig-004-20240423   gcc  
arm                             rpc_defconfig   clang
arm                       versatile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240423   clang
arm64                 randconfig-002-20240423   gcc  
arm64                 randconfig-003-20240423   clang
arm64                 randconfig-004-20240423   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240423   gcc  
csky                  randconfig-002-20240423   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240423   clang
hexagon               randconfig-002-20240423   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240423   clang
i386         buildonly-randconfig-002-20240423   clang
i386         buildonly-randconfig-003-20240423   gcc  
i386         buildonly-randconfig-004-20240423   clang
i386         buildonly-randconfig-005-20240423   clang
i386         buildonly-randconfig-006-20240423   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240423   gcc  
i386                  randconfig-002-20240423   gcc  
i386                  randconfig-003-20240423   clang
i386                  randconfig-004-20240423   gcc  
i386                  randconfig-005-20240423   clang
i386                  randconfig-006-20240423   clang
i386                  randconfig-011-20240423   gcc  
i386                  randconfig-012-20240423   clang
i386                  randconfig-013-20240423   clang
i386                  randconfig-014-20240423   gcc  
i386                  randconfig-015-20240423   gcc  
i386                  randconfig-016-20240423   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240423   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      malta_kvm_defconfig   gcc  
mips                      maltaaprp_defconfig   clang
mips                        qi_lb60_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240423   gcc  
nios2                 randconfig-002-20240423   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240423   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      arches_defconfig   gcc  
powerpc                       holly_defconfig   clang
powerpc                 mpc834x_itx_defconfig   clang
powerpc                 mpc836x_rdk_defconfig   clang
powerpc                     rainier_defconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240423   clang
x86_64       buildonly-randconfig-002-20240423   clang
x86_64       buildonly-randconfig-003-20240423   gcc  
x86_64       buildonly-randconfig-004-20240423   gcc  
x86_64       buildonly-randconfig-005-20240423   clang
x86_64       buildonly-randconfig-006-20240423   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240423   clang
x86_64                randconfig-002-20240423   gcc  
x86_64                randconfig-003-20240423   gcc  
x86_64                randconfig-004-20240423   gcc  
x86_64                randconfig-005-20240423   gcc  
x86_64                randconfig-006-20240423   gcc  
x86_64                randconfig-011-20240423   gcc  
x86_64                randconfig-012-20240423   gcc  
x86_64                randconfig-013-20240423   clang
x86_64                randconfig-014-20240423   clang
x86_64                randconfig-015-20240423   clang
x86_64                randconfig-016-20240423   gcc  
x86_64                randconfig-071-20240423   clang
x86_64                randconfig-072-20240423   clang
x86_64                randconfig-073-20240423   clang
x86_64                randconfig-074-20240423   gcc  
x86_64                randconfig-075-20240423   gcc  
x86_64                randconfig-076-20240423   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
