Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B82BA221
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Nov 2020 07:07:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06B2486963;
	Fri, 20 Nov 2020 06:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xQ5Yirxbf6V8; Fri, 20 Nov 2020 06:07:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 881DE86FAC;
	Fri, 20 Nov 2020 06:07:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D38A1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 06:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3700386C03
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 06:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OcAzUcpohDSL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Nov 2020 06:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51A8C86963
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 06:06:58 +0000 (UTC)
IronPort-SDR: Faw4/kSsZkDPzWWOD/vAUISc+8EZj2lEYcnObtB7121u6sL8v8yGx9nqUp9MnHmEe/AjQLR4So
 h/+xf2tVZLgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="171590356"
X-IronPort-AV: E=Sophos;i="5.78,355,1599548400"; d="scan'208";a="171590356"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 22:06:57 -0800
IronPort-SDR: TQUNwsibE8abhtaNbKXx6XY8EOcvqWLnAaZyqqg7U3P/KpaYLwzAsHxV7mPPauygNe4je5wQF/
 AlIK0Ag3d9Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,355,1599548400"; d="scan'208";a="369112211"
Received: from lkp-server01.sh.intel.com (HELO f63bb96ba247) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 19 Nov 2020 22:06:56 -0800
Received: from kbuild by f63bb96ba247 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kfzZQ-00001f-2H; Fri, 20 Nov 2020 06:06:56 +0000
Date: Fri, 20 Nov 2020 14:06:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fb75cf6.uhdAseX9OAojlJrl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 657bc1d10bfc23ac06d5d687ce45826c760744f9
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
branch HEAD: 657bc1d10bfc23ac06d5d687ce45826c760744f9  r8153_ecm: avoid to be prior to r8152 driver

elapsed time: 776m

configs tested: 133
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         hackkit_defconfig
c6x                        evmc6678_defconfig
m68k                          amiga_defconfig
arm                        keystone_defconfig
powerpc                     mpc5200_defconfig
sparc                       sparc64_defconfig
m68k                        mvme147_defconfig
xtensa                           alldefconfig
arm                     davinci_all_defconfig
arm                         lpc18xx_defconfig
xtensa                  audio_kc705_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                           sh2007_defconfig
powerpc                      obs600_defconfig
m68k                          atari_defconfig
arm                       multi_v4t_defconfig
mips                         tb0287_defconfig
m68k                            q40_defconfig
powerpc                     ppa8548_defconfig
arc                        nsimosci_defconfig
powerpc                     akebono_defconfig
arm                          moxart_defconfig
arc                        nsim_700_defconfig
mips                       capcella_defconfig
powerpc                     tqm8548_defconfig
mips                     cu1830-neo_defconfig
arm                         bcm2835_defconfig
mips                          rm200_defconfig
powerpc                     rainier_defconfig
powerpc                     tqm8540_defconfig
arm                        trizeps4_defconfig
powerpc                     powernv_defconfig
m68k                          sun3x_defconfig
arm                          exynos_defconfig
mips                      pistachio_defconfig
mips                        nlm_xlp_defconfig
powerpc                        fsp2_defconfig
arm                         s5pv210_defconfig
arm                          tango4_defconfig
arm                          badge4_defconfig
arm                              alldefconfig
arm                            zeus_defconfig
parisc                              defconfig
mips                     cu1000-neo_defconfig
arm                          pcm027_defconfig
arm                     am200epdkit_defconfig
sh                           se7721_defconfig
mips                      bmips_stb_defconfig
sh                            titan_defconfig
powerpc                 mpc85xx_cds_defconfig
ia64                                defconfig
powerpc                    sam440ep_defconfig
arm                     eseries_pxa_defconfig
m68k                        m5307c3_defconfig
powerpc                     tqm8555_defconfig
mips                         tb0226_defconfig
powerpc                  mpc866_ads_defconfig
mips                        omega2p_defconfig
sh                           se7712_defconfig
s390                                defconfig
arc                         haps_hs_defconfig
powerpc                       eiger_defconfig
powerpc                           allnoconfig
ia64                             allmodconfig
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
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
s390                             allyesconfig
parisc                           allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a006-20201119
i386                 randconfig-a005-20201119
i386                 randconfig-a002-20201119
i386                 randconfig-a001-20201119
i386                 randconfig-a003-20201119
i386                 randconfig-a004-20201119
x86_64               randconfig-a015-20201119
x86_64               randconfig-a014-20201119
x86_64               randconfig-a011-20201119
x86_64               randconfig-a013-20201119
x86_64               randconfig-a016-20201119
x86_64               randconfig-a012-20201119
i386                 randconfig-a012-20201119
i386                 randconfig-a014-20201119
i386                 randconfig-a011-20201119
i386                 randconfig-a013-20201119
i386                 randconfig-a016-20201119
i386                 randconfig-a015-20201119
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-a005-20201119
x86_64               randconfig-a003-20201119
x86_64               randconfig-a004-20201119
x86_64               randconfig-a002-20201119
x86_64               randconfig-a006-20201119
x86_64               randconfig-a001-20201119

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
