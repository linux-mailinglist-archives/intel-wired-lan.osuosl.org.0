Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 459772CF498
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 20:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F032A878BA;
	Fri,  4 Dec 2020 19:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XE82IK8q9nR; Fri,  4 Dec 2020 19:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0957879B8;
	Fri,  4 Dec 2020 19:15:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D4EA1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 19:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3975187865
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 19:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3_YSrkNorfOk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 19:15:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 195678787B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 19:15:25 +0000 (UTC)
IronPort-SDR: S9YOEmGrPap0Jhh0FLrH7QFFTttltZIJsb5msb+2v8lfJPAK1ksvLfINCJg88YzG7ErGqB3Kyr
 oMzP/Oc8EUWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="153248759"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="153248759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 11:15:24 -0800
IronPort-SDR: OSv5nDW05ABfP1Pr1wiiqje8e4ou2xjEQPncb1Foiux/o0hasxgaW6bxVrwNIa3IzrW62qA1TX
 ChDdbiHgR/5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="336470587"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 04 Dec 2020 11:15:22 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1klGY6-0000LU-0B; Fri, 04 Dec 2020 19:15:22 +0000
Date: Sat, 05 Dec 2020 03:14:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fca8aa0.rcBCIyBTDGZ4aoP9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 832e09798c261cf58de3a68cfcc6556408c16a5a
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
branch HEAD: 832e09798c261cf58de3a68cfcc6556408c16a5a  vxlan: fix error return code in __vxlan_dev_create()

elapsed time: 2433m

configs tested: 275
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         shannon_defconfig
mips                     decstation_defconfig
mips                         mpc30x_defconfig
mips                           ci20_defconfig
powerpc                     tqm8555_defconfig
sh                           se7721_defconfig
s390                                defconfig
powerpc                   motionpro_defconfig
mips                     cu1830-neo_defconfig
sh                        sh7763rdp_defconfig
powerpc                   lite5200b_defconfig
powerpc                     sbc8548_defconfig
arm                      footbridge_defconfig
powerpc                     redwood_defconfig
sh                           se7751_defconfig
mips                     loongson1b_defconfig
m68k                          amiga_defconfig
sh                          r7785rp_defconfig
sh                         microdev_defconfig
m68k                       m5275evb_defconfig
nios2                               defconfig
mips                  cavium_octeon_defconfig
mips                      bmips_stb_defconfig
arm                     am200epdkit_defconfig
m68k                        mvme147_defconfig
mips                         tb0226_defconfig
arm                       aspeed_g5_defconfig
riscv                            alldefconfig
sh                             espt_defconfig
sh                            hp6xx_defconfig
arm                          pxa168_defconfig
arm                         orion5x_defconfig
mips                           mtx1_defconfig
m68k                          sun3x_defconfig
arm                         s5pv210_defconfig
ia64                             alldefconfig
arm                         nhk8815_defconfig
h8300                       h8s-sim_defconfig
arm                       aspeed_g4_defconfig
powerpc                    klondike_defconfig
arm                       imx_v6_v7_defconfig
arc                           tb10x_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      ppc6xx_defconfig
arm                            hisi_defconfig
arm                            dove_defconfig
arc                     nsimosci_hs_defconfig
arm                          imote2_defconfig
powerpc                       ebony_defconfig
arc                         haps_hs_defconfig
arm                          tango4_defconfig
microblaze                      mmu_defconfig
arm                            mmp2_defconfig
xtensa                  audio_kc705_defconfig
m68k                          multi_defconfig
nds32                            alldefconfig
mips                      fuloong2e_defconfig
sh                           se7724_defconfig
powerpc                      obs600_defconfig
arm                          pcm027_defconfig
powerpc                    adder875_defconfig
powerpc                     powernv_defconfig
powerpc                     ep8248e_defconfig
arc                        nsimosci_defconfig
arm                          moxart_defconfig
c6x                                 defconfig
xtensa                       common_defconfig
mips                  maltasmvp_eva_defconfig
openrisc                            defconfig
parisc                generic-32bit_defconfig
h8300                               defconfig
powerpc                 mpc836x_rdk_defconfig
mips                      loongson3_defconfig
microblaze                          defconfig
arm                      pxa255-idp_defconfig
arm                          iop32x_defconfig
sh                           se7343_defconfig
mips                           ip32_defconfig
powerpc                 canyonlands_defconfig
mips                         tb0219_defconfig
m68k                       m5475evb_defconfig
powerpc                     mpc512x_defconfig
powerpc                      ep88xc_defconfig
arm                         bcm2835_defconfig
powerpc                      acadia_defconfig
arm                         assabet_defconfig
powerpc                     skiroot_defconfig
sh                             sh03_defconfig
mips                           rs90_defconfig
sh                        sh7757lcr_defconfig
powerpc                    socrates_defconfig
um                             i386_defconfig
ia64                          tiger_defconfig
powerpc                      ppc64e_defconfig
powerpc                       eiger_defconfig
arm                        shmobile_defconfig
arm                           u8500_defconfig
arm                         vf610m4_defconfig
s390                       zfcpdump_defconfig
powerpc                     mpc5200_defconfig
powerpc                     pq2fads_defconfig
arm                        cerfcube_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                      chrp32_defconfig
powerpc                      cm5200_defconfig
x86_64                              defconfig
sh                          sdk7786_defconfig
powerpc                 mpc832x_mds_defconfig
ia64                            zx1_defconfig
arm                            mps2_defconfig
arm                          simpad_defconfig
arm                          collie_defconfig
nios2                         3c120_defconfig
powerpc                     asp8347_defconfig
c6x                              alldefconfig
xtensa                          iss_defconfig
xtensa                generic_kc705_defconfig
sh                        edosk7760_defconfig
arm                        mini2440_defconfig
arm                       imx_v4_v5_defconfig
s390                          debug_defconfig
sh                               j2_defconfig
m68k                             allmodconfig
mips                          ath25_defconfig
sh                           se7750_defconfig
arm                           h3600_defconfig
sparc64                             defconfig
mips                    maltaup_xpa_defconfig
arm                          pxa3xx_defconfig
openrisc                         alldefconfig
powerpc                      mgcoge_defconfig
arm                         s3c2410_defconfig
openrisc                    or1ksim_defconfig
sh                   sh7724_generic_defconfig
powerpc                     tqm8560_defconfig
sh                          rsk7264_defconfig
arm                            pleb_defconfig
powerpc                     kilauea_defconfig
arc                          axs103_defconfig
powerpc                          g5_defconfig
powerpc                         wii_defconfig
um                            kunit_defconfig
arm                        multi_v5_defconfig
mips                  decstation_64_defconfig
xtensa                           alldefconfig
nios2                            alldefconfig
sparc                       sparc32_defconfig
mips                          malta_defconfig
powerpc                     sequoia_defconfig
powerpc                    amigaone_defconfig
sh                          rsk7269_defconfig
m68k                         amcore_defconfig
powerpc                    gamecube_defconfig
xtensa                  nommu_kc705_defconfig
powerpc                        fsp2_defconfig
arm                          ep93xx_defconfig
powerpc                          allyesconfig
arm                        magician_defconfig
m68k                                defconfig
powerpc                           allnoconfig
xtensa                              defconfig
c6x                        evmc6474_defconfig
arm                       omap2plus_defconfig
c6x                         dsk6455_defconfig
sh                        sh7785lcr_defconfig
powerpc                 mpc8272_ads_defconfig
m68k                            mac_defconfig
powerpc                 mpc834x_itx_defconfig
arm                        spear3xx_defconfig
arm                           corgi_defconfig
arm                           omap1_defconfig
arm                        vexpress_defconfig
sh                   rts7751r2dplus_defconfig
m68k                            q40_defconfig
mips                           jazz_defconfig
m68k                        m5307c3_defconfig
mips                         db1xxx_defconfig
arm                         lpc32xx_defconfig
mips                            e55_defconfig
arm                        neponset_defconfig
parisc                           allyesconfig
powerpc64                        alldefconfig
mips                       lemote2f_defconfig
sh                     magicpanelr2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
x86_64               randconfig-a004-20201204
x86_64               randconfig-a006-20201204
x86_64               randconfig-a002-20201204
x86_64               randconfig-a001-20201204
x86_64               randconfig-a005-20201204
x86_64               randconfig-a003-20201204
i386                 randconfig-a004-20201203
i386                 randconfig-a005-20201203
i386                 randconfig-a001-20201203
i386                 randconfig-a002-20201203
i386                 randconfig-a006-20201203
i386                 randconfig-a003-20201203
i386                 randconfig-a005-20201204
i386                 randconfig-a004-20201204
i386                 randconfig-a001-20201204
i386                 randconfig-a002-20201204
i386                 randconfig-a006-20201204
i386                 randconfig-a003-20201204
x86_64               randconfig-a016-20201203
x86_64               randconfig-a012-20201203
x86_64               randconfig-a014-20201203
x86_64               randconfig-a013-20201203
x86_64               randconfig-a015-20201203
x86_64               randconfig-a011-20201203
i386                 randconfig-a014-20201203
i386                 randconfig-a013-20201203
i386                 randconfig-a011-20201203
i386                 randconfig-a015-20201203
i386                 randconfig-a012-20201203
i386                 randconfig-a016-20201203
i386                 randconfig-a014-20201204
i386                 randconfig-a013-20201204
i386                 randconfig-a011-20201204
i386                 randconfig-a015-20201204
i386                 randconfig-a012-20201204
i386                 randconfig-a016-20201204
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
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20201204
x86_64               randconfig-a012-20201204
x86_64               randconfig-a014-20201204
x86_64               randconfig-a013-20201204
x86_64               randconfig-a015-20201204
x86_64               randconfig-a011-20201204
x86_64               randconfig-a004-20201203
x86_64               randconfig-a006-20201203
x86_64               randconfig-a001-20201203
x86_64               randconfig-a002-20201203
x86_64               randconfig-a005-20201203
x86_64               randconfig-a003-20201203

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
