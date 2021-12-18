Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB5E479E16
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Dec 2021 00:08:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55E0E60B49;
	Sat, 18 Dec 2021 23:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtQTArceMBdm; Sat, 18 Dec 2021 23:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4821760B47;
	Sat, 18 Dec 2021 23:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43F581BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Dec 2021 23:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 241D060B47
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Dec 2021 23:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bW16QsgfIrfK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Dec 2021 23:08:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A6B960A90
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Dec 2021 23:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639868901; x=1671404901;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CKWiUrtdPL9QTbNktPKzsWxpyV3Ybi0HeQDNlHSYJ/o=;
 b=WpnZamTlq7ZfrYeFOFaGw+jK/4/JUr6MDV3/7c1rX6xm8IK2Yz9pfhjs
 1snX/8thXjylk7tdyT1BR/tTUg8wZrVV2yBU65f7yk7IzgGpOOtQhBw/H
 4BzGavTm9l8jRjbmwaIBo2agl04I1XMaRKYW3DZ084OlRjUXuVmgCkkUQ
 tmsNZt2vvHSoWh+M8wMHNUSfToNbtZpoWMkHPaJR2EPBx0Wzwx9rsSyyS
 rd0/IJUSYlCd3SVgXqnyEIHMpBf/ARa1aR5rXA//yhys5kz/d3VDCdQlL
 /3P10KVIvpYnVd2aO2ydvHYyk3XuSswvwgsMy0LPZ+2bEuiZpI4ANnmFY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10202"; a="303331075"
X-IronPort-AV: E=Sophos;i="5.88,217,1635231600"; d="scan'208";a="303331075"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2021 15:08:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,217,1635231600"; d="scan'208";a="466921918"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 18 Dec 2021 15:08:16 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1myio8-0006UA-3L; Sat, 18 Dec 2021 23:08:04 +0000
Date: Sun, 19 Dec 2021 07:07:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61be69b1.0WprwNJs60N/+9Zy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 47e1a65f06a0c962ee9cc501d6ba1c6be897d65e
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
branch HEAD: 47e1a65f06a0c962ee9cc501d6ba1c6be897d65e  igc: Do not enable crosstimestamping for i225-V models

elapsed time: 1453m

configs tested: 141
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm                              allmodconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211216
i386                 randconfig-c001-20211218
mips                         rt305x_defconfig
sh                      rts7751r2d1_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                      bamboo_defconfig
powerpc                     ppa8548_defconfig
sh                           se7780_defconfig
powerpc                       maple_defconfig
nds32                               defconfig
arm                          simpad_defconfig
mips                        bcm63xx_defconfig
sh                          rsk7203_defconfig
powerpc                    amigaone_defconfig
arm                            lart_defconfig
arc                         haps_hs_defconfig
sh                            titan_defconfig
mips                            ar7_defconfig
m68k                       bvme6000_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                              alldefconfig
powerpc                 mpc8560_ads_defconfig
arm                         shannon_defconfig
arm                        clps711x_defconfig
m68k                       m5249evb_defconfig
arm                            dove_defconfig
m68k                         apollo_defconfig
m68k                         amcore_defconfig
mips                        bcm47xx_defconfig
h8300                    h8300h-sim_defconfig
powerpc                 mpc837x_rdb_defconfig
h8300                       h8s-sim_defconfig
mips                     cu1830-neo_defconfig
i386                             alldefconfig
arm                           u8500_defconfig
m68k                        mvme147_defconfig
ia64                         bigsur_defconfig
mips                        omega2p_defconfig
arm                         lubbock_defconfig
arm                        magician_defconfig
sh                           se7721_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                      walnut_defconfig
arc                     haps_hs_smp_defconfig
sh                           se7724_defconfig
powerpc                 linkstation_defconfig
powerpc                        cell_defconfig
arm                         s3c6400_defconfig
mips                      pic32mzda_defconfig
powerpc                    mvme5100_defconfig
arm                          iop32x_defconfig
arm                         vf610m4_defconfig
arm                         assabet_defconfig
h8300                     edosk2674_defconfig
powerpc64                           defconfig
powerpc                        warp_defconfig
arm                          ixp4xx_defconfig
powerpc                     tqm8540_defconfig
arm                  randconfig-c002-20211216
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
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
x86_64               randconfig-a006-20211216
x86_64               randconfig-a005-20211216
x86_64               randconfig-a001-20211216
x86_64               randconfig-a002-20211216
x86_64               randconfig-a003-20211216
x86_64               randconfig-a004-20211216
i386                 randconfig-a001-20211216
i386                 randconfig-a002-20211216
i386                 randconfig-a005-20211216
i386                 randconfig-a003-20211216
i386                 randconfig-a006-20211216
i386                 randconfig-a004-20211216
arc                  randconfig-r043-20211216
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a011-20211216
x86_64               randconfig-a014-20211216
x86_64               randconfig-a012-20211216
x86_64               randconfig-a013-20211216
x86_64               randconfig-a016-20211216
x86_64               randconfig-a015-20211216
i386                 randconfig-a013-20211218
i386                 randconfig-a011-20211218
i386                 randconfig-a014-20211218
i386                 randconfig-a012-20211218
i386                 randconfig-a015-20211218
i386                 randconfig-a016-20211218
hexagon              randconfig-r045-20211216
s390                 randconfig-r044-20211216
riscv                randconfig-r042-20211216
hexagon              randconfig-r041-20211216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
