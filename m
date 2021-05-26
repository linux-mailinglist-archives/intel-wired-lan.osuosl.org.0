Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4CF391657
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 May 2021 13:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76C9483CA6;
	Wed, 26 May 2021 11:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w5DrdzNgCbWS; Wed, 26 May 2021 11:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54E0883CA8;
	Wed, 26 May 2021 11:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E27041BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 May 2021 11:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFE0883CA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 May 2021 11:33:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-rbCRuXEQTE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 May 2021 11:33:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C8E683C49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 May 2021 11:33:49 +0000 (UTC)
IronPort-SDR: 4OtteAyJRpBemw5yRjpiJUtxzi1yMQTlaZprvkH8Q65Vb9d6gCLzfP+eEao9OnukXYJqEz01p+
 u6MVucNyqKHw==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="288019697"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="288019697"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:46 -0700
IronPort-SDR: +rifr17Pl8nxx16bqRFFpNXGCTUi6T1wiu7nScxT4UGeP/uUbUZ901L/748vX38aTYlGoAyUt1
 5Z3vEwEeXlmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="414430864"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 26 May 2021 04:33:44 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1llrnD-00028M-Uv; Wed, 26 May 2021 11:33:43 +0000
Date: Wed, 26 May 2021 19:32:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60ae31e2.8FqM2OpHrVRp5MEb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b8e5d8f9c702b5808febb7c86a2689ed8ef0baf8
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
branch HEAD: b8e5d8f9c702b5808febb7c86a2689ed8ef0baf8  i40e: Add restoration of VF MSI-X state during PCI reset

elapsed time: 730m

configs tested: 141
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     tqm5200_defconfig
sh                            titan_defconfig
csky                                defconfig
arm                       multi_v4t_defconfig
mips                           ip22_defconfig
m68k                             allyesconfig
powerpc                     redwood_defconfig
mips                        omega2p_defconfig
arm                            xcep_defconfig
powerpc                       eiger_defconfig
mips                  cavium_octeon_defconfig
powerpc                      obs600_defconfig
mips                            ar7_defconfig
sh                           se7712_defconfig
arm                          iop32x_defconfig
arc                              alldefconfig
powerpc                    ge_imp3a_defconfig
um                               allmodconfig
powerpc                     pq2fads_defconfig
arm                         at91_dt_defconfig
powerpc                       holly_defconfig
sh                          rsk7269_defconfig
sh                         microdev_defconfig
powerpc                        fsp2_defconfig
arm                       netwinder_defconfig
powerpc                  mpc866_ads_defconfig
sh                          sdk7780_defconfig
arm                          pxa168_defconfig
sh                          lboxre2_defconfig
powerpc                    klondike_defconfig
powerpc                 mpc832x_mds_defconfig
mips                    maltaup_xpa_defconfig
arm                         orion5x_defconfig
mips                           ip28_defconfig
mips                         db1xxx_defconfig
sh                          sdk7786_defconfig
arm                            pleb_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                       spear13xx_defconfig
arm                         cm_x300_defconfig
mips                          rm200_defconfig
sparc64                             defconfig
arm                           omap1_defconfig
mips                         mpc30x_defconfig
csky                             alldefconfig
sparc                       sparc32_defconfig
sh                           se7343_defconfig
sh                           se7619_defconfig
arc                          axs101_defconfig
sh                           se7724_defconfig
powerpc               mpc834x_itxgp_defconfig
parisc                generic-32bit_defconfig
arm                         lpc18xx_defconfig
arm                            qcom_defconfig
mips                      fuloong2e_defconfig
sparc                       sparc64_defconfig
m68k                        stmark2_defconfig
powerpc                 mpc8272_ads_defconfig
mips                          malta_defconfig
powerpc                         wii_defconfig
powerpc                      tqm8xx_defconfig
um                               allyesconfig
powerpc                   currituck_defconfig
mips                          ath25_defconfig
arm                        oxnas_v6_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210526
x86_64               randconfig-a001-20210526
x86_64               randconfig-a006-20210526
x86_64               randconfig-a003-20210526
x86_64               randconfig-a004-20210526
x86_64               randconfig-a002-20210526
i386                 randconfig-a001-20210526
i386                 randconfig-a002-20210526
i386                 randconfig-a005-20210526
i386                 randconfig-a004-20210526
i386                 randconfig-a003-20210526
i386                 randconfig-a006-20210526
i386                 randconfig-a011-20210526
i386                 randconfig-a016-20210526
i386                 randconfig-a015-20210526
i386                 randconfig-a012-20210526
i386                 randconfig-a014-20210526
i386                 randconfig-a013-20210526
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210526
x86_64               randconfig-a013-20210526
x86_64               randconfig-a012-20210526
x86_64               randconfig-a014-20210526
x86_64               randconfig-a016-20210526
x86_64               randconfig-a015-20210526
x86_64               randconfig-a011-20210526

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
