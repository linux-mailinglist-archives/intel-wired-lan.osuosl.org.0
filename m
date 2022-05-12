Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513EC525091
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 16:49:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD06F40BFB;
	Thu, 12 May 2022 14:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYEI6pgUjObq; Thu, 12 May 2022 14:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 630AB405B1;
	Thu, 12 May 2022 14:49:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93EF51BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 14:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81BB383EAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 14:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ym2imVmWb_XR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 14:49:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4607883EA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 14:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652366972; x=1683902972;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ivVae4ceQJ+sVabDfVbL+S4Lxhp4DMOLe15Jfuf1wFQ=;
 b=N4Fa1hOLzUJlzHfV+prXgpis0+8ITduHrmsOJAXHeNo/X+RvW5pZU9RC
 dKAZa9z539Lx0Dvs3hYu0MWXRnq6I8WaUDaMwpaTOWqFp4Y/s7mq7uKmg
 bAhm0RCLG9qqr/6vx6AUPfltWbiF9prsmR4DX1zC3m5KFPoB/mk8XAYPv
 OF5gKR6VRcXh3jE1n9OnPzpQ3zaJo7yeIn/n/0y5k8tech7y2O4RGyJtH
 eZQG5mZoyUAR7UIor4A98zDwI1gh6lRYgx7eNrQxvPr4ebhPLFHGEM2v7
 O0R6ha22GHu3mBWnoniTwBofSCmgKpNDQt+3kIBPi1YKS+mVgICGlQxlG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250544625"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="250544625"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 07:49:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="698054592"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 12 May 2022 07:49:30 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1npA89-000Kak-Gz;
 Thu, 12 May 2022 14:49:29 +0000
Date: Thu, 12 May 2022 22:49:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <627d1e62.NzfQf9wIzrGWUWhJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 ecd17a87eb78b5bd5ca6d1aa20c39f2bc3591337
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: ecd17a87eb78b5bd5ca6d1aa20c39f2bc3591337  x25: remove redundant pointer dev

Unverified Warning (likely false positive, please contact us if interested):

kismet: WARNING: unmet direct dependencies detected for NVMEM_SUNPLUS_OCOTP when selected by SP7021_EMAC

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- x86_64-allnoconfig
    `-- kismet:WARNING:unmet-direct-dependencies-detected-for-NVMEM_SUNPLUS_OCOTP-when-selected-by-SP7021_EMAC

elapsed time: 3152m

configs tested: 316
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
arm64                               defconfig
i386                 randconfig-c001-20220509
i386                          randconfig-c001
sh                               j2_defconfig
sh                         ap325rxa_defconfig
sh                      rts7751r2d1_defconfig
arm                       imx_v6_v7_defconfig
powerpc                       ppc64_defconfig
xtensa                  cadence_csp_defconfig
sh                           se7705_defconfig
ia64                            zx1_defconfig
powerpc                      makalu_defconfig
arm                         axm55xx_defconfig
powerpc                 linkstation_defconfig
mips                       capcella_defconfig
sh                          rsk7269_defconfig
powerpc                       eiger_defconfig
mips                           xway_defconfig
powerpc                      pasemi_defconfig
arm                        mini2440_defconfig
arm                        multi_v7_defconfig
m68k                        m5272c3_defconfig
sh                          rsk7201_defconfig
arm                         at91_dt_defconfig
arm                         lubbock_defconfig
parisc                           alldefconfig
sh                          urquell_defconfig
arm                       omap2plus_defconfig
ia64                             alldefconfig
sh                          rsk7203_defconfig
arm                        spear6xx_defconfig
h8300                            allyesconfig
arm                           h3600_defconfig
arm                          iop32x_defconfig
arm                         cm_x300_defconfig
parisc64                         alldefconfig
m68k                            mac_defconfig
powerpc                        warp_defconfig
powerpc                     taishan_defconfig
sh                          r7785rp_defconfig
sh                                  defconfig
powerpc                  storcenter_defconfig
ia64                          tiger_defconfig
sparc                       sparc64_defconfig
arm                       aspeed_g5_defconfig
ia64                        generic_defconfig
xtensa                  nommu_kc705_defconfig
arm                           stm32_defconfig
powerpc                    sam440ep_defconfig
sh                           se7619_defconfig
arm                        clps711x_defconfig
arc                              alldefconfig
sh                          landisk_defconfig
powerpc                           allnoconfig
sparc64                             defconfig
arm                            zeus_defconfig
nios2                            alldefconfig
sh                           se7721_defconfig
sh                           sh2007_defconfig
i386                                defconfig
m68k                             allmodconfig
powerpc                     sequoia_defconfig
sh                          polaris_defconfig
sh                            hp6xx_defconfig
sparc                            alldefconfig
arc                         haps_hs_defconfig
powerpc64                           defconfig
arc                        vdk_hs38_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                        keystone_defconfig
riscv             nommu_k210_sdcard_defconfig
openrisc                            defconfig
arm                          pxa910_defconfig
h8300                               defconfig
arm                            qcom_defconfig
arc                      axs103_smp_defconfig
sh                        edosk7705_defconfig
sh                        sh7763rdp_defconfig
sh                   sh7724_generic_defconfig
h8300                    h8300h-sim_defconfig
nios2                            allyesconfig
m68k                          multi_defconfig
sh                          sdk7780_defconfig
s390                             allyesconfig
arm                         lpc18xx_defconfig
powerpc                 mpc8540_ads_defconfig
nios2                         10m50_defconfig
sh                             sh03_defconfig
arc                                 defconfig
mips                             allyesconfig
s390                                defconfig
csky                                defconfig
openrisc                 simple_smp_defconfig
s390                       zfcpdump_defconfig
arc                          axs103_defconfig
arm                      footbridge_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                           se7343_defconfig
sh                          kfr2r09_defconfig
arm                             ezx_defconfig
sh                           se7751_defconfig
m68k                       m5208evb_defconfig
powerpc                      pcm030_defconfig
arc                    vdk_hs38_smp_defconfig
mips                            ar7_defconfig
xtensa                    smp_lx200_defconfig
sh                         microdev_defconfig
powerpc                      tqm8xx_defconfig
mips                           gcw0_defconfig
xtensa                    xip_kc705_defconfig
nios2                               defconfig
arm                          simpad_defconfig
ia64                         bigsur_defconfig
xtensa                       common_defconfig
sh                            migor_defconfig
powerpc                     tqm8555_defconfig
powerpc                      cm5200_defconfig
arm                            mps2_defconfig
parisc                generic-32bit_defconfig
alpha                            allyesconfig
arm                        shmobile_defconfig
sh                               alldefconfig
mips                  maltasmvp_eva_defconfig
m68k                        mvme147_defconfig
powerpc                        cell_defconfig
ia64                                defconfig
m68k                             alldefconfig
sh                          lboxre2_defconfig
mips                        bcm47xx_defconfig
arm                           tegra_defconfig
sh                        sh7757lcr_defconfig
sh                           se7722_defconfig
arm                          exynos_defconfig
openrisc                  or1klitex_defconfig
m68k                        m5407c3_defconfig
riscv                               defconfig
xtensa                           alldefconfig
sh                     sh7710voipgw_defconfig
sh                          r7780mp_defconfig
m68k                        stmark2_defconfig
m68k                       bvme6000_defconfig
sh                           se7724_defconfig
sh                           se7780_defconfig
mips                         cobalt_defconfig
sh                            shmin_defconfig
arm                         assabet_defconfig
mips                            gpr_defconfig
microblaze                          defconfig
powerpc                    adder875_defconfig
powerpc                         ps3_defconfig
sh                         apsh4a3a_defconfig
ia64                      gensparse_defconfig
arm                          lpd270_defconfig
m68k                       m5249evb_defconfig
arc                           tb10x_defconfig
arc                            hsdk_defconfig
powerpc                  iss476-smp_defconfig
m68k                          amiga_defconfig
powerpc                 mpc834x_itx_defconfig
um                                  defconfig
powerpc                     rainier_defconfig
arm                         vf610m4_defconfig
um                               alldefconfig
arm                            hisi_defconfig
sh                             espt_defconfig
powerpc                    klondike_defconfig
riscv                    nommu_k210_defconfig
powerpc                     tqm8548_defconfig
openrisc                         alldefconfig
arc                        nsim_700_defconfig
powerpc                      ep88xc_defconfig
powerpc                     tqm8541_defconfig
powerpc                       maple_defconfig
sh                           se7712_defconfig
x86_64               randconfig-c001-20220509
arm                  randconfig-c002-20220509
x86_64                        randconfig-c001
arm                  randconfig-c002-20220512
ia64                             allyesconfig
ia64                             allmodconfig
m68k                             allyesconfig
m68k                                defconfig
arc                              allyesconfig
alpha                               defconfig
xtensa                           allyesconfig
sh                               allmodconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a015-20220509
x86_64               randconfig-a012-20220509
x86_64               randconfig-a016-20220509
x86_64               randconfig-a014-20220509
x86_64               randconfig-a013-20220509
x86_64               randconfig-a011-20220509
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                 randconfig-a011-20220509
i386                 randconfig-a013-20220509
i386                 randconfig-a016-20220509
i386                 randconfig-a015-20220509
i386                 randconfig-a014-20220509
i386                 randconfig-a012-20220509
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220509
s390                 randconfig-r044-20220509
riscv                randconfig-r042-20220509
s390                 randconfig-r044-20220512
riscv                randconfig-r042-20220512
arc                  randconfig-r043-20220512
s390                 randconfig-r044-20220510
riscv                randconfig-r042-20220510
arc                  randconfig-r043-20220510
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64               randconfig-c007-20220509
i386                 randconfig-c001-20220509
powerpc              randconfig-c003-20220509
riscv                randconfig-c006-20220509
mips                 randconfig-c004-20220509
arm                  randconfig-c002-20220509
s390                 randconfig-c005-20220509
powerpc              randconfig-c003-20220510
x86_64                        randconfig-c007
riscv                randconfig-c006-20220510
mips                 randconfig-c004-20220510
i386                          randconfig-c001
arm                  randconfig-c002-20220510
s390                 randconfig-c005-20220510
mips                        bcm63xx_defconfig
arm                           omap1_defconfig
mips                     cu1830-neo_defconfig
powerpc                      acadia_defconfig
powerpc                    mvme5100_defconfig
arm                                 defconfig
powerpc                     kmeter1_defconfig
arm                        spear3xx_defconfig
arm                         socfpga_defconfig
powerpc                     akebono_defconfig
powerpc                     powernv_defconfig
powerpc                          allmodconfig
mips                       rbtx49xx_defconfig
mips                        maltaup_defconfig
mips                      maltaaprp_defconfig
arm                      pxa255-idp_defconfig
hexagon                             defconfig
mips                        omega2p_defconfig
arm                       netwinder_defconfig
powerpc                          g5_defconfig
powerpc                     tqm8560_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                          ath79_defconfig
powerpc                     skiroot_defconfig
arm                          ixp4xx_defconfig
mips                      pic32mzda_defconfig
arm                          pcm027_defconfig
arm                          collie_defconfig
powerpc                  mpc885_ads_defconfig
arm                       aspeed_g4_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                          pxa168_defconfig
x86_64               randconfig-a006-20220509
x86_64               randconfig-a002-20220509
x86_64               randconfig-a001-20220509
x86_64               randconfig-a004-20220509
x86_64               randconfig-a005-20220509
x86_64               randconfig-a003-20220509
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                 randconfig-a004-20220509
i386                 randconfig-a006-20220509
i386                 randconfig-a002-20220509
i386                 randconfig-a003-20220509
i386                 randconfig-a001-20220509
i386                 randconfig-a005-20220509
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220509
hexagon              randconfig-r041-20220509
hexagon              randconfig-r045-20220512
hexagon              randconfig-r041-20220512

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
