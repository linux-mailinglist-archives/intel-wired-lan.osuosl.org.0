Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A82453FAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 05:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC3E64053E;
	Wed, 17 Nov 2021 04:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWPlhmZudibJ; Wed, 17 Nov 2021 04:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D5FC40534;
	Wed, 17 Nov 2021 04:44:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97A861BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 04:44:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D86580EE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 04:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOJeNgBFAEFA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 04:44:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B93F80D3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 04:44:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="297301478"
X-IronPort-AV: E=Sophos;i="5.87,240,1631602800"; d="scan'208";a="297301478"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 20:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,240,1631602800"; d="scan'208";a="454737899"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 16 Nov 2021 20:44:40 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mnCoJ-0001EV-8j; Wed, 17 Nov 2021 04:44:39 +0000
Date: Wed, 17 Nov 2021 12:44:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6194889d.536KiaOLrJy+4CB4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e6f93269a3a545d9c7bf7e2f61020e43f331518a
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
branch HEAD: e6f93269a3a545d9c7bf7e2f61020e43f331518a  iavf: Fix VLAN feature flags after VFR

elapsed time: 722m

configs tested: 172
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211116
mips                 randconfig-c004-20211116
powerpc                 mpc836x_rdk_defconfig
arm                             pxa_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                          r7785rp_defconfig
s390                             allmodconfig
microblaze                      mmu_defconfig
mips                         tb0287_defconfig
sh                   sh7724_generic_defconfig
m68k                       m5249evb_defconfig
arm                        cerfcube_defconfig
powerpc                       eiger_defconfig
mips                     loongson2k_defconfig
powerpc                    socrates_defconfig
xtensa                       common_defconfig
mips                  decstation_64_defconfig
powerpc                         ps3_defconfig
sh                      rts7751r2d1_defconfig
sh                            titan_defconfig
um                             i386_defconfig
ia64                             allyesconfig
ia64                        generic_defconfig
powerpc                     tqm8555_defconfig
xtensa                  audio_kc705_defconfig
sh                              ul2_defconfig
mips                      maltasmvp_defconfig
powerpc                      ppc44x_defconfig
s390                       zfcpdump_defconfig
arm                        mini2440_defconfig
microblaze                          defconfig
powerpc                     pq2fads_defconfig
powerpc                      walnut_defconfig
arm                             mxs_defconfig
mips                          ath79_defconfig
powerpc                      makalu_defconfig
mips                   sb1250_swarm_defconfig
arm                            hisi_defconfig
ia64                            zx1_defconfig
arc                          axs103_defconfig
arm                         axm55xx_defconfig
arm                           sama5_defconfig
mips                          rm200_defconfig
arm                           stm32_defconfig
arm                       spear13xx_defconfig
ia64                             alldefconfig
arm                            xcep_defconfig
arm                       netwinder_defconfig
powerpc                     skiroot_defconfig
arm                       aspeed_g4_defconfig
arm                       imx_v6_v7_defconfig
powerpc                 mpc832x_mds_defconfig
s390                             alldefconfig
arm                          exynos_defconfig
m68k                          hp300_defconfig
arm                            qcom_defconfig
arm                      tct_hammer_defconfig
arm                        oxnas_v6_defconfig
arm                            lart_defconfig
powerpc                     pseries_defconfig
sh                            hp6xx_defconfig
mips                      maltaaprp_defconfig
nios2                         3c120_defconfig
arm                       mainstone_defconfig
powerpc                         wii_defconfig
powerpc                     mpc512x_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          rsk7264_defconfig
m68k                         apollo_defconfig
sh                            shmin_defconfig
h8300                            alldefconfig
mips                         rt305x_defconfig
riscv                             allnoconfig
arm                            mps2_defconfig
xtensa                  cadence_csp_defconfig
sh                         ap325rxa_defconfig
m68k                         amcore_defconfig
arm                        mvebu_v7_defconfig
sh                        dreamcast_defconfig
sh                          urquell_defconfig
sh                           se7751_defconfig
arm                       cns3420vb_defconfig
arm                    vt8500_v6_v7_defconfig
arc                        nsim_700_defconfig
arm                   milbeaut_m10v_defconfig
sh                   sh7770_generic_defconfig
xtensa                         virt_defconfig
ia64                          tiger_defconfig
arm                  randconfig-c002-20211116
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a015-20211116
x86_64               randconfig-a013-20211116
x86_64               randconfig-a012-20211116
x86_64               randconfig-a011-20211116
x86_64               randconfig-a016-20211116
x86_64               randconfig-a014-20211116
i386                 randconfig-a014-20211116
i386                 randconfig-a016-20211116
i386                 randconfig-a012-20211116
i386                 randconfig-a013-20211116
i386                 randconfig-a011-20211116
i386                 randconfig-a015-20211116
arc                  randconfig-r043-20211116
s390                 randconfig-r044-20211116
riscv                randconfig-r042-20211116
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c007-20211116
i386                 randconfig-c001-20211116
arm                  randconfig-c002-20211116
riscv                randconfig-c006-20211116
powerpc              randconfig-c003-20211116
s390                 randconfig-c005-20211116
mips                 randconfig-c004-20211116
x86_64               randconfig-a005-20211116
x86_64               randconfig-a003-20211116
x86_64               randconfig-a001-20211116
x86_64               randconfig-a002-20211116
x86_64               randconfig-a006-20211116
x86_64               randconfig-a004-20211116
i386                 randconfig-a006-20211116
i386                 randconfig-a003-20211116
i386                 randconfig-a005-20211116
i386                 randconfig-a001-20211116
i386                 randconfig-a004-20211116
i386                 randconfig-a002-20211116
hexagon              randconfig-r045-20211116
hexagon              randconfig-r041-20211116

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
