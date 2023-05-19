Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 775E070989D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 15:44:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7FD083A43;
	Fri, 19 May 2023 13:44:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7FD083A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684503873;
	bh=qx2ZShTiqJNbRHLb2NJsxAo5QTcEfAU+zmkyX9zbNg0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QkBu1afhR5MjqZLMk6d6bK7MrBesvBIXZs31bSk1JuuCyKTjwk9OaJ7JV8gQkDeFc
	 Gvnm0sOojE36HvzPrjeaAxfP3SoOyoskSsE9eKB8Jc2od0zSKhYrleH6EcYFv8OkHz
	 UuXs5vzC1tdQjCH3rsCzi3oiFg6x8A5dZKtoN6t817gervR3+KMdhlIuvHt2SKrTe3
	 Ipved/71ws3HkiMxvnspYnLj4MKEMxc5OgV3CViUXEb5nCHZ+ZLYtvrvmpmWKSH0uP
	 1Gv/5oiGCzFSb0UtvelfxNbjST6Yz6q2UlMcQZKVFRh3yia5NmAwP5lsqMYMKpqd3h
	 oNmPweFV/BnxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHslJE1IkaYf; Fri, 19 May 2023 13:44:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E2C583670;
	Fri, 19 May 2023 13:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E2C583670
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84CC51BF400
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 13:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 597B8611EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 13:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 597B8611EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tdx7e4L94RK2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 13:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CCF260D62
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CCF260D62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 13:44:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="336964660"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="336964660"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 06:44:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="696716705"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="696716705"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 19 May 2023 06:44:09 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q00Ov-000Aqy-10
 for intel-wired-lan@lists.osuosl.org; Fri, 19 May 2023 13:44:09 +0000
Date: Fri, 19 May 2023 21:43:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230519134328.tweX1%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684503863; x=1716039863;
 h=date:from:to:subject:message-id;
 bh=PnY7uaSwbC4rosa6ovz0plxyvyXse1sa3tGB7+2L3ew=;
 b=Tj8HX5B01O7fFRXPt9jBHEDBfIJ1oTlg/pJzohjX+tdqGX9bNHXpQgEi
 C+Bz9foCW3b1gGFi2Bw+Wu/r6uxYX1GKyujymeojU9Aqydwdn5+mwGzxg
 B4ue+iHS5NZIE+8irRO+oXbv4wOlX91lL4KsspmzZYAFb7Ka0uuOHLCcp
 3omrHPeF4nCGdYqq97UobTt+etFm38p2xHZEAWLP2ukSORW+0tsLU7eQ2
 AUowO4lk2JLhdKGfAfaEG4IbzzKHPQVoRyzKBlCNMLpbge1vLjCsaWgxU
 NGwBoXcgpCUxo9ux0p2LrLwno3t3gp8vMuVO7KZJscEstsBoHJz4RImws
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tj8HX5B0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 108d403a85d44bd15c597fb542054b5d7f3454cb
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

tree/branch: INFO setup_repo_specs: /db/releases/20230519164737/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 108d403a85d44bd15c597fb542054b5d7f3454cb  e1000e: Add @adapter description to kdoc

elapsed time: 846m

configs tested: 216
configs skipped: 17

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230517   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230517   gcc  
alpha                randconfig-r006-20230517   gcc  
alpha                randconfig-r013-20230517   gcc  
alpha                randconfig-r033-20230517   gcc  
alpha                randconfig-r036-20230517   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r025-20230517   gcc  
arc                  randconfig-r043-20230517   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            mps2_defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                          pxa3xx_defconfig   gcc  
arm                  randconfig-r001-20230517   gcc  
arm                  randconfig-r003-20230517   gcc  
arm                  randconfig-r006-20230517   gcc  
arm                  randconfig-r034-20230517   gcc  
arm                  randconfig-r036-20230517   gcc  
arm                  randconfig-r046-20230517   clang
arm                        spear3xx_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230517   gcc  
arm64                randconfig-r015-20230517   gcc  
csky         buildonly-randconfig-r001-20230519   gcc  
csky         buildonly-randconfig-r003-20230519   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230517   gcc  
csky                 randconfig-r006-20230517   gcc  
csky                 randconfig-r024-20230517   gcc  
csky                 randconfig-r025-20230517   gcc  
hexagon      buildonly-randconfig-r006-20230517   clang
hexagon              randconfig-r035-20230517   clang
hexagon              randconfig-r041-20230517   clang
hexagon              randconfig-r045-20230517   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230519   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230517   gcc  
ia64                 randconfig-r011-20230517   gcc  
ia64                 randconfig-r022-20230517   gcc  
ia64                 randconfig-r023-20230517   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230517   gcc  
loongarch    buildonly-randconfig-r002-20230517   gcc  
loongarch    buildonly-randconfig-r002-20230519   gcc  
loongarch    buildonly-randconfig-r006-20230517   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230517   gcc  
loongarch            randconfig-r003-20230517   gcc  
loongarch            randconfig-r011-20230517   gcc  
loongarch            randconfig-r023-20230517   gcc  
loongarch            randconfig-r033-20230517   gcc  
loongarch            randconfig-r034-20230517   gcc  
loongarch            randconfig-r035-20230517   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                          multi_defconfig   gcc  
m68k                 randconfig-r005-20230517   gcc  
m68k                 randconfig-r014-20230517   gcc  
m68k                 randconfig-r015-20230517   gcc  
m68k                 randconfig-r022-20230517   gcc  
m68k                 randconfig-r024-20230517   gcc  
microblaze   buildonly-randconfig-r002-20230517   gcc  
microblaze   buildonly-randconfig-r004-20230517   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r021-20230517   gcc  
microblaze           randconfig-r031-20230517   gcc  
microblaze           randconfig-r033-20230517   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                 randconfig-r003-20230517   gcc  
mips                 randconfig-r032-20230517   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230517   gcc  
openrisc     buildonly-randconfig-r005-20230519   gcc  
openrisc             randconfig-r001-20230517   gcc  
openrisc             randconfig-r003-20230517   gcc  
openrisc             randconfig-r004-20230517   gcc  
openrisc             randconfig-r013-20230517   gcc  
openrisc             randconfig-r035-20230517   gcc  
parisc       buildonly-randconfig-r005-20230517   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230517   gcc  
parisc               randconfig-r011-20230517   gcc  
parisc               randconfig-r032-20230517   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r004-20230517   gcc  
powerpc                        cell_defconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc                         ps3_defconfig   gcc  
powerpc              randconfig-r011-20230517   gcc  
powerpc                    sam440ep_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv        buildonly-randconfig-r003-20230517   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230517   clang
riscv                randconfig-r005-20230517   clang
riscv                randconfig-r014-20230517   gcc  
riscv                randconfig-r032-20230517   clang
riscv                randconfig-r042-20230517   gcc  
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230517   clang
s390                 randconfig-r004-20230517   clang
s390                 randconfig-r005-20230517   clang
s390                 randconfig-r022-20230517   gcc  
s390                 randconfig-r026-20230517   gcc  
s390                 randconfig-r031-20230517   clang
s390                 randconfig-r044-20230517   gcc  
sh                               allmodconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                   randconfig-r005-20230517   gcc  
sh                   randconfig-r022-20230517   gcc  
sh                   randconfig-r023-20230517   gcc  
sh                   randconfig-r034-20230517   gcc  
sh                           se7721_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230517   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230517   gcc  
sparc                randconfig-r012-20230517   gcc  
sparc                randconfig-r016-20230517   gcc  
sparc                randconfig-r021-20230517   gcc  
sparc                randconfig-r024-20230517   gcc  
sparc                randconfig-r031-20230517   gcc  
sparc                       sparc32_defconfig   gcc  
sparc64      buildonly-randconfig-r003-20230517   gcc  
sparc64      buildonly-randconfig-r004-20230517   gcc  
sparc64      buildonly-randconfig-r004-20230519   gcc  
sparc64      buildonly-randconfig-r005-20230517   gcc  
sparc64              randconfig-r004-20230517   gcc  
sparc64              randconfig-r012-20230517   gcc  
sparc64              randconfig-r026-20230517   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                        randconfig-x051   gcc  
x86_64                        randconfig-x052   clang
x86_64                        randconfig-x053   gcc  
x86_64                        randconfig-x054   clang
x86_64                        randconfig-x055   gcc  
x86_64                        randconfig-x056   clang
x86_64                        randconfig-x061   gcc  
x86_64                        randconfig-x062   clang
x86_64                        randconfig-x063   gcc  
x86_64                        randconfig-x064   clang
x86_64                        randconfig-x065   gcc  
x86_64                        randconfig-x066   clang
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230517   gcc  
xtensa               randconfig-r002-20230517   gcc  
xtensa               randconfig-r004-20230517   gcc  
xtensa               randconfig-r012-20230517   gcc  
xtensa               randconfig-r026-20230517   gcc  
xtensa               randconfig-r035-20230517   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
