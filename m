Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 609D43C346B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jul 2021 14:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD2134227C;
	Sat, 10 Jul 2021 12:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YlDBmYxgteCB; Sat, 10 Jul 2021 12:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7876642265;
	Sat, 10 Jul 2021 12:00:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62D191BF958
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 12:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5265683D0E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 12:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rK1w77fZ_rQN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jul 2021 12:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D177883BF6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 12:00:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="209790877"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="209790877"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2021 05:00:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="488731498"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2021 05:00:36 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m2Bet-000FhT-AH; Sat, 10 Jul 2021 12:00:35 +0000
Date: Sat, 10 Jul 2021 20:00:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60e98bdc.sm1GOeFqNT2S2P+P%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c76f20222c17011e295baee71dbaf7124984636c
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
branch HEAD: c76f20222c17011e295baee71dbaf7124984636c  ice: fix build issue if CONFIG_1588_PTP_CLOCk=m

elapsed time: 721m

configs tested: 122
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
h8300                     edosk2674_defconfig
arm                        spear6xx_defconfig
sh                        edosk7760_defconfig
m68k                       m5249evb_defconfig
sh                            migor_defconfig
mips                      malta_kvm_defconfig
arm                          pcm027_defconfig
mips                       lemote2f_defconfig
arm                         orion5x_defconfig
mips                   sb1250_swarm_defconfig
sh                           se7705_defconfig
powerpc                      mgcoge_defconfig
powerpc64                           defconfig
h8300                    h8300h-sim_defconfig
arm                         s3c2410_defconfig
arm                       spear13xx_defconfig
powerpc                       maple_defconfig
m68k                        m5307c3_defconfig
powerpc                    gamecube_defconfig
arm                            dove_defconfig
mips                          ath79_defconfig
xtensa                generic_kc705_defconfig
sh                              ul2_defconfig
sh                           se7724_defconfig
m68k                       m5208evb_defconfig
arm                       aspeed_g5_defconfig
arm                          ep93xx_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                      obs600_defconfig
sh                           se7343_defconfig
sh                          rsk7201_defconfig
sh                           se7751_defconfig
mips                        vocore2_defconfig
sh                             sh03_defconfig
powerpc                      cm5200_defconfig
arm                         s5pv210_defconfig
riscv                             allnoconfig
sh                           sh2007_defconfig
arm                        mvebu_v5_defconfig
mips                       capcella_defconfig
mips                      pistachio_defconfig
s390                             allyesconfig
powerpc                     rainier_defconfig
arm                      footbridge_defconfig
sh                        sh7785lcr_defconfig
powerpc                 mpc834x_mds_defconfig
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
x86_64               randconfig-a004-20210709
x86_64               randconfig-a005-20210709
x86_64               randconfig-a002-20210709
x86_64               randconfig-a006-20210709
x86_64               randconfig-a003-20210709
x86_64               randconfig-a001-20210709
i386                 randconfig-a006-20210709
i386                 randconfig-a004-20210709
i386                 randconfig-a001-20210709
i386                 randconfig-a003-20210709
i386                 randconfig-a005-20210709
i386                 randconfig-a002-20210709
i386                 randconfig-a015-20210709
i386                 randconfig-a016-20210709
i386                 randconfig-a011-20210709
i386                 randconfig-a012-20210709
i386                 randconfig-a013-20210709
i386                 randconfig-a014-20210709
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210709
x86_64               randconfig-a015-20210709
x86_64               randconfig-a011-20210709
x86_64               randconfig-a012-20210709
x86_64               randconfig-a014-20210709
x86_64               randconfig-a016-20210709
x86_64               randconfig-a013-20210709

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
