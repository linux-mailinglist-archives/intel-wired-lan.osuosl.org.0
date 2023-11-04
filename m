Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 857837E1156
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 23:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F265821D7;
	Sat,  4 Nov 2023 22:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F265821D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699136645;
	bh=gvLj/LtHNvF1b0wiN1eG9B2XRzQaeDx6Ug3zrJto6tI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1l87stjSViUaCcG6MH8aBz5RE+zJMGSb7xitlW7MjBJYwF4PiPS0y67lrMcgE+hBw
	 Zj4NRYh2esFr+vcGxnfpQRb+bGegZv8YYhAgewqwgYhXKg2KtN/W2tn6nq5jsGEaqB
	 tB9CxfeT/XfzEG9S9YyY29LQbGnCaGgtRCXWg09inzZmcQioI75OlpsqFG5sZOlPbP
	 P/3yX20pqDA3kjrMGNE7hW45oF71iRUdsuH06TTi5zCX47/YJPpLMVS+YBhX0qG+rD
	 PCFpTZaUPmM+dYv1rRj82BqwLae9AnJBLxdeEMKQvQdVtk3n7708ETEKwuN2MFFDS7
	 MDFOCh07uYjXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nNGWdXLjqjGD; Sat,  4 Nov 2023 22:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94D9482040;
	Sat,  4 Nov 2023 22:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94D9482040
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24BD01BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 22:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE40341969
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 22:23:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE40341969
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xclyvBm5Seb for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 22:23:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D37234195F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 22:23:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D37234195F
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="369317395"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="369317395"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 15:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="935444108"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="935444108"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 04 Nov 2023 15:23:55 -0700
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qzP3Z-0004kS-0q
 for intel-wired-lan@lists.osuosl.org; Sat, 04 Nov 2023 22:23:53 +0000
Date: Sun, 05 Nov 2023 06:23:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311050642.Zm0DMfRL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699136637; x=1730672637;
 h=date:from:to:subject:message-id;
 bh=6d6WgohCTS2fTePwl+gDW86Dvu3XnLCagg2rlVTHlfY=;
 b=Mur1d9CNm9O9dlp3kTyMjE6YcOo8wix77AmwvqN4ON9b8dRW883Guz3S
 ETvW3Zf6k3Bn02CrsZKklS2oo40FTOEcrgnNzydBukes+fOZ10dcyRxf4
 FdmU9WFL08LMCkaxDrbKiWuWvhcwCtf1wbCXtE5dWyvLG7Gy7DEqi3aAX
 A8lqQAVJxGuRp3LUSC3cjFAyxAxNFvz/gy3g8Uv0KxnFXLEOYUlaffS5g
 VmpMa7Lvg5sIESob3MPTUMfkAGgGAAH9tn8t7r249LITDoyUbleJrbMdb
 LI3QHTEWYoryUP8Y7vXr8C1Jj3F5ksGy/BGH2qs6atG8LrhkmjEfCG4BP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mur1d9CN
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1405b6c08fc9d3ba6c01de477556d127534ce52f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 1405b6c08fc9d3ba6c01de477556d127534ce52f  ice: dpll: fix output pin capabilities

elapsed time: 1665m

configs tested: 182
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
arc                   randconfig-001-20231104   gcc  
arc                   randconfig-002-20231104   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                   randconfig-001-20231104   gcc  
arm                   randconfig-002-20231104   gcc  
arm                   randconfig-003-20231104   gcc  
arm                   randconfig-004-20231104   gcc  
arm                             rpc_defconfig   gcc  
arm                         s3c6400_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm                       versatile_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231104   gcc  
arm64                 randconfig-002-20231104   gcc  
arm64                 randconfig-003-20231104   gcc  
arm64                 randconfig-004-20231104   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231104   gcc  
csky                  randconfig-002-20231104   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231104   gcc  
i386         buildonly-randconfig-002-20231104   gcc  
i386         buildonly-randconfig-003-20231104   gcc  
i386         buildonly-randconfig-004-20231104   gcc  
i386         buildonly-randconfig-005-20231104   gcc  
i386         buildonly-randconfig-006-20231104   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231105   gcc  
i386                  randconfig-002-20231105   gcc  
i386                  randconfig-003-20231105   gcc  
i386                  randconfig-004-20231105   gcc  
i386                  randconfig-005-20231105   gcc  
i386                  randconfig-006-20231105   gcc  
i386                  randconfig-011-20231104   gcc  
i386                  randconfig-012-20231104   gcc  
i386                  randconfig-013-20231104   gcc  
i386                  randconfig-014-20231104   gcc  
i386                  randconfig-015-20231104   gcc  
i386                  randconfig-016-20231104   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20231104   gcc  
loongarch             randconfig-002-20231104   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                  decstation_64_defconfig   gcc  
mips                          malta_defconfig   clang
mips                    maltaup_xpa_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231104   gcc  
nios2                 randconfig-002-20231104   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231104   gcc  
parisc                randconfig-002-20231104   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc               randconfig-001-20231104   gcc  
powerpc               randconfig-002-20231104   gcc  
powerpc               randconfig-003-20231104   gcc  
powerpc                     stx_gp3_defconfig   gcc  
powerpc64             randconfig-001-20231104   gcc  
powerpc64             randconfig-002-20231104   gcc  
powerpc64             randconfig-003-20231104   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231104   gcc  
riscv                 randconfig-002-20231104   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231104   gcc  
s390                  randconfig-002-20231104   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231104   gcc  
sh                    randconfig-002-20231104   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231104   gcc  
sparc                 randconfig-002-20231104   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231104   gcc  
sparc64               randconfig-002-20231104   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231104   gcc  
um                    randconfig-002-20231104   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231104   gcc  
x86_64       buildonly-randconfig-002-20231104   gcc  
x86_64       buildonly-randconfig-003-20231104   gcc  
x86_64       buildonly-randconfig-004-20231104   gcc  
x86_64       buildonly-randconfig-005-20231104   gcc  
x86_64       buildonly-randconfig-006-20231104   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231104   gcc  
x86_64                randconfig-002-20231104   gcc  
x86_64                randconfig-003-20231104   gcc  
x86_64                randconfig-004-20231104   gcc  
x86_64                randconfig-005-20231104   gcc  
x86_64                randconfig-006-20231104   gcc  
x86_64                randconfig-011-20231104   gcc  
x86_64                randconfig-012-20231104   gcc  
x86_64                randconfig-013-20231104   gcc  
x86_64                randconfig-014-20231104   gcc  
x86_64                randconfig-015-20231104   gcc  
x86_64                randconfig-016-20231104   gcc  
x86_64                randconfig-071-20231104   gcc  
x86_64                randconfig-072-20231104   gcc  
x86_64                randconfig-073-20231104   gcc  
x86_64                randconfig-074-20231104   gcc  
x86_64                randconfig-075-20231104   gcc  
x86_64                randconfig-076-20231104   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                randconfig-001-20231104   gcc  
xtensa                randconfig-002-20231104   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
