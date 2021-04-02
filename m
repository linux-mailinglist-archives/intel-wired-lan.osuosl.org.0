Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1703526BF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Apr 2021 08:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 033CA40623;
	Fri,  2 Apr 2021 06:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Q_CIut8O0eP; Fri,  2 Apr 2021 06:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6EBB401E9;
	Fri,  2 Apr 2021 06:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30E291C119D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Apr 2021 06:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20A2F401E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Apr 2021 06:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXscflDoUe_8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Apr 2021 06:53:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3EDA401FA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Apr 2021 06:53:04 +0000 (UTC)
IronPort-SDR: iBGcK4tL77aa53ZnA9IvFW1W9jIcrRlYNaCe6k0+Sxde46kgVSq+c264/KiM8L3FDlDseVItLh
 VuzXXEAxywHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="179536505"
X-IronPort-AV: E=Sophos;i="5.81,299,1610438400"; d="scan'208";a="179536505"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 23:53:03 -0700
IronPort-SDR: hm+bJQVKjvZcJqYYCupwBJrVUiZLQHtnIziG8KUkGJUzpjwBz9xjylf7M4EEWobVHBq3o5Vgnk
 vX5LRGrn1oTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,299,1610438400"; d="scan'208";a="379592118"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 01 Apr 2021 23:53:02 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lSDfx-0006yR-Lf; Fri, 02 Apr 2021 06:53:01 +0000
Date: Fri, 02 Apr 2021 14:52:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6066bf25.jJCVI7dlQ/iDy4jt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 c3214de929dbf1b7374add8bbed30ce82b197bbb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: c3214de929dbf1b7374add8bbed30ce82b197bbb  i40e: Fix display statistics for veb_tc

elapsed time: 726m

configs tested: 160
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
xtensa                generic_kc705_defconfig
sh                            titan_defconfig
arm                      footbridge_defconfig
arm                             ezx_defconfig
arm                        trizeps4_defconfig
alpha                            alldefconfig
arm                           sama5_defconfig
sh                         apsh4a3a_defconfig
arm                           omap1_defconfig
arm                           h5000_defconfig
mips                     cu1830-neo_defconfig
mips                     cu1000-neo_defconfig
mips                             allmodconfig
mips                      pistachio_defconfig
riscv                          rv32_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     redwood_defconfig
parisc                generic-32bit_defconfig
mips                            gpr_defconfig
powerpc                     tqm8540_defconfig
sh                     magicpanelr2_defconfig
powerpc                  mpc866_ads_defconfig
powerpc               mpc834x_itxgp_defconfig
m68k                          atari_defconfig
x86_64                           alldefconfig
arm                          exynos_defconfig
mips                        nlm_xlp_defconfig
arm                         shannon_defconfig
arm                       omap2plus_defconfig
xtensa                  audio_kc705_defconfig
powerpc                      acadia_defconfig
powerpc                     mpc512x_defconfig
sh                   rts7751r2dplus_defconfig
m68k                          hp300_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                        mvme16x_defconfig
arc                        nsim_700_defconfig
arm                         lpc32xx_defconfig
powerpc                     tqm8560_defconfig
powerpc                      tqm8xx_defconfig
mips                           ip27_defconfig
m68k                       bvme6000_defconfig
arm                        cerfcube_defconfig
m68k                           sun3_defconfig
arm                            pleb_defconfig
mips                          malta_defconfig
arm                        magician_defconfig
ia64                      gensparse_defconfig
arm                       spear13xx_defconfig
h8300                       h8s-sim_defconfig
um                                allnoconfig
arm                          badge4_defconfig
mips                      loongson3_defconfig
arc                     nsimosci_hs_defconfig
mips                        qi_lb60_defconfig
mips                       rbtx49xx_defconfig
arm                           tegra_defconfig
powerpc                       maple_defconfig
arm                             pxa_defconfig
powerpc                     rainier_defconfig
sh                        dreamcast_defconfig
mips                            e55_defconfig
riscv                               defconfig
mips                        vocore2_defconfig
s390                                defconfig
powerpc                 mpc8315_rdb_defconfig
sh                        edosk7760_defconfig
h8300                    h8300h-sim_defconfig
sh                           se7619_defconfig
sh                         ecovec24_defconfig
mips                      maltaaprp_defconfig
powerpc                       eiger_defconfig
ia64                         bigsur_defconfig
xtensa                       common_defconfig
arm                          ixp4xx_defconfig
arm                     am200epdkit_defconfig
mips                           ci20_defconfig
powerpc                  iss476-smp_defconfig
sh                           se7750_defconfig
riscv                    nommu_k210_defconfig
arm                         lpc18xx_defconfig
arm                          moxart_defconfig
s390                             allyesconfig
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
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210401
i386                 randconfig-a003-20210401
i386                 randconfig-a001-20210401
i386                 randconfig-a004-20210401
i386                 randconfig-a002-20210401
i386                 randconfig-a005-20210401
i386                 randconfig-a006-20210402
i386                 randconfig-a003-20210402
i386                 randconfig-a001-20210402
i386                 randconfig-a004-20210402
i386                 randconfig-a005-20210402
i386                 randconfig-a002-20210402
x86_64               randconfig-a014-20210401
x86_64               randconfig-a015-20210401
x86_64               randconfig-a011-20210401
x86_64               randconfig-a013-20210401
x86_64               randconfig-a012-20210401
x86_64               randconfig-a016-20210401
i386                 randconfig-a014-20210401
i386                 randconfig-a011-20210401
i386                 randconfig-a016-20210401
i386                 randconfig-a012-20210401
i386                 randconfig-a013-20210401
i386                 randconfig-a015-20210401
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
um                               allmodconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210401
x86_64               randconfig-a005-20210401
x86_64               randconfig-a003-20210401
x86_64               randconfig-a001-20210401
x86_64               randconfig-a002-20210401
x86_64               randconfig-a006-20210401

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
