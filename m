Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BE53A3F07
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 11:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C39083C51;
	Fri, 11 Jun 2021 09:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCo7f4Yesu0q; Fri, 11 Jun 2021 09:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D72083C2A;
	Fri, 11 Jun 2021 09:27:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAFE21BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 09:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A232C40459
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 09:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PFzug3xrjvKp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 09:27:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D84D404AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 09:27:08 +0000 (UTC)
IronPort-SDR: rNw1FVa3Wmx8irgJEPA20eiRpLTTYr0574O5dfdskwqp2vuoVUAdvOE/4/fiL6igYYUjAhB/4i
 q9+g9TQDTfug==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185185013"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="185185013"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 02:27:08 -0700
IronPort-SDR: 2VPrfdPAE9jHCoV3OUQwXFwQIZ69MFIvRWrXpI2Wpze+rVDBtrtBYnR8GV/Y2vKfBtXzIfJzye
 sd5q6I/6LV1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="449053479"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 11 Jun 2021 02:27:07 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lrdRS-0000YG-VF; Fri, 11 Jun 2021 09:27:06 +0000
Date: Fri, 11 Jun 2021 17:26:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60c32c4f.Dm8mrF1+rUtbfprG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0d2acdf177a395aeb72d7d3b3834c1d4adf69ae3
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
branch HEAD: 0d2acdf177a395aeb72d7d3b3834c1d4adf69ae3  igb: Fix position of assignment to *ring

elapsed time: 722m

configs tested: 152
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         shannon_defconfig
sh                          rsk7269_defconfig
arm                       imx_v6_v7_defconfig
arm                        mini2440_defconfig
arm                        keystone_defconfig
arc                        vdk_hs38_defconfig
powerpc                 mpc832x_mds_defconfig
mips                        vocore2_defconfig
arc                        nsimosci_defconfig
arm                              alldefconfig
nds32                            alldefconfig
powerpc                 mpc8313_rdb_defconfig
arm                       aspeed_g5_defconfig
arm                         s5pv210_defconfig
mips                         tb0226_defconfig
arm                        spear6xx_defconfig
arm                           stm32_defconfig
sh                   sh7770_generic_defconfig
sh                          rsk7201_defconfig
arm                        shmobile_defconfig
m68k                          sun3x_defconfig
x86_64                              defconfig
alpha                            allyesconfig
arm                          pxa910_defconfig
sh                   rts7751r2dplus_defconfig
arm                         hackkit_defconfig
sh                          kfr2r09_defconfig
mips                        jmr3927_defconfig
arm                     am200epdkit_defconfig
mips                           ip22_defconfig
arm                     eseries_pxa_defconfig
sh                          r7780mp_defconfig
xtensa                    xip_kc705_defconfig
sparc                       sparc64_defconfig
mips                         mpc30x_defconfig
h8300                            alldefconfig
sh                           se7721_defconfig
h8300                     edosk2674_defconfig
arm                         at91_dt_defconfig
sh                               alldefconfig
powerpc                 mpc8272_ads_defconfig
h8300                               defconfig
sh                           se7619_defconfig
powerpc                    ge_imp3a_defconfig
sh                          urquell_defconfig
arm                          gemini_defconfig
parisc                           alldefconfig
mips                            gpr_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                        cell_defconfig
microblaze                          defconfig
powerpc                 mpc85xx_cds_defconfig
mips                        workpad_defconfig
openrisc                  or1klitex_defconfig
sparc                            alldefconfig
mips                         rt305x_defconfig
powerpc                      tqm8xx_defconfig
nios2                         3c120_defconfig
microblaze                      mmu_defconfig
powerpc                     rainier_defconfig
powerpc                      ppc6xx_defconfig
um                               alldefconfig
powerpc                 mpc836x_mds_defconfig
arc                          axs103_defconfig
x86_64                            allnoconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210611
x86_64               randconfig-a001-20210611
x86_64               randconfig-a004-20210611
x86_64               randconfig-a003-20210611
x86_64               randconfig-a006-20210611
x86_64               randconfig-a005-20210611
i386                 randconfig-a002-20210610
i386                 randconfig-a006-20210610
i386                 randconfig-a004-20210610
i386                 randconfig-a001-20210610
i386                 randconfig-a005-20210610
i386                 randconfig-a003-20210610
x86_64               randconfig-a015-20210610
x86_64               randconfig-a011-20210610
x86_64               randconfig-a012-20210610
x86_64               randconfig-a014-20210610
x86_64               randconfig-a016-20210610
x86_64               randconfig-a013-20210610
i386                 randconfig-a015-20210608
i386                 randconfig-a013-20210608
i386                 randconfig-a016-20210608
i386                 randconfig-a011-20210608
i386                 randconfig-a012-20210608
i386                 randconfig-a014-20210608
i386                 randconfig-a015-20210611
i386                 randconfig-a013-20210611
i386                 randconfig-a016-20210611
i386                 randconfig-a014-20210611
i386                 randconfig-a012-20210611
i386                 randconfig-a011-20210611
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210610
x86_64               randconfig-a001-20210610
x86_64               randconfig-a004-20210610
x86_64               randconfig-a003-20210610
x86_64               randconfig-a006-20210610
x86_64               randconfig-a005-20210610

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
