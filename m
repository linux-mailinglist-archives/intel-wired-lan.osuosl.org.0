Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 919E9445ED8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 04:48:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29E8360BB0;
	Fri,  5 Nov 2021 03:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jowm8BoiJSGZ; Fri,  5 Nov 2021 03:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A48760B89;
	Fri,  5 Nov 2021 03:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45DEC1BF9AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 03:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 330BC40589
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 03:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9_AiD0qr6_0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 03:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2B4040588
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 03:48:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="212585150"
X-IronPort-AV: E=Sophos;i="5.87,210,1631602800"; d="scan'208";a="212585150"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 20:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,210,1631602800"; d="scan'208";a="450445999"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 04 Nov 2021 20:48:25 -0700
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1miqDJ-000787-1Q; Fri, 05 Nov 2021 03:48:25 +0000
Date: Fri, 05 Nov 2021 11:47:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6184a960.XTelG4cjhkxaJDch%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 e6ba5273d4ede03d075d7a116b8edad1f6115f4d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: e6ba5273d4ede03d075d7a116b8edad1f6115f4d  ice: Fix race conditions between virtchnl handling and VF ndo ops

elapsed time: 2069m

configs tested: 307
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm64                               defconfig
arm                              allmodconfig
i386                 randconfig-c001-20211103
i386                 randconfig-c001-20211104
i386                 randconfig-c001-20211105
powerpc                   motionpro_defconfig
ia64                        generic_defconfig
powerpc                     tqm8560_defconfig
mips                           gcw0_defconfig
powerpc                      walnut_defconfig
mips                     cu1000-neo_defconfig
m68k                       bvme6000_defconfig
parisc                           allyesconfig
powerpc                    sam440ep_defconfig
sh                 kfr2r09-romimage_defconfig
mips                      bmips_stb_defconfig
xtensa                  audio_kc705_defconfig
arm                       spear13xx_defconfig
powerpc                 mpc8315_rdb_defconfig
h8300                            allyesconfig
sh                           se7750_defconfig
arm                            xcep_defconfig
mips                      pic32mzda_defconfig
m68k                           sun3_defconfig
arm                         orion5x_defconfig
mips                  cavium_octeon_defconfig
mips                        omega2p_defconfig
powerpc                     sequoia_defconfig
arm                     eseries_pxa_defconfig
mips                        qi_lb60_defconfig
arm                           sama7_defconfig
powerpc                   microwatt_defconfig
sh                        sh7785lcr_defconfig
sh                          kfr2r09_defconfig
powerpc                      mgcoge_defconfig
arm                          exynos_defconfig
riscv                             allnoconfig
m68k                        stmark2_defconfig
arm                          gemini_defconfig
powerpc                          g5_defconfig
arm                         lpc32xx_defconfig
arm                          collie_defconfig
arm                         at91_dt_defconfig
m68k                       m5208evb_defconfig
powerpc                        fsp2_defconfig
arm                  colibri_pxa270_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                       m5475evb_defconfig
mips                     loongson1b_defconfig
m68k                         amcore_defconfig
powerpc                    adder875_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                   secureedge5410_defconfig
microblaze                      mmu_defconfig
powerpc                     ppa8548_defconfig
arm                           sunxi_defconfig
nios2                            alldefconfig
mips                      fuloong2e_defconfig
powerpc                     mpc512x_defconfig
arm                        oxnas_v6_defconfig
arm                       aspeed_g4_defconfig
arm                       imx_v4_v5_defconfig
nios2                         3c120_defconfig
arm                             mxs_defconfig
arm                            mps2_defconfig
arm                         lpc18xx_defconfig
powerpc                    amigaone_defconfig
um                           x86_64_defconfig
arm                       multi_v4t_defconfig
mips                           xway_defconfig
sh                         ap325rxa_defconfig
h8300                    h8300h-sim_defconfig
arm                          pxa910_defconfig
powerpc                  iss476-smp_defconfig
nds32                             allnoconfig
csky                             alldefconfig
arm                          ixp4xx_defconfig
openrisc                 simple_smp_defconfig
arm                          simpad_defconfig
arm                            mmp2_defconfig
arm                         mv78xx0_defconfig
powerpc                   currituck_defconfig
um                               alldefconfig
ia64                             allmodconfig
sh                   sh7770_generic_defconfig
mips                          rb532_defconfig
arm                           h5000_defconfig
arm                        neponset_defconfig
arm                           corgi_defconfig
nios2                         10m50_defconfig
mips                           rs90_defconfig
sh                        apsh4ad0a_defconfig
sh                        edosk7705_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                           mtx1_defconfig
powerpc                      cm5200_defconfig
powerpc                      acadia_defconfig
sh                   sh7724_generic_defconfig
powerpc                     kmeter1_defconfig
arc                        vdk_hs38_defconfig
sh                          landisk_defconfig
powerpc                      katmai_defconfig
mips                        nlm_xlp_defconfig
sh                        edosk7760_defconfig
mips                malta_qemu_32r6_defconfig
sh                             espt_defconfig
sh                           se7712_defconfig
arc                              alldefconfig
arc                        nsimosci_defconfig
powerpc                      tqm8xx_defconfig
powerpc                   bluestone_defconfig
arc                            hsdk_defconfig
sh                               allmodconfig
openrisc                            defconfig
powerpc                      arches_defconfig
powerpc                       ppc64_defconfig
powerpc                     tqm8555_defconfig
arm                          pxa168_defconfig
m68k                                defconfig
openrisc                         alldefconfig
powerpc                     mpc83xx_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     asp8347_defconfig
s390                             alldefconfig
powerpc                     tqm8548_defconfig
arm                         axm55xx_defconfig
powerpc                      ep88xc_defconfig
sh                          rsk7269_defconfig
sh                           se7751_defconfig
arm                         s3c6400_defconfig
arm                            dove_defconfig
arc                          axs101_defconfig
arm                       aspeed_g5_defconfig
arc                        nsim_700_defconfig
sh                        dreamcast_defconfig
arm                        trizeps4_defconfig
arm64                            alldefconfig
arm                           stm32_defconfig
sh                           se7780_defconfig
sh                           se7206_defconfig
arm                         lubbock_defconfig
powerpc                        cell_defconfig
arm                            zeus_defconfig
powerpc                  storcenter_defconfig
arm                      footbridge_defconfig
powerpc                   lite5200b_defconfig
mips                     loongson1c_defconfig
arm                           tegra_defconfig
powerpc                 mpc836x_mds_defconfig
mips                       capcella_defconfig
sparc                       sparc64_defconfig
arm                     am200epdkit_defconfig
sh                           se7721_defconfig
parisc                generic-64bit_defconfig
powerpc                       eiger_defconfig
sparc                       sparc32_defconfig
mips                           ip22_defconfig
powerpc                     pq2fads_defconfig
sh                               alldefconfig
sh                             sh03_defconfig
arc                                 defconfig
arm                        shmobile_defconfig
arm                            pleb_defconfig
powerpc               mpc834x_itxgp_defconfig
sparc                               defconfig
powerpc                     ep8248e_defconfig
powerpc                      bamboo_defconfig
riscv                          rv32_defconfig
arm                        spear6xx_defconfig
powerpc                     rainier_defconfig
xtensa                  cadence_csp_defconfig
riscv                    nommu_k210_defconfig
arm                        mvebu_v5_defconfig
mips                        bcm63xx_defconfig
m68k                          amiga_defconfig
openrisc                  or1klitex_defconfig
powerpc                      ppc6xx_defconfig
mips                      maltasmvp_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     redwood_defconfig
powerpc                     pseries_defconfig
m68k                            mac_defconfig
sh                        sh7757lcr_defconfig
mips                     cu1830-neo_defconfig
sh                     sh7710voipgw_defconfig
powerpc                       holly_defconfig
arc                     nsimosci_hs_defconfig
arm                    vt8500_v6_v7_defconfig
arm                            qcom_defconfig
sh                          r7785rp_defconfig
arm                        cerfcube_defconfig
mips                     loongson2k_defconfig
mips                           ci20_defconfig
arm                  randconfig-c002-20211103
arm                  randconfig-c002-20211104
arm                  randconfig-c002-20211105
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
s390                                defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a004-20211104
x86_64               randconfig-a006-20211104
x86_64               randconfig-a001-20211104
x86_64               randconfig-a002-20211104
x86_64               randconfig-a003-20211104
x86_64               randconfig-a005-20211104
i386                 randconfig-a005-20211104
i386                 randconfig-a001-20211104
i386                 randconfig-a003-20211104
i386                 randconfig-a004-20211104
i386                 randconfig-a006-20211104
i386                 randconfig-a002-20211104
x86_64               randconfig-a012-20211103
x86_64               randconfig-a015-20211103
x86_64               randconfig-a016-20211103
x86_64               randconfig-a011-20211103
x86_64               randconfig-a013-20211103
x86_64               randconfig-a014-20211103
i386                 randconfig-a014-20211103
i386                 randconfig-a016-20211103
i386                 randconfig-a013-20211103
i386                 randconfig-a015-20211103
i386                 randconfig-a011-20211103
i386                 randconfig-a012-20211103
arc                  randconfig-r043-20211103
riscv                randconfig-r042-20211103
s390                 randconfig-r044-20211103
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
mips                 randconfig-c004-20211104
i386                 randconfig-c001-20211104
arm                  randconfig-c002-20211104
s390                 randconfig-c005-20211104
riscv                randconfig-c006-20211104
powerpc              randconfig-c003-20211104
x86_64               randconfig-c007-20211104
mips                 randconfig-c004-20211105
i386                 randconfig-c001-20211105
arm                  randconfig-c002-20211105
s390                 randconfig-c005-20211105
riscv                randconfig-c006-20211105
powerpc              randconfig-c003-20211105
x86_64               randconfig-c007-20211105
mips                 randconfig-c004-20211103
arm                  randconfig-c002-20211103
i386                 randconfig-c001-20211103
s390                 randconfig-c005-20211103
powerpc              randconfig-c003-20211103
riscv                randconfig-c006-20211103
x86_64               randconfig-c007-20211103
x86_64               randconfig-a006-20211103
x86_64               randconfig-a004-20211103
x86_64               randconfig-a001-20211103
x86_64               randconfig-a002-20211103
x86_64               randconfig-a005-20211103
x86_64               randconfig-a003-20211103
i386                 randconfig-a005-20211103
i386                 randconfig-a003-20211103
i386                 randconfig-a001-20211103
i386                 randconfig-a004-20211103
i386                 randconfig-a006-20211103
i386                 randconfig-a002-20211103
x86_64               randconfig-a012-20211104
x86_64               randconfig-a016-20211104
x86_64               randconfig-a015-20211104
x86_64               randconfig-a013-20211104
x86_64               randconfig-a011-20211104
x86_64               randconfig-a014-20211104
i386                 randconfig-a016-20211104
i386                 randconfig-a014-20211104
i386                 randconfig-a015-20211104
i386                 randconfig-a013-20211104
i386                 randconfig-a011-20211104
i386                 randconfig-a012-20211104
hexagon              randconfig-r041-20211104
riscv                randconfig-r042-20211104
s390                 randconfig-r044-20211104
hexagon              randconfig-r045-20211104
hexagon              randconfig-r041-20211103
hexagon              randconfig-r045-20211103

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
