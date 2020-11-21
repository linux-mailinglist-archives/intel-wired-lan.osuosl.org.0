Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 472C62BC039
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 16:25:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECB492041E;
	Sat, 21 Nov 2020 15:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id icFnb+vNx1iE; Sat, 21 Nov 2020 15:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B65CF2044A;
	Sat, 21 Nov 2020 15:23:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 754A51BF355
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6EE7687446
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rJMfO4YKS87k for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 15:23:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3C2087441
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:23:39 +0000 (UTC)
IronPort-SDR: ZHUm2M8Ib2DueOvoE08RczpXUNjUkFvds5IamUjdgFziSZ4q6MhGgNQrGnhW1FWEvTOB92krU1
 iEAqkSxsY52w==
X-IronPort-AV: E=McAfee;i="6000,8403,9812"; a="159365773"
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; d="scan'208";a="159365773"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2020 07:23:35 -0800
IronPort-SDR: Aw670mrq1UYy6I7MxcccNZRd2c0QvcvH9vCub7GJ+Ltze080OK+d6uF0z7bxrbOEEusDw0dzh0
 8339rSunGGqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; d="scan'208";a="477588342"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 21 Nov 2020 07:23:34 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kgUjd-0000Ky-UG; Sat, 21 Nov 2020 15:23:33 +0000
Date: Sat, 21 Nov 2020 23:22:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fb930c3.MBfItD4k7L7VAevt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 9e8ac63fe1bc346275b27d5d8016e465402d3c34
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  master
branch HEAD: 9e8ac63fe1bc346275b27d5d8016e465402d3c34  Merge branch 'mptcp-more-miscellaneous-mptcp-fixes'

elapsed time: 866m

configs tested: 147
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                             mxs_defconfig
powerpc                     mpc83xx_defconfig
mips                           ip32_defconfig
arm                          badge4_defconfig
powerpc                     tqm8540_defconfig
sh                           se7721_defconfig
arc                        vdk_hs38_defconfig
sh                   sh7724_generic_defconfig
powerpc                 mpc8540_ads_defconfig
riscv                          rv32_defconfig
nds32                               defconfig
arm                         lpc32xx_defconfig
powerpc                       holly_defconfig
sh                           sh2007_defconfig
arm                      integrator_defconfig
sh                        sh7785lcr_defconfig
sh                   rts7751r2dplus_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                  maltasmvp_eva_defconfig
arm                         s3c6400_defconfig
mips                         db1xxx_defconfig
m68k                          sun3x_defconfig
arm                         mv78xx0_defconfig
powerpc                     mpc5200_defconfig
arm                           corgi_defconfig
powerpc                     powernv_defconfig
mips                      pic32mzda_defconfig
arm                         hackkit_defconfig
mips                      fuloong2e_defconfig
arm                          simpad_defconfig
arm                        trizeps4_defconfig
arc                        nsimosci_defconfig
mips                     loongson1b_defconfig
powerpc64                           defconfig
arc                         haps_hs_defconfig
arm                       aspeed_g5_defconfig
m68k                        stmark2_defconfig
arm                       cns3420vb_defconfig
arm                     am200epdkit_defconfig
alpha                               defconfig
powerpc                     ppa8548_defconfig
sh                           se7780_defconfig
c6x                                 defconfig
arm                  colibri_pxa300_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 canyonlands_defconfig
sh                           se7705_defconfig
powerpc                      tqm8xx_defconfig
powerpc                      ppc6xx_defconfig
arm                           sunxi_defconfig
sh                           se7750_defconfig
powerpc                      obs600_defconfig
mips                        maltaup_defconfig
arm                           tegra_defconfig
xtensa                              defconfig
arm                        mini2440_defconfig
powerpc                        cell_defconfig
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
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201120
i386                 randconfig-a003-20201120
i386                 randconfig-a002-20201120
i386                 randconfig-a005-20201120
i386                 randconfig-a001-20201120
i386                 randconfig-a006-20201120
x86_64               randconfig-a015-20201121
x86_64               randconfig-a011-20201121
x86_64               randconfig-a014-20201121
x86_64               randconfig-a016-20201121
x86_64               randconfig-a012-20201121
x86_64               randconfig-a013-20201121
i386                 randconfig-a012-20201120
i386                 randconfig-a013-20201120
i386                 randconfig-a011-20201120
i386                 randconfig-a016-20201120
i386                 randconfig-a014-20201120
i386                 randconfig-a015-20201120
i386                 randconfig-a012-20201121
i386                 randconfig-a013-20201121
i386                 randconfig-a011-20201121
i386                 randconfig-a016-20201121
i386                 randconfig-a014-20201121
i386                 randconfig-a015-20201121
x86_64               randconfig-a006-20201120
x86_64               randconfig-a003-20201120
x86_64               randconfig-a004-20201120
x86_64               randconfig-a005-20201120
x86_64               randconfig-a001-20201120
x86_64               randconfig-a002-20201120
riscv                    nommu_k210_defconfig
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20201120
x86_64               randconfig-a011-20201120
x86_64               randconfig-a014-20201120
x86_64               randconfig-a016-20201120
x86_64               randconfig-a012-20201120
x86_64               randconfig-a013-20201120
x86_64               randconfig-a006-20201121
x86_64               randconfig-a003-20201121
x86_64               randconfig-a004-20201121
x86_64               randconfig-a005-20201121
x86_64               randconfig-a002-20201121
x86_64               randconfig-a001-20201121

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
