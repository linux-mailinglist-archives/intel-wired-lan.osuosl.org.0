Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D88252B1BFD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Nov 2020 14:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A94FA869CF;
	Fri, 13 Nov 2020 13:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8zxRPX02Puph; Fri, 13 Nov 2020 13:39:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 424F686A4E;
	Fri, 13 Nov 2020 13:39:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DC371BF42D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 13:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 193D0203D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 13:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZsKJRt-PBAI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Nov 2020 13:39:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id A98AA20435
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 13:38:54 +0000 (UTC)
IronPort-SDR: 033L+VdsOrFSZ6boshlluy3LKFNbO+K7DMTwQuTXG9jKMQH9DG9gZii01mp95UqdkVify/JW2Q
 zuBSBLmSnrog==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="170641104"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="170641104"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:36:50 -0800
IronPort-SDR: Kx4EhIO04DtYF5DuhGSOV2QFCBTFNvdiRDj64wuGMm3SaJvev+XerKCGjhsVqwA7AQ2oSHikxr
 YdtG1ueIbtJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="309613907"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 13 Nov 2020 05:36:46 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kdZFt-0000K0-Mn; Fri, 13 Nov 2020 13:36:45 +0000
Date: Fri, 13 Nov 2020 21:36:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fae8bdd.YKnbAA61bV/fT8eA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 34b93f19c92ca7720efe25e852d480bb13101dec
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  master
branch HEAD: 34b93f19c92ca7720efe25e852d480bb13101dec  Merge branch 'selftests-pmtu-sh-improve-the-test-result-processing'

elapsed time: 1239m

configs tested: 292
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                    vdk_hs38_smp_defconfig
powerpc                     sbc8548_defconfig
arm                         lubbock_defconfig
powerpc                      acadia_defconfig
arm                         bcm2835_defconfig
arm                        shmobile_defconfig
arm                        spear6xx_defconfig
arm                       aspeed_g5_defconfig
ia64                        generic_defconfig
sh                   rts7751r2dplus_defconfig
mips                  cavium_octeon_defconfig
powerpc                     pq2fads_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                     loongson1b_defconfig
powerpc                     rainier_defconfig
ia64                          tiger_defconfig
sh                         microdev_defconfig
powerpc                      katmai_defconfig
sh                   sh7770_generic_defconfig
sh                            hp6xx_defconfig
riscv                            allmodconfig
powerpc                    ge_imp3a_defconfig
sparc                               defconfig
sparc64                          alldefconfig
sh                        dreamcast_defconfig
m68k                             alldefconfig
m68k                            q40_defconfig
arm                          ep93xx_defconfig
arm                       multi_v4t_defconfig
mips                      maltasmvp_defconfig
nios2                         10m50_defconfig
arm                             mxs_defconfig
arm                          prima2_defconfig
arm64                            alldefconfig
mips                          ath79_defconfig
powerpc                       maple_defconfig
sh                          polaris_defconfig
sh                          kfr2r09_defconfig
arm                        mvebu_v5_defconfig
mips                        workpad_defconfig
m68k                         apollo_defconfig
sh                ecovec24-romimage_defconfig
riscv                            alldefconfig
arm                       aspeed_g4_defconfig
m68k                          atari_defconfig
powerpc                     pseries_defconfig
arm                   milbeaut_m10v_defconfig
arm                        multi_v5_defconfig
mips                         bigsur_defconfig
arm                         s3c6400_defconfig
arm                         s5pv210_defconfig
arm                        cerfcube_defconfig
arm                         assabet_defconfig
sh                           se7343_defconfig
arm                          pxa3xx_defconfig
arm                           tegra_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                     loongson1c_defconfig
parisc                generic-32bit_defconfig
arm                          tango4_defconfig
arm                         s3c2410_defconfig
xtensa                              defconfig
sh                          lboxre2_defconfig
m68k                          hp300_defconfig
sparc                       sparc64_defconfig
powerpc                     tqm8555_defconfig
powerpc                           allnoconfig
powerpc                      ppc64e_defconfig
powerpc                     skiroot_defconfig
sh                         ecovec24_defconfig
arc                            hsdk_defconfig
arc                           tb10x_defconfig
powerpc                 mpc836x_mds_defconfig
xtensa                         virt_defconfig
arm                         at91_dt_defconfig
mips                             allyesconfig
sh                             espt_defconfig
arm                          collie_defconfig
sh                           se7722_defconfig
powerpc                        warp_defconfig
arm                  colibri_pxa270_defconfig
arm                              alldefconfig
mips                     cu1830-neo_defconfig
powerpc                      pcm030_defconfig
arm                            qcom_defconfig
m68k                          amiga_defconfig
powerpc                     mpc512x_defconfig
powerpc                 mpc834x_mds_defconfig
arm                           h3600_defconfig
m68k                        m5407c3_defconfig
m68k                        mvme16x_defconfig
sh                          rsk7203_defconfig
powerpc                    mvme5100_defconfig
sh                          sdk7786_defconfig
mips                       bmips_be_defconfig
sparc                       sparc32_defconfig
powerpc                     tqm8548_defconfig
um                            kunit_defconfig
arc                          axs103_defconfig
sh                           se7750_defconfig
c6x                              alldefconfig
arc                     nsimosci_hs_defconfig
mips                        nlm_xlr_defconfig
arm                          gemini_defconfig
powerpc                      pasemi_defconfig
powerpc                      walnut_defconfig
mips                        vocore2_defconfig
arm                          imote2_defconfig
mips                           rs90_defconfig
arm                          exynos_defconfig
m68k                           sun3_defconfig
ia64                                defconfig
mips                          ath25_defconfig
mips                         cobalt_defconfig
arm                        spear3xx_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                    sam440ep_defconfig
powerpc                     stx_gp3_defconfig
arm                           sunxi_defconfig
powerpc                    adder875_defconfig
powerpc                       ebony_defconfig
xtensa                    smp_lx200_defconfig
microblaze                      mmu_defconfig
arm                        trizeps4_defconfig
c6x                                 defconfig
csky                             alldefconfig
arc                        nsim_700_defconfig
nds32                            alldefconfig
powerpc                      ep88xc_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                          axs101_defconfig
mips                           ip28_defconfig
powerpc                     powernv_defconfig
ia64                         bigsur_defconfig
ia64                             alldefconfig
powerpc                  mpc885_ads_defconfig
sh                      rts7751r2d1_defconfig
h8300                     edosk2674_defconfig
arm                         shannon_defconfig
powerpc                     asp8347_defconfig
powerpc                         wii_defconfig
sh                           sh2007_defconfig
arm                            dove_defconfig
sh                              ul2_defconfig
microblaze                          defconfig
mips                         tb0287_defconfig
xtensa                generic_kc705_defconfig
arm                              zx_defconfig
mips                            gpr_defconfig
arm                          lpd270_defconfig
mips                malta_kvm_guest_defconfig
i386                             alldefconfig
mips                        maltaup_defconfig
arm                         mv78xx0_defconfig
s390                          debug_defconfig
arm                         hackkit_defconfig
x86_64                           allyesconfig
arc                 nsimosci_hs_smp_defconfig
arm                            pleb_defconfig
mips                        omega2p_defconfig
riscv                            allyesconfig
mips                        nlm_xlp_defconfig
mips                          malta_defconfig
arm                      footbridge_defconfig
mips                 decstation_r4k_defconfig
arm                         nhk8815_defconfig
arm                            u300_defconfig
openrisc                 simple_smp_defconfig
arm                             pxa_defconfig
nios2                            alldefconfig
xtensa                    xip_kc705_defconfig
c6x                        evmc6457_defconfig
powerpc                    socrates_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                   lite5200b_defconfig
m68k                         amcore_defconfig
mips                       lemote2f_defconfig
powerpc                 mpc832x_mds_defconfig
arm                          pxa168_defconfig
sh                          urquell_defconfig
m68k                       m5475evb_defconfig
arm                      tct_hammer_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                         socfpga_defconfig
m68k                        m5307c3_defconfig
ia64                      gensparse_defconfig
m68k                        stmark2_defconfig
sh                               allmodconfig
arm                           spitz_defconfig
powerpc                      pmac32_defconfig
arm                           viper_defconfig
powerpc                      obs600_defconfig
sh                        sh7785lcr_defconfig
arm                         orion5x_defconfig
sh                          rsk7269_defconfig
xtensa                          iss_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a006-20201113
i386                 randconfig-a005-20201113
i386                 randconfig-a002-20201113
i386                 randconfig-a001-20201113
i386                 randconfig-a003-20201113
i386                 randconfig-a004-20201113
i386                 randconfig-a006-20201112
i386                 randconfig-a005-20201112
i386                 randconfig-a002-20201112
i386                 randconfig-a001-20201112
i386                 randconfig-a003-20201112
i386                 randconfig-a004-20201112
i386                 randconfig-a006-20201111
i386                 randconfig-a005-20201111
i386                 randconfig-a002-20201111
i386                 randconfig-a001-20201111
i386                 randconfig-a003-20201111
i386                 randconfig-a004-20201111
x86_64               randconfig-a015-20201113
x86_64               randconfig-a011-20201113
x86_64               randconfig-a014-20201113
x86_64               randconfig-a013-20201113
x86_64               randconfig-a016-20201113
x86_64               randconfig-a012-20201113
x86_64               randconfig-a015-20201111
x86_64               randconfig-a011-20201111
x86_64               randconfig-a014-20201111
x86_64               randconfig-a013-20201111
x86_64               randconfig-a016-20201111
x86_64               randconfig-a012-20201111
i386                 randconfig-a012-20201113
i386                 randconfig-a014-20201113
i386                 randconfig-a016-20201113
i386                 randconfig-a011-20201113
i386                 randconfig-a015-20201113
i386                 randconfig-a013-20201113
i386                 randconfig-a012-20201111
i386                 randconfig-a014-20201111
i386                 randconfig-a016-20201111
i386                 randconfig-a011-20201111
i386                 randconfig-a015-20201111
i386                 randconfig-a013-20201111
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20201113
x86_64               randconfig-a005-20201113
x86_64               randconfig-a004-20201113
x86_64               randconfig-a002-20201113
x86_64               randconfig-a006-20201113
x86_64               randconfig-a001-20201113
x86_64               randconfig-a003-20201111
x86_64               randconfig-a005-20201111
x86_64               randconfig-a004-20201111
x86_64               randconfig-a002-20201111
x86_64               randconfig-a006-20201111
x86_64               randconfig-a001-20201111

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
