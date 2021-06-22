Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D50A3B01EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 12:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1E3160826;
	Tue, 22 Jun 2021 10:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PYU8kLeeuLTU; Tue, 22 Jun 2021 10:57:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE28960824;
	Tue, 22 Jun 2021 10:57:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6B911BF405
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 10:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2957404BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 10:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAd3VRJPbVBD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 10:57:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81414404B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 10:57:50 +0000 (UTC)
IronPort-SDR: aUJVeILCKkMGZGXfAUNFSOYluvP6aqmIIvZ64Ueeg8pFyLi1U+Nm0yyt0WRAkXSaOVxUTpEPCv
 edaZtMzfLWxg==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194170486"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="194170486"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 03:57:49 -0700
IronPort-SDR: aE90Ft0VoubAQE2EPHW9qXtmpXiP2Lc/PfhKsJA5uK8r2EwVsNgHIk2zwVfJO9pApdCf4TVdBf
 QpqmCU8HvzxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="556578688"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2021 03:57:47 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lve6F-0005AF-6e; Tue, 22 Jun 2021 10:57:47 +0000
Date: Tue, 22 Jun 2021 18:56:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60d1c1f5.lVobTUPDAXmHk65o%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3717c1342e201571591f4602ca40b1858f15b47d
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
branch HEAD: 3717c1342e201571591f4602ca40b1858f15b47d  ice: Fix a memory leak in an error handling path in 'ice_pf_dcb_cfg()'

elapsed time: 726m

configs tested: 145
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      chrp32_defconfig
m68k                        mvme16x_defconfig
openrisc                            defconfig
arm                         s3c2410_defconfig
powerpc                      obs600_defconfig
arm                            mmp2_defconfig
sh                           se7721_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                         at91_dt_defconfig
mips                         db1xxx_defconfig
arc                        nsimosci_defconfig
arm                       imx_v4_v5_defconfig
alpha                            alldefconfig
powerpc                      ppc64e_defconfig
microblaze                          defconfig
mips                         tb0219_defconfig
sh                          r7785rp_defconfig
arm                       spear13xx_defconfig
arm                    vt8500_v6_v7_defconfig
mips                         rt305x_defconfig
arm                        keystone_defconfig
arm                          exynos_defconfig
mips                       lemote2f_defconfig
mips                        workpad_defconfig
ia64                        generic_defconfig
arm                        multi_v5_defconfig
sh                           se7619_defconfig
arm                       aspeed_g5_defconfig
arc                        nsim_700_defconfig
arm                       versatile_defconfig
mips                         tb0226_defconfig
sh                          lboxre2_defconfig
arc                          axs101_defconfig
xtensa                       common_defconfig
ia64                             alldefconfig
m68k                         apollo_defconfig
mips                           jazz_defconfig
mips                        jmr3927_defconfig
m68k                          hp300_defconfig
parisc                           alldefconfig
mips                        vocore2_defconfig
powerpc                  mpc866_ads_defconfig
h8300                     edosk2674_defconfig
powerpc                   lite5200b_defconfig
sh                           se7722_defconfig
powerpc                      pasemi_defconfig
m68k                       m5208evb_defconfig
ia64                         bigsur_defconfig
sh                 kfr2r09-romimage_defconfig
mips                        omega2p_defconfig
m68k                         amcore_defconfig
xtensa                  nommu_kc705_defconfig
mips                          malta_defconfig
powerpc                     tqm8548_defconfig
arm                       multi_v4t_defconfig
ia64                            zx1_defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210621
x86_64               randconfig-a001-20210621
x86_64               randconfig-a005-20210621
x86_64               randconfig-a003-20210621
x86_64               randconfig-a004-20210621
x86_64               randconfig-a006-20210621
i386                 randconfig-a002-20210621
i386                 randconfig-a001-20210621
i386                 randconfig-a003-20210621
i386                 randconfig-a006-20210621
i386                 randconfig-a001-20210622
i386                 randconfig-a002-20210622
i386                 randconfig-a003-20210622
i386                 randconfig-a006-20210622
i386                 randconfig-a005-20210622
i386                 randconfig-a004-20210622
x86_64               randconfig-a012-20210622
x86_64               randconfig-a016-20210622
x86_64               randconfig-a015-20210622
x86_64               randconfig-a014-20210622
x86_64               randconfig-a013-20210622
x86_64               randconfig-a011-20210622
i386                 randconfig-a011-20210622
i386                 randconfig-a014-20210622
i386                 randconfig-a013-20210622
i386                 randconfig-a015-20210622
i386                 randconfig-a012-20210622
i386                 randconfig-a016-20210622
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
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210622
x86_64               randconfig-a002-20210622
x86_64               randconfig-a001-20210622
x86_64               randconfig-a005-20210622
x86_64               randconfig-a003-20210622
x86_64               randconfig-a004-20210622
x86_64               randconfig-a006-20210622

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
