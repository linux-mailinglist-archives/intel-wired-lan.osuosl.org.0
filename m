Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 946132DD270
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 14:50:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5699A87587;
	Thu, 17 Dec 2020 13:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QI4q0vQ2ejBf; Thu, 17 Dec 2020 13:50:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C698987581;
	Thu, 17 Dec 2020 13:50:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37FDA1BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 13:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 305DE23265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 13:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1Pg3wD1m106 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 13:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id C22702046B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 13:50:38 +0000 (UTC)
IronPort-SDR: pz8bWSl73pZxndXu1hCX6LQCJVL0pOQO4qOa1ISsWH+yZcX73Gd1zdt9D84mZz80Z6zpSkTu6j
 bfU3lD+0Q1MA==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="259977210"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="259977210"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 05:50:38 -0800
IronPort-SDR: db+14+Kd7s+cx6Iak6S3h+7t+wJGh+M8PT2NAG3baQlDkYUkODHPoVMnPtZgyz5WSTI5G2liTE
 js/hviMWgnRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="369844383"
Received: from lkp-server02.sh.intel.com (HELO 070e1a605002) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 17 Dec 2020 05:50:37 -0800
Received: from kbuild by 070e1a605002 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kptfw-0001Dp-D0; Thu, 17 Dec 2020 13:50:36 +0000
Date: Thu, 17 Dec 2020 21:50:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fdb620d.G9NuHSLJ3MsE/W7S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 7eb000bdbe7c7da811ef51942b356f6e819b13ba
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git  master
branch HEAD: 7eb000bdbe7c7da811ef51942b356f6e819b13ba  net: korina: fix return value

elapsed time: 722m

configs tested: 115
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
c6x                                 defconfig
mips                        jmr3927_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
xtensa                  nommu_kc705_defconfig
ia64                             allmodconfig
powerpc                  mpc885_ads_defconfig
arm                         hackkit_defconfig
powerpc                     tqm5200_defconfig
arm                           h5000_defconfig
riscv                          rv32_defconfig
powerpc                 mpc836x_mds_defconfig
mips                         rt305x_defconfig
powerpc                     pq2fads_defconfig
sh                         apsh4a3a_defconfig
arm                        keystone_defconfig
arm                         mv78xx0_defconfig
arm                       multi_v4t_defconfig
h8300                     edosk2674_defconfig
sh                ecovec24-romimage_defconfig
ia64                        generic_defconfig
arc                         haps_hs_defconfig
powerpc                     tqm8548_defconfig
ia64                      gensparse_defconfig
sh                            hp6xx_defconfig
powerpc                        icon_defconfig
ia64                          tiger_defconfig
arc                           tb10x_defconfig
xtensa                       common_defconfig
arm                          pxa168_defconfig
mips                        nlm_xlp_defconfig
nios2                               defconfig
arm                          moxart_defconfig
mips                           rs90_defconfig
sh                            shmin_defconfig
ia64                            zx1_defconfig
sh                     sh7710voipgw_defconfig
powerpc                       maple_defconfig
arm                         s3c6400_defconfig
sh                          sdk7786_defconfig
powerpc                     ppa8548_defconfig
powerpc                      ppc44x_defconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20201217
x86_64               randconfig-a006-20201217
x86_64               randconfig-a002-20201217
x86_64               randconfig-a005-20201217
x86_64               randconfig-a004-20201217
x86_64               randconfig-a001-20201217
i386                 randconfig-a001-20201217
i386                 randconfig-a004-20201217
i386                 randconfig-a003-20201217
i386                 randconfig-a002-20201217
i386                 randconfig-a006-20201217
i386                 randconfig-a005-20201217
i386                 randconfig-a014-20201217
i386                 randconfig-a013-20201217
i386                 randconfig-a012-20201217
i386                 randconfig-a011-20201217
i386                 randconfig-a015-20201217
i386                 randconfig-a016-20201217
riscv                    nommu_virt_defconfig
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20201217
x86_64               randconfig-a012-20201217
x86_64               randconfig-a013-20201217
x86_64               randconfig-a015-20201217
x86_64               randconfig-a014-20201217
x86_64               randconfig-a011-20201217

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
