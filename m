Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0895407C9E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Sep 2021 11:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 350D840506;
	Sun, 12 Sep 2021 09:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2tDCj5BRaFC; Sun, 12 Sep 2021 09:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2516C40505;
	Sun, 12 Sep 2021 09:25:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5311BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Sep 2021 09:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19ED240139
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Sep 2021 09:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7LdmXD4wo_Lv for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Sep 2021 09:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91E9E400B5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Sep 2021 09:24:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10104"; a="208533685"
X-IronPort-AV: E=Sophos;i="5.85,287,1624345200"; d="scan'208";a="208533685"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2021 02:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,287,1624345200"; d="scan'208";a="608378067"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2021 02:24:51 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mPLjG-0006VI-C9; Sun, 12 Sep 2021 09:24:50 +0000
Date: Sun, 12 Sep 2021 17:23:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <613dc726.5ZOycSrPsyS2i/f3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 91148bfbf6bbfd334f1dd2fe3d58127c9d303d7b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 91148bfbf6bbfd334f1dd2fe3d58127c9d303d7b  igc: Update the device ID

elapsed time: 2390m

configs tested: 197
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc              randconfig-c003-20210911
i386                 randconfig-c001-20210911
i386                 randconfig-c001-20210912
i386                 randconfig-c001-20210910
sh                          landisk_defconfig
sh                          urquell_defconfig
um                           x86_64_defconfig
mips                       rbtx49xx_defconfig
powerpc                     stx_gp3_defconfig
arm                  colibri_pxa300_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                          g5_defconfig
powerpc                   currituck_defconfig
arm                       mainstone_defconfig
sh                          rsk7269_defconfig
powerpc                     powernv_defconfig
arm                      pxa255-idp_defconfig
powerpc                         ps3_defconfig
arm                         shannon_defconfig
mips                         db1xxx_defconfig
sh                           se7712_defconfig
powerpc                      pmac32_defconfig
mips                        vocore2_defconfig
xtensa                           allyesconfig
arm                         cm_x300_defconfig
sh                            migor_defconfig
mips                           ci20_defconfig
mips                        jmr3927_defconfig
powerpc                       holly_defconfig
m68k                       bvme6000_defconfig
powerpc                      acadia_defconfig
arm                  colibri_pxa270_defconfig
powerpc                     ppa8548_defconfig
powerpc                     tqm8541_defconfig
m68k                             alldefconfig
m68k                       m5475evb_defconfig
powerpc                   microwatt_defconfig
mips                          ath25_defconfig
powerpc                     mpc5200_defconfig
arm                        clps711x_defconfig
s390                             alldefconfig
ia64                      gensparse_defconfig
arm                         lpc18xx_defconfig
powerpc                      bamboo_defconfig
um                                  defconfig
arm                          badge4_defconfig
powerpc                     ksi8560_defconfig
ia64                             alldefconfig
mips                      maltasmvp_defconfig
arm                          collie_defconfig
sh                   sh7724_generic_defconfig
parisc                           alldefconfig
sh                        sh7763rdp_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                       multi_v4t_defconfig
powerpc                    adder875_defconfig
parisc                              defconfig
sh                          r7785rp_defconfig
arm                          ep93xx_defconfig
arm                           h5000_defconfig
powerpc                     mpc83xx_defconfig
mips                         tb0226_defconfig
arm                          pxa168_defconfig
mips                        bcm63xx_defconfig
arm                              alldefconfig
x86_64               randconfig-c001-20210912
arm                  randconfig-c002-20210912
x86_64               randconfig-c001-20210910
arm                  randconfig-c002-20210910
x86_64               randconfig-c001-20210911
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a002-20210911
x86_64               randconfig-a003-20210911
x86_64               randconfig-a004-20210911
x86_64               randconfig-a006-20210911
x86_64               randconfig-a005-20210911
x86_64               randconfig-a001-20210911
i386                 randconfig-a004-20210911
i386                 randconfig-a005-20210911
i386                 randconfig-a002-20210911
i386                 randconfig-a006-20210911
i386                 randconfig-a001-20210911
i386                 randconfig-a003-20210911
x86_64               randconfig-a013-20210910
x86_64               randconfig-a016-20210910
x86_64               randconfig-a012-20210910
x86_64               randconfig-a011-20210910
x86_64               randconfig-a014-20210910
x86_64               randconfig-a015-20210910
x86_64               randconfig-a016-20210912
x86_64               randconfig-a013-20210912
x86_64               randconfig-a012-20210912
x86_64               randconfig-a011-20210912
x86_64               randconfig-a014-20210912
x86_64               randconfig-a015-20210912
i386                 randconfig-a016-20210912
i386                 randconfig-a011-20210912
i386                 randconfig-a015-20210912
i386                 randconfig-a012-20210912
i386                 randconfig-a013-20210912
i386                 randconfig-a014-20210912
i386                 randconfig-a016-20210910
i386                 randconfig-a011-20210910
i386                 randconfig-a012-20210910
i386                 randconfig-a013-20210910
i386                 randconfig-a014-20210910
riscv                randconfig-r042-20210912
s390                 randconfig-r044-20210912
arc                  randconfig-r043-20210912
riscv                randconfig-r042-20210910
s390                 randconfig-r044-20210910
arc                  randconfig-r043-20210910
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210910
x86_64               randconfig-a003-20210910
x86_64               randconfig-a004-20210910
x86_64               randconfig-a006-20210910
x86_64               randconfig-a001-20210910
x86_64               randconfig-a002-20210912
x86_64               randconfig-a003-20210912
x86_64               randconfig-a006-20210912
x86_64               randconfig-a004-20210912
x86_64               randconfig-a005-20210912
x86_64               randconfig-a001-20210912
x86_64               randconfig-a005-20210910
i386                 randconfig-a004-20210910
i386                 randconfig-a005-20210910
i386                 randconfig-a002-20210910
i386                 randconfig-a006-20210910
i386                 randconfig-a001-20210910
i386                 randconfig-a003-20210910
i386                 randconfig-a004-20210912
i386                 randconfig-a005-20210912
i386                 randconfig-a002-20210912
i386                 randconfig-a006-20210912
i386                 randconfig-a003-20210912
i386                 randconfig-a001-20210912
x86_64               randconfig-a013-20210911
x86_64               randconfig-a016-20210911
x86_64               randconfig-a012-20210911
x86_64               randconfig-a011-20210911
x86_64               randconfig-a014-20210911
x86_64               randconfig-a015-20210911
i386                 randconfig-a016-20210911
i386                 randconfig-a011-20210911
i386                 randconfig-a015-20210911
i386                 randconfig-a012-20210911
i386                 randconfig-a013-20210911
i386                 randconfig-a014-20210911
hexagon              randconfig-r045-20210910
hexagon              randconfig-r041-20210910

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
