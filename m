Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FEF2FCC7C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 09:17:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 148DD86FC6;
	Wed, 20 Jan 2021 08:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZMoFPIqa2X5; Wed, 20 Jan 2021 08:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88647860DC;
	Wed, 20 Jan 2021 08:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFFED1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 08:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB47885EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 08:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLBPdK2WTp57 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 08:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 030DB85E5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 08:17:00 +0000 (UTC)
IronPort-SDR: 4WoQg5kQ7+pgzhaxSQhSkZp19YMlT8cBMJHm7tUCUiM+RUxWD4Y3slajdPD4eXj3X+sZqB/J1l
 03cr6TgBX1iQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="240603994"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="240603994"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 00:17:00 -0800
IronPort-SDR: wh26x89hUbNobYzGX52tnnuR+tU5IUr4dNE1eQ8nuMOj0gOyK1H5E1UM1Fw8RI7ohur4FKCy6U
 5l7R90DhclTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="347474997"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jan 2021 00:16:59 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l28fi-0005gy-Ce; Wed, 20 Jan 2021 08:16:58 +0000
Date: Wed, 20 Jan 2021 16:16:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6007e6dd.RbgEJ/iCwIfycfGD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 9d9b1ee0b2d1c9e02b2338c4a4b0a062d2d3edac
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
branch HEAD: 9d9b1ee0b2d1c9e02b2338c4a4b0a062d2d3edac  tcp: fix TCP_USER_TIMEOUT with zero window

elapsed time: 1611m

configs tested: 232
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                         ap325rxa_defconfig
c6x                        evmc6678_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                          rm200_defconfig
arm                         s5pv210_defconfig
sh                              ul2_defconfig
mips                           gcw0_defconfig
openrisc                            defconfig
sh                        sh7763rdp_defconfig
powerpc                      bamboo_defconfig
sh                           sh2007_defconfig
sh                          polaris_defconfig
powerpc                      pasemi_defconfig
sparc64                             defconfig
arc                           tb10x_defconfig
m68k                        m5272c3_defconfig
c6x                        evmc6474_defconfig
powerpc                    mvme5100_defconfig
arm                       aspeed_g5_defconfig
arm                              zx_defconfig
arm                       netwinder_defconfig
arm                        keystone_defconfig
arm                           viper_defconfig
powerpc                  mpc885_ads_defconfig
openrisc                         alldefconfig
arm                           h3600_defconfig
mips                         tb0226_defconfig
powerpc                 canyonlands_defconfig
powerpc                      mgcoge_defconfig
powerpc                 mpc8313_rdb_defconfig
riscv                            alldefconfig
powerpc                      pmac32_defconfig
mips                           ci20_defconfig
arm                           sunxi_defconfig
mips                        bcm63xx_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      tqm8xx_defconfig
m68k                        mvme147_defconfig
arm                          tango4_defconfig
powerpc                       maple_defconfig
xtensa                generic_kc705_defconfig
arm                            qcom_defconfig
m68k                            q40_defconfig
nios2                            allyesconfig
alpha                               defconfig
arm                        neponset_defconfig
sh                   rts7751r2dplus_defconfig
nds32                               defconfig
arm                          gemini_defconfig
um                           x86_64_defconfig
arc                     nsimosci_hs_defconfig
powerpc                       holly_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
mips                     decstation_defconfig
mips                malta_qemu_32r6_defconfig
arm                         s3c2410_defconfig
m68k                          multi_defconfig
powerpc                    adder875_defconfig
arm                            hisi_defconfig
arm                         palmz72_defconfig
mips                malta_kvm_guest_defconfig
m68k                         amcore_defconfig
mips                  decstation_64_defconfig
ia64                            zx1_defconfig
sh                           se7721_defconfig
xtensa                         virt_defconfig
sh                         apsh4a3a_defconfig
m68k                       m5249evb_defconfig
mips                      loongson3_defconfig
i386                                defconfig
c6x                        evmc6472_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         cobalt_defconfig
arm                           corgi_defconfig
m68k                        m5407c3_defconfig
m68k                          amiga_defconfig
powerpc                      cm5200_defconfig
arm                       omap2plus_defconfig
powerpc                     pq2fads_defconfig
powerpc                       eiger_defconfig
arc                              alldefconfig
arm                        shmobile_defconfig
parisc                generic-32bit_defconfig
powerpc                      katmai_defconfig
powerpc                     tqm8548_defconfig
h8300                               defconfig
arm                          prima2_defconfig
arm64                            alldefconfig
xtensa                       common_defconfig
sh                             shx3_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                         tb0287_defconfig
arm                       aspeed_g4_defconfig
parisc                generic-64bit_defconfig
mips                     loongson1b_defconfig
mips                           jazz_defconfig
mips                        omega2p_defconfig
arm                            lart_defconfig
mips                     cu1000-neo_defconfig
arm                       cns3420vb_defconfig
um                             i386_defconfig
xtensa                           alldefconfig
arm                        magician_defconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                             ezx_defconfig
arm                          pxa168_defconfig
powerpc                 mpc837x_rdb_defconfig
riscv                    nommu_k210_defconfig
riscv                          rv32_defconfig
s390                       zfcpdump_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                      tct_hammer_defconfig
powerpc                     skiroot_defconfig
h8300                            allyesconfig
arm                        spear6xx_defconfig
ia64                        generic_defconfig
powerpc                     mpc83xx_defconfig
arm                           stm32_defconfig
sh                           se7780_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20210118
i386                 randconfig-a005-20210118
i386                 randconfig-a006-20210118
i386                 randconfig-a001-20210118
i386                 randconfig-a003-20210118
i386                 randconfig-a004-20210118
i386                 randconfig-a002-20210119
i386                 randconfig-a005-20210119
i386                 randconfig-a006-20210119
i386                 randconfig-a001-20210119
i386                 randconfig-a003-20210119
i386                 randconfig-a004-20210119
i386                 randconfig-a001-20210120
i386                 randconfig-a002-20210120
i386                 randconfig-a004-20210120
i386                 randconfig-a006-20210120
i386                 randconfig-a005-20210120
i386                 randconfig-a003-20210120
x86_64               randconfig-a012-20210120
x86_64               randconfig-a015-20210120
x86_64               randconfig-a016-20210120
x86_64               randconfig-a011-20210120
x86_64               randconfig-a013-20210120
x86_64               randconfig-a014-20210120
i386                 randconfig-a013-20210120
i386                 randconfig-a011-20210120
i386                 randconfig-a012-20210120
i386                 randconfig-a014-20210120
i386                 randconfig-a015-20210120
i386                 randconfig-a016-20210120
i386                 randconfig-a011-20210119
i386                 randconfig-a012-20210119
i386                 randconfig-a016-20210119
i386                 randconfig-a015-20210119
i386                 randconfig-a013-20210119
i386                 randconfig-a014-20210119
i386                 randconfig-a011-20210118
i386                 randconfig-a012-20210118
i386                 randconfig-a016-20210118
i386                 randconfig-a015-20210118
i386                 randconfig-a013-20210118
i386                 randconfig-a014-20210118
x86_64               randconfig-a004-20210119
x86_64               randconfig-a006-20210119
x86_64               randconfig-a001-20210119
x86_64               randconfig-a003-20210119
x86_64               randconfig-a005-20210119
x86_64               randconfig-a002-20210119
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210120
x86_64               randconfig-a003-20210120
x86_64               randconfig-a001-20210120
x86_64               randconfig-a005-20210120
x86_64               randconfig-a006-20210120
x86_64               randconfig-a004-20210120
x86_64               randconfig-a015-20210119
x86_64               randconfig-a013-20210119
x86_64               randconfig-a012-20210119
x86_64               randconfig-a016-20210119
x86_64               randconfig-a011-20210119
x86_64               randconfig-a014-20210119
x86_64               randconfig-a004-20210118
x86_64               randconfig-a006-20210118
x86_64               randconfig-a001-20210118
x86_64               randconfig-a003-20210118
x86_64               randconfig-a005-20210118
x86_64               randconfig-a002-20210118

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
