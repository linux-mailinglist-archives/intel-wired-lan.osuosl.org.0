Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9FD30199A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Jan 2021 06:11:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 029A286C25;
	Sun, 24 Jan 2021 05:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pU2RLHSX75nC; Sun, 24 Jan 2021 05:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8BB986C2C;
	Sun, 24 Jan 2021 05:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D08A1BF479
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 05:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 150AC86C29
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 05:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IE2xDjSiPRSE for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Jan 2021 05:11:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 00F5186C25
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Jan 2021 05:11:48 +0000 (UTC)
IronPort-SDR: dluafBJB68f2RLduYNzifXYiOgG+h5N7qcI4952Pf3oCCHQbc0QuN7XjevYwyq8jWOEGF8WBrG
 sb4gQIQPWtrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9873"; a="198363442"
X-IronPort-AV: E=Sophos;i="5.79,370,1602572400"; d="scan'208";a="198363442"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2021 21:11:47 -0800
IronPort-SDR: FQ7kyF7iSckeBpOHMkCIYmGHpU5URFxCpzRsQ/HHrZCSjq4u+tFmjHfTvi+fk7sYCcaAoiC2tg
 ww+x8nBYQuFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,370,1602572400"; d="scan'208";a="386691698"
Received: from lkp-server01.sh.intel.com (HELO 27c4e0a4b6d9) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2021 21:11:46 -0800
Received: from kbuild by 27c4e0a4b6d9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l3Xgf-000037-VY; Sun, 24 Jan 2021 05:11:45 +0000
Date: Sun, 24 Jan 2021 13:11:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <600d017b.P2dnWNQr3Z7FdL4J%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 4026d80142b644c107586f279fa319ff5c6e0d18
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 4026d80142b644c107586f279fa319ff5c6e0d18  MAINTAINERS: add entry for Arrow SpeedChips XRS7000 driver

elapsed time: 3311m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                    amigaone_defconfig
mips                malta_qemu_32r6_defconfig
mips                        maltaup_defconfig
powerpc                     tqm8560_defconfig
powerpc                 mpc8315_rdb_defconfig
h8300                       h8s-sim_defconfig
c6x                        evmc6678_defconfig
mips                          rb532_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                       holly_defconfig
powerpc                  storcenter_defconfig
powerpc                     taishan_defconfig
arm64                            alldefconfig
arm                         palmz72_defconfig
arm                         assabet_defconfig
powerpc                   currituck_defconfig
powerpc                     ppa8548_defconfig
sh                           se7712_defconfig
mips                        bcm47xx_defconfig
arm                        spear3xx_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                   sh7724_generic_defconfig
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
s390                             allyesconfig
parisc                           allyesconfig
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
x86_64               randconfig-a002-20210121
x86_64               randconfig-a003-20210121
x86_64               randconfig-a001-20210121
x86_64               randconfig-a005-20210121
x86_64               randconfig-a004-20210121
x86_64               randconfig-a006-20210121
i386                 randconfig-a001-20210121
i386                 randconfig-a002-20210121
i386                 randconfig-a004-20210121
i386                 randconfig-a006-20210121
i386                 randconfig-a005-20210121
i386                 randconfig-a003-20210121
i386                 randconfig-a001-20210122
i386                 randconfig-a002-20210122
i386                 randconfig-a004-20210122
i386                 randconfig-a006-20210122
i386                 randconfig-a003-20210122
i386                 randconfig-a005-20210122
i386                 randconfig-a013-20210121
i386                 randconfig-a011-20210121
i386                 randconfig-a012-20210121
i386                 randconfig-a014-20210121
i386                 randconfig-a015-20210121
i386                 randconfig-a016-20210121
i386                 randconfig-a013-20210122
i386                 randconfig-a011-20210122
i386                 randconfig-a012-20210122
i386                 randconfig-a014-20210122
i386                 randconfig-a015-20210122
i386                 randconfig-a016-20210122
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210122
x86_64               randconfig-a003-20210122
x86_64               randconfig-a001-20210122
x86_64               randconfig-a005-20210122
x86_64               randconfig-a006-20210122
x86_64               randconfig-a004-20210122

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
