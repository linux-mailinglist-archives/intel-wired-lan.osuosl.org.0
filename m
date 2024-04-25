Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E478B2A64
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 23:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98794409B3;
	Thu, 25 Apr 2024 21:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VyvWq5tA-smG; Thu, 25 Apr 2024 21:06:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52F13409E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714079183;
	bh=EZtqwIecYfooeOVuoLWDEBIgbtqgsUhKnVOEugBx8uQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=viW7LkRDpvLX9sEw3/grP0sMQ3pKE8sB24pB04CjZB2YICU56gogiLCl5EthFAfQh
	 u/HIkqQ5HjdAz5/8dnw9mrBSdb3Csco5baHgpje1tYTeg5NHkviM3R5bD6BKn6hxLq
	 q44ywSCcVadgoXPtVShO3kFtQFkUvOOQ6hD6gnFP0dO09qkHQYWtx38+C/jk6ukmcw
	 SuwriRYXk3TLBQk40sKyRqVis3zAFD1D5+VlpTIfw1Y703Ulow898+s8LMc8VAujBa
	 7xkavWztATkYQM7MFLGFTLe0NyxA8n/QjYCtfQsf3siXb/qgjEkEjKGS4zzZSolh5s
	 Q76f1AVFQE0zA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52F13409E7;
	Thu, 25 Apr 2024 21:06:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B44101BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 21:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB5D1409E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 21:06:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GtCfNbXSFXDr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 21:06:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4CEE1409B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CEE1409B3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4CEE1409B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 21:06:18 +0000 (UTC)
X-CSE-ConnectionGUID: hoI3vY+iRfi5UhFMcUbM+g==
X-CSE-MsgGUID: IiZ+RVz4QgOmaRiRk0j1Xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9724876"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; 
   d="scan'208";a="9724876"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 14:06:17 -0700
X-CSE-ConnectionGUID: rOXLJjSJTkehagT2v3lGFQ==
X-CSE-MsgGUID: W5J0rY6eSjGr0dBWGfdsaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="29654516"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 25 Apr 2024 14:06:15 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s06IH-0002rU-1K
 for intel-wired-lan@lists.osuosl.org; Thu, 25 Apr 2024 21:06:13 +0000
Date: Fri, 26 Apr 2024 05:05:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404260516.I95hZ9rZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714079180; x=1745615180;
 h=date:from:to:subject:message-id;
 bh=JIoHMoI7l/GmgNJcQt3vDGHvs5CTsegyMP3xhuKEKng=;
 b=Ca33uJpf0wTmXc7rSesYXXIRyy2RXNvAysmrsh0n3Om9a4azoAddA1CG
 RvR/QJ3wNH/JEOINywMSWQ7EptyynGL8wER+2KlNyjQGWbwMk5+BRN2k4
 lniT+cFPeA+zWPEEKSTCgw/VyRqYxAMI/WB3yT4YFpPBuyifCvzfJ6rlP
 z4oAUzZEDqHC6W9m/dAHiT/V7cPBe64CEsmY85TAhpJn2kIjFiJ+fykzu
 Xo1ez85DYPcavpSasfVoy3SEzB6dVe/PLGdaMRCuF9sqq0JIrY4jFLnrH
 TbkLVR5NhUp9/9XPY+GmeghXp9/da1fQwQLhl1qjMMmLmGeTlrAAEdJo0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ca33uJpf
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 87a927efa7d9f95f3acd4fc04b8f3bc809f0f465
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 87a927efa7d9f95f3acd4fc04b8f3bc809f0f465  MAINTAINERS: add entry for libeth and libie

elapsed time: 1450m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arm                               allnoconfig   clang
arm                          collie_defconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240425   clang
arm                   randconfig-002-20240425   clang
arm                   randconfig-003-20240425   clang
arm                   randconfig-004-20240425   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240425   clang
hexagon               randconfig-002-20240425   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240425   gcc  
i386         buildonly-randconfig-003-20240425   gcc  
i386         buildonly-randconfig-006-20240425   gcc  
i386                  randconfig-004-20240425   gcc  
i386                  randconfig-013-20240425   gcc  
i386                  randconfig-014-20240425   gcc  
i386                  randconfig-015-20240425   gcc  
i386                  randconfig-016-20240425   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
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
mips                     loongson1c_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-003-20240425   clang
powerpc                    sam440ep_defconfig   gcc  
powerpc                     tqm8540_defconfig   gcc  
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
sh                        sh7757lcr_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-002-20240425   clang
um                           x86_64_defconfig   clang
x86_64       buildonly-randconfig-002-20240425   gcc  
x86_64       buildonly-randconfig-006-20240425   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-004-20240425   gcc  
x86_64                randconfig-005-20240425   gcc  
x86_64                randconfig-011-20240425   gcc  
x86_64                randconfig-014-20240425   gcc  
x86_64                randconfig-072-20240425   gcc  
x86_64                randconfig-073-20240425   gcc  
x86_64                randconfig-076-20240425   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
