Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D4149F86D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 12:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26F3160B6A;
	Fri, 28 Jan 2022 11:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26elFcXvftSX; Fri, 28 Jan 2022 11:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE61A60B0E;
	Fri, 28 Jan 2022 11:40:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0382C1BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 11:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2535416EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 11:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g79bJcFZVegP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 11:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 239C2416E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 11:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370018; x=1674906018;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=T6GDCQXKBo9GK230FKgtYsR1xaCZAyDuGrZFtYiTNHg=;
 b=HdWrWuBavt03jSUKPRUpXbjPd1e+kIYVpllr0slFPGKfOKoeuI0eQ4jZ
 lXWSR6LqIgBCStL7umbBRgf0A16lg4qqLOfaX4ki/ZwvS2CFJMqG6C9Re
 LYpZoiYn59OBp7a2DoHLGCECthnPAAgAvR0NgIXtp5K/tJcp88wzf5afn
 LqjxzeD9J88asJKLA2JsHUMqll6hVCfvPgXLz3TT7SOLWovegiuFP2eDD
 NpTS/WWHx36KR0X09aAQluGnIpTDWmpyX9FzPgQ98Hs4W4O5+xN+TZran
 Nt3JDIRYkrO2tisVJqRU4HR812+02IKyYdofplnq0Lz9mylGdQ5m3R+yu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="234482080"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="234482080"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:40:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="564172281"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 28 Jan 2022 03:40:17 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nDPc0-000Nnd-BT; Fri, 28 Jan 2022 11:40:16 +0000
Date: Fri, 28 Jan 2022 19:39:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61f3d60f.Lf/6yw9N3INPPcZg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 810f994a4a860aaef21ca3e905f2ce2abdfe6d45
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
branch HEAD: 810f994a4a860aaef21ca3e905f2ce2abdfe6d45  e1000e: Fix possible HW unit hang after an s0ix exit

elapsed time: 727m

configs tested: 159
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
arc                      axs103_smp_defconfig
arm                       imx_v6_v7_defconfig
m68k                       m5275evb_defconfig
um                             i386_defconfig
h8300                    h8300h-sim_defconfig
arm                           tegra_defconfig
powerpc                      mgcoge_defconfig
mips                            ar7_defconfig
sh                   secureedge5410_defconfig
sh                           sh2007_defconfig
sh                           se7721_defconfig
parisc                generic-64bit_defconfig
sparc                       sparc64_defconfig
mips                        bcm47xx_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
s390                       zfcpdump_defconfig
arm                            pleb_defconfig
arm                            zeus_defconfig
arm                        clps711x_defconfig
arm                      footbridge_defconfig
arm                            xcep_defconfig
sh                            shmin_defconfig
powerpc                      ppc40x_defconfig
ia64                      gensparse_defconfig
arc                              alldefconfig
arc                        nsimosci_defconfig
powerpc                      ppc6xx_defconfig
arm                             pxa_defconfig
s390                          debug_defconfig
arm                         assabet_defconfig
h8300                               defconfig
arm                             ezx_defconfig
sparc                            alldefconfig
h8300                     edosk2674_defconfig
nios2                         3c120_defconfig
xtensa                    xip_kc705_defconfig
sh                         apsh4a3a_defconfig
mips                           ci20_defconfig
arm                  randconfig-c002-20220127
arm                  randconfig-c002-20220124
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220127
arc                  randconfig-r043-20220127
arc                  randconfig-r043-20220124
s390                 randconfig-r044-20220127
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                       netwinder_defconfig
arm                         orion5x_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                   bluestone_defconfig
mips                           ip27_defconfig
powerpc                      ppc44x_defconfig
arm                         s5pv210_defconfig
powerpc                     ksi8560_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                          g5_defconfig
powerpc                      acadia_defconfig
arm                        magician_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      katmai_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                         bcm2835_defconfig
powerpc                       ebony_defconfig
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220124
s390                 randconfig-r044-20220124
hexagon              randconfig-r045-20220125
hexagon              randconfig-r045-20220124
hexagon              randconfig-r045-20220127
hexagon              randconfig-r041-20220125
hexagon              randconfig-r041-20220124
hexagon              randconfig-r041-20220127
riscv                randconfig-r042-20220126
hexagon              randconfig-r045-20220126
hexagon              randconfig-r041-20220126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
