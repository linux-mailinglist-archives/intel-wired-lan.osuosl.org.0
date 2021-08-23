Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 009CA3F5309
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Aug 2021 23:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EF6F80D72;
	Mon, 23 Aug 2021 21:52:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7GdojLY7nxN; Mon, 23 Aug 2021 21:52:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF6D180D74;
	Mon, 23 Aug 2021 21:52:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7F2F1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 21:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B303A403B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 21:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ODq1vybLaov for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 21:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 988544028D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 21:52:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="214062987"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="214062987"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 14:52:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="455035946"
Received: from lkp-server02.sh.intel.com (HELO ca0e9373e375) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2021 14:52:43 -0700
Received: from kbuild by ca0e9373e375 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mIHs3-0000Ta-0C; Mon, 23 Aug 2021 21:52:43 +0000
Date: Tue, 24 Aug 2021 05:52:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6124188e.9oLgrrb8EtLgShMH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 69bbbd98f4a8fc0e241aa3a01a34985eba06fb0b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 69bbbd98f4a8fc0e241aa3a01a34985eba06fb0b  ice: refactor devlink getter/fallback functions to void

possible Warning in current branch (please contact us if interested):

drivers/net/ethernet/intel/ice/ice_dcb_nl.c:66:6: warning: variable 'bwcfg' set but not used [-Wunused-but-set-variable]
drivers/net/ethernet/intel/ice/ice_tc_lib.c:673:36-61: WARNING avoid newline at end of message in NL_SET_ERR_MSG_MOD

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- ia64-randconfig-c024-20210821
    `-- drivers-net-ethernet-intel-ice-ice_tc_lib.c:WARNING-avoid-newline-at-end-of-message-in-NL_SET_ERR_MSG_MOD

clang_recent_errors
`-- i386-randconfig-a006-20210821
    `-- drivers-net-ethernet-intel-ice-ice_dcb_nl.c:warning:variable-bwcfg-set-but-not-used

elapsed time: 4516m

configs tested: 191
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         cm_x300_defconfig
alpha                            alldefconfig
m68k                         apollo_defconfig
powerpc                      pmac32_defconfig
sh                           se7751_defconfig
arm                       aspeed_g5_defconfig
sh                          sdk7786_defconfig
m68k                          sun3x_defconfig
sh                             shx3_defconfig
sh                        sh7757lcr_defconfig
powerpc                   bluestone_defconfig
arm                         lpc18xx_defconfig
arm                       multi_v4t_defconfig
s390                                defconfig
mips                        bcm63xx_defconfig
arc                                 defconfig
xtensa                         virt_defconfig
mips                      bmips_stb_defconfig
sh                   secureedge5410_defconfig
sparc                       sparc32_defconfig
mips                      maltasmvp_defconfig
arm                         at91_dt_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                 mpc837x_mds_defconfig
riscv                            alldefconfig
powerpc                     asp8347_defconfig
arc                     nsimosci_hs_defconfig
mips                            gpr_defconfig
h8300                               defconfig
powerpc                     stx_gp3_defconfig
arm                            mps2_defconfig
powerpc                     tqm8541_defconfig
arm                           h3600_defconfig
parisc                generic-64bit_defconfig
riscv                    nommu_virt_defconfig
arm                       imx_v4_v5_defconfig
mips                         bigsur_defconfig
x86_64                           alldefconfig
arm                          exynos_defconfig
powerpc                      pasemi_defconfig
mips                           ip32_defconfig
arm                           tegra_defconfig
openrisc                 simple_smp_defconfig
powerpc                        icon_defconfig
m68k                          multi_defconfig
powerpc                    amigaone_defconfig
powerpc                 mpc8540_ads_defconfig
arc                         haps_hs_defconfig
arm                         s5pv210_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                 mpc8272_ads_defconfig
arc                      axs103_smp_defconfig
sh                ecovec24-romimage_defconfig
arm                          badge4_defconfig
sh                     sh7710voipgw_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                             rpc_defconfig
sparc64                          alldefconfig
arm                          iop32x_defconfig
mips                      pistachio_defconfig
mips                      loongson3_defconfig
powerpc                     akebono_defconfig
arc                        vdk_hs38_defconfig
sh                          rsk7203_defconfig
sh                               alldefconfig
sh                               j2_defconfig
s390                          debug_defconfig
arm                        clps711x_defconfig
powerpc                 linkstation_defconfig
mips                  decstation_64_defconfig
microblaze                      mmu_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210822
x86_64               randconfig-a006-20210822
x86_64               randconfig-a001-20210822
x86_64               randconfig-a003-20210822
x86_64               randconfig-a004-20210822
x86_64               randconfig-a002-20210822
i386                 randconfig-a006-20210822
i386                 randconfig-a001-20210822
i386                 randconfig-a002-20210822
i386                 randconfig-a005-20210822
i386                 randconfig-a003-20210822
i386                 randconfig-a004-20210822
x86_64               randconfig-a014-20210821
x86_64               randconfig-a016-20210821
x86_64               randconfig-a015-20210821
x86_64               randconfig-a013-20210821
x86_64               randconfig-a012-20210821
x86_64               randconfig-a011-20210821
i386                 randconfig-a011-20210821
i386                 randconfig-a016-20210821
i386                 randconfig-a012-20210821
i386                 randconfig-a014-20210821
i386                 randconfig-a013-20210821
i386                 randconfig-a015-20210821
arc                  randconfig-r043-20210821
riscv                randconfig-r042-20210821
s390                 randconfig-r044-20210821
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
i386                 randconfig-c001-20210822
s390                 randconfig-c005-20210822
arm                  randconfig-c002-20210822
riscv                randconfig-c006-20210822
powerpc              randconfig-c003-20210822
x86_64               randconfig-c007-20210822
mips                 randconfig-c004-20210822
s390                 randconfig-c005-20210821
i386                 randconfig-c001-20210821
arm                  randconfig-c002-20210821
riscv                randconfig-c006-20210821
powerpc              randconfig-c003-20210821
x86_64               randconfig-c007-20210821
mips                 randconfig-c004-20210821
x86_64               randconfig-a005-20210821
x86_64               randconfig-a001-20210821
x86_64               randconfig-a006-20210821
x86_64               randconfig-a003-20210821
x86_64               randconfig-a004-20210821
x86_64               randconfig-a002-20210821
i386                 randconfig-a006-20210821
i386                 randconfig-a001-20210821
i386                 randconfig-a002-20210821
i386                 randconfig-a005-20210821
i386                 randconfig-a004-20210821
i386                 randconfig-a003-20210821
x86_64               randconfig-a014-20210822
x86_64               randconfig-a016-20210822
x86_64               randconfig-a015-20210822
x86_64               randconfig-a013-20210822
x86_64               randconfig-a012-20210822
x86_64               randconfig-a011-20210822
i386                 randconfig-a011-20210822
i386                 randconfig-a016-20210822
i386                 randconfig-a012-20210822
i386                 randconfig-a014-20210822
i386                 randconfig-a013-20210822
i386                 randconfig-a015-20210822
hexagon              randconfig-r041-20210821
hexagon              randconfig-r045-20210821
hexagon              randconfig-r041-20210822
hexagon              randconfig-r045-20210822
riscv                randconfig-r042-20210822
s390                 randconfig-r044-20210822

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
