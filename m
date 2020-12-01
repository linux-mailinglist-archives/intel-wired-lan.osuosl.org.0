Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DAA2C9782
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 07:24:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF80587497;
	Tue,  1 Dec 2020 06:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aPqoqkhiu8uZ; Tue,  1 Dec 2020 06:24:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4009E874A7;
	Tue,  1 Dec 2020 06:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12BFC1BF372
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 06:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E2E98749A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 06:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nbeMMgVaCBgY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 06:24:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BA8B87497
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 06:24:12 +0000 (UTC)
IronPort-SDR: qq8sMcha3K/okRdkE3AE95xLG3wu0dme0/2Q3JLSUkmknItZOczN948GlkPgc+VltjzsNO7pT2
 nJYk4KrQ3VLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190968527"
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; d="scan'208";a="190968527"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 22:24:11 -0800
IronPort-SDR: vBrKQzOxJyhoX9nBXTCP6e9ac7pNAPXyeyfKPvAK1NnY2YSyijIqF5iEI/fFV8h5OrPIqUDvDy
 HXl2izc44srA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; d="scan'208";a="364569535"
Received: from lkp-server01.sh.intel.com (HELO 70b44b587200) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 30 Nov 2020 22:24:10 -0800
Received: from kbuild by 70b44b587200 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kjz57-00009h-S8; Tue, 01 Dec 2020 06:24:09 +0000
Date: Tue, 01 Dec 2020 14:23:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fc5e17e.+wp/p3taVphII4LZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 4d521943f76bd0d1e68ea5e02df7aadd30b2838a
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
branch HEAD: 4d521943f76bd0d1e68ea5e02df7aadd30b2838a  dt-bindings: net: correct interrupt flags in examples

elapsed time: 3329m

configs tested: 265
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                                 defconfig
arm                              allmodconfig
h8300                     edosk2674_defconfig
sh                          rsk7203_defconfig
arm                       imx_v6_v7_defconfig
arc                            hsdk_defconfig
ia64                            zx1_defconfig
sh                              ul2_defconfig
powerpc                    sam440ep_defconfig
nds32                            alldefconfig
arm                            qcom_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                           xway_defconfig
arm                         lpc18xx_defconfig
powerpc                      pcm030_defconfig
powerpc                          allyesconfig
sh                ecovec24-romimage_defconfig
arm                        vexpress_defconfig
arm                           sama5_defconfig
arm                       aspeed_g5_defconfig
sh                             espt_defconfig
sh                        edosk7705_defconfig
arm                      jornada720_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                       m5275evb_defconfig
arm                         lpc32xx_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
arm                         cm_x300_defconfig
mips                           ip27_defconfig
mips                      pic32mzda_defconfig
arm                        mvebu_v5_defconfig
sh                          urquell_defconfig
powerpc                     pq2fads_defconfig
arm                          prima2_defconfig
sh                            shmin_defconfig
sh                        dreamcast_defconfig
powerpc                       maple_defconfig
xtensa                    xip_kc705_defconfig
sh                         apsh4a3a_defconfig
c6x                         dsk6455_defconfig
powerpc                      ppc64e_defconfig
openrisc                 simple_smp_defconfig
arc                          axs101_defconfig
powerpc                    klondike_defconfig
mips                           jazz_defconfig
powerpc                     skiroot_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
mips                           gcw0_defconfig
arm                      pxa255-idp_defconfig
arm                        multi_v7_defconfig
m68k                                defconfig
sh                   sh7724_generic_defconfig
mips                     loongson1c_defconfig
powerpc64                        alldefconfig
mips                       lemote2f_defconfig
xtensa                  cadence_csp_defconfig
sh                          landisk_defconfig
powerpc                      walnut_defconfig
um                             i386_defconfig
arm                          ep93xx_defconfig
s390                          debug_defconfig
powerpc                      ep88xc_defconfig
arm                            mmp2_defconfig
sh                   secureedge5410_defconfig
powerpc                     mpc5200_defconfig
mips                         tb0287_defconfig
arm                        mvebu_v7_defconfig
powerpc                 canyonlands_defconfig
mips                            gpr_defconfig
arc                        nsimosci_defconfig
riscv                    nommu_k210_defconfig
arm                             mxs_defconfig
riscv                    nommu_virt_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                     pseries_defconfig
arm                           omap1_defconfig
powerpc                      tqm8xx_defconfig
sh                   sh7770_generic_defconfig
xtensa                           alldefconfig
c6x                        evmc6474_defconfig
arm                        clps711x_defconfig
arm                           corgi_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                          r7785rp_defconfig
mips                        workpad_defconfig
arm                          gemini_defconfig
mips                     cu1000-neo_defconfig
ia64                        generic_defconfig
powerpc                     kilauea_defconfig
alpha                            alldefconfig
m68k                       m5249evb_defconfig
xtensa                    smp_lx200_defconfig
sh                           se7343_defconfig
arm                  colibri_pxa270_defconfig
mips                         bigsur_defconfig
arm                           h3600_defconfig
m68k                        m5407c3_defconfig
mips                        bcm47xx_defconfig
xtensa                          iss_defconfig
sh                        sh7757lcr_defconfig
powerpc                    adder875_defconfig
sh                               j2_defconfig
powerpc                      katmai_defconfig
arc                           tb10x_defconfig
arm                             rpc_defconfig
arm                        cerfcube_defconfig
sh                           se7619_defconfig
microblaze                          defconfig
powerpc                      cm5200_defconfig
arm                          collie_defconfig
arc                          axs103_defconfig
arm                         bcm2835_defconfig
c6x                        evmc6472_defconfig
nios2                         10m50_defconfig
um                           x86_64_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                        fsp2_defconfig
mips                       capcella_defconfig
powerpc                      ppc44x_defconfig
arm                          imote2_defconfig
xtensa                           allyesconfig
arm                        shmobile_defconfig
powerpc                     asp8347_defconfig
mips                         mpc30x_defconfig
h8300                       h8s-sim_defconfig
powerpc                   bluestone_defconfig
powerpc                   lite5200b_defconfig
m68k                        m5272c3_defconfig
arm                          exynos_defconfig
riscv                             allnoconfig
powerpc                        cell_defconfig
powerpc                      obs600_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                       ebony_defconfig
mips                      malta_kvm_defconfig
arm                       netwinder_defconfig
powerpc                     tqm8555_defconfig
mips                        nlm_xlp_defconfig
powerpc                   motionpro_defconfig
sh                            hp6xx_defconfig
sh                          lboxre2_defconfig
nios2                         3c120_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                      bmips_stb_defconfig
powerpc                      bamboo_defconfig
arm                             pxa_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                       multi_v4t_defconfig
powerpc                     sequoia_defconfig
arm                         s5pv210_defconfig
mips                    maltaup_xpa_defconfig
c6x                              alldefconfig
c6x                        evmc6678_defconfig
mips                      loongson3_defconfig
mips                     cu1830-neo_defconfig
arm                         axm55xx_defconfig
sh                          rsk7269_defconfig
powerpc                    socrates_defconfig
sh                             sh03_defconfig
arm                     eseries_pxa_defconfig
mips                         db1xxx_defconfig
arm                        mini2440_defconfig
arm                           spitz_defconfig
arc                              allyesconfig
m68k                        mvme16x_defconfig
mips                          rm200_defconfig
m68k                       bvme6000_defconfig
powerpc                     stx_gp3_defconfig
arm                          simpad_defconfig
arm                              zx_defconfig
arm                        realview_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     kmeter1_defconfig
mips                      maltasmvp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201130
i386                 randconfig-a002-20201130
i386                 randconfig-a003-20201130
i386                 randconfig-a005-20201130
i386                 randconfig-a006-20201130
i386                 randconfig-a001-20201130
i386                 randconfig-a004-20201129
i386                 randconfig-a003-20201129
i386                 randconfig-a002-20201129
i386                 randconfig-a005-20201129
i386                 randconfig-a001-20201129
i386                 randconfig-a006-20201129
x86_64               randconfig-a014-20201130
x86_64               randconfig-a015-20201130
x86_64               randconfig-a016-20201130
x86_64               randconfig-a011-20201130
x86_64               randconfig-a012-20201130
x86_64               randconfig-a013-20201130
x86_64               randconfig-a015-20201129
x86_64               randconfig-a011-20201129
x86_64               randconfig-a016-20201129
x86_64               randconfig-a014-20201129
x86_64               randconfig-a012-20201129
x86_64               randconfig-a013-20201129
i386                 randconfig-a013-20201130
i386                 randconfig-a012-20201130
i386                 randconfig-a011-20201130
i386                 randconfig-a016-20201130
i386                 randconfig-a015-20201130
i386                 randconfig-a014-20201130
i386                 randconfig-a012-20201129
i386                 randconfig-a013-20201129
i386                 randconfig-a011-20201129
i386                 randconfig-a016-20201129
i386                 randconfig-a014-20201129
i386                 randconfig-a015-20201129
riscv                            allyesconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20201130
x86_64               randconfig-a006-20201130
x86_64               randconfig-a005-20201130
x86_64               randconfig-a004-20201130
x86_64               randconfig-a001-20201130
x86_64               randconfig-a003-20201130
x86_64               randconfig-a003-20201129
x86_64               randconfig-a006-20201129
x86_64               randconfig-a004-20201129
x86_64               randconfig-a005-20201129
x86_64               randconfig-a002-20201129
x86_64               randconfig-a001-20201129

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
