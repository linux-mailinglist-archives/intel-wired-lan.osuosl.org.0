Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFA0301E22
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Jan 2021 19:33:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 07372203D9;
	Sun, 24 Jan 2021 18:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjsxNNCY3w-J; Sun, 24 Jan 2021 18:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8740D20477;
	Sun, 24 Jan 2021 18:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44EDD1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 18:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FD0485DA5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 18:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b3GoaSoahpOb for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Jan 2021 18:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F27785D9B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 18:33:45 +0000 (UTC)
IronPort-SDR: /3BDymC0G0wc8HsI9fe3JzjeSiDTOpzwnKrmyA1h/jep9AtWSnLHhC7376uDxF2GJKYrbhqvpi
 PZ8x7lbUl16w==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="158808407"
X-IronPort-AV: E=Sophos;i="5.79,371,1602572400"; d="scan'208";a="158808407"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2021 10:33:44 -0800
IronPort-SDR: U3tpd2UWPcq+TsODiSt1GW819iCBhlcyb5M6L3QZ2Hq2hH4KlzxtDA2TD1A+ILJPLg6T70WVeT
 jC9218/seybA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,371,1602572400"; d="scan'208";a="349901702"
Received: from lkp-server01.sh.intel.com (HELO 27c4e0a4b6d9) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jan 2021 10:33:43 -0800
Received: from kbuild by 27c4e0a4b6d9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l3kCl-0000Pd-8q; Sun, 24 Jan 2021 18:33:43 +0000
Date: Mon, 25 Jan 2021 02:33:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <600dbd68.cN7yMbapY/uJVmZ8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7dee98d38a0acb31cdff777748c1e578f5a66b52
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 7dee98d38a0acb31cdff777748c1e578f5a66b52  igc: Assign boolean values to a bool variable

elapsed time: 739m

configs tested: 119
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                        mvebu_v5_defconfig
mips                    maltaup_xpa_defconfig
powerpc                      ppc40x_defconfig
sh                              ul2_defconfig
mips                       lemote2f_defconfig
arm                            lart_defconfig
mips                        omega2p_defconfig
powerpc                    gamecube_defconfig
sh                            migor_defconfig
powerpc                      ppc44x_defconfig
mips                         tb0219_defconfig
powerpc                      pcm030_defconfig
powerpc                       ebony_defconfig
sh                             espt_defconfig
sparc64                             defconfig
sh                         apsh4a3a_defconfig
powerpc                      cm5200_defconfig
sparc                       sparc32_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                             pxa_defconfig
openrisc                         alldefconfig
mips                            ar7_defconfig
mips                        qi_lb60_defconfig
arm                   milbeaut_m10v_defconfig
mips                         db1xxx_defconfig
arm                             mxs_defconfig
powerpc                  storcenter_defconfig
mips                      pistachio_defconfig
arm                          lpd270_defconfig
nios2                            alldefconfig
arm                          pcm027_defconfig
mips                       capcella_defconfig
mips                          ath25_defconfig
sh                   rts7751r2dplus_defconfig
arm                          simpad_defconfig
arm                         shannon_defconfig
powerpc                        fsp2_defconfig
arm                         s5pv210_defconfig
arc                           tb10x_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                   lite5200b_defconfig
arm                           stm32_defconfig
arm                        realview_defconfig
powerpc                     sbc8548_defconfig
alpha                               defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        vexpress_defconfig
arm                        oxnas_v6_defconfig
mips                           ci20_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210124
i386                 randconfig-a002-20210124
i386                 randconfig-a003-20210124
x86_64               randconfig-a012-20210124
x86_64               randconfig-a016-20210124
x86_64               randconfig-a015-20210124
x86_64               randconfig-a011-20210124
x86_64               randconfig-a013-20210124
x86_64               randconfig-a014-20210124
i386                 randconfig-a013-20210124
i386                 randconfig-a012-20210124
i386                 randconfig-a014-20210124
i386                 randconfig-a016-20210124
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210124
x86_64               randconfig-a002-20210124
x86_64               randconfig-a001-20210124
x86_64               randconfig-a005-20210124
x86_64               randconfig-a006-20210124
x86_64               randconfig-a004-20210124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
