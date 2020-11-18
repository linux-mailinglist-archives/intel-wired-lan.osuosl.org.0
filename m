Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FED42B7839
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Nov 2020 09:13:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0970F204F7;
	Wed, 18 Nov 2020 08:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ns1j2pEh7c8A; Wed, 18 Nov 2020 08:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F5C0204BD;
	Wed, 18 Nov 2020 08:13:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E68D41BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 08:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E102B8561D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 08:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C09AEO4W5PBD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Nov 2020 08:13:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0BF585773
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 08:13:17 +0000 (UTC)
IronPort-SDR: opP2sANkmTewQWhJm/pvj8xIBAgkP0A4HhU58tAiTqMKq1V5G286iUbZIR/7BDJJ0h57/8Xefn
 zfPkyELU8B/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232695653"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="232695653"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 00:13:16 -0800
IronPort-SDR: Qlg6TXvF2Rdj+OjAq6mQRGziyxW89TWQHix4rgqX2sFq3s2k3pT7fpSy8o7FtzdjHa8DnId7fS
 T+nwRRxMh2kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="368384823"
Received: from lkp-server02.sh.intel.com (HELO 67996b229c47) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 18 Nov 2020 00:13:15 -0800
Received: from kbuild by 67996b229c47 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kfIaY-00000M-0Q; Wed, 18 Nov 2020 08:13:14 +0000
Date: Wed, 18 Nov 2020 16:12:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fb4d76b.+YGJPWtdcWtXL7UJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 83c317d7b36bb3858cf1cb86d2635ec3f3bd6ea3
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
branch HEAD: 83c317d7b36bb3858cf1cb86d2635ec3f3bd6ea3  r8169: remove nr_frags argument from rtl_tx_slots_avail

elapsed time: 724m

configs tested: 169
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          rsk7269_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                        edosk7760_defconfig
sh                         microdev_defconfig
sh                            shmin_defconfig
sh                            migor_defconfig
nios2                         10m50_defconfig
powerpc                       eiger_defconfig
m68k                        mvme147_defconfig
xtensa                          iss_defconfig
mips                           ci20_defconfig
arc                          axs101_defconfig
c6x                        evmc6678_defconfig
sh                        sh7785lcr_defconfig
arm                          pxa910_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                          sdk7786_defconfig
powerpc                     tqm8555_defconfig
powerpc                     tqm8560_defconfig
arm                         orion5x_defconfig
powerpc                      mgcoge_defconfig
mips                           mtx1_defconfig
arm                      tct_hammer_defconfig
c6x                         dsk6455_defconfig
csky                             alldefconfig
sparc64                             defconfig
arm                        cerfcube_defconfig
arm                           viper_defconfig
arm                         axm55xx_defconfig
arm                         lpc18xx_defconfig
arm                          moxart_defconfig
arm                           u8500_defconfig
m68k                            mac_defconfig
arm                              alldefconfig
um                           x86_64_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                        edosk7705_defconfig
sh                           se7780_defconfig
arm                         shannon_defconfig
h8300                       h8s-sim_defconfig
sh                   sh7724_generic_defconfig
powerpc                    klondike_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                    gamecube_defconfig
arm                       mainstone_defconfig
mips                       bmips_be_defconfig
xtensa                       common_defconfig
arm                        neponset_defconfig
arm                            zeus_defconfig
arm                        clps711x_defconfig
sh                         ap325rxa_defconfig
mips                     cu1000-neo_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                  mpc866_ads_defconfig
arm                              zx_defconfig
powerpc                     mpc83xx_defconfig
sh                             shx3_defconfig
powerpc                     ppa8548_defconfig
powerpc                    adder875_defconfig
m68k                         amcore_defconfig
mips                            e55_defconfig
arm                         socfpga_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                               j2_defconfig
arm                          exynos_defconfig
xtensa                  cadence_csp_defconfig
mips                        workpad_defconfig
mips                         tb0219_defconfig
mips                         cobalt_defconfig
microblaze                    nommu_defconfig
mips                         mpc30x_defconfig
ia64                             allmodconfig
ia64                                defconfig
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
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                             allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201117
i386                 randconfig-a005-20201117
i386                 randconfig-a001-20201117
i386                 randconfig-a003-20201117
i386                 randconfig-a002-20201117
i386                 randconfig-a004-20201117
x86_64               randconfig-a005-20201118
x86_64               randconfig-a003-20201118
x86_64               randconfig-a004-20201118
x86_64               randconfig-a002-20201118
x86_64               randconfig-a006-20201118
x86_64               randconfig-a001-20201118
x86_64               randconfig-a015-20201115
x86_64               randconfig-a011-20201115
x86_64               randconfig-a014-20201115
x86_64               randconfig-a013-20201115
x86_64               randconfig-a016-20201115
x86_64               randconfig-a012-20201115
i386                 randconfig-a012-20201117
i386                 randconfig-a014-20201117
i386                 randconfig-a016-20201117
i386                 randconfig-a011-20201117
i386                 randconfig-a013-20201117
i386                 randconfig-a015-20201117
i386                 randconfig-a012-20201118
i386                 randconfig-a014-20201118
i386                 randconfig-a016-20201118
i386                 randconfig-a011-20201118
i386                 randconfig-a013-20201118
i386                 randconfig-a015-20201118
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
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20201117
x86_64               randconfig-a005-20201117
x86_64               randconfig-a004-20201117
x86_64               randconfig-a002-20201117
x86_64               randconfig-a001-20201117
x86_64               randconfig-a006-20201117
x86_64               randconfig-a015-20201116
x86_64               randconfig-a011-20201116
x86_64               randconfig-a014-20201116
x86_64               randconfig-a013-20201116
x86_64               randconfig-a016-20201116
x86_64               randconfig-a012-20201116
x86_64               randconfig-a015-20201118
x86_64               randconfig-a014-20201118
x86_64               randconfig-a011-20201118
x86_64               randconfig-a013-20201118
x86_64               randconfig-a016-20201118
x86_64               randconfig-a012-20201118

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
