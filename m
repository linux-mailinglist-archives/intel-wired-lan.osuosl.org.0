Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E76EE50AE52
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 05:04:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E15C84085;
	Fri, 22 Apr 2022 03:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HoQqQViQJ20m; Fri, 22 Apr 2022 03:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EA928329A;
	Fri, 22 Apr 2022 03:04:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9F681BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 03:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBBCB41A68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 03:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZS7zLXy0rjeS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 03:04:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E9704156F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 03:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650596679; x=1682132679;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Zsn63sXSif13i+58EmgUZp+OMY/F57WHl1l91RUZgCM=;
 b=NElGv6YO4s2JbTExoze8gXEi72lmfCk1pHd4jjHkPKZ5CzpOajCeISYR
 oA0uSKsiAbbchMM/5RklmAkIbUGvnc98NiIBOdhdTo3QX540FE+6yMsQ5
 qdaXrLNy79gi4KAEGo1BmBCycIAZzHQJJFG4kW5s2M5RKCYlcZ6S4ObP1
 MjLZiFkRW22brkeJYpBaexIE+/T30r4+y+SpW0t/zePaJZGTVLpVFG6Xj
 oi9AfvpD5yMIVWj0veezovnlz8vAjloC0O1JlahAZJFA4ashAtwoh9Pze
 mviyLyavRLnXiD7dY6axHSUJazZpy7rgwo1zh2u0CRFEl7/oDhQlBjYBZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="327464821"
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400"; d="scan'208";a="327464821"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 20:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400"; d="scan'208";a="511381215"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Apr 2022 20:04:37 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nhjb2-00099k-Ay;
 Fri, 22 Apr 2022 03:04:36 +0000
Date: Fri, 22 Apr 2022 11:03:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62621b10.ZC8QGfu5X03Mwoyw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 aa81e73a7797ffcb0b94d9aefb4898e15ea8d5fa
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: aa81e73a7797ffcb0b94d9aefb4898e15ea8d5fa  i40e: i40e_main: fix a missing check on list iterator

elapsed time: 1992m

configs tested: 145
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
ia64                          tiger_defconfig
powerpc                     sequoia_defconfig
arm                          exynos_defconfig
arc                                 defconfig
powerpc                     asp8347_defconfig
sh                           se7712_defconfig
sh                        apsh4ad0a_defconfig
mips                         cobalt_defconfig
arm                            qcom_defconfig
arm                        trizeps4_defconfig
m68k                          hp300_defconfig
sh                                  defconfig
arc                      axs103_smp_defconfig
powerpc                     ep8248e_defconfig
sh                   sh7724_generic_defconfig
powerpc                       ppc64_defconfig
sh                          rsk7269_defconfig
mips                     loongson1b_defconfig
arm                        mini2440_defconfig
sparc                       sparc32_defconfig
arm                        keystone_defconfig
powerpc                  storcenter_defconfig
powerpc64                           defconfig
parisc                           alldefconfig
m68k                       m5208evb_defconfig
powerpc                      pcm030_defconfig
xtensa                    smp_lx200_defconfig
s390                             allyesconfig
mips                        bcm47xx_defconfig
sh                          polaris_defconfig
arm                        spear6xx_defconfig
mips                            ar7_defconfig
powerpc                     pq2fads_defconfig
sparc64                             defconfig
arm                          iop32x_defconfig
arm                         assabet_defconfig
sh                   secureedge5410_defconfig
sh                   rts7751r2dplus_defconfig
h8300                       h8s-sim_defconfig
arm                          pxa910_defconfig
arm                           stm32_defconfig
mips                           xway_defconfig
xtensa                          iss_defconfig
microblaze                          defconfig
xtensa                  cadence_csp_defconfig
powerpc                      arches_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220420
arm                  randconfig-c002-20220421
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220420
arc                  randconfig-r043-20220421
s390                 randconfig-r044-20220421
riscv                randconfig-r042-20220421
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
riscv                randconfig-c006-20220421
mips                 randconfig-c004-20220421
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220421
powerpc              randconfig-c003-20220421
riscv                randconfig-c006-20220420
mips                 randconfig-c004-20220420
arm                  randconfig-c002-20220420
powerpc              randconfig-c003-20220420
powerpc                      ppc64e_defconfig
mips                           rs90_defconfig
powerpc                        fsp2_defconfig
powerpc                     tqm8560_defconfig
powerpc                     tqm5200_defconfig
mips                malta_qemu_32r6_defconfig
mips                      bmips_stb_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220420
riscv                randconfig-r042-20220420
hexagon              randconfig-r045-20220420
s390                 randconfig-r044-20220420

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
