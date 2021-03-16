Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCE233D0DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 10:33:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EFEB83A70;
	Tue, 16 Mar 2021 09:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id se1nLEvY164o; Tue, 16 Mar 2021 09:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36F2F83A5E;
	Tue, 16 Mar 2021 09:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34BAD1BF37C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 09:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F04B83A65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 09:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYtsnhXmTOQa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 09:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A956383A55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 09:33:07 +0000 (UTC)
IronPort-SDR: yqHhJqf8IETmRZ+qxawlBkY3ExdbHqFWL0Pr9kEvUvonIrLhEFfbxM1dBWaKgPnIyRGw0BSIRA
 odibtF4tXtgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="189279187"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="189279187"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 02:33:06 -0700
IronPort-SDR: 4hkJCwBVXANZJlsmcVBN7lptx3K04hBmOw09B7HNAaJBQ2I2K670tJXrGJrR7B9uh1hydzqO6z
 1cmv+fSJZyUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="373735015"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 16 Mar 2021 02:33:05 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lM64W-00005V-LZ; Tue, 16 Mar 2021 09:33:04 +0000
Date: Tue, 16 Mar 2021 17:32:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60507b27.eTr970dOFn41xL+H%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 bb52073645a618ab4d93c8d932fb8faf114c55bc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: bb52073645a618ab4d93c8d932fb8faf114c55bc  ice: optimize for XDP_REDIRECT in xsk path

elapsed time: 721m

configs tested: 134
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
h8300                     edosk2674_defconfig
powerpc                    amigaone_defconfig
powerpc                 linkstation_defconfig
m68k                        m5407c3_defconfig
arc                 nsimosci_hs_smp_defconfig
openrisc                 simple_smp_defconfig
mips                      malta_kvm_defconfig
arm                          exynos_defconfig
ia64                         bigsur_defconfig
arm                            dove_defconfig
ia64                      gensparse_defconfig
arm                       spear13xx_defconfig
powerpc                     skiroot_defconfig
parisc                           allyesconfig
sh                         ecovec24_defconfig
powerpc                  iss476-smp_defconfig
nds32                            alldefconfig
arc                      axs103_smp_defconfig
arm                           u8500_defconfig
powerpc                      ppc6xx_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                         ps3_defconfig
arm                       omap2plus_defconfig
powerpc                        fsp2_defconfig
powerpc                     tqm8555_defconfig
sh                            migor_defconfig
mips                         bigsur_defconfig
mips                      bmips_stb_defconfig
sh                             espt_defconfig
arm                            xcep_defconfig
mips                        workpad_defconfig
mips                      fuloong2e_defconfig
mips                      pic32mzda_defconfig
m68k                          amiga_defconfig
arc                         haps_hs_defconfig
mips                           xway_defconfig
arm                       versatile_defconfig
arm                         lpc32xx_defconfig
sh                            shmin_defconfig
mips                           ip32_defconfig
powerpc                     mpc5200_defconfig
parisc                generic-64bit_defconfig
arm                            hisi_defconfig
riscv                               defconfig
powerpc                 mpc836x_mds_defconfig
arc                          axs101_defconfig
sh                           se7206_defconfig
mips                      maltasmvp_defconfig
arm                          imote2_defconfig
powerpc                   motionpro_defconfig
arm                           h3600_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                          g5_defconfig
arm                         orion5x_defconfig
powerpc                 mpc837x_rdb_defconfig
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
x86_64               randconfig-a006-20210315
x86_64               randconfig-a001-20210315
x86_64               randconfig-a005-20210315
x86_64               randconfig-a004-20210315
x86_64               randconfig-a002-20210315
x86_64               randconfig-a003-20210315
i386                 randconfig-a001-20210315
i386                 randconfig-a005-20210315
i386                 randconfig-a003-20210315
i386                 randconfig-a002-20210315
i386                 randconfig-a004-20210315
i386                 randconfig-a006-20210315
i386                 randconfig-a001-20210316
i386                 randconfig-a005-20210316
i386                 randconfig-a002-20210316
i386                 randconfig-a003-20210316
i386                 randconfig-a004-20210316
i386                 randconfig-a006-20210316
i386                 randconfig-a013-20210315
i386                 randconfig-a016-20210315
i386                 randconfig-a011-20210315
i386                 randconfig-a012-20210315
i386                 randconfig-a014-20210315
i386                 randconfig-a015-20210315
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20210315
x86_64               randconfig-a016-20210315
x86_64               randconfig-a013-20210315
x86_64               randconfig-a015-20210315
x86_64               randconfig-a014-20210315
x86_64               randconfig-a012-20210315

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
