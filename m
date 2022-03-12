Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6684D6DAC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Mar 2022 09:45:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 945B660BCC;
	Sat, 12 Mar 2022 08:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KwUw6xVm721V; Sat, 12 Mar 2022 08:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C50060B58;
	Sat, 12 Mar 2022 08:45:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46F9E1BF359
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Mar 2022 08:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42A9640918
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Mar 2022 08:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qcrvqQIyHcDB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Mar 2022 08:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE08140904
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Mar 2022 08:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647074727; x=1678610727;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZobUQw6TmScJZn+3LxW5+erLbRh5W3R75jYh4AVFKhQ=;
 b=Fbmuw6FMlf/j1Hbq1t64b0lwUJYDGSNVrLxSTVnMadjlg3CUnZydKx44
 8K1gankfDYoN220BSAgghwVM97qFYyDMe98xTeBsZATocnbzYkK1/80Gb
 N152ht+O/mE+ewtCEcyH6/L0bztG6tO14ywyzABdRY+h3bHxomoNek7tU
 Fi1YrND7bzGIy1yb1926O7Z+pFRZkR0O0czJmQC6/xLSPY4cI2SsK5HXJ
 Pj+ENz7vt8nNzOXzBjJTcB9mUrJMMxZKXseZ75dOMOKa44F2o9opRa9AR
 qkdNOOLEZrrxgDCNuAqap+2n17dD7exb6yvwmuz85DXHGB/r5JsKVUUcY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="253339033"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="253339033"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2022 00:45:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="514826504"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 12 Mar 2022 00:45:25 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSxNM-0007iy-Ld; Sat, 12 Mar 2022 08:45:24 +0000
Date: Sat, 12 Mar 2022 16:44:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622c5d66.Nl2E9LwtZr48luLi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 a075367b3cee3005455587230f535d04d17c3934
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: a075367b3cee3005455587230f535d04d17c3934  ice: Add inline flow director support for channels

elapsed time: 1774m

configs tested: 125
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
x86_64                              defconfig
arm                            zeus_defconfig
i386                             alldefconfig
mips                        vocore2_defconfig
m68k                       m5208evb_defconfig
sh                          rsk7203_defconfig
sh                            shmin_defconfig
xtensa                         virt_defconfig
mips                       capcella_defconfig
mips                      maltasmvp_defconfig
alpha                            alldefconfig
arm                       imx_v6_v7_defconfig
ia64                      gensparse_defconfig
m68k                       bvme6000_defconfig
powerpc                         ps3_defconfig
m68k                        m5407c3_defconfig
xtensa                           alldefconfig
arm                      integrator_defconfig
h8300                       h8s-sim_defconfig
powerpc                      bamboo_defconfig
arm                         vf610m4_defconfig
mips                         db1xxx_defconfig
powerpc                      ep88xc_defconfig
sh                            hp6xx_defconfig
powerpc                   motionpro_defconfig
h8300                     edosk2674_defconfig
arm                           stm32_defconfig
mips                 decstation_r4k_defconfig
sh                        sh7757lcr_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220310
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                          g5_defconfig
arm                             mxs_defconfig
arm                      tct_hammer_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                    ge_imp3a_defconfig
mips                        qi_lb60_defconfig
arm                     am200epdkit_defconfig
arm                            dove_defconfig
powerpc                 mpc836x_mds_defconfig
arm                          ixp4xx_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                     cu1830-neo_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220310
hexagon              randconfig-r041-20220310
riscv                randconfig-r042-20220310
s390                 randconfig-r044-20220310

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
