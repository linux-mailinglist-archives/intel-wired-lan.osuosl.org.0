Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 698DF4810CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Dec 2021 08:50:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 204AA60B2D;
	Wed, 29 Dec 2021 07:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVQWP5ckRSC7; Wed, 29 Dec 2021 07:50:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B45560B25;
	Wed, 29 Dec 2021 07:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A44A71BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 07:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A052F60B25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 07:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHdxE_UmT9wS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Dec 2021 07:49:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B747B60B23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 07:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640764196; x=1672300196;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5Hs2nC8RfRAHULnWwD8r82kVnC9pfqKFI72QkTWA9dk=;
 b=LeoVnnrjWBNE7ERHoRNe4Y2t+Vy03kYRRgRCU1uhCua1p2dm+Ycf59lk
 DihKg8SPp1Na3nhKKW0DUrWdjQ5NkAdF4o/ynMES82jXREdCIKB01bbdq
 r5N7IbAYKe/tz2J+ycZYt8l84xTUwWm39HFFp/TABdM6kitG+eUiX78G2
 yk0YLROO7Pk9WupaSuGNOQ5L7dF/scml5f5d39p6OomBpM4+KGQQtXUP+
 +67egydF+RlbjBHgbyPHSW0K2uVjYIh4q/hhumMo+5SV++04t7peLolSQ
 KusEEMrySQzSizE++YMWZslWpdhDGP65sEoPuoao+zvbDhlmHJuyjc1+B A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="228311076"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="228311076"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 23:49:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="554451614"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 28 Dec 2021 23:49:55 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2Tic-0008hb-CS; Wed, 29 Dec 2021 07:49:54 +0000
Date: Wed, 29 Dec 2021 15:49:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61cc12f6.iah60HR5ULx9OLw/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 ef1e036c523655890e6b2b1995378bdcc910406f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: ef1e036c523655890e6b2b1995378bdcc910406f  igb: support EXTTS on 82580/i354/i350

elapsed time: 727m

configs tested: 154
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211228
powerpc              randconfig-c003-20211229
i386                 randconfig-c001-20211229
arc                     haps_hs_smp_defconfig
mips                         db1xxx_defconfig
arm                             mxs_defconfig
parisc                generic-32bit_defconfig
arm                          simpad_defconfig
powerpc                     mpc5200_defconfig
m68k                        mvme16x_defconfig
um                             i386_defconfig
riscv                    nommu_virt_defconfig
mips                         tb0226_defconfig
arc                                 defconfig
sh                           se7724_defconfig
parisc                generic-64bit_defconfig
arm                          exynos_defconfig
xtensa                       common_defconfig
powerpc                     mpc512x_defconfig
arm                          pxa168_defconfig
mips                     loongson2k_defconfig
powerpc                     taishan_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                 mpc834x_mds_defconfig
mips                  cavium_octeon_defconfig
h8300                     edosk2674_defconfig
powerpc                    ge_imp3a_defconfig
arm                             rpc_defconfig
ia64                            zx1_defconfig
powerpc                 mpc836x_mds_defconfig
arm                         axm55xx_defconfig
mips                         bigsur_defconfig
mips                          rm200_defconfig
riscv                            allyesconfig
powerpc                         wii_defconfig
arm                         hackkit_defconfig
powerpc                      arches_defconfig
sh                           se7619_defconfig
openrisc                            defconfig
sh                         ecovec24_defconfig
sh                        edosk7705_defconfig
sparc                               defconfig
m68k                       m5249evb_defconfig
microblaze                      mmu_defconfig
sh                        sh7757lcr_defconfig
powerpc                         ps3_defconfig
powerpc                       maple_defconfig
mips                        maltaup_defconfig
arm                            xcep_defconfig
mips                          ath79_defconfig
powerpc                  mpc885_ads_defconfig
arm                         lpc18xx_defconfig
powerpc                     pq2fads_defconfig
arm                           sama5_defconfig
arm                       imx_v6_v7_defconfig
arm                          pxa910_defconfig
h8300                       h8s-sim_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
m68k                          sun3x_defconfig
arm                             ezx_defconfig
arm                  randconfig-c002-20211228
arm                  randconfig-c002-20211229
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a004-20211228
x86_64               randconfig-a002-20211228
i386                 randconfig-a006-20211228
i386                 randconfig-a004-20211228
i386                 randconfig-a002-20211228
i386                 randconfig-a003-20211228
i386                 randconfig-a001-20211228
i386                 randconfig-a005-20211228
x86_64               randconfig-a011-20211229
x86_64               randconfig-a012-20211229
x86_64               randconfig-a016-20211229
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20211229
x86_64               randconfig-a004-20211229
i386                 randconfig-a002-20211229
i386                 randconfig-a003-20211229
i386                 randconfig-a001-20211229
i386                 randconfig-a006-20211229
i386                 randconfig-a004-20211229
i386                 randconfig-a005-20211229
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a016-20211228
i386                 randconfig-a013-20211228
i386                 randconfig-a015-20211228
x86_64               randconfig-a001-20211229
x86_64               randconfig-a003-20211229
x86_64               randconfig-a006-20211229
x86_64               randconfig-a002-20211229
hexagon              randconfig-r045-20211228
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
