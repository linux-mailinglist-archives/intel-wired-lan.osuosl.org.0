Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A94301E23
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Jan 2021 19:33:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00814866BD;
	Sun, 24 Jan 2021 18:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLLsRocpdIA3; Sun, 24 Jan 2021 18:33:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12799866F5;
	Sun, 24 Jan 2021 18:33:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E51F61BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 18:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1E96866BD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 18:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oKdKycBOCNLn for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Jan 2021 18:33:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D0CD2866A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 18:33:46 +0000 (UTC)
IronPort-SDR: uAyMCWvP/SouXSiyQcyA2Oe5cwrN0zxyPI6/AW76pZuWcptHtb4oQTCaViqkPFgrMBwXzqjkE1
 eIdlp+Uhp2Ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="179710597"
X-IronPort-AV: E=Sophos;i="5.79,371,1602572400"; d="scan'208";a="179710597"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2021 10:33:45 -0800
IronPort-SDR: 5892F9HO7BMCSa1mqzDA2kdM/AT2aeQhXNz6wyac3ZXWYqyIj50Q9nRzeEg15gKCUUeGH6LYYR
 q/DoKd2QCNew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,371,1602572400"; d="scan'208";a="401866041"
Received: from lkp-server01.sh.intel.com (HELO 27c4e0a4b6d9) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2021 10:33:43 -0800
Received: from kbuild by 27c4e0a4b6d9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l3kCl-0000PU-62; Sun, 24 Jan 2021 18:33:43 +0000
Date: Mon, 25 Jan 2021 02:32:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <600dbd5b.UTD2fDlYUlAiidFq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 43e5763152e2d4679954da0d35029637f017b0b3
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
branch HEAD: 43e5763152e2d4679954da0d35029637f017b0b3  net: macb: ignore tx_clk if MII is used

elapsed time: 3727m

configs tested: 207
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                    vt8500_v6_v7_defconfig
arc                     haps_hs_smp_defconfig
mips                     loongson1b_defconfig
openrisc                            defconfig
arm                         s5pv210_defconfig
mips                        omega2p_defconfig
powerpc                     tqm8548_defconfig
arm                      jornada720_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                        mvebu_v5_defconfig
mips                    maltaup_xpa_defconfig
powerpc                      ppc40x_defconfig
sh                              ul2_defconfig
mips                       lemote2f_defconfig
powerpc                   bluestone_defconfig
m68k                             alldefconfig
powerpc                 mpc832x_rdb_defconfig
sh                        sh7763rdp_defconfig
powerpc                     skiroot_defconfig
mips                      maltasmvp_defconfig
sh                          kfr2r09_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                            lart_defconfig
powerpc                    gamecube_defconfig
sh                            migor_defconfig
powerpc                      ppc44x_defconfig
powerpc                      katmai_defconfig
sh                        apsh4ad0a_defconfig
m68k                           sun3_defconfig
powerpc                     ksi8560_defconfig
mips                         tb0219_defconfig
powerpc                      pcm030_defconfig
powerpc                       ebony_defconfig
sh                             espt_defconfig
sparc64                             defconfig
arc                              allyesconfig
m68k                          atari_defconfig
arm                        keystone_defconfig
h8300                    h8300h-sim_defconfig
powerpc                      mgcoge_defconfig
m68k                       m5249evb_defconfig
arm                       netwinder_defconfig
m68k                        mvme147_defconfig
openrisc                    or1ksim_defconfig
arm                         bcm2835_defconfig
arm                              zx_defconfig
arm                           h5000_defconfig
powerpc                     tqm8560_defconfig
mips                           ip28_defconfig
sh                          rsk7269_defconfig
m68k                        m5307c3_defconfig
mips                         db1xxx_defconfig
arm                              alldefconfig
sh                         apsh4a3a_defconfig
powerpc                      cm5200_defconfig
sparc                       sparc32_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                                  defconfig
sh                           se7712_defconfig
arm                        neponset_defconfig
arm                       aspeed_g4_defconfig
mips                      fuloong2e_defconfig
m68k                       bvme6000_defconfig
microblaze                      mmu_defconfig
powerpc64                        alldefconfig
sh                        edosk7705_defconfig
arm64                            alldefconfig
x86_64                              defconfig
mips                          ath79_defconfig
sh                     sh7710voipgw_defconfig
xtensa                  cadence_csp_defconfig
mips                          rm200_defconfig
arm                         lubbock_defconfig
powerpc                     sequoia_defconfig
powerpc                     pq2fads_defconfig
powerpc                      obs600_defconfig
mips                      malta_kvm_defconfig
mips                            gpr_defconfig
powerpc                    sam440ep_defconfig
arm                          pxa3xx_defconfig
arm                           h3600_defconfig
arm                        mini2440_defconfig
xtensa                       common_defconfig
mips                            e55_defconfig
arm                             mxs_defconfig
powerpc                  storcenter_defconfig
mips                      pistachio_defconfig
arm                          lpd270_defconfig
xtensa                    smp_lx200_defconfig
mips                      loongson3_defconfig
powerpc                     mpc512x_defconfig
sh                      rts7751r2d1_defconfig
powerpc                 xes_mpc85xx_defconfig
sh                   secureedge5410_defconfig
mips                        nlm_xlr_defconfig
nios2                            alldefconfig
arm                          pcm027_defconfig
mips                       capcella_defconfig
mips                          ath25_defconfig
sh                   rts7751r2dplus_defconfig
arm                          simpad_defconfig
m68k                        m5407c3_defconfig
mips                           jazz_defconfig
arm                         lpc32xx_defconfig
arm                         shannon_defconfig
powerpc                        fsp2_defconfig
arc                           tb10x_defconfig
powerpc                 mpc834x_mds_defconfig
arc                          axs101_defconfig
arm                           corgi_defconfig
arm                          collie_defconfig
powerpc                   lite5200b_defconfig
arm                           stm32_defconfig
arm                        realview_defconfig
powerpc                     sbc8548_defconfig
alpha                               defconfig
arm                          gemini_defconfig
powerpc                     asp8347_defconfig
sparc64                          alldefconfig
sh                             shx3_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                        vexpress_defconfig
arm                        oxnas_v6_defconfig
mips                           ci20_defconfig
mips                           mtx1_defconfig
powerpc                         wii_defconfig
powerpc                 canyonlands_defconfig
sh                           sh2007_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
i386                 randconfig-a001-20210124
i386                 randconfig-a002-20210124
i386                 randconfig-a004-20210124
i386                 randconfig-a006-20210124
i386                 randconfig-a005-20210124
i386                 randconfig-a003-20210124
x86_64               randconfig-a012-20210124
x86_64               randconfig-a016-20210124
x86_64               randconfig-a015-20210124
x86_64               randconfig-a011-20210124
x86_64               randconfig-a013-20210124
x86_64               randconfig-a014-20210124
i386                 randconfig-a013-20210122
i386                 randconfig-a011-20210122
i386                 randconfig-a012-20210122
i386                 randconfig-a014-20210122
i386                 randconfig-a015-20210122
i386                 randconfig-a016-20210122
i386                 randconfig-a013-20210124
i386                 randconfig-a011-20210124
i386                 randconfig-a012-20210124
i386                 randconfig-a015-20210124
i386                 randconfig-a014-20210124
i386                 randconfig-a016-20210124
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
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210124
x86_64               randconfig-a002-20210124
x86_64               randconfig-a001-20210124
x86_64               randconfig-a005-20210124
x86_64               randconfig-a006-20210124
x86_64               randconfig-a004-20210124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
