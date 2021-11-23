Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E229B459D52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 09:00:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C6DE605EB;
	Tue, 23 Nov 2021 08:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsqBaodm4SBc; Tue, 23 Nov 2021 08:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76E02605D0;
	Tue, 23 Nov 2021 08:00:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 076501BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 07:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA36F40319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 07:59:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yzxvp3AxY09k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 07:59:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C977D40314
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 07:59:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="234797837"
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="234797837"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 23:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="606725769"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 22 Nov 2021 23:55:31 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mpQeI-0001bw-IK; Tue, 23 Nov 2021 07:55:30 +0000
Date: Tue, 23 Nov 2021 15:54:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <619c9e41.gRB8KyvjEO2GVQzC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 f65ee535df775a13a1046c0a0b2d72db342f8a5b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: f65ee535df775a13a1046c0a0b2d72db342f8a5b  ice: avoid bpf_prog refcount underflow

elapsed time: 727m

configs tested: 193
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211122
i386                 randconfig-c001-20211123
sh                          landisk_defconfig
mips                      pic32mzda_defconfig
mips                        bcm47xx_defconfig
arc                          axs103_defconfig
sh                      rts7751r2d1_defconfig
arm                         lpc18xx_defconfig
sh                         microdev_defconfig
arm                          exynos_defconfig
powerpc                      pmac32_defconfig
um                                  defconfig
nios2                         3c120_defconfig
xtensa                    smp_lx200_defconfig
mips                       capcella_defconfig
h8300                            alldefconfig
powerpc                      tqm8xx_defconfig
arm                         hackkit_defconfig
arm                        shmobile_defconfig
ia64                             alldefconfig
xtensa                  nommu_kc705_defconfig
s390                             alldefconfig
powerpc                 canyonlands_defconfig
ia64                      gensparse_defconfig
sh                         ecovec24_defconfig
powerpc                     akebono_defconfig
mips                      malta_kvm_defconfig
powerpc                 mpc8315_rdb_defconfig
sh                          lboxre2_defconfig
powerpc                          allyesconfig
mips                         db1xxx_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                      cm5200_defconfig
arm                           sama7_defconfig
arm                       spear13xx_defconfig
mips                        vocore2_defconfig
mips                         cobalt_defconfig
sh                        edosk7705_defconfig
powerpc                     rainier_defconfig
arm                         s5pv210_defconfig
alpha                               defconfig
arm                          simpad_defconfig
powerpc                 mpc836x_mds_defconfig
arm                    vt8500_v6_v7_defconfig
mips                             allyesconfig
mips                       rbtx49xx_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      pcm030_defconfig
powerpc                      ep88xc_defconfig
m68k                         amcore_defconfig
sh                          sdk7780_defconfig
arm                           stm32_defconfig
h8300                    h8300h-sim_defconfig
arm                            dove_defconfig
powerpc                          allmodconfig
sh                          kfr2r09_defconfig
powerpc                 mpc832x_rdb_defconfig
sparc64                          alldefconfig
riscv                    nommu_k210_defconfig
powerpc                         ps3_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                    maltaup_xpa_defconfig
sh                        dreamcast_defconfig
sh                              ul2_defconfig
arc                          axs101_defconfig
mips                        workpad_defconfig
x86_64                           alldefconfig
arm                         assabet_defconfig
powerpc                     kmeter1_defconfig
arm                          collie_defconfig
arm                            xcep_defconfig
m68k                          multi_defconfig
arm                          gemini_defconfig
sh                        edosk7760_defconfig
m68k                       m5249evb_defconfig
sh                   secureedge5410_defconfig
powerpc                      ppc64e_defconfig
m68k                             alldefconfig
m68k                       m5208evb_defconfig
arm                        trizeps4_defconfig
s390                       zfcpdump_defconfig
arm                       aspeed_g4_defconfig
powerpc                      pasemi_defconfig
arc                              alldefconfig
ia64                            zx1_defconfig
mips                          ath79_defconfig
arm                     eseries_pxa_defconfig
arm                           sama5_defconfig
sh                           se7343_defconfig
arm                          pxa168_defconfig
ia64                        generic_defconfig
arm                        mvebu_v5_defconfig
arm                     am200epdkit_defconfig
arc                        nsimosci_defconfig
arm                  randconfig-c002-20211122
arm                  randconfig-c002-20211123
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
i386                              debian-10.3
mips                             allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211123
x86_64               randconfig-a003-20211123
x86_64               randconfig-a006-20211123
x86_64               randconfig-a004-20211123
x86_64               randconfig-a005-20211123
x86_64               randconfig-a002-20211123
i386                 randconfig-a001-20211123
i386                 randconfig-a002-20211123
i386                 randconfig-a005-20211123
i386                 randconfig-a006-20211123
i386                 randconfig-a004-20211123
i386                 randconfig-a003-20211123
x86_64               randconfig-a014-20211122
x86_64               randconfig-a011-20211122
x86_64               randconfig-a012-20211122
x86_64               randconfig-a016-20211122
x86_64               randconfig-a013-20211122
x86_64               randconfig-a015-20211122
i386                 randconfig-a016-20211122
i386                 randconfig-a015-20211122
i386                 randconfig-a012-20211122
i386                 randconfig-a013-20211122
i386                 randconfig-a014-20211122
i386                 randconfig-a011-20211122
arc                  randconfig-r043-20211122
s390                 randconfig-r044-20211122
riscv                randconfig-r042-20211122
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
s390                 randconfig-c005-20211123
i386                 randconfig-c001-20211123
powerpc              randconfig-c003-20211123
arm                  randconfig-c002-20211123
riscv                randconfig-c006-20211123
x86_64               randconfig-c007-20211123
mips                 randconfig-c004-20211123
x86_64               randconfig-a001-20211122
x86_64               randconfig-a003-20211122
x86_64               randconfig-a006-20211122
x86_64               randconfig-a004-20211122
x86_64               randconfig-a005-20211122
x86_64               randconfig-a002-20211122
i386                 randconfig-a001-20211122
i386                 randconfig-a002-20211122
i386                 randconfig-a005-20211122
i386                 randconfig-a006-20211122
i386                 randconfig-a004-20211122
i386                 randconfig-a003-20211122
hexagon              randconfig-r045-20211123
s390                 randconfig-r044-20211123
hexagon              randconfig-r041-20211123
riscv                randconfig-r042-20211123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
