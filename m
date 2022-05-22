Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AC653014E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 May 2022 08:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E561241734;
	Sun, 22 May 2022 06:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hsllcWMc2LLA; Sun, 22 May 2022 06:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78F87415D9;
	Sun, 22 May 2022 06:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3F161BF962
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 May 2022 06:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D25DD415D9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 May 2022 06:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0ZlpVtEGh5r for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 May 2022 06:44:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAA97415C5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 May 2022 06:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653201854; x=1684737854;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0UVjPCx536m4krdSPpmx5k0zkOqympgjm9F7y3a+MRs=;
 b=gMBZGhWhCzanzahyPJ3CDseQAKtl3ezRSqSQ+0g1ZS804DxU+vSYiylI
 zk0MZgAZ4uAc42+rPRqriqOjcDIgLxB2PWO5O6lFoZtZJiav1prIDqusP
 S8I8JILQfwCoC4K7B5SBxPAwx7Gq1b3XTzTOAHu+jZu066hSFu71AP1QE
 3chAOjcXiutxIdk4+AsFdgsU/+eKG66tsm5lQFu5BTxj2PGB7atgFmBL8
 yvz6tZstDSB/LFwT8ZCcsIGq5nIS61YUvIpfgVBI2NclAdX14MmV+u7dp
 JfcXWi6bIV+tONUN+LCL/9wGpduq8MrnaE8PJ7hRuV67plMYPV1xFaRk5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10354"; a="273082678"
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="273082678"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2022 23:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,243,1647327600"; d="scan'208";a="744143718"
Received: from lkp-server01.sh.intel.com (HELO db63a1be7222) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 21 May 2022 23:44:12 -0700
Received: from kbuild by db63a1be7222 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nsfK0-00007e-5B;
 Sun, 22 May 2022 06:44:12 +0000
Date: Sun, 22 May 2022 14:43:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6289db9a.rxysnZnVYSyhYhsE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f5a4ca1b07014ac04c8a251af01e206d25ffeb2a
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
branch HEAD: f5a4ca1b07014ac04c8a251af01e206d25ffeb2a  i40e: Remove unnecessary synchronize_irq() before free_irq()

elapsed time: 2020m

configs tested: 155
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
powerpc64                           defconfig
arc                                 defconfig
powerpc                     asp8347_defconfig
m68k                            mac_defconfig
ia64                            zx1_defconfig
ia64                      gensparse_defconfig
arm                            pleb_defconfig
sh                               j2_defconfig
um                                  defconfig
um                               alldefconfig
powerpc                    sam440ep_defconfig
arm                        shmobile_defconfig
powerpc                      cm5200_defconfig
mips                      maltasmvp_defconfig
arm                        cerfcube_defconfig
mips                         db1xxx_defconfig
sh                          rsk7269_defconfig
powerpc                     pq2fads_defconfig
parisc                           allyesconfig
arm                        mini2440_defconfig
xtensa                           allyesconfig
m68k                            q40_defconfig
sh                           se7721_defconfig
arm                           tegra_defconfig
arm                           corgi_defconfig
xtensa                          iss_defconfig
powerpc                        cell_defconfig
sh                                  defconfig
powerpc                    klondike_defconfig
arm                       imx_v6_v7_defconfig
sh                           se7206_defconfig
xtensa                  audio_kc705_defconfig
arm                           h3600_defconfig
parisc                generic-64bit_defconfig
sh                           se7619_defconfig
s390                       zfcpdump_defconfig
arm                       omap2plus_defconfig
mips                 decstation_r4k_defconfig
arm                           h5000_defconfig
arm                        multi_v7_defconfig
ia64                         bigsur_defconfig
sh                          landisk_defconfig
alpha                            allyesconfig
arc                        nsimosci_defconfig
powerpc                     stx_gp3_defconfig
sparc64                          alldefconfig
x86_64                           alldefconfig
powerpc                 canyonlands_defconfig
powerpc                 mpc837x_mds_defconfig
arm                           viper_defconfig
sh                          sdk7786_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                        keystone_defconfig
h8300                       h8s-sim_defconfig
openrisc                 simple_smp_defconfig
xtensa                generic_kc705_defconfig
powerpc                       holly_defconfig
m68k                       m5208evb_defconfig
powerpc                      mgcoge_defconfig
mips                     loongson1b_defconfig
arc                         haps_hs_defconfig
sh                               allmodconfig
m68k                           sun3_defconfig
powerpc                     rainier_defconfig
arm                           sama5_defconfig
m68k                             allmodconfig
powerpc                      ppc6xx_defconfig
m68k                          amiga_defconfig
sh                         microdev_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220519
arm                  randconfig-c002-20220522
ia64                                defconfig
ia64                             allmodconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
h8300                            allyesconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
mips                      pic32mzda_defconfig
arm                          ep93xx_defconfig
mips                      malta_kvm_defconfig
arm                              alldefconfig
arm                          ixp4xx_defconfig
powerpc                     tqm5200_defconfig
powerpc                 mpc8560_ads_defconfig
arm                       spear13xx_defconfig
mips                           rs90_defconfig
arm                        mvebu_v5_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                    gamecube_defconfig
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
hexagon              randconfig-r045-20220519
riscv                randconfig-r042-20220519
hexagon              randconfig-r041-20220519
s390                 randconfig-r044-20220519

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
