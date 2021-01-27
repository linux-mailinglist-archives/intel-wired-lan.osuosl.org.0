Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC2D30577D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 10:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 688678657C;
	Wed, 27 Jan 2021 09:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpc307PaNjHX; Wed, 27 Jan 2021 09:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A7A28651C;
	Wed, 27 Jan 2021 09:55:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C19351BF83A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 09:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD5C520498
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 09:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7hlLL59DOgz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 09:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 1FEA71FC7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 09:55:48 +0000 (UTC)
IronPort-SDR: bEceYmZ1sr53XtnKFNxKwGOobg7n/aOJzbMWHsRzypadaXK6ZIt6qeEH634bPxoKQJdTaidb44
 /dWWh0/g7ESQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="159217822"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="159217822"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 01:55:47 -0800
IronPort-SDR: +my1e0V9J/UB/vIJvZwxz6Ci0Oh6GINmSWgF92jmK850RCMiTwSNClf9TGGJYWmtyAZ0eSTuI2
 o2MkcnwBf5AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="403057613"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jan 2021 01:55:46 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l4hY9-0001VS-Jt; Wed, 27 Jan 2021 09:55:45 +0000
Date: Wed, 27 Jan 2021 17:54:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60113869.ptFbK26pckwHaUi6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 07d46d93c9acdfe0614071d73c415dd5f745cc6e
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
branch HEAD: 07d46d93c9acdfe0614071d73c415dd5f745cc6e  uapi: fix big endian definition of ipv6_rpl_sr_hdr

elapsed time: 2038m

configs tested: 269
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          landisk_defconfig
powerpc                     redwood_defconfig
m68k                          atari_defconfig
m68k                             allmodconfig
powerpc                     tqm8540_defconfig
mips                 decstation_r4k_defconfig
mips                           xway_defconfig
mips                      bmips_stb_defconfig
ia64                        generic_defconfig
riscv                    nommu_virt_defconfig
powerpc                     tqm8555_defconfig
mips                             allmodconfig
powerpc                 mpc832x_mds_defconfig
powerpc                        warp_defconfig
powerpc                     tqm8560_defconfig
powerpc                      ppc44x_defconfig
powerpc                      ep88xc_defconfig
sh                          kfr2r09_defconfig
powerpc                    klondike_defconfig
powerpc                    mvme5100_defconfig
mips                           ip22_defconfig
openrisc                    or1ksim_defconfig
xtensa                generic_kc705_defconfig
nios2                         10m50_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                  mpc885_ads_defconfig
s390                          debug_defconfig
mips                        omega2p_defconfig
arm                           stm32_defconfig
mips                  decstation_64_defconfig
microblaze                      mmu_defconfig
arm                        clps711x_defconfig
mips                     decstation_defconfig
powerpc                  storcenter_defconfig
arm                          ep93xx_defconfig
powerpc                         wii_defconfig
sh                           se7780_defconfig
powerpc                   bluestone_defconfig
riscv                             allnoconfig
arm                  colibri_pxa270_defconfig
sh                           se7722_defconfig
mips                         db1xxx_defconfig
m68k                       m5249evb_defconfig
powerpc                          g5_defconfig
sh                           se7343_defconfig
sh                             sh03_defconfig
arm                      footbridge_defconfig
m68k                        m5272c3_defconfig
sh                        edosk7705_defconfig
mips                         tb0287_defconfig
sh                          polaris_defconfig
xtensa                    smp_lx200_defconfig
parisc                generic-32bit_defconfig
powerpc                     stx_gp3_defconfig
powerpc                     kilauea_defconfig
powerpc                     tqm8541_defconfig
arm                            lart_defconfig
openrisc                            defconfig
c6x                         dsk6455_defconfig
powerpc                        cell_defconfig
riscv                            allmodconfig
powerpc                   motionpro_defconfig
powerpc                      chrp32_defconfig
mips                             allyesconfig
arm                          tango4_defconfig
sh                                  defconfig
arm                       cns3420vb_defconfig
arm                             ezx_defconfig
m68k                        mvme147_defconfig
xtensa                    xip_kc705_defconfig
arm                       imx_v6_v7_defconfig
arm                        realview_defconfig
arm                         vf610m4_defconfig
alpha                               defconfig
mips                           ci20_defconfig
mips                         rt305x_defconfig
mips                  cavium_octeon_defconfig
arm                       netwinder_defconfig
powerpc                      katmai_defconfig
arm                           viper_defconfig
arm                        trizeps4_defconfig
s390                             allyesconfig
powerpc                       holly_defconfig
arm                        keystone_defconfig
arm                            u300_defconfig
powerpc                     ppa8548_defconfig
mips                      fuloong2e_defconfig
powerpc                     tqm5200_defconfig
arm                         palmz72_defconfig
powerpc                    gamecube_defconfig
riscv                          rv32_defconfig
arm                  colibri_pxa300_defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                                 defconfig
powerpc                     taishan_defconfig
arm                            hisi_defconfig
powerpc                     pq2fads_defconfig
mips                            ar7_defconfig
sh                              ul2_defconfig
sh                     magicpanelr2_defconfig
arm                        shmobile_defconfig
i386                                defconfig
h8300                    h8300h-sim_defconfig
arm                       multi_v4t_defconfig
arm                         bcm2835_defconfig
powerpc                     rainier_defconfig
powerpc                     pseries_defconfig
mips                    maltaup_xpa_defconfig
arm                        oxnas_v6_defconfig
sh                           se7705_defconfig
sparc                               defconfig
arm                          lpd270_defconfig
powerpc                    adder875_defconfig
um                            kunit_defconfig
sh                 kfr2r09-romimage_defconfig
arm                            mmp2_defconfig
ia64                      gensparse_defconfig
arm                              alldefconfig
mips                   sb1250_swarm_defconfig
sh                         ap325rxa_defconfig
sh                           se7751_defconfig
arm                           h5000_defconfig
mips                           ip32_defconfig
microblaze                          defconfig
arc                     nsimosci_hs_defconfig
arm                         lpc18xx_defconfig
sh                        sh7763rdp_defconfig
arm                             pxa_defconfig
sh                           se7712_defconfig
sparc                            alldefconfig
powerpc                      bamboo_defconfig
arm                         assabet_defconfig
arm                       aspeed_g4_defconfig
powerpc                     powernv_defconfig
arm                          pcm027_defconfig
mips                       capcella_defconfig
arm                           corgi_defconfig
powerpc                      walnut_defconfig
arm                        mvebu_v7_defconfig
mips                         mpc30x_defconfig
parisc                           alldefconfig
arm                         lubbock_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                        spear6xx_defconfig
powerpc                           allnoconfig
arm                        spear3xx_defconfig
powerpc                         ps3_defconfig
arm                     eseries_pxa_defconfig
sparc64                          alldefconfig
sh                        dreamcast_defconfig
xtensa                  cadence_csp_defconfig
arc                         haps_hs_defconfig
mips                        nlm_xlr_defconfig
arm                        neponset_defconfig
arm                        multi_v7_defconfig
nds32                               defconfig
mips                  maltasmvp_eva_defconfig
arc                            hsdk_defconfig
powerpc                     mpc83xx_defconfig
arm                          imote2_defconfig
powerpc                      acadia_defconfig
powerpc                 mpc834x_mds_defconfig
mips                       lemote2f_defconfig
arm                            qcom_defconfig
powerpc               mpc834x_itxgp_defconfig
m68k                            q40_defconfig
mips                malta_qemu_32r6_defconfig
c6x                              allyesconfig
m68k                                defconfig
sh                           se7750_defconfig
mips                           mtx1_defconfig
m68k                          sun3x_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
nios2                               defconfig
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
i386                               tinyconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a003-20210125
x86_64               randconfig-a002-20210125
x86_64               randconfig-a001-20210125
x86_64               randconfig-a005-20210125
x86_64               randconfig-a006-20210125
x86_64               randconfig-a004-20210125
x86_64               randconfig-a003-20210127
x86_64               randconfig-a002-20210127
x86_64               randconfig-a001-20210127
x86_64               randconfig-a005-20210127
x86_64               randconfig-a006-20210127
x86_64               randconfig-a004-20210127
i386                 randconfig-a001-20210125
i386                 randconfig-a002-20210125
i386                 randconfig-a004-20210125
i386                 randconfig-a006-20210125
i386                 randconfig-a005-20210125
i386                 randconfig-a003-20210125
i386                 randconfig-a001-20210126
i386                 randconfig-a002-20210126
i386                 randconfig-a004-20210126
i386                 randconfig-a006-20210126
i386                 randconfig-a003-20210126
i386                 randconfig-a005-20210126
x86_64               randconfig-a012-20210126
x86_64               randconfig-a016-20210126
x86_64               randconfig-a015-20210126
x86_64               randconfig-a011-20210126
x86_64               randconfig-a013-20210126
x86_64               randconfig-a014-20210126
i386                 randconfig-a013-20210125
i386                 randconfig-a011-20210125
i386                 randconfig-a012-20210125
i386                 randconfig-a015-20210125
i386                 randconfig-a014-20210125
i386                 randconfig-a016-20210125
i386                 randconfig-a013-20210126
i386                 randconfig-a011-20210126
i386                 randconfig-a012-20210126
i386                 randconfig-a015-20210126
i386                 randconfig-a014-20210126
i386                 randconfig-a016-20210126
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                               defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210126
x86_64               randconfig-a002-20210126
x86_64               randconfig-a001-20210126
x86_64               randconfig-a005-20210126
x86_64               randconfig-a006-20210126
x86_64               randconfig-a004-20210126
x86_64               randconfig-a012-20210125
x86_64               randconfig-a016-20210125
x86_64               randconfig-a015-20210125
x86_64               randconfig-a011-20210125
x86_64               randconfig-a013-20210125
x86_64               randconfig-a014-20210125
x86_64               randconfig-a012-20210127
x86_64               randconfig-a016-20210127
x86_64               randconfig-a015-20210127
x86_64               randconfig-a011-20210127
x86_64               randconfig-a013-20210127
x86_64               randconfig-a014-20210127

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
