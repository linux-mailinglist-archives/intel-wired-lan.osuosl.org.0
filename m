Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B3E87F675
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 05:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9BEA40351;
	Tue, 19 Mar 2024 04:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6KlSmdeOo6hZ; Tue, 19 Mar 2024 04:48:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CEC84012A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710823710;
	bh=ZL+qpMcxi39i1usNmr8kp+7tX1TT6XGEkonHaaS0RDI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JAnocpyeV49vaQ3taeISIZH9xsFGmW9d+CyuOK9RwYJBplq5DMRWgSP/U0C4ncCDg
	 is29Lcp3hbQH1mmbOZ2fhjeJbmV8McfSaSrvedRBBD9RfCEpgbpLfWdRAR3ahjZGCj
	 9G2ZtgH+i4QwcaD/JsFjoAXbrWUS2uvtGHG+anWEUi2551LDkYqFGGlw6ZgvXMb8z8
	 d9NawEhIxts07a+Ev20iD9thRe1B/XA57wHurAVhmWOGMBxZmk5mIcxpq1L4FX8ruu
	 pdyZoFsc59c5przxlceLKPNtnN2/pRIC/KlkfYtAIsZQWxX76x5sje6xtkdupabuSf
	 ytvg5HVUHrZJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CEC84012A;
	Tue, 19 Mar 2024 04:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF47E1BF861
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 04:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9CFE819F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 04:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GFVc-FUJkHJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 04:48:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 674BA8198D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 674BA8198D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 674BA8198D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 04:48:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="9439122"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="9439122"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 21:48:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="44628962"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 18 Mar 2024 21:48:24 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rmROe-000HTn-0h
 for intel-wired-lan@lists.osuosl.org; Tue, 19 Mar 2024 04:48:20 +0000
Date: Tue, 19 Mar 2024 12:48:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403191258.w9PM1acP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710823706; x=1742359706;
 h=date:from:to:subject:message-id;
 bh=0WZXoRejvJ5wPK57zsIUr6mPxqHVyY44rcK/5v4NOtU=;
 b=BGsIQTP6EG/UNUg6lsehXtPkOhEt+t4bAQE7EhEO6LastPGsyCOmEcGQ
 MY19o47UphAyze1Og4V8MTy8tBCdln37eP2t1ugqN+ecK0yl+vxOJWj0L
 7u5dQdlDfpQAnRVfz1CCkSeL0+S7ZSNq3yPa1e4caG2SQxyDBLY3NFGpf
 uGoDjLjCIJzK2iwF7n3ZGsmiGoJ3niC1ns43zIcR7hPM86Iuz8aej3CEi
 Qu6ze2oNrn9owTzTbAWxbq2efH5KJyD5bPqvRZUKm3LuV/qR1C7g9p5tj
 J91kqyg/81ufXJPW+iL1lrz9xaS63odUkUJ2xRErTBATWeINObVelX5jZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BGsIQTP6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 275878c3d97f5279ef52e62def46b7f3a117d133
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
branch HEAD: 275878c3d97f5279ef52e62def46b7f3a117d133  i40e: Fix VF MAC filter removal

elapsed time: 733m

configs tested: 153
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
arc                   randconfig-001-20240319   gcc  
arc                   randconfig-002-20240319   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                       multi_v4t_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                   randconfig-001-20240319   clang
arm                   randconfig-002-20240319   gcc  
arm                   randconfig-003-20240319   clang
arm                   randconfig-004-20240319   clang
arm                        realview_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240319   gcc  
arm64                 randconfig-002-20240319   clang
arm64                 randconfig-003-20240319   clang
arm64                 randconfig-004-20240319   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240319   gcc  
csky                  randconfig-002-20240319   gcc  
hexagon                          alldefconfig   clang
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240319   clang
hexagon               randconfig-002-20240319   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240319   clang
i386         buildonly-randconfig-002-20240319   clang
i386         buildonly-randconfig-003-20240319   clang
i386         buildonly-randconfig-004-20240319   clang
i386         buildonly-randconfig-005-20240319   gcc  
i386         buildonly-randconfig-006-20240319   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240319   clang
i386                  randconfig-002-20240319   clang
i386                  randconfig-003-20240319   clang
i386                  randconfig-004-20240319   clang
i386                  randconfig-005-20240319   clang
i386                  randconfig-006-20240319   gcc  
i386                  randconfig-011-20240319   gcc  
i386                  randconfig-012-20240319   clang
i386                  randconfig-013-20240319   gcc  
i386                  randconfig-014-20240319   clang
i386                  randconfig-015-20240319   clang
i386                  randconfig-016-20240319   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240319   gcc  
loongarch             randconfig-002-20240319   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                  decstation_64_defconfig   gcc  
mips                            gpr_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240319   gcc  
nios2                 randconfig-002-20240319   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240319   gcc  
parisc                randconfig-002-20240319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240319   gcc  
powerpc               randconfig-002-20240319   clang
powerpc               randconfig-003-20240319   clang
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64             randconfig-001-20240319   gcc  
powerpc64             randconfig-002-20240319   clang
powerpc64             randconfig-003-20240319   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240319   gcc  
riscv                 randconfig-002-20240319   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240319   gcc  
s390                  randconfig-002-20240319   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        dreamcast_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                    randconfig-001-20240319   gcc  
sh                    randconfig-002-20240319   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240319   gcc  
sparc64               randconfig-002-20240319   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240319   gcc  
um                    randconfig-002-20240319   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240319   gcc  
xtensa                randconfig-002-20240319   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
