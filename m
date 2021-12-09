Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1814446E6F8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 11:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0F62607F0;
	Thu,  9 Dec 2021 10:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGH0lnyFBArt; Thu,  9 Dec 2021 10:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FC98607CC;
	Thu,  9 Dec 2021 10:46:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D0301BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 10:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 775ED607A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 10:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xxva7fQw8328 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 10:46:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDA2B60614
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 10:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639046792; x=1670582792;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jBuh62mTjaR9AKozbK7CGmkK35Oefuf8vV8hRAG0mDY=;
 b=FV1C4TAfZA+M6EQsw5X4qLiBHJcfok8ffSufb7hgQ/VROZLvzibfvL1l
 +NWjXx95+t98kEHRRK9jwtEBbCLfwaC9rDtJAJRU56cmq2p8Ya3GUDbMt
 09qDxFvuKHXlTteRIlsYVtVQs+Y6sMC4xl9ChXGXJAvLFvI3qX1wlzqZL
 nE3+y3lSv+SMNply1+Vtt06qoBLpfm07ZpkA2uXq2/P0j8ZF1KJb1OdXp
 9eRNqxwVpWbDUn9xYdR3ty535VReEvMnaNtGQNpgOGO2LL8802e66iyAz
 2ILsoIW20Au1l31SdIRIZXqwJeZrR30nwzJ0PT0HvK0EJhRm97gtJ2BB0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="238014196"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="238014196"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 02:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="463173322"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 09 Dec 2021 02:45:19 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mvGvO-0001n3-I8; Thu, 09 Dec 2021 10:45:18 +0000
Date: Thu, 09 Dec 2021 18:44:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61b1de13.pGI2zY1b0IA3vfd7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 1a0f25a52e08b1f67510cabbb44888d2b3c46359
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 1a0f25a52e08b1f67510cabbb44888d2b3c46359  ice: safer stats processing

elapsed time: 724m

configs tested: 221
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211207
i386                 randconfig-c001-20211208
i386                 randconfig-c001-20211209
powerpc                      mgcoge_defconfig
arm                        mvebu_v7_defconfig
m68k                        stmark2_defconfig
arm                          imote2_defconfig
sh                        edosk7760_defconfig
riscv                            alldefconfig
arm                            xcep_defconfig
sh                        sh7763rdp_defconfig
csky                             alldefconfig
arc                        nsim_700_defconfig
sh                           se7206_defconfig
arc                      axs103_smp_defconfig
mips                           mtx1_defconfig
m68k                       m5249evb_defconfig
arm                           spitz_defconfig
powerpc64                        alldefconfig
sh                            titan_defconfig
powerpc                  storcenter_defconfig
arm                          lpd270_defconfig
parisc                           alldefconfig
arm                        spear6xx_defconfig
arm                           h5000_defconfig
arm                         orion5x_defconfig
powerpc                      pasemi_defconfig
arm                           sama5_defconfig
powerpc                     pseries_defconfig
powerpc                     sequoia_defconfig
sh                          rsk7201_defconfig
powerpc                      chrp32_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                      pcm030_defconfig
arm                         mv78xx0_defconfig
um                           x86_64_defconfig
arm                         palmz72_defconfig
arm                       versatile_defconfig
powerpc                 canyonlands_defconfig
sh                           se7750_defconfig
arm                         lpc18xx_defconfig
arm                            hisi_defconfig
powerpc                        icon_defconfig
powerpc                       ebony_defconfig
powerpc                        fsp2_defconfig
powerpc                      ppc6xx_defconfig
mips                         tb0287_defconfig
sh                          landisk_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                      pxa255-idp_defconfig
mips                       lemote2f_defconfig
powerpc                   currituck_defconfig
sh                           se7343_defconfig
arm                        neponset_defconfig
arc                     nsimosci_hs_defconfig
arm                        clps711x_defconfig
sh                     sh7710voipgw_defconfig
arm                      integrator_defconfig
powerpc                      makalu_defconfig
m68k                             alldefconfig
powerpc                          g5_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                            zeus_defconfig
powerpc                      cm5200_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         hackkit_defconfig
arm                          badge4_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      acadia_defconfig
h8300                       h8s-sim_defconfig
sh                   sh7724_generic_defconfig
powerpc               mpc834x_itxgp_defconfig
um                                  defconfig
sh                          lboxre2_defconfig
xtensa                generic_kc705_defconfig
powerpc                        warp_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                     magicpanelr2_defconfig
powerpc                 mpc834x_itx_defconfig
i386                                defconfig
sh                            migor_defconfig
arm                       aspeed_g4_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 mpc8540_ads_defconfig
sparc                       sparc64_defconfig
arm                  randconfig-c002-20211207
arm                  randconfig-c002-20211209
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
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211207
x86_64               randconfig-a005-20211207
x86_64               randconfig-a001-20211207
x86_64               randconfig-a002-20211207
x86_64               randconfig-a004-20211207
x86_64               randconfig-a003-20211207
x86_64               randconfig-a006-20211209
x86_64               randconfig-a005-20211209
x86_64               randconfig-a001-20211209
x86_64               randconfig-a002-20211209
x86_64               randconfig-a004-20211209
x86_64               randconfig-a003-20211209
i386                 randconfig-a001-20211209
i386                 randconfig-a005-20211209
i386                 randconfig-a003-20211209
i386                 randconfig-a002-20211209
i386                 randconfig-a006-20211209
i386                 randconfig-a004-20211209
i386                 randconfig-a001-20211207
i386                 randconfig-a005-20211207
i386                 randconfig-a002-20211207
i386                 randconfig-a003-20211207
i386                 randconfig-a006-20211207
i386                 randconfig-a004-20211207
x86_64               randconfig-a016-20211208
x86_64               randconfig-a011-20211208
x86_64               randconfig-a013-20211208
x86_64               randconfig-a012-20211208
x86_64               randconfig-a015-20211208
x86_64               randconfig-a014-20211208
i386                 randconfig-a013-20211208
i386                 randconfig-a016-20211208
i386                 randconfig-a011-20211208
i386                 randconfig-a014-20211208
i386                 randconfig-a012-20211208
i386                 randconfig-a015-20211208
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c007-20211207
arm                  randconfig-c002-20211207
riscv                randconfig-c006-20211207
i386                 randconfig-c001-20211207
powerpc              randconfig-c003-20211207
s390                 randconfig-c005-20211207
arm                  randconfig-c002-20211209
x86_64               randconfig-c007-20211209
riscv                randconfig-c006-20211209
i386                 randconfig-c001-20211209
mips                 randconfig-c004-20211209
powerpc              randconfig-c003-20211209
s390                 randconfig-c005-20211209
i386                 randconfig-a001-20211208
i386                 randconfig-a005-20211208
i386                 randconfig-a003-20211208
i386                 randconfig-a002-20211208
i386                 randconfig-a006-20211208
i386                 randconfig-a004-20211208
x86_64               randconfig-a016-20211207
x86_64               randconfig-a011-20211207
x86_64               randconfig-a013-20211207
x86_64               randconfig-a014-20211207
x86_64               randconfig-a015-20211207
x86_64               randconfig-a012-20211207
i386                 randconfig-a016-20211207
i386                 randconfig-a013-20211207
i386                 randconfig-a011-20211207
i386                 randconfig-a014-20211207
i386                 randconfig-a012-20211207
i386                 randconfig-a015-20211207
i386                 randconfig-a013-20211209
i386                 randconfig-a016-20211209
i386                 randconfig-a011-20211209
i386                 randconfig-a014-20211209
i386                 randconfig-a012-20211209
i386                 randconfig-a015-20211209
hexagon              randconfig-r045-20211208
hexagon              randconfig-r041-20211208
hexagon              randconfig-r045-20211209
s390                 randconfig-r044-20211209
hexagon              randconfig-r041-20211209
riscv                randconfig-r042-20211209
hexagon              randconfig-r045-20211207
s390                 randconfig-r044-20211207
riscv                randconfig-r042-20211207
hexagon              randconfig-r041-20211207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
