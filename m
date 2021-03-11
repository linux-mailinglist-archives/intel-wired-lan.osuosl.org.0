Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D05336B48
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 06:00:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06EDF6067C;
	Thu, 11 Mar 2021 05:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTmhmiR745fx; Thu, 11 Mar 2021 05:00:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4B3F60666;
	Thu, 11 Mar 2021 05:00:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10AEB1BF406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 05:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F314C4B23B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 05:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5ln-ZkRg95d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 05:00:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC14E4B058
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 05:00:15 +0000 (UTC)
IronPort-SDR: BLOoj5olNVgVEqRTJwFDOAmrYElvl2qL1G2k8YRb7yUiplE1n78Gq9O7CjeKH0wzBLw4+nNOTb
 tGWCz/5SoHnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="208427519"
X-IronPort-AV: E=Sophos;i="5.81,239,1610438400"; d="scan'208";a="208427519"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 21:00:15 -0800
IronPort-SDR: zB3gqJszR3dQKc4ReOx0zRch8RZ2Bk0eZKk6zr+CXeqP/E1iokue2YO/cJQY5BbEVxkoNrDS11
 wgsK+hgv0JKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,239,1610438400"; d="scan'208";a="431469354"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 10 Mar 2021 21:00:14 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lKDQi-0000aG-V1; Thu, 11 Mar 2021 05:00:12 +0000
Date: Thu, 11 Mar 2021 12:59:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6049a3a8.O/na7X3nWrQM1B/b%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 25fd5bafb1d0095622c5a4988c96ebbd424f674d
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
branch HEAD: 25fd5bafb1d0095622c5a4988c96ebbd424f674d  ixgbe: Fix NULL pointer dereference in ethtool loopback test

elapsed time: 720m

configs tested: 139
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
h8300                       h8s-sim_defconfig
arm                         cm_x300_defconfig
m68k                             alldefconfig
sh                          rsk7264_defconfig
sh                         microdev_defconfig
arm                       imx_v4_v5_defconfig
csky                                defconfig
arm                         s5pv210_defconfig
arm                           h5000_defconfig
ia64                         bigsur_defconfig
powerpc                    sam440ep_defconfig
powerpc                     akebono_defconfig
mips                        jmr3927_defconfig
mips                        nlm_xlp_defconfig
powerpc                 mpc836x_rdk_defconfig
sh                        apsh4ad0a_defconfig
arm                        keystone_defconfig
xtensa                  cadence_csp_defconfig
sh                        edosk7705_defconfig
arm                          moxart_defconfig
arm                           tegra_defconfig
sh                              ul2_defconfig
arm                        multi_v7_defconfig
powerpc                 mpc8540_ads_defconfig
arc                         haps_hs_defconfig
sh                           se7712_defconfig
x86_64                              defconfig
powerpc                     skiroot_defconfig
xtensa                generic_kc705_defconfig
mips                  maltasmvp_eva_defconfig
s390                             allmodconfig
powerpc                       eiger_defconfig
powerpc                      ep88xc_defconfig
mips                           jazz_defconfig
powerpc                  storcenter_defconfig
arm                       versatile_defconfig
mips                        bcm47xx_defconfig
powerpc                      pmac32_defconfig
s390                       zfcpdump_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                      mgcoge_defconfig
sh                            shmin_defconfig
mips                   sb1250_swarm_defconfig
powerpc                      cm5200_defconfig
arm                        mvebu_v7_defconfig
ia64                            zx1_defconfig
powerpc                        cell_defconfig
sh                          lboxre2_defconfig
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
x86_64               randconfig-a006-20210308
x86_64               randconfig-a001-20210308
x86_64               randconfig-a004-20210308
x86_64               randconfig-a002-20210308
x86_64               randconfig-a005-20210308
x86_64               randconfig-a003-20210308
i386                 randconfig-a005-20210309
i386                 randconfig-a003-20210309
i386                 randconfig-a002-20210309
i386                 randconfig-a006-20210309
i386                 randconfig-a004-20210309
i386                 randconfig-a001-20210309
i386                 randconfig-a005-20210308
i386                 randconfig-a003-20210308
i386                 randconfig-a002-20210308
i386                 randconfig-a006-20210308
i386                 randconfig-a004-20210308
i386                 randconfig-a001-20210308
x86_64               randconfig-a013-20210309
x86_64               randconfig-a016-20210309
x86_64               randconfig-a015-20210309
x86_64               randconfig-a014-20210309
x86_64               randconfig-a011-20210309
x86_64               randconfig-a012-20210309
x86_64               randconfig-a011-20210310
x86_64               randconfig-a016-20210310
x86_64               randconfig-a013-20210310
x86_64               randconfig-a015-20210310
x86_64               randconfig-a014-20210310
x86_64               randconfig-a012-20210310
i386                 randconfig-a016-20210309
i386                 randconfig-a012-20210309
i386                 randconfig-a014-20210309
i386                 randconfig-a013-20210309
i386                 randconfig-a011-20210309
i386                 randconfig-a015-20210309
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210309
x86_64               randconfig-a001-20210309
x86_64               randconfig-a004-20210309
x86_64               randconfig-a002-20210309
x86_64               randconfig-a005-20210309
x86_64               randconfig-a003-20210309

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
