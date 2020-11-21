Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7A82BC050
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 16:47:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66A69872B7;
	Sat, 21 Nov 2020 15:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWJp8i+16QQ3; Sat, 21 Nov 2020 15:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9FD387463;
	Sat, 21 Nov 2020 15:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AE521BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53E6620420
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfiaX3gAbUYt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 15:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 1D8C620418
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:47:40 +0000 (UTC)
IronPort-SDR: ApZ0mDFP3anAXPbRVLjNNXXxiN5JVmA/Tftp1wbzfswKejSMLG5rdN2pZdTV6ejNNA0MuU/IFu
 hQu9NfAOWakg==
X-IronPort-AV: E=McAfee;i="6000,8403,9812"; a="233214813"
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; d="scan'208";a="233214813"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2020 07:47:39 -0800
IronPort-SDR: 6hq0pOquPmVCstWn+ivJTCf7q3HevXSxwL0tutLnXT6AF3aUF+vxqW5R+U5W3evsPtiG+njSS1
 3havkM2pL4Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; d="scan'208";a="533918760"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Nov 2020 07:47:38 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kgV6v-0000LL-Gd; Sat, 21 Nov 2020 15:47:37 +0000
Date: Sat, 21 Nov 2020 23:46:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fb9366c.0eIzvyNcmTfSijJZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 d2624e70a2f53b6f402fdaeabe7db798148618c5
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git  master
branch HEAD: d2624e70a2f53b6f402fdaeabe7db798148618c5  dpaa2-eth: select XGMAC_MDIO for MDIO bus support

elapsed time: 968m

configs tested: 150
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                           efm32_defconfig
sh                          rsk7203_defconfig
sh                          rsk7269_defconfig
nds32                             allnoconfig
sh                             sh03_defconfig
powerpc                    gamecube_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                            qcom_defconfig
arm                     eseries_pxa_defconfig
powerpc                      walnut_defconfig
mips                          rm200_defconfig
arm                       netwinder_defconfig
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
mips                         bigsur_defconfig
sparc                            allyesconfig
powerpc                     sequoia_defconfig
sh                            shmin_defconfig
powerpc                       holly_defconfig
sh                           sh2007_defconfig
arm                      integrator_defconfig
sh                        sh7785lcr_defconfig
sh                   rts7751r2dplus_defconfig
xtensa                  cadence_csp_defconfig
arm                       imx_v6_v7_defconfig
arm                            pleb_defconfig
mips                        maltaup_defconfig
ia64                          tiger_defconfig
xtensa                  audio_kc705_defconfig
mips                  maltasmvp_eva_defconfig
arm                         s3c6400_defconfig
mips                         db1xxx_defconfig
m68k                          sun3x_defconfig
arm                         mv78xx0_defconfig
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
xtensa                generic_kc705_defconfig
sh                          landisk_defconfig
um                             i386_defconfig
ia64                         bigsur_defconfig
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
i386                                defconfig
arm                           tegra_defconfig
xtensa                              defconfig
arm                        mini2440_defconfig
powerpc                        cell_defconfig
arm                           omap1_defconfig
ia64                      gensparse_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                 mpc836x_mds_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
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
i386                             allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20201120
x86_64               randconfig-a003-20201120
x86_64               randconfig-a004-20201120
x86_64               randconfig-a005-20201120
x86_64               randconfig-a001-20201120
x86_64               randconfig-a002-20201120
i386                 randconfig-a004-20201120
i386                 randconfig-a003-20201120
i386                 randconfig-a002-20201120
i386                 randconfig-a005-20201120
i386                 randconfig-a001-20201120
i386                 randconfig-a006-20201120
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
