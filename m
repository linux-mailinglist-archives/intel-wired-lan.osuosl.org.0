Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1ED445EF7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 05:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4729B40637;
	Fri,  5 Nov 2021 04:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tyKrobhJ83ih; Fri,  5 Nov 2021 04:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0029540619;
	Fri,  5 Nov 2021 04:01:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 942F41BF9AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 04:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8ECF9400EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 04:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QciKbDvemiCS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 04:01:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 849A8400DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 04:01:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="232089799"
X-IronPort-AV: E=Sophos;i="5.87,210,1631602800"; d="scan'208";a="232089799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 21:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,210,1631602800"; d="scan'208";a="501806525"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 04 Nov 2021 21:01:26 -0700
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1miqPt-00079b-Ta; Fri, 05 Nov 2021 04:01:25 +0000
Date: Fri, 05 Nov 2021 12:00:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6184ac71.nAiqTdhc3YNfrv0B%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 581e1cbfdda9ddcb87ba8d7952a7d38bf4fb9377
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
branch HEAD: 581e1cbfdda9ddcb87ba8d7952a7d38bf4fb9377  iavf: Restore non MAC filters after link down

elapsed time: 1756m

configs tested: 257
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211103
i386                 randconfig-c001-20211104
i386                 randconfig-c001-20211105
powerpc              randconfig-c003-20211104
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
arm                         bcm2835_defconfig
sh                          kfr2r09_defconfig
powerpc                      obs600_defconfig
powerpc                 canyonlands_defconfig
arm                          gemini_defconfig
powerpc                          g5_defconfig
arm                         lpc32xx_defconfig
arm                          collie_defconfig
arm                         at91_dt_defconfig
m68k                       m5208evb_defconfig
powerpc                        fsp2_defconfig
arm                  colibri_pxa270_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                          atari_defconfig
m68k                            mac_defconfig
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
mips                           xway_defconfig
nds32                             allnoconfig
csky                             alldefconfig
arm                          ixp4xx_defconfig
openrisc                 simple_smp_defconfig
arm                          simpad_defconfig
arm                            mmp2_defconfig
arm                         mv78xx0_defconfig
powerpc                   currituck_defconfig
um                               alldefconfig
arm                           corgi_defconfig
nios2                         10m50_defconfig
mips                           rs90_defconfig
sh                        apsh4ad0a_defconfig
sh                        edosk7705_defconfig
powerpc                    amigaone_defconfig
sh                   sh7724_generic_defconfig
powerpc                     kmeter1_defconfig
arc                        vdk_hs38_defconfig
sh                          landisk_defconfig
powerpc                      mgcoge_defconfig
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
mips                        qi_lb60_defconfig
powerpc                       ppc64_defconfig
powerpc                     tqm8555_defconfig
mips                          rb532_defconfig
m68k                                defconfig
openrisc                         alldefconfig
powerpc                     mpc83xx_defconfig
arm                         orion5x_defconfig
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
arm                       multi_v4t_defconfig
sh                        dreamcast_defconfig
arm                        trizeps4_defconfig
powerpc                     akebono_defconfig
mips                         tb0287_defconfig
m68k                             alldefconfig
mips                           mtx1_defconfig
powerpc                      ppc40x_defconfig
arm                            zeus_defconfig
powerpc                  storcenter_defconfig
arm                      footbridge_defconfig
powerpc                   lite5200b_defconfig
mips                     loongson1c_defconfig
powerpc                      acadia_defconfig
arm                           tegra_defconfig
powerpc                 mpc836x_mds_defconfig
parisc                generic-64bit_defconfig
sh                   sh7770_generic_defconfig
powerpc                       eiger_defconfig
sparc                       sparc32_defconfig
mips                           ip22_defconfig
powerpc                     pq2fads_defconfig
sh                               alldefconfig
sh                             sh03_defconfig
riscv                             allnoconfig
arc                                 defconfig
arm                        shmobile_defconfig
arm                            pleb_defconfig
arm                        spear6xx_defconfig
powerpc                     rainier_defconfig
xtensa                  cadence_csp_defconfig
mips                        bcm63xx_defconfig
m68k                          amiga_defconfig
arm64                            alldefconfig
h8300                    h8300h-sim_defconfig
sh                           se7721_defconfig
powerpc                     redwood_defconfig
powerpc                     pseries_defconfig
sh                        sh7785lcr_defconfig
sh                        sh7757lcr_defconfig
mips                     cu1830-neo_defconfig
arm                          pxa168_defconfig
sh                     sh7710voipgw_defconfig
riscv                    nommu_k210_defconfig
powerpc                       holly_defconfig
powerpc                     sequoia_defconfig
arc                     nsimosci_hs_defconfig
arm                    vt8500_v6_v7_defconfig
arm                            qcom_defconfig
sh                          r7785rp_defconfig
arm                        cerfcube_defconfig
mips                      maltasmvp_defconfig
arm                  randconfig-c002-20211104
arm                  randconfig-c002-20211105
arm                  randconfig-c002-20211103
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
s390                                defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
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
i386                 randconfig-a014-20211103
i386                 randconfig-a016-20211103
i386                 randconfig-a013-20211103
i386                 randconfig-a015-20211103
i386                 randconfig-a011-20211103
i386                 randconfig-a012-20211103
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
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
