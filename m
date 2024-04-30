Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8278B7FC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 20:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D341C40591;
	Tue, 30 Apr 2024 18:32:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80760EjvsViM; Tue, 30 Apr 2024 18:32:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 473F340580
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714501966;
	bh=NDB5S7Vb8klon61VAeacsUCUQ/ytU+XxDirbn8yaHGo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SQ+hMkavh0bW4Z40yIuLWo/MAEoIVDpYUYLS16PomnOA6cPrn9TM/i1cuVAV0Rzeh
	 TuvahlhrKUl2LqYfx7fnwNV0MHQQNFl8IuveLzXDE/GzRhlfm8tzWJf6s+gDCvbsUV
	 d8pPh4kZ+La4j/SSYTLm4NGawyVYzOlj1BVUWCYG2cEkBPnhR7K/pirp7D5dWS0Fvu
	 eD7fBEd/8UVJ06lqId6Rg/of4uzpkD0Wwam0M+MC4eNlmDlyTMeF4vRtYIaUl+wufV
	 4qDVw2EGyf1Kd/527l0+2pmNWmZ2AUDpmC6rTdrh9IP2C51qHHKHRQZyCKxboATTH4
	 AHKLclBvl7NOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 473F340580;
	Tue, 30 Apr 2024 18:32:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 219BD1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 18:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A1444060D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 18:32:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74oS0ZuCthEV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 18:32:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFE0440151
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFE0440151
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFE0440151
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 18:32:42 +0000 (UTC)
X-CSE-ConnectionGUID: p+iQj57mQ3GDqPQZciSMQQ==
X-CSE-MsgGUID: Hz+uKpBmTYKJAx0ReynkbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="35613325"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="35613325"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 11:32:41 -0700
X-CSE-ConnectionGUID: qsveGhJ+SB6W4Y4yntGq1A==
X-CSE-MsgGUID: TAR5U8KASQ6A7B4wnO+bCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="49754813"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 30 Apr 2024 11:32:41 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s1sHO-0008Sb-1G
 for intel-wired-lan@lists.osuosl.org; Tue, 30 Apr 2024 18:32:38 +0000
Date: Wed, 01 May 2024 02:31:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405010252.jALW3Q55-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714501963; x=1746037963;
 h=date:from:to:subject:message-id;
 bh=k86hYOelZGR+dXeVpoQn916sv1PtQfYfVyu4yQt//cU=;
 b=hXucl2SfL7gGx0MH6n+5nZ23dBUXfo7PZOm1jaUcfLGuLWxTeuxjPyQw
 M2o8fYkMQrHg6m5wwav296exiR14BUaMEaWzNRHEnkH4iYvzJtQAfN/PX
 yqGl2wno+abLg+I9yXX9ygM+1HNwGqPmoMsoWayFQ+FNZNcq7EThYB/HX
 phF7az+akwhQavYccioFAX/in293mI568QjM/8rsURJ7T52RZFMN/og5X
 HCPgBpFA6g/Rcktf8r+q+wS+aUf6OWbbwQMTNxawCuX7pRyj83ZvKBg2r
 lIdNV3Po3hvdB+QvnCJwvPctEMqimb1iLcxO7DRpMlAWd3IwxJZNzvvv1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hXucl2Sf
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 275ee01e2bbeaf9aa43f6e0b11c6ab414e6986a0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 275ee01e2bbeaf9aa43f6e0b11c6ab414e6986a0  e1000e: change usleep_range to udelay in PHY mdic access

elapsed time: 1493m

configs tested: 166
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
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20240430   gcc  
arc                   randconfig-002-20240430   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        neponset_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-002-20240430   gcc  
arm64                 randconfig-004-20240430   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240430   gcc  
csky                  randconfig-002-20240430   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240430   gcc  
i386         buildonly-randconfig-003-20240430   gcc  
i386         buildonly-randconfig-006-20240430   gcc  
i386                                defconfig   clang
i386                  randconfig-002-20240430   gcc  
i386                  randconfig-003-20240430   gcc  
i386                  randconfig-004-20240430   gcc  
i386                  randconfig-005-20240430   gcc  
i386                  randconfig-006-20240430   gcc  
i386                  randconfig-011-20240430   gcc  
i386                  randconfig-014-20240430   gcc  
i386                  randconfig-015-20240430   gcc  
i386                  randconfig-016-20240430   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240430   gcc  
loongarch             randconfig-002-20240430   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                           sun3_defconfig   gcc  
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
nios2                 randconfig-001-20240430   gcc  
nios2                 randconfig-002-20240430   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240430   gcc  
parisc                randconfig-002-20240430   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     kmeter1_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc                      ppc64e_defconfig   gcc  
powerpc               randconfig-001-20240430   gcc  
powerpc               randconfig-002-20240430   gcc  
powerpc                    sam440ep_defconfig   gcc  
powerpc                     tqm5200_defconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240430   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240430   gcc  
s390                  randconfig-002-20240430   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                            hp6xx_defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                    randconfig-001-20240430   gcc  
sh                    randconfig-002-20240430   gcc  
sh                           se7721_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240430   gcc  
sparc64               randconfig-002-20240430   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240430   gcc  
x86_64       buildonly-randconfig-002-20240430   clang
x86_64       buildonly-randconfig-003-20240430   clang
x86_64       buildonly-randconfig-004-20240430   clang
x86_64       buildonly-randconfig-005-20240430   clang
x86_64       buildonly-randconfig-006-20240430   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240430   clang
x86_64                randconfig-002-20240430   clang
x86_64                randconfig-003-20240430   gcc  
x86_64                randconfig-004-20240430   gcc  
x86_64                randconfig-005-20240430   gcc  
x86_64                randconfig-006-20240430   clang
x86_64                randconfig-011-20240430   clang
x86_64                randconfig-012-20240430   clang
x86_64                randconfig-013-20240430   gcc  
x86_64                randconfig-014-20240430   clang
x86_64                randconfig-015-20240430   clang
x86_64                randconfig-016-20240430   clang
x86_64                randconfig-071-20240430   clang
x86_64                randconfig-072-20240430   clang
x86_64                randconfig-073-20240430   clang
x86_64                randconfig-074-20240430   clang
x86_64                randconfig-075-20240430   gcc  
x86_64                randconfig-076-20240430   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240430   gcc  
xtensa                randconfig-002-20240430   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
