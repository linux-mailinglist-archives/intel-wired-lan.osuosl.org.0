Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1523F4B07EF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Feb 2022 09:16:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79B574052B;
	Thu, 10 Feb 2022 08:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o_-TRMtYYnj3; Thu, 10 Feb 2022 08:16:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E94F74047C;
	Thu, 10 Feb 2022 08:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1651BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 08:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CA6F409AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 08:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hRIxHcesUj1y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 08:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43F624094E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 08:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644481000; x=1676017000;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BWLescB5QFpBcW1Ky/eiDsnlrlv/33YRjl1x63pVHSY=;
 b=UF7gIiVQ0zVSxqNoExZxx3NIFbMLcpA7Wp48CNPtZZPUsR+6Rk7Xrp+s
 p69HAl0Kr/DA0xZckyTKpmKlIfPn9EVy0/lfh7t6U92vvW+ZhivwMYCCq
 UyTjgGfgbxV4Z9o7ad92fvTeWLtI63iH21zTozsR/G2CI8SF9Q3JXNRwR
 yFPUH0kpE8IZqjh5+dRF2O/Ou6iy0qLIVaTyl6p5XGhg8fcW5zWcMdSn5
 2Yzv3Y3v/niw8vvMuQkvzwk43P9zOCUdfl2aejHYq6V07ZGQoiTsmTiwz
 g4aIWntpvsaG3Ef9MNtnmwA6/p6H6G7mqqlO/rbY/2Ox9D9RF91Fx1oy2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249384094"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="249384094"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 00:16:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="701598015"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 10 Feb 2022 00:16:33 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nI4cz-0002wP-7a; Thu, 10 Feb 2022 08:16:33 +0000
Date: Thu, 10 Feb 2022 16:15:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6204c9af.nbcLpIh6CzhaM2pO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c686b8f1ad8b452e9551575f2cc6b04b547a7373
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
branch HEAD: c686b8f1ad8b452e9551575f2cc6b04b547a7373  ice: fix concurrent reset and removal of VFs

elapsed time: 725m

configs tested: 150
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20220210
m68k                          hp300_defconfig
x86_64                              defconfig
powerpc                      ep88xc_defconfig
mips                     loongson1b_defconfig
sh                        edosk7760_defconfig
sh                   secureedge5410_defconfig
m68k                       m5275evb_defconfig
mips                         db1xxx_defconfig
powerpc                        warp_defconfig
xtensa                  nommu_kc705_defconfig
riscv                            allyesconfig
sh                          r7785rp_defconfig
h8300                               defconfig
mips                         cobalt_defconfig
sh                          r7780mp_defconfig
arm                        mvebu_v7_defconfig
arm                         assabet_defconfig
sh                            shmin_defconfig
sh                              ul2_defconfig
arm                         lpc18xx_defconfig
sh                          polaris_defconfig
m68k                         amcore_defconfig
ia64                             allyesconfig
openrisc                 simple_smp_defconfig
sh                           se7206_defconfig
m68k                             alldefconfig
arm                       aspeed_g5_defconfig
arc                        nsim_700_defconfig
arm                           h3600_defconfig
arm                             ezx_defconfig
sh                           sh2007_defconfig
sh                            hp6xx_defconfig
sh                        dreamcast_defconfig
um                                  defconfig
s390                                defconfig
powerpc                      chrp32_defconfig
m68k                       m5475evb_defconfig
sh                             sh03_defconfig
powerpc                        cell_defconfig
h8300                            allyesconfig
sh                          kfr2r09_defconfig
arm                          badge4_defconfig
h8300                    h8300h-sim_defconfig
mips                      loongson3_defconfig
powerpc                      ppc40x_defconfig
arm                         nhk8815_defconfig
powerpc                    klondike_defconfig
powerpc                       ppc64_defconfig
arc                              alldefconfig
s390                          debug_defconfig
m68k                          amiga_defconfig
openrisc                            defconfig
arm                         vf610m4_defconfig
sh                           se7721_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                  randconfig-c002-20220210
arm                  randconfig-c002-20220209
ia64                             allmodconfig
ia64                                defconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20220209
arc                  randconfig-r043-20220208
arc                  randconfig-r043-20220209
riscv                randconfig-r042-20220210
riscv                randconfig-r042-20220209
arc                  randconfig-r043-20220210
s390                 randconfig-r044-20220210
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220209
riscv                randconfig-c006-20220210
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220209
powerpc              randconfig-c003-20220210
arm                  randconfig-c002-20220210
i386                          randconfig-c001
mips                 randconfig-c004-20220209
mips                 randconfig-c004-20220210
arm                  randconfig-c002-20220209
powerpc                     ksi8560_defconfig
arm                       aspeed_g4_defconfig
mips                            e55_defconfig
arm                        spear3xx_defconfig
powerpc                      ppc44x_defconfig
powerpc                    mvme5100_defconfig
powerpc                     kilauea_defconfig
powerpc                   microwatt_defconfig
riscv                             allnoconfig
powerpc                     mpc512x_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220210
hexagon              randconfig-r041-20220210

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
