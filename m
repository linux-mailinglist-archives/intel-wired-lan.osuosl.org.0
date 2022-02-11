Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 120BF4B257B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 13:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D878840438;
	Fri, 11 Feb 2022 12:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C_ZpMkNLM9WH; Fri, 11 Feb 2022 12:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1CA7403D8;
	Fri, 11 Feb 2022 12:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C901D1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 12:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C46134035F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 12:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrhZScTdo-dA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 12:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80792401F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 12:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644581931; x=1676117931;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=E3lEJT1dUbJetoHwP+G5PKbSmTnNdpMEgq8tyEoiH7I=;
 b=MkUj+Ng3mH8E00p/+0bPVVAPfcuDOgM5JIYtXUTNpzK+s5bHwciB7UNV
 qHddf2gGdoqv2KBLGbZPEMkaN0NBIHUsadLO0gq1CVvphOgIk1QXwKuwM
 v/hY8/DOSKgJwfeep6wJNyInlL/cmrRFeWKstQh39B/OZPCVdNe9jFDKp
 O1WRO2GBi8bHksz2SIXiILFlJSCbDN38Xc1R0A4Esl9KRDVsOnD0mHyJ7
 dHIewDTnYV52shlZ1ddOaExu9Bylh7pMhepLefQEkxrJngup9YLRXvdxB
 QTFDv4OgjPqGAyrBXlX/i/2Usvz8p8Jb42p/ko+a/5yVmWkhU2rQ3rgaO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="230363931"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="230363931"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 04:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="702099163"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 11 Feb 2022 04:18:49 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIUsy-0004Yk-JE; Fri, 11 Feb 2022 12:18:48 +0000
Date: Fri, 11 Feb 2022 20:18:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6206541f.5KE2OdvHJH7KS9Oq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 51a04ebf21122d5c76a716ecd9bfc33ea44b2b39
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 51a04ebf21122d5c76a716ecd9bfc33ea44b2b39  net: dsa: mv88e6xxx: fix use-after-free in mv88e6xxx_mdios_unregister

elapsed time: 731m

configs tested: 140
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
arc                           tb10x_defconfig
mips                       bmips_be_defconfig
ia64                         bigsur_defconfig
powerpc                 mpc834x_mds_defconfig
m68k                             allyesconfig
arm                       aspeed_g5_defconfig
mips                        jmr3927_defconfig
mips                  decstation_64_defconfig
openrisc                            defconfig
mips                 decstation_r4k_defconfig
m68k                          multi_defconfig
powerpc                     ep8248e_defconfig
arc                            hsdk_defconfig
m68k                         amcore_defconfig
mips                        vocore2_defconfig
nios2                            alldefconfig
powerpc                      pasemi_defconfig
sh                        sh7785lcr_defconfig
sh                          lboxre2_defconfig
sparc64                          alldefconfig
powerpc                     mpc83xx_defconfig
m68k                           sun3_defconfig
sh                         ecovec24_defconfig
arm                        shmobile_defconfig
arm                        mini2440_defconfig
mips                           ip32_defconfig
arm                          simpad_defconfig
xtensa                          iss_defconfig
openrisc                 simple_smp_defconfig
powerpc                         ps3_defconfig
powerpc                      ep88xc_defconfig
h8300                    h8300h-sim_defconfig
arm                         at91_dt_defconfig
mips                  maltasmvp_eva_defconfig
arm                           stm32_defconfig
sh                           se7343_defconfig
arm                     eseries_pxa_defconfig
alpha                            alldefconfig
mips                            gpr_defconfig
riscv                    nommu_k210_defconfig
h8300                     edosk2674_defconfig
parisc                              defconfig
parisc                           alldefconfig
m68k                          amiga_defconfig
powerpc                      makalu_defconfig
openrisc                         alldefconfig
sh                           se7724_defconfig
mips                     loongson1b_defconfig
m68k                       m5275evb_defconfig
arm                  randconfig-c002-20220211
arm                  randconfig-c002-20220210
arm                  randconfig-c002-20220209
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
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
riscv                randconfig-c006-20220211
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220211
arm                  randconfig-c002-20220211
i386                          randconfig-c001
mips                 randconfig-c004-20220211
powerpc                          allyesconfig
mips                          malta_defconfig
riscv                          rv32_defconfig
arm                        mvebu_v5_defconfig
powerpc                      katmai_defconfig
powerpc                     mpc5200_defconfig
powerpc                     akebono_defconfig
mips                         tb0219_defconfig
arm                         lpc32xx_defconfig
arm                          pxa168_defconfig
powerpc                        icon_defconfig
powerpc                   bluestone_defconfig
mips                      pic32mzda_defconfig
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
hexagon              randconfig-r045-20220211
hexagon              randconfig-r041-20220211
riscv                randconfig-r042-20220211

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
