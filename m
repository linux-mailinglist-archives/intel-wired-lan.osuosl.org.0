Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EED369EEA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Apr 2021 07:04:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C40DF4066D;
	Sat, 24 Apr 2021 05:04:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aT4EKrsGcTgL; Sat, 24 Apr 2021 05:04:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A02734066B;
	Sat, 24 Apr 2021 05:04:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFC811BF28F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Apr 2021 05:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE9014066B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Apr 2021 05:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNU9YuXJBuLx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Apr 2021 05:04:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 771F5400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Apr 2021 05:04:13 +0000 (UTC)
IronPort-SDR: knjy2X7hHZtFoqHzO2VPxRDqKvWgYNoTUgOFtzfhB+wF0EwzAmrlQ7lYveVgo/05mJsH4LtZlY
 EqlgjkKw3zCg==
X-IronPort-AV: E=McAfee;i="6200,9189,9963"; a="260116181"
X-IronPort-AV: E=Sophos;i="5.82,247,1613462400"; d="scan'208";a="260116181"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 22:04:12 -0700
IronPort-SDR: +WQsDVBBqBRY1/z/6D1c0X9TQaRUVxvAHqEXCaE9RTs/3UoJIG+8DVSy8y1zZYIQkukCcmbbIN
 SKclHqEK+/ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,247,1613462400"; d="scan'208";a="385289625"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 23 Apr 2021 22:04:10 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1laASg-0004zy-5d; Sat, 24 Apr 2021 05:04:10 +0000
Date: Sat, 24 Apr 2021 13:03:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6083a6b5.OAHF4KmkSvsc2LIk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 1f70dfc542e88492a3bba3017e5e286dab7d3be6
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
branch HEAD: 1f70dfc542e88492a3bba3017e5e286dab7d3be6  iavf: redefine the magic number for FDIR GTP-U header fields

elapsed time: 723m

configs tested: 160
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                  mpc885_ads_defconfig
sh                 kfr2r09-romimage_defconfig
arm                         bcm2835_defconfig
powerpc                      walnut_defconfig
mips                       capcella_defconfig
arm                        trizeps4_defconfig
mips                         tb0219_defconfig
powerpc                      obs600_defconfig
arm                       imx_v6_v7_defconfig
x86_64                           alldefconfig
arm                     am200epdkit_defconfig
arc                        vdk_hs38_defconfig
mips                  maltasmvp_eva_defconfig
m68k                       m5208evb_defconfig
arm                           stm32_defconfig
mips                           ci20_defconfig
mips                        bcm63xx_defconfig
m68k                             alldefconfig
sh                          kfr2r09_defconfig
mips                      pistachio_defconfig
mips                          ath25_defconfig
microblaze                          defconfig
openrisc                    or1ksim_defconfig
nios2                            alldefconfig
arm                           h3600_defconfig
mips                          rm200_defconfig
powerpc                     skiroot_defconfig
sh                           se7780_defconfig
arm                           sama5_defconfig
arc                 nsimosci_hs_smp_defconfig
i386                                defconfig
arm                          exynos_defconfig
ia64                             alldefconfig
m68k                                defconfig
s390                          debug_defconfig
i386                             alldefconfig
powerpc                 xes_mpc85xx_defconfig
arm                             mxs_defconfig
microblaze                      mmu_defconfig
arc                     nsimosci_hs_defconfig
mips                     cu1830-neo_defconfig
parisc                generic-64bit_defconfig
arm                         lubbock_defconfig
powerpc                  storcenter_defconfig
arm                       spear13xx_defconfig
sh                        edosk7760_defconfig
mips                      bmips_stb_defconfig
powerpc                      ppc64e_defconfig
arm                        mvebu_v7_defconfig
mips                            e55_defconfig
sh                          polaris_defconfig
mips                           jazz_defconfig
arm                           viper_defconfig
arm                            mps2_defconfig
arm                       imx_v4_v5_defconfig
sh                               j2_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                         wii_defconfig
mips                           ip28_defconfig
arm                         hackkit_defconfig
sh                             sh03_defconfig
powerpc                   lite5200b_defconfig
um                             i386_defconfig
sh                            migor_defconfig
openrisc                  or1klitex_defconfig
m68k                        m5272c3_defconfig
sh                           se7705_defconfig
xtensa                generic_kc705_defconfig
sh                         microdev_defconfig
arm                       multi_v4t_defconfig
arm                         lpc18xx_defconfig
powerpc                          g5_defconfig
arc                        nsim_700_defconfig
um                               allmodconfig
powerpc                      tqm8xx_defconfig
arm                            qcom_defconfig
arm                        magician_defconfig
sh                           sh2007_defconfig
mips                        vocore2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
nios2                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210423
x86_64               randconfig-a004-20210423
x86_64               randconfig-a001-20210423
x86_64               randconfig-a005-20210423
x86_64               randconfig-a006-20210423
x86_64               randconfig-a003-20210423
i386                 randconfig-a005-20210423
i386                 randconfig-a002-20210423
i386                 randconfig-a001-20210423
i386                 randconfig-a006-20210423
i386                 randconfig-a004-20210423
i386                 randconfig-a003-20210423
i386                 randconfig-a012-20210424
i386                 randconfig-a014-20210424
i386                 randconfig-a011-20210424
i386                 randconfig-a013-20210424
i386                 randconfig-a016-20210424
i386                 randconfig-a015-20210424
i386                 randconfig-a012-20210423
i386                 randconfig-a013-20210423
i386                 randconfig-a015-20210423
i386                 randconfig-a014-20210423
i386                 randconfig-a011-20210423
i386                 randconfig-a016-20210423
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210423
x86_64               randconfig-a016-20210423
x86_64               randconfig-a011-20210423
x86_64               randconfig-a014-20210423
x86_64               randconfig-a012-20210423
x86_64               randconfig-a013-20210423

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
