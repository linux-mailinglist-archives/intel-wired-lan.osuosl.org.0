Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3EA47DC58
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Dec 2021 01:49:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E548A60AE8;
	Thu, 23 Dec 2021 00:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XPIrSKT7lmTd; Thu, 23 Dec 2021 00:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1D1860AC7;
	Thu, 23 Dec 2021 00:49:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDCC61BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 00:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D321F81B36
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 00:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p7DrPCjX4PLT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Dec 2021 00:49:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 847F281B26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 00:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640220548; x=1671756548;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sXibsGvranTcCQQr8F0F336+uYE3ab0D4YZs6ZxIBX0=;
 b=AP09c+tzfhVgERIefx/agkyNvenUH8m/yFHiDI80d3+KUNMXPhbWEjjd
 N2ixBPEXmWZoLJQ3P0DAiaw+DooPT371Gi5xctC1ZUvwVV8mVQmtz15fo
 n+iSojBdrcP0BbpelbE9jVwf1lAWLBpfn9ZPX01X6MoAXfVDtP5x3rqCH
 zPhwQwbCsze7UdmTTAJyoPHQ+CmSB1lXsMZp/FSIORaWQYZJOL6lV2cfw
 t5M3EsPa80C0iTDyAux4IgXsiAxmjf67LNULhmPHb/VAC9uoSX02jGTFo
 UOvIm3fE3LFC209cHhihcOihgnSvsDmdpDPLjjKipFhN6gfIZs6GGpm2V Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="238266573"
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="238266573"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 16:49:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="468353952"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Dec 2021 16:49:06 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n0CI5-00016W-C7; Thu, 23 Dec 2021 00:49:05 +0000
Date: Thu, 23 Dec 2021 08:48:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c3c754.h4vuqrTO9XAxhkbE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7f5e12af5fe2990e876d57c48a83bc9d2ffce8ae
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 7f5e12af5fe2990e876d57c48a83bc9d2ffce8ae  igc: Fix TX timestamp support for non-MSI-X platforms

elapsed time: 1801m

configs tested: 147
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
openrisc                  or1klitex_defconfig
powerpc                     pq2fads_defconfig
arm                        spear6xx_defconfig
sh                         microdev_defconfig
arm                        mvebu_v7_defconfig
sh                           sh2007_defconfig
arm                       aspeed_g4_defconfig
m68k                         apollo_defconfig
powerpc                     pseries_defconfig
parisc                              defconfig
arm                           sama5_defconfig
arm                          imote2_defconfig
powerpc                    amigaone_defconfig
openrisc                            defconfig
powerpc                   motionpro_defconfig
arm                        clps711x_defconfig
sh                           se7343_defconfig
ia64                      gensparse_defconfig
mips                      bmips_stb_defconfig
sh                            shmin_defconfig
um                               alldefconfig
arm                          ixp4xx_defconfig
arm                         cm_x300_defconfig
powerpc                       ebony_defconfig
arm                            pleb_defconfig
xtensa                          iss_defconfig
mips                           ip32_defconfig
m68k                             allyesconfig
arm                            zeus_defconfig
sh                           se7722_defconfig
m68k                       m5475evb_defconfig
xtensa                    smp_lx200_defconfig
arm                        vexpress_defconfig
powerpc                          allmodconfig
mips                          rm200_defconfig
mips                       bmips_be_defconfig
mips                        bcm47xx_defconfig
sh                             shx3_defconfig
arm                           sunxi_defconfig
mips                           ip22_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                    mvme5100_defconfig
mips                        workpad_defconfig
arm                           tegra_defconfig
mips                     loongson2k_defconfig
powerpc                       ppc64_defconfig
arm                           spitz_defconfig
arm                             ezx_defconfig
arm                  randconfig-c002-20211223
arm                  randconfig-c002-20211220
arm                  randconfig-c002-20211222
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
x86_64               randconfig-a001-20211222
x86_64               randconfig-a003-20211222
x86_64               randconfig-a005-20211222
x86_64               randconfig-a006-20211222
x86_64               randconfig-a004-20211222
x86_64               randconfig-a002-20211222
i386                 randconfig-a006-20211222
i386                 randconfig-a004-20211222
i386                 randconfig-a002-20211222
i386                 randconfig-a003-20211222
i386                 randconfig-a005-20211222
i386                 randconfig-a001-20211222
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a001-20211220
i386                 randconfig-a006-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a005-20211220
arc                  randconfig-r043-20211220
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20211222
x86_64               randconfig-a014-20211222
x86_64               randconfig-a012-20211222
x86_64               randconfig-a011-20211222
x86_64               randconfig-a015-20211222
x86_64               randconfig-a016-20211222
i386                 randconfig-a012-20211222
i386                 randconfig-a011-20211222
i386                 randconfig-a013-20211222
i386                 randconfig-a014-20211222
i386                 randconfig-a015-20211222
i386                 randconfig-a016-20211222
hexagon              randconfig-r041-20211222
hexagon              randconfig-r045-20211222
riscv                randconfig-r042-20211222
s390                 randconfig-r044-20211222
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220
hexagon              randconfig-r041-20211220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
