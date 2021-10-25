Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4F8439261
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Oct 2021 11:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9A0A4028C;
	Mon, 25 Oct 2021 09:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jthqK5lEppMF; Mon, 25 Oct 2021 09:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4D5B40230;
	Mon, 25 Oct 2021 09:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3DBB1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 09:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E6B040263
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 09:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7f1C4Hx27cDo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Oct 2021 09:30:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4609B40136
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Oct 2021 09:30:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="229549912"
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="229549912"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 02:30:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="446561508"
Received: from lkp-server02.sh.intel.com (HELO 74392981b700) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2021 02:30:04 -0700
Received: from kbuild by 74392981b700 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mewIt-0001ax-Og; Mon, 25 Oct 2021 09:30:03 +0000
Date: Mon, 25 Oct 2021 17:29:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <617678df.bgGf3wWdSrqYdmB1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 1f83b835a3eaa5ae4bd825fb07182698bfc243ba
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 1f83b835a3eaa5ae4bd825fb07182698bfc243ba  fcnal-test: kill hanging ping/nettest binaries on cleanup

elapsed time: 1815m

configs tested: 144
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
i386                 randconfig-c001-20211025
sh                         ap325rxa_defconfig
powerpc                      pcm030_defconfig
mips                     decstation_defconfig
powerpc                      arches_defconfig
sh                            migor_defconfig
powerpc                      pmac32_defconfig
powerpc                      walnut_defconfig
m68k                         amcore_defconfig
arc                        nsim_700_defconfig
powerpc                        cell_defconfig
s390                          debug_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                           se7751_defconfig
xtensa                          iss_defconfig
powerpc                 mpc837x_rdb_defconfig
nios2                            alldefconfig
arm                       mainstone_defconfig
mips                          rb532_defconfig
arm                           sunxi_defconfig
xtensa                generic_kc705_defconfig
arm                           h3600_defconfig
mips                      bmips_stb_defconfig
mips                        vocore2_defconfig
sh                        sh7757lcr_defconfig
i386                             alldefconfig
powerpc                 mpc8313_rdb_defconfig
sparc                       sparc32_defconfig
sparc64                          alldefconfig
sh                        sh7785lcr_defconfig
openrisc                    or1ksim_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                 mpc8272_ads_defconfig
arm                            xcep_defconfig
powerpc                     kmeter1_defconfig
openrisc                         alldefconfig
powerpc                     tqm8548_defconfig
arm                       spear13xx_defconfig
mips                 decstation_r4k_defconfig
powerpc                   bluestone_defconfig
nios2                         3c120_defconfig
arc                      axs103_smp_defconfig
powerpc                      obs600_defconfig
mips                          rm200_defconfig
arm                           h5000_defconfig
arm                          pxa3xx_defconfig
powerpc                        warp_defconfig
arm                        mvebu_v7_defconfig
arm                            dove_defconfig
mips                          ath79_defconfig
mips                    maltaup_xpa_defconfig
arm                          ep93xx_defconfig
mips                           ip32_defconfig
arm                  randconfig-c002-20211025
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
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
x86_64               randconfig-a002-20211024
x86_64               randconfig-a004-20211024
x86_64               randconfig-a005-20211024
x86_64               randconfig-a006-20211024
x86_64               randconfig-a001-20211024
x86_64               randconfig-a003-20211024
i386                 randconfig-a003-20211024
i386                 randconfig-a004-20211024
i386                 randconfig-a002-20211024
i386                 randconfig-a005-20211024
i386                 randconfig-a006-20211024
i386                 randconfig-a001-20211024
x86_64               randconfig-a013-20211025
x86_64               randconfig-a015-20211025
x86_64               randconfig-a011-20211025
x86_64               randconfig-a014-20211025
x86_64               randconfig-a016-20211025
x86_64               randconfig-a012-20211025
i386                 randconfig-a012-20211025
i386                 randconfig-a013-20211025
i386                 randconfig-a011-20211025
i386                 randconfig-a016-20211025
i386                 randconfig-a015-20211025
i386                 randconfig-a014-20211025
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
riscv                randconfig-c006-20211025
powerpc              randconfig-c003-20211025
arm                  randconfig-c002-20211025
x86_64               randconfig-c007-20211025
mips                 randconfig-c004-20211025
i386                 randconfig-c001-20211025
s390                 randconfig-c005-20211025
i386                 randconfig-a003-20211025
i386                 randconfig-a004-20211025
i386                 randconfig-a002-20211025
i386                 randconfig-a005-20211025
i386                 randconfig-a001-20211025
i386                 randconfig-a006-20211025
hexagon              randconfig-r045-20211025
hexagon              randconfig-r041-20211025

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
