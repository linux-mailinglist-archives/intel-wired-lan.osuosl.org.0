Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2952D3C94
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 09:01:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2FF112051B;
	Wed,  9 Dec 2020 08:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHbkDIywZlu4; Wed,  9 Dec 2020 08:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 365F32E2BC;
	Wed,  9 Dec 2020 08:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FAE31BF30E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 08:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B5712E243
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 08:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wk7d65qWwOTE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 08:00:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FCA7204D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 08:00:03 +0000 (UTC)
IronPort-SDR: p6AqRp/7UD6tBlN8Ava82MvzG7YjHgbyScGwkDr+WUi1VSYwBgn0yOat7una0dJ0vHHYj5oN2w
 lS+MFEauJ/oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="170526062"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="170526062"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 00:00:02 -0800
IronPort-SDR: ldwP8+WTtYSedHmmIOyscBPN4FBjS7gm085RWMgiVle6vHRBQsiWXZUxzSvqFOT4kjnq3ke4Ey
 vsi2vwQ1Xh8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="407956901"
Received: from lkp-server01.sh.intel.com (HELO 2bbb63443648) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 09 Dec 2020 00:00:01 -0800
Received: from kbuild by 2bbb63443648 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kmuOG-000095-Hp; Wed, 09 Dec 2020 08:00:00 +0000
Date: Wed, 09 Dec 2020 15:59:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fd083c8.UMMBu0vNwAuOpCHO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 819f56bad110cb27a8be3232467986e2baebe069
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
branch HEAD: 819f56bad110cb27a8be3232467986e2baebe069  Merge branch 'master' of git://git.kernel.org/pub/scm/linux/kernel/git/klassert/ipsec

elapsed time: 1756m

configs tested: 202
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     akebono_defconfig
arm                      footbridge_defconfig
mips                      pistachio_defconfig
um                            kunit_defconfig
mips                        nlm_xlp_defconfig
sh                           se7780_defconfig
arm                         lubbock_defconfig
sh                        apsh4ad0a_defconfig
m68k                           sun3_defconfig
sh                            migor_defconfig
mips                      bmips_stb_defconfig
powerpc                      bamboo_defconfig
powerpc                     tqm8555_defconfig
powerpc                      ppc44x_defconfig
powerpc                          g5_defconfig
powerpc                     skiroot_defconfig
sh                   rts7751r2dplus_defconfig
sh                     magicpanelr2_defconfig
powerpc                       maple_defconfig
arm                             rpc_defconfig
parisc                generic-32bit_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                        warp_defconfig
sh                          lboxre2_defconfig
powerpc                    klondike_defconfig
mips                     loongson1c_defconfig
sh                   secureedge5410_defconfig
powerpc                  storcenter_defconfig
microblaze                    nommu_defconfig
powerpc                      tqm8xx_defconfig
alpha                            alldefconfig
powerpc                     tqm5200_defconfig
arm                         vf610m4_defconfig
arm                      integrator_defconfig
ia64                                defconfig
sh                           se7712_defconfig
xtensa                          iss_defconfig
arm                        multi_v7_defconfig
sh                         apsh4a3a_defconfig
x86_64                           alldefconfig
csky                                defconfig
powerpc                         wii_defconfig
powerpc                     mpc83xx_defconfig
arm                    vt8500_v6_v7_defconfig
arm                           efm32_defconfig
arm                        clps711x_defconfig
mips                         tb0219_defconfig
m68k                       m5275evb_defconfig
arm                              alldefconfig
powerpc                     tqm8541_defconfig
powerpc                 mpc8540_ads_defconfig
mips                       capcella_defconfig
c6x                              allyesconfig
sh                          rsk7264_defconfig
arc                     haps_hs_smp_defconfig
sh                           se7724_defconfig
powerpc                     ep8248e_defconfig
arm                         assabet_defconfig
sh                           se7721_defconfig
mips                     cu1830-neo_defconfig
sh                           se7751_defconfig
arm                            lart_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                          landisk_defconfig
sh                        edosk7760_defconfig
arm                          lpd270_defconfig
arm                          ep93xx_defconfig
riscv                               defconfig
mips                  decstation_64_defconfig
sh                          polaris_defconfig
mips                        workpad_defconfig
sh                               j2_defconfig
mips                           rs90_defconfig
riscv                             allnoconfig
m68k                        m5272c3_defconfig
h8300                            alldefconfig
m68k                        mvme16x_defconfig
arc                         haps_hs_defconfig
c6x                         dsk6455_defconfig
c6x                        evmc6472_defconfig
mips                       lemote2f_defconfig
mips                        omega2p_defconfig
arm                            dove_defconfig
mips                          ath79_defconfig
powerpc                     kmeter1_defconfig
mips                      maltaaprp_defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
sh                             espt_defconfig
mips                        jmr3927_defconfig
sh                ecovec24-romimage_defconfig
arm                      pxa255-idp_defconfig
arm                         nhk8815_defconfig
ia64                             allmodconfig
arm                       omap2plus_defconfig
m68k                       m5475evb_defconfig
arm                             mxs_defconfig
powerpc                   currituck_defconfig
xtensa                           allyesconfig
arm                         socfpga_defconfig
arm                        shmobile_defconfig
arm                        neponset_defconfig
sh                     sh7710voipgw_defconfig
arc                          axs101_defconfig
arm                         lpc18xx_defconfig
arc                    vdk_hs38_smp_defconfig
arm                          prima2_defconfig
arm                             ezx_defconfig
ia64                            zx1_defconfig
powerpc                      mgcoge_defconfig
arc                            hsdk_defconfig
xtensa                              defconfig
powerpc                      pmac32_defconfig
arm                            mmp2_defconfig
powerpc                       holly_defconfig
arm                           h5000_defconfig
mips                        bcm63xx_defconfig
mips                         rt305x_defconfig
c6x                        evmc6678_defconfig
powerpc                      acadia_defconfig
arc                        nsimosci_defconfig
powerpc64                           defconfig
arm                           omap1_defconfig
h8300                               defconfig
arm                       mainstone_defconfig
sh                             sh03_defconfig
mips                           ip32_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20201208
x86_64               randconfig-a006-20201208
x86_64               randconfig-a005-20201208
x86_64               randconfig-a001-20201208
x86_64               randconfig-a002-20201208
x86_64               randconfig-a003-20201208
i386                 randconfig-a004-20201208
i386                 randconfig-a005-20201208
i386                 randconfig-a001-20201208
i386                 randconfig-a002-20201208
i386                 randconfig-a006-20201208
i386                 randconfig-a003-20201208
i386                 randconfig-a013-20201208
i386                 randconfig-a014-20201208
i386                 randconfig-a011-20201208
i386                 randconfig-a015-20201208
i386                 randconfig-a012-20201208
i386                 randconfig-a016-20201208
i386                 randconfig-a013-20201209
i386                 randconfig-a014-20201209
i386                 randconfig-a011-20201209
i386                 randconfig-a015-20201209
i386                 randconfig-a012-20201209
i386                 randconfig-a016-20201209
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20201208
x86_64               randconfig-a012-20201208
x86_64               randconfig-a013-20201208
x86_64               randconfig-a014-20201208
x86_64               randconfig-a015-20201208
x86_64               randconfig-a011-20201208

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
