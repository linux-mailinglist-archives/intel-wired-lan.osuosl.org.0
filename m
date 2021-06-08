Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF42139EDD4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jun 2021 06:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CE1D402B5;
	Tue,  8 Jun 2021 04:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0L2B8tBMzs4k; Tue,  8 Jun 2021 04:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18E98400B9;
	Tue,  8 Jun 2021 04:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 453351BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 04:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3CE0083BA5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 04:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L6NCLlblNzEx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 04:53:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B45383B9F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 04:53:39 +0000 (UTC)
IronPort-SDR: dPTFQB+lYZ3dJ0DmTJVMhDtuhUFXNTCS6KXmFfdKcMPAS5CgE7aaEM032tGYOZrLYSUelc2ZvT
 GQMM8bDt8QDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204585661"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="204585661"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 21:53:37 -0700
IronPort-SDR: pzXxJLqpft/KCDSdhCuBlGbxKdd9ebcGP19u2nJnQw6QOhHJvwJvg3C3JAEsaIWaCaugolsZqp
 HS29wSgI+oBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="447754045"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2021 21:53:34 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lqTk5-0008oN-Vy; Tue, 08 Jun 2021 04:53:33 +0000
Date: Tue, 08 Jun 2021 12:53:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60bef7c0.ZhU7Q5xzcg3Hz6HX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 7e94090ae13e1ae5fe8bd3a9cd08136260bb7039
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 7e94090ae13e1ae5fe8bd3a9cd08136260bb7039  ice: fix clang warning regarding deadcode.DeadStores

elapsed time: 726m

configs tested: 122
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                 xes_mpc85xx_defconfig
sh                             sh03_defconfig
arm                           sama5_defconfig
mips                        omega2p_defconfig
s390                             alldefconfig
sh                            migor_defconfig
m68k                            q40_defconfig
powerpc                 mpc8272_ads_defconfig
arm                             ezx_defconfig
sh                           se7343_defconfig
sh                   sh7724_generic_defconfig
powerpc64                           defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
powerpc                   motionpro_defconfig
arm                      jornada720_defconfig
powerpc                         ps3_defconfig
powerpc                     mpc5200_defconfig
m68k                       m5208evb_defconfig
sparc                       sparc64_defconfig
powerpc                 canyonlands_defconfig
sh                          lboxre2_defconfig
arm                        shmobile_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                           ip28_defconfig
powerpc                      ep88xc_defconfig
mips                        maltaup_defconfig
arm                        vexpress_defconfig
sh                           se7619_defconfig
mips                     loongson2k_defconfig
powerpc                      pasemi_defconfig
mips                          rb532_defconfig
mips                         tb0226_defconfig
powerpc                     ppa8548_defconfig
um                           x86_64_defconfig
powerpc                mpc7448_hpc2_defconfig
arc                        vdk_hs38_defconfig
nios2                         10m50_defconfig
sh                         microdev_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                     magicpanelr2_defconfig
parisc                              defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                        fsp2_defconfig
x86_64                              defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
x86_64                            allnoconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
csky                                defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
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
i386                 randconfig-a003-20210607
i386                 randconfig-a006-20210607
i386                 randconfig-a004-20210607
i386                 randconfig-a002-20210607
i386                 randconfig-a001-20210607
i386                 randconfig-a005-20210607
x86_64               randconfig-a015-20210607
x86_64               randconfig-a011-20210607
x86_64               randconfig-a013-20210607
x86_64               randconfig-a016-20210607
x86_64               randconfig-a014-20210607
x86_64               randconfig-a012-20210607
i386                 randconfig-a015-20210607
i386                 randconfig-a011-20210607
i386                 randconfig-a012-20210607
i386                 randconfig-a013-20210607
i386                 randconfig-a016-20210607
i386                 randconfig-a014-20210607
riscv                            allyesconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210607
x86_64               randconfig-a004-20210607
x86_64               randconfig-a003-20210607
x86_64               randconfig-a006-20210607
x86_64               randconfig-a001-20210607
x86_64               randconfig-a002-20210607
x86_64               randconfig-a005-20210607

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
