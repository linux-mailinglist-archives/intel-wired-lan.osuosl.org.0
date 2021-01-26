Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B833036E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 07:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8319D85166;
	Tue, 26 Jan 2021 06:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fF_12ds_iWOK; Tue, 26 Jan 2021 06:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 714A785187;
	Tue, 26 Jan 2021 06:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A68D1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 06:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 25DB08512E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 06:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LDGUKqSyf9GD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 06:57:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 219EB85124
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 06:57:22 +0000 (UTC)
IronPort-SDR: VCBczg5ilSP+Y0FCntywyTPFBl0bxxG+KfOZcZPGknWmb/WS7nWR8KCFyQjBj7wd3+H6dYzxe1
 3gmW7/SwK44w==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="198642616"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="198642616"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 22:57:20 -0800
IronPort-SDR: 6GskyxPf1OWBIZY1uZmoZnsKIkI/a86A53gZxbeEuTY94wL/tyqtU8aOip0CUFUuSqALW07AqM
 7fB4FSL5davw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="410052863"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2021 22:57:20 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l4IHv-0000gK-JN; Tue, 26 Jan 2021 06:57:19 +0000
Date: Tue, 26 Jan 2021 14:56:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <600fbd26.3X2EBd/zdIiuJ2hj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 344db93ae3ee69fc137bd6ed89a8ff1bf5b0db08
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
branch HEAD: 344db93ae3ee69fc137bd6ed89a8ff1bf5b0db08  tcp: make TCP_USER_TIMEOUT accurate for zero window probes

elapsed time: 2861m

configs tested: 213
configs skipped: 3

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
arm                       mainstone_defconfig
sh                           se7712_defconfig
arm                        keystone_defconfig
powerpc                     ksi8560_defconfig
sh                          rsk7201_defconfig
sh                          rsk7264_defconfig
powerpc                 linkstation_defconfig
arm                      pxa255-idp_defconfig
arm                     am200epdkit_defconfig
mips                      pistachio_defconfig
xtensa                  cadence_csp_defconfig
powerpc                   bluestone_defconfig
arm                  colibri_pxa270_defconfig
riscv                             allnoconfig
arm                            lart_defconfig
mips                        omega2p_defconfig
powerpc                    gamecube_defconfig
sh                            migor_defconfig
powerpc                      ppc44x_defconfig
sh                           se7722_defconfig
m68k                       m5249evb_defconfig
powerpc                          g5_defconfig
sh                           se7343_defconfig
mips                         db1xxx_defconfig
ia64                             allyesconfig
powerpc                      chrp32_defconfig
arm                             mxs_defconfig
mips                     cu1000-neo_defconfig
powerpc                     tqm8560_defconfig
powerpc64                        alldefconfig
sh                        sh7757lcr_defconfig
mips                         tb0219_defconfig
powerpc                      pcm030_defconfig
powerpc                       ebony_defconfig
sh                             espt_defconfig
sparc64                             defconfig
arc                              allyesconfig
mips                         rt305x_defconfig
powerpc                      arches_defconfig
mips                          ath25_defconfig
powerpc                     skiroot_defconfig
powerpc                 mpc8315_rdb_defconfig
s390                             allyesconfig
powerpc                       holly_defconfig
arm                            u300_defconfig
powerpc                     ppa8548_defconfig
powerpc                  mpc885_ads_defconfig
s390                          debug_defconfig
arm                          iop32x_defconfig
arm                          tango4_defconfig
mips                        nlm_xlr_defconfig
powerpc                   motionpro_defconfig
i386                             alldefconfig
mips                  maltasmvp_eva_defconfig
sh                   sh7770_generic_defconfig
nios2                               defconfig
sh                         apsh4a3a_defconfig
powerpc                      cm5200_defconfig
sparc                       sparc32_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                    vt8500_v6_v7_defconfig
sh                                  defconfig
arm                        neponset_defconfig
sh                           se7705_defconfig
mips                  cavium_octeon_defconfig
powerpc                     tqm5200_defconfig
arm                          lpd270_defconfig
mips                        workpad_defconfig
powerpc                      walnut_defconfig
arm                           sama5_defconfig
mips                          ath79_defconfig
arm                         lpc18xx_defconfig
sh                        sh7763rdp_defconfig
powerpc                     tqm8555_defconfig
powerpc                  storcenter_defconfig
powerpc                    amigaone_defconfig
mips                      fuloong2e_defconfig
arm                       aspeed_g5_defconfig
arm                         nhk8815_defconfig
sh                               alldefconfig
sh                               j2_defconfig
mips                       capcella_defconfig
openrisc                    or1ksim_defconfig
sh                          polaris_defconfig
arm                           corgi_defconfig
arm                        mvebu_v7_defconfig
mips                         mpc30x_defconfig
nios2                            alldefconfig
arm                          pcm027_defconfig
sh                   rts7751r2dplus_defconfig
arm                          simpad_defconfig
arm                         shannon_defconfig
powerpc                        fsp2_defconfig
arm                         s5pv210_defconfig
arc                           tb10x_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                         ps3_defconfig
arm                  colibri_pxa300_defconfig
arm                     eseries_pxa_defconfig
sparc64                          alldefconfig
sh                        dreamcast_defconfig
powerpc                   lite5200b_defconfig
arm                           stm32_defconfig
arm                        realview_defconfig
powerpc                     sbc8548_defconfig
alpha                               defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        vexpress_defconfig
arm                        oxnas_v6_defconfig
mips                           ci20_defconfig
m68k                            q40_defconfig
mips                malta_qemu_32r6_defconfig
arm                        multi_v7_defconfig
m68k                                defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
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
x86_64               randconfig-a003-20210125
x86_64               randconfig-a002-20210125
x86_64               randconfig-a001-20210125
x86_64               randconfig-a005-20210125
x86_64               randconfig-a006-20210125
x86_64               randconfig-a004-20210125
i386                 randconfig-a001-20210124
i386                 randconfig-a002-20210124
i386                 randconfig-a003-20210124
i386                 randconfig-a002-20210125
i386                 randconfig-a004-20210125
i386                 randconfig-a005-20210125
i386                 randconfig-a003-20210125
i386                 randconfig-a001-20210125
i386                 randconfig-a006-20210125
x86_64               randconfig-a012-20210124
x86_64               randconfig-a016-20210124
x86_64               randconfig-a015-20210124
x86_64               randconfig-a011-20210124
x86_64               randconfig-a013-20210124
x86_64               randconfig-a014-20210124
x86_64               randconfig-a012-20210126
x86_64               randconfig-a016-20210126
x86_64               randconfig-a015-20210126
x86_64               randconfig-a011-20210126
x86_64               randconfig-a013-20210126
x86_64               randconfig-a014-20210126
i386                 randconfig-a013-20210124
i386                 randconfig-a012-20210124
i386                 randconfig-a014-20210124
i386                 randconfig-a016-20210124
i386                 randconfig-a013-20210125
i386                 randconfig-a015-20210125
i386                 randconfig-a011-20210125
i386                 randconfig-a012-20210125
i386                 randconfig-a014-20210125
i386                 randconfig-a016-20210125
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
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
x86_64               randconfig-a012-20210125
x86_64               randconfig-a016-20210125
x86_64               randconfig-a015-20210125
x86_64               randconfig-a011-20210125
x86_64               randconfig-a013-20210125
x86_64               randconfig-a014-20210125

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
