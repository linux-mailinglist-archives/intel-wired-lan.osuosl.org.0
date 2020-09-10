Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85914264C22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 20:02:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DAF88767D;
	Thu, 10 Sep 2020 18:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XdFxJDg+P-4; Thu, 10 Sep 2020 18:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFE3C87686;
	Thu, 10 Sep 2020 18:02:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B84C21BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 18:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A890187667
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 18:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I52Q41TzF-MC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 18:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E378E8767D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 18:02:32 +0000 (UTC)
IronPort-SDR: C5hMaKTmXv96yVD94yIdqCSPH1g6sFLItgAUlUY41Fx3z3tfGAYuIM5YhmVfd33W500mObdCdp
 CDODTK7HExUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="146302727"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="146302727"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 11:02:28 -0700
IronPort-SDR: yrnWCVfaYwoPvNHnqwg6V7Voc6cbR1RvqZPaGY+dehY0ECF+EdN2cVE+SGJLSdAPN018+/lyhw
 uzF/YbfffFqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="300645362"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Sep 2020 11:02:27 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kGQtu-0000xj-JH; Thu, 10 Sep 2020 18:02:26 +0000
Date: Fri, 11 Sep 2020 02:02:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f5a6a2d.EGLMJsVAkx891egT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 54c01dded5f0f31c1452823a695099f8e167dddc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 54c01dded5f0f31c1452823a695099f8e167dddc  i40e: remove redundant assignment

elapsed time: 725m

configs tested: 142
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                       ppc64_defconfig
sh                        apsh4ad0a_defconfig
alpha                            allyesconfig
h8300                    h8300h-sim_defconfig
powerpc                     powernv_defconfig
powerpc                      mgcoge_defconfig
arm                        neponset_defconfig
m68k                        stmark2_defconfig
arm                     davinci_all_defconfig
sh                         apsh4a3a_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                       cns3420vb_defconfig
sparc64                             defconfig
nios2                         3c120_defconfig
arm                         lpc32xx_defconfig
m68k                            mac_defconfig
sh                           se7705_defconfig
sh                             sh03_defconfig
arc                    vdk_hs38_smp_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
riscv                    nommu_k210_defconfig
m68k                           sun3_defconfig
arm                            u300_defconfig
sh                          polaris_defconfig
m68k                        mvme16x_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                        shmobile_defconfig
arm64                            alldefconfig
mips                           rs90_defconfig
mips                          ath25_defconfig
arm                           efm32_defconfig
mips                 pnx8335_stb225_defconfig
arm                           omap1_defconfig
c6x                        evmc6472_defconfig
arm                          lpd270_defconfig
sh                                  defconfig
c6x                        evmc6678_defconfig
sh                           se7751_defconfig
arm                            lart_defconfig
mips                  maltasmvp_eva_defconfig
alpha                               defconfig
sh                              ul2_defconfig
powerpc                        cell_defconfig
m68k                          multi_defconfig
arm                         nhk8815_defconfig
powerpc                      chrp32_defconfig
arm                           corgi_defconfig
sh                           se7780_defconfig
sh                           se7206_defconfig
xtensa                    xip_kc705_defconfig
mips                          rb532_defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
x86_64               randconfig-a004-20200909
x86_64               randconfig-a006-20200909
x86_64               randconfig-a003-20200909
x86_64               randconfig-a001-20200909
x86_64               randconfig-a005-20200909
x86_64               randconfig-a002-20200909
x86_64               randconfig-a004-20200910
x86_64               randconfig-a006-20200910
x86_64               randconfig-a003-20200910
x86_64               randconfig-a002-20200910
x86_64               randconfig-a005-20200910
x86_64               randconfig-a001-20200910
i386                 randconfig-a004-20200909
i386                 randconfig-a005-20200909
i386                 randconfig-a006-20200909
i386                 randconfig-a002-20200909
i386                 randconfig-a001-20200909
i386                 randconfig-a003-20200909
i386                 randconfig-a004-20200910
i386                 randconfig-a006-20200910
i386                 randconfig-a001-20200910
i386                 randconfig-a003-20200910
i386                 randconfig-a002-20200910
i386                 randconfig-a005-20200910
i386                 randconfig-a016-20200909
i386                 randconfig-a015-20200909
i386                 randconfig-a011-20200909
i386                 randconfig-a013-20200909
i386                 randconfig-a014-20200909
i386                 randconfig-a012-20200909
i386                 randconfig-a015-20200910
i386                 randconfig-a014-20200910
i386                 randconfig-a011-20200910
i386                 randconfig-a013-20200910
i386                 randconfig-a016-20200910
i386                 randconfig-a012-20200910
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20200909
x86_64               randconfig-a016-20200909
x86_64               randconfig-a011-20200909
x86_64               randconfig-a012-20200909
x86_64               randconfig-a015-20200909
x86_64               randconfig-a014-20200909

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
