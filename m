Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC86B4AA840
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Feb 2022 12:04:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72BBD81DA3;
	Sat,  5 Feb 2022 11:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FADnBXK-xMo2; Sat,  5 Feb 2022 11:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E6B080AA8;
	Sat,  5 Feb 2022 11:04:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BBE11BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Feb 2022 11:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 292E440194
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Feb 2022 11:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOpV9oO7lUZ1 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Feb 2022 11:04:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0138F40018
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Feb 2022 11:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644059067; x=1675595067;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xyAJ/DNm4ZVUNVSWMZ3zIT30xG2qif+VUhfDfiGEGDM=;
 b=O0v9QZcILxYLoLf0/VaPNouGFkFFmeK4/NfacmtaNvwlVKqoGGsRejK+
 1WJYxDiQMnI3DFs4gMjVY/NiCyvbuTMbesxsfrJWJI8nPUGcYnXPplT1M
 NMl+Enhq6h1gjsRAcWWGXNd1nzZ7p2jKGVYsW3owDOHIlScTkeMI870Oo
 tBQj6CB9BAVqAELJj1Q0s7j6fpcc+rLp7iRHxkgkx+rCqjXo35gF/mKvu
 bO6luTln7kcvgt72M79KpM54FmagAyPZWolkKuugIBpUEiBPh2KQ7CkNT
 smgL/33DV10IpFcp6QpYhGxbC4UaU5yPdQ0GrZ2b1e7hV5A/wo822PlFW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="311804125"
X-IronPort-AV: E=Sophos;i="5.88,345,1635231600"; d="scan'208";a="311804125"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2022 03:04:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,345,1635231600"; d="scan'208";a="481094051"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Feb 2022 03:04:25 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nGIrg-000YwY-KW; Sat, 05 Feb 2022 11:04:24 +0000
Date: Sat, 05 Feb 2022 19:03:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61fe597a.0nG3f+2wkL+Ia1er%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 40106e005bd9764f84ef9e6c0979fe1126d7ff02
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 40106e005bd9764f84ef9e6c0979fe1126d7ff02  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 856m

configs tested: 207
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220131
powerpc              randconfig-c003-20220131
sh                             shx3_defconfig
sh                     sh7710voipgw_defconfig
ia64                             allmodconfig
powerpc                     rainier_defconfig
xtensa                          iss_defconfig
mips                      fuloong2e_defconfig
arm                         vf610m4_defconfig
powerpc64                        alldefconfig
sh                        sh7757lcr_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                        warp_defconfig
mips                         tb0226_defconfig
sh                          r7780mp_defconfig
sh                ecovec24-romimage_defconfig
xtensa                    smp_lx200_defconfig
arm                            hisi_defconfig
arm                           tegra_defconfig
mips                 decstation_r4k_defconfig
openrisc                  or1klitex_defconfig
sparc64                             defconfig
arc                           tb10x_defconfig
sh                         ap325rxa_defconfig
mips                  maltasmvp_eva_defconfig
mips                         db1xxx_defconfig
arm                       aspeed_g5_defconfig
sh                           se7206_defconfig
sh                             sh03_defconfig
powerpc                      cm5200_defconfig
arm                      footbridge_defconfig
powerpc                      ppc6xx_defconfig
arm                        clps711x_defconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
powerpc                      chrp32_defconfig
arm                         lpc18xx_defconfig
powerpc                      ep88xc_defconfig
arm                        mini2440_defconfig
sh                           se7619_defconfig
xtensa                generic_kc705_defconfig
arc                      axs103_smp_defconfig
sh                           se7751_defconfig
openrisc                    or1ksim_defconfig
sh                      rts7751r2d1_defconfig
parisc                generic-64bit_defconfig
sparc64                          alldefconfig
microblaze                      mmu_defconfig
arm                           corgi_defconfig
xtensa                    xip_kc705_defconfig
arc                     nsimosci_hs_defconfig
mips                           gcw0_defconfig
ia64                                defconfig
powerpc                    klondike_defconfig
mips                      loongson3_defconfig
xtensa                  cadence_csp_defconfig
m68k                          multi_defconfig
arm                            zeus_defconfig
powerpc                     redwood_defconfig
sh                              ul2_defconfig
powerpc                    amigaone_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        shmobile_defconfig
m68k                        m5407c3_defconfig
ia64                        generic_defconfig
mips                            gpr_defconfig
sh                          polaris_defconfig
sh                           se7780_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                           h3600_defconfig
csky                             alldefconfig
mips                         mpc30x_defconfig
mips                        bcm47xx_defconfig
h8300                               defconfig
arm                  randconfig-c002-20220130
arm                  randconfig-c002-20220131
arm                  randconfig-c002-20220202
arm                  randconfig-c002-20220204
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20220131
x86_64               randconfig-a003-20220131
x86_64               randconfig-a001-20220131
x86_64               randconfig-a006-20220131
x86_64               randconfig-a005-20220131
x86_64               randconfig-a002-20220131
i386                 randconfig-a006-20220131
i386                 randconfig-a005-20220131
i386                 randconfig-a003-20220131
i386                 randconfig-a002-20220131
i386                 randconfig-a001-20220131
i386                 randconfig-a004-20220131
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220130
arc                  randconfig-r043-20220130
arc                  randconfig-r043-20220131
s390                 randconfig-r044-20220130
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220201
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220201
mips                 randconfig-c004-20220201
i386                          randconfig-c001
arm                  randconfig-c002-20220201
riscv                randconfig-c006-20220205
powerpc              randconfig-c003-20220205
mips                 randconfig-c004-20220205
arm                  randconfig-c002-20220205
riscv                randconfig-c006-20220130
arm                  randconfig-c002-20220130
powerpc              randconfig-c003-20220130
mips                 randconfig-c004-20220130
powerpc                 mpc832x_rdb_defconfig
arm                          pcm027_defconfig
arm                          ixp4xx_defconfig
mips                         tb0287_defconfig
powerpc                     skiroot_defconfig
powerpc                        icon_defconfig
mips                        bcm63xx_defconfig
powerpc                  mpc866_ads_defconfig
mips                          rm200_defconfig
powerpc                      acadia_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a013-20220131
x86_64               randconfig-a015-20220131
x86_64               randconfig-a014-20220131
x86_64               randconfig-a016-20220131
x86_64               randconfig-a011-20220131
x86_64               randconfig-a012-20220131
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a011-20220131
i386                 randconfig-a013-20220131
i386                 randconfig-a014-20220131
i386                 randconfig-a012-20220131
i386                 randconfig-a015-20220131
i386                 randconfig-a016-20220131
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220131
hexagon              randconfig-r045-20220203
hexagon              randconfig-r041-20220203
hexagon              randconfig-r045-20220130
hexagon              randconfig-r045-20220131
hexagon              randconfig-r041-20220130
hexagon              randconfig-r041-20220131
s390                 randconfig-r044-20220131

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
