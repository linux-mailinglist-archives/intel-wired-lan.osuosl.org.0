Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4797280B694
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 22:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8ACB40158;
	Sat,  9 Dec 2023 21:54:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8ACB40158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702158874;
	bh=RPBsEygSZdDYNSx6XztLXEdUJGUsViw9UJntQ6wQ+og=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XWrjwTpzH0BdrFrygh+TJu3oVJZYj3QjvjCmBvxlOlcYT0s5l1zm5VSkGfxJH6sRq
	 tFaWO0npoy2bq+Ls1ywZlNjMYV4Jf8KaQE3+ZqxmphEc81jxeOuzUVqOEz+HVT1wik
	 9dqIpohD42cjLJhTxFFLvCHzNpKv7yIZ/rXy1SlOktiiBS+8tSH13OttV5RMnHOf4q
	 AYOmsGLwxYCJlT/CtLsU/8x2/dBdfkh2ZSfYXShQz039gcEpmuwTYYYwvQ110jBtUx
	 XvMGubbP7u8B/LXZiacLLf9DsRlw2Fj394z6liOKmU/Ck82RU54bfL4oQf+/zbO7Zq
	 EAuyph7MHRvFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hOt-goQFrCmb; Sat,  9 Dec 2023 21:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DCB440461;
	Sat,  9 Dec 2023 21:54:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DCB440461
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 856641BF263
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 21:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DE5A60F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 21:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DE5A60F7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JR5WeY7D8O_g for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 21:54:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DCD660F39
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 21:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DCD660F39
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="425658310"
X-IronPort-AV: E=Sophos;i="6.04,264,1695711600"; d="scan'208";a="425658310"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2023 13:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="916337713"
X-IronPort-AV: E=Sophos;i="6.04,264,1695711600"; d="scan'208";a="916337713"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2023 13:54:17 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rC5H5-000G0C-02
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Dec 2023 21:54:15 +0000
Date: Sun, 10 Dec 2023 05:53:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312100530.3M0PIwDh-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702158862; x=1733694862;
 h=date:from:to:subject:message-id;
 bh=2ciiKItivSPwx3tYawKhhx7eau1/L/DEE3T9qZ0oQ08=;
 b=fYRTL9+yE4F2u1GCTsJYsIfoaU0aVcy5sAcD6+Zkn7n8OlHgiX8OseKr
 dflNxXlQLqPjgoSHz4M591a8eb3BmGtWKqetgi/2TSeNa+j3ChV2PNsu2
 NM2+EX2ugtvM/uW4gKBn527B52+5JYlvScxh96krob4NcdHkxgFtLeqgl
 xLbP3GdIlvGowAnlfq8z+N4ip9j0shSBPwJ+/L5WZsdYp8X80Sl5bIClo
 i7ErpJvEkOBonq4nFOlm4NqGm+0cQ2N2wfV97RxmLvrin4a2q14cqNCcQ
 UQQu5VvHEL7Sar288azbdBfEkmcCxBbIUfHGxHuOi9A9bzvELhcFNEZVR
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fYRTL9+y
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 c12296bbecc488623b7d1932080e394d08f3226b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: c12296bbecc488623b7d1932080e394d08f3226b  team: Fix use-after-free when an option instance allocation fails

elapsed time: 1610m

configs tested: 176
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                              alldefconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231209   gcc  
arc                   randconfig-002-20231209   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                          exynos_defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                   randconfig-001-20231209   gcc  
arm                   randconfig-002-20231209   gcc  
arm                   randconfig-003-20231209   gcc  
arm                   randconfig-004-20231209   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231209   gcc  
arm64                 randconfig-002-20231209   gcc  
arm64                 randconfig-003-20231209   gcc  
arm64                 randconfig-004-20231209   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231209   gcc  
csky                  randconfig-002-20231209   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231209   gcc  
i386         buildonly-randconfig-002-20231209   gcc  
i386         buildonly-randconfig-003-20231209   gcc  
i386         buildonly-randconfig-004-20231209   gcc  
i386         buildonly-randconfig-005-20231209   gcc  
i386         buildonly-randconfig-006-20231209   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231209   gcc  
i386                  randconfig-002-20231209   gcc  
i386                  randconfig-003-20231209   gcc  
i386                  randconfig-004-20231209   gcc  
i386                  randconfig-005-20231209   gcc  
i386                  randconfig-006-20231209   gcc  
i386                  randconfig-011-20231209   clang
i386                  randconfig-011-20231210   clang
i386                  randconfig-012-20231209   clang
i386                  randconfig-012-20231210   clang
i386                  randconfig-013-20231209   clang
i386                  randconfig-013-20231210   clang
i386                  randconfig-014-20231209   clang
i386                  randconfig-014-20231210   clang
i386                  randconfig-015-20231209   clang
i386                  randconfig-015-20231210   clang
i386                  randconfig-016-20231209   clang
i386                  randconfig-016-20231210   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231209   gcc  
loongarch             randconfig-002-20231209   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231209   gcc  
nios2                 randconfig-002-20231209   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231209   gcc  
parisc                randconfig-002-20231209   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                      chrp32_defconfig   gcc  
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20231209   gcc  
powerpc               randconfig-002-20231209   gcc  
powerpc               randconfig-003-20231209   gcc  
powerpc                    socrates_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
powerpc64             randconfig-001-20231209   gcc  
powerpc64             randconfig-002-20231209   gcc  
powerpc64             randconfig-003-20231209   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                 randconfig-001-20231209   gcc  
riscv                 randconfig-002-20231209   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                               j2_defconfig   gcc  
sh                    randconfig-001-20231209   gcc  
sh                    randconfig-002-20231209   gcc  
sh                           se7619_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231209   gcc  
sparc64               randconfig-002-20231209   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231209   gcc  
um                    randconfig-002-20231209   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231209   gcc  
x86_64       buildonly-randconfig-002-20231209   gcc  
x86_64       buildonly-randconfig-003-20231209   gcc  
x86_64       buildonly-randconfig-004-20231209   gcc  
x86_64       buildonly-randconfig-005-20231209   gcc  
x86_64       buildonly-randconfig-006-20231209   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-011-20231209   gcc  
x86_64                randconfig-012-20231209   gcc  
x86_64                randconfig-013-20231209   gcc  
x86_64                randconfig-014-20231209   gcc  
x86_64                randconfig-015-20231209   gcc  
x86_64                randconfig-016-20231209   gcc  
x86_64                randconfig-071-20231209   gcc  
x86_64                randconfig-072-20231209   gcc  
x86_64                randconfig-073-20231209   gcc  
x86_64                randconfig-074-20231209   gcc  
x86_64                randconfig-075-20231209   gcc  
x86_64                randconfig-076-20231209   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231209   gcc  
xtensa                randconfig-002-20231209   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
