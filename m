Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF44B452AF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 07:31:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB13740217;
	Tue, 16 Nov 2021 06:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YJFwFXzU8YEr; Tue, 16 Nov 2021 06:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93C2A40100;
	Tue, 16 Nov 2021 06:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63F9D1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 06:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DDE8607C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 06:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MFIeORVmfFK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 06:31:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60436607C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 06:31:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="257387316"
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="257387316"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 22:31:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="735327631"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 15 Nov 2021 22:31:04 -0800
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mmrzj-00008A-IC; Tue, 16 Nov 2021 06:31:03 +0000
Date: Tue, 16 Nov 2021 14:30:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61934fea.6d0jq7Bx0PgtSoOj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 a5bdc36354cbf1a1a91396f4da548ff484686305
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
branch HEAD: a5bdc36354cbf1a1a91396f4da548ff484686305  Merge https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next

elapsed time: 726m

configs tested: 165
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211115
i386                 randconfig-c001-20211116
m68k                             alldefconfig
powerpc                 linkstation_defconfig
ia64                                defconfig
mips                         db1xxx_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                        cell_defconfig
s390                          debug_defconfig
arm64                            alldefconfig
arc                            hsdk_defconfig
arm                         lpc32xx_defconfig
arm                         lubbock_defconfig
sh                             shx3_defconfig
sh                          lboxre2_defconfig
arc                                 defconfig
arm                       netwinder_defconfig
arm                        mini2440_defconfig
powerpc                mpc7448_hpc2_defconfig
m68k                        m5307c3_defconfig
powerpc                     stx_gp3_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                         cm_x300_defconfig
m68k                          atari_defconfig
sh                             espt_defconfig
arm                        vexpress_defconfig
h8300                    h8300h-sim_defconfig
sh                               j2_defconfig
powerpc                      ppc6xx_defconfig
mips                          ath25_defconfig
openrisc                 simple_smp_defconfig
sh                         ecovec24_defconfig
m68k                       m5208evb_defconfig
powerpc                     ppa8548_defconfig
powerpc                     redwood_defconfig
arc                         haps_hs_defconfig
powerpc                       holly_defconfig
powerpc                       ppc64_defconfig
arm                          ixp4xx_defconfig
powerpc                  iss476-smp_defconfig
mips                     decstation_defconfig
sh                         apsh4a3a_defconfig
sparc64                             defconfig
arm                       aspeed_g4_defconfig
m68k                       m5275evb_defconfig
arm                        magician_defconfig
mips                           ip22_defconfig
arm                         at91_dt_defconfig
m68k                         amcore_defconfig
sh                   sh7770_generic_defconfig
xtensa                         virt_defconfig
mips                             allyesconfig
powerpc                   lite5200b_defconfig
mips                           ip32_defconfig
arm                           tegra_defconfig
h8300                               defconfig
mips                      maltaaprp_defconfig
powerpc                    ge_imp3a_defconfig
sh                          rsk7203_defconfig
m68k                        m5407c3_defconfig
sh                        sh7763rdp_defconfig
mips                         mpc30x_defconfig
sh                     sh7710voipgw_defconfig
arm                  randconfig-c002-20211115
arm                  randconfig-c002-20211116
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nds32                               defconfig
nios2                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20211115
i386                 randconfig-a003-20211115
i386                 randconfig-a005-20211115
i386                 randconfig-a001-20211115
i386                 randconfig-a004-20211115
i386                 randconfig-a002-20211115
x86_64               randconfig-a015-20211116
x86_64               randconfig-a013-20211116
x86_64               randconfig-a012-20211116
x86_64               randconfig-a011-20211116
x86_64               randconfig-a016-20211116
x86_64               randconfig-a014-20211116
x86_64               randconfig-a005-20211115
x86_64               randconfig-a003-20211115
x86_64               randconfig-a002-20211115
x86_64               randconfig-a001-20211115
x86_64               randconfig-a006-20211115
x86_64               randconfig-a004-20211115
i386                 randconfig-a014-20211116
i386                 randconfig-a016-20211116
i386                 randconfig-a012-20211116
i386                 randconfig-a013-20211116
i386                 randconfig-a011-20211116
i386                 randconfig-a015-20211116
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c007-20211116
i386                 randconfig-c001-20211116
arm                  randconfig-c002-20211116
riscv                randconfig-c006-20211116
powerpc              randconfig-c003-20211116
s390                 randconfig-c005-20211116
mips                 randconfig-c004-20211116
x86_64               randconfig-c007-20211115
i386                 randconfig-c001-20211115
arm                  randconfig-c002-20211115
riscv                randconfig-c006-20211115
powerpc              randconfig-c003-20211115
s390                 randconfig-c005-20211115
mips                 randconfig-c004-20211115
x86_64               randconfig-a015-20211115
x86_64               randconfig-a013-20211115
x86_64               randconfig-a011-20211115
x86_64               randconfig-a012-20211115
x86_64               randconfig-a014-20211115
x86_64               randconfig-a016-20211115
i386                 randconfig-a014-20211115
i386                 randconfig-a016-20211115
i386                 randconfig-a012-20211115
i386                 randconfig-a013-20211115
i386                 randconfig-a011-20211115
i386                 randconfig-a015-20211115
hexagon              randconfig-r045-20211115
s390                 randconfig-r044-20211115
hexagon              randconfig-r041-20211115
riscv                randconfig-r042-20211115

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
