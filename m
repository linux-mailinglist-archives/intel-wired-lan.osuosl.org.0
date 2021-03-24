Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AE13471BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Mar 2021 07:39:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E033404AF;
	Wed, 24 Mar 2021 06:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1v2UKuWinNT; Wed, 24 Mar 2021 06:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3F3D401BB;
	Wed, 24 Mar 2021 06:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A26FC1BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 06:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EA9C401BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 06:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPrCtdpHEkwV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Mar 2021 06:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D3A3401BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 06:39:19 +0000 (UTC)
IronPort-SDR: aIzRUk8Mo2yyCttGrWu0YRt77olBdiX4xWECUSvPOVP8OFrlMMDBJdIHFgLD4wrsAgUHuoreq1
 cQi9LZowAz8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="170611004"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="170611004"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 23:39:18 -0700
IronPort-SDR: +5ICP33Bv5r89NrarGCjBZNXvXqa15xKwLXLP9jHCc5WtLKzXLH8D4T0LlNtKc2/vkfEhbgwUD
 CxOENWqs5mjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="525134022"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 23 Mar 2021 23:39:17 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lOxAj-00014k-0Q; Wed, 24 Mar 2021 06:39:17 +0000
Date: Wed, 24 Mar 2021 14:38:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <605ade7c.0SMdzht0Cr7p+3RC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3edf703cbbfb17f844cf64c6b86ce36862961594
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
branch HEAD: 3edf703cbbfb17f844cf64c6b86ce36862961594  i40e: Fix parameters in aq_get_phy_register()

elapsed time: 723m

configs tested: 158
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                        workpad_defconfig
powerpc                 mpc8313_rdb_defconfig
mips                     cu1000-neo_defconfig
arm                        mini2440_defconfig
powerpc                     redwood_defconfig
mips                            ar7_defconfig
m68k                            mac_defconfig
arm                          imote2_defconfig
mips                      bmips_stb_defconfig
arm                   milbeaut_m10v_defconfig
arm                         mv78xx0_defconfig
arm                           h5000_defconfig
arm                        spear3xx_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                    klondike_defconfig
sh                           se7712_defconfig
ia64                          tiger_defconfig
mips                          ath25_defconfig
m68k                       m5208evb_defconfig
powerpc                     ksi8560_defconfig
arm                            mps2_defconfig
mips                  cavium_octeon_defconfig
arm                       imx_v4_v5_defconfig
powerpc64                           defconfig
m68k                        mvme147_defconfig
powerpc                   bluestone_defconfig
arm                      pxa255-idp_defconfig
arm                            hisi_defconfig
arm                          exynos_defconfig
h8300                       h8s-sim_defconfig
ia64                                defconfig
mips                      pic32mzda_defconfig
arm                       versatile_defconfig
sh                        sh7785lcr_defconfig
arm                          collie_defconfig
mips                         tb0287_defconfig
sh                          sdk7780_defconfig
powerpc                  storcenter_defconfig
powerpc                     kilauea_defconfig
mips                   sb1250_swarm_defconfig
powerpc                    socrates_defconfig
arm                       imx_v6_v7_defconfig
arm                        neponset_defconfig
sh                            hp6xx_defconfig
arm                         orion5x_defconfig
nds32                             allnoconfig
arc                     haps_hs_smp_defconfig
s390                             alldefconfig
mips                            e55_defconfig
sh                     sh7710voipgw_defconfig
m68k                        stmark2_defconfig
openrisc                            defconfig
parisc                generic-32bit_defconfig
arm                        multi_v5_defconfig
arm                          pxa910_defconfig
nios2                         3c120_defconfig
sh                          landisk_defconfig
sh                   secureedge5410_defconfig
arm                      integrator_defconfig
powerpc                 mpc836x_mds_defconfig
arm                     davinci_all_defconfig
powerpc                      ppc6xx_defconfig
powerpc                 mpc834x_mds_defconfig
sh                          rsk7201_defconfig
mips                     cu1830-neo_defconfig
arm                        shmobile_defconfig
powerpc                     ep8248e_defconfig
powerpc                      makalu_defconfig
arm                      tct_hammer_defconfig
arm                         lpc32xx_defconfig
arm                             pxa_defconfig
powerpc                     tqm8555_defconfig
powerpc                       eiger_defconfig
arm                          pxa168_defconfig
powerpc                      obs600_defconfig
sh                ecovec24-romimage_defconfig
m68k                       m5275evb_defconfig
mips                         mpc30x_defconfig
arc                              alldefconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210323
x86_64               randconfig-a003-20210323
x86_64               randconfig-a006-20210323
x86_64               randconfig-a001-20210323
x86_64               randconfig-a004-20210323
x86_64               randconfig-a005-20210323
i386                 randconfig-a003-20210323
i386                 randconfig-a004-20210323
i386                 randconfig-a001-20210323
i386                 randconfig-a002-20210323
i386                 randconfig-a006-20210323
i386                 randconfig-a005-20210323
i386                 randconfig-a004-20210324
i386                 randconfig-a003-20210324
i386                 randconfig-a001-20210324
i386                 randconfig-a002-20210324
i386                 randconfig-a006-20210324
i386                 randconfig-a005-20210324
i386                 randconfig-a014-20210323
i386                 randconfig-a011-20210323
i386                 randconfig-a015-20210323
i386                 randconfig-a016-20210323
i386                 randconfig-a012-20210323
i386                 randconfig-a013-20210323
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a012-20210323
x86_64               randconfig-a015-20210323
x86_64               randconfig-a013-20210323
x86_64               randconfig-a014-20210323
x86_64               randconfig-a011-20210323
x86_64               randconfig-a016-20210323

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
