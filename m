Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2632339B9B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 04:45:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0067F8439B;
	Sat, 13 Mar 2021 03:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FKMniqi1_gS; Sat, 13 Mar 2021 03:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2FD684390;
	Sat, 13 Mar 2021 03:45:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 894441BF37E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 03:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 754FF84390
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 03:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqQtFXeiYb4Y for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 03:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64A0684388
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 03:45:34 +0000 (UTC)
IronPort-SDR: 8RCgigCeYF6GkjccYw+b/HqSCVIktHGs8s/svyjUVl8Ta7BKE90Qrvv4ZNHCscdeclH9Z3Rd0p
 7Il+RoqxOcmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="176505958"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="176505958"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 19:45:32 -0800
IronPort-SDR: j/FKV+3GbfWrRGtYVT4MpQeHiuxbNgVhzCY7cPi8Dppb7dSgme8c8dIXKTIgK7qX/L9gA+YBag
 c6Pv7OcNI2vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="521620252"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 12 Mar 2021 19:45:31 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lKvDX-0001nD-6T; Sat, 13 Mar 2021 03:45:31 +0000
Date: Sat, 13 Mar 2021 11:44:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <604c353b.YTgOn/uYBkHwiQhg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1a17827161aa91f9cadf96b76c98dcae051d1bf2
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
branch HEAD: 1a17827161aa91f9cadf96b76c98dcae051d1bf2  ixgbe: Fix NULL pointer dereference in ethtool loopback test

elapsed time: 721m

configs tested: 149
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
h8300                       h8s-sim_defconfig
arm                       imx_v4_v5_defconfig
powerpc                     tqm8541_defconfig
m68k                       m5475evb_defconfig
powerpc64                        alldefconfig
arm                         s3c2410_defconfig
powerpc                     mpc512x_defconfig
openrisc                 simple_smp_defconfig
mips                        nlm_xlp_defconfig
mips                   sb1250_swarm_defconfig
arm                             pxa_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                     pseries_defconfig
arm                        mini2440_defconfig
arm                        keystone_defconfig
sh                           se7780_defconfig
sh                   sh7724_generic_defconfig
sh                         microdev_defconfig
parisc                generic-64bit_defconfig
arm                       cns3420vb_defconfig
powerpc                      bamboo_defconfig
sh                          lboxre2_defconfig
h8300                     edosk2674_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          r7785rp_defconfig
arm                          iop32x_defconfig
arm                          badge4_defconfig
sh                         ap325rxa_defconfig
powerpc                      pcm030_defconfig
arm                          ep93xx_defconfig
mips                            gpr_defconfig
arm                          pxa168_defconfig
mips                           ip22_defconfig
sh                                  defconfig
powerpc64                           defconfig
arm                             mxs_defconfig
xtensa                          iss_defconfig
sh                            hp6xx_defconfig
sh                     sh7710voipgw_defconfig
xtensa                         virt_defconfig
m68k                        m5407c3_defconfig
csky                             alldefconfig
sh                           sh2007_defconfig
powerpc                         ps3_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                            ar7_defconfig
arc                            hsdk_defconfig
arm                       multi_v4t_defconfig
sh                        sh7757lcr_defconfig
arm                         s3c6400_defconfig
arm                      footbridge_defconfig
h8300                    h8300h-sim_defconfig
m68k                          hp300_defconfig
powerpc                 linkstation_defconfig
powerpc                      walnut_defconfig
mips                           gcw0_defconfig
m68k                             alldefconfig
sh                             espt_defconfig
powerpc                       eiger_defconfig
arm                          simpad_defconfig
xtensa                  cadence_csp_defconfig
sh                           se7705_defconfig
powerpc                 mpc836x_mds_defconfig
mips                  maltasmvp_eva_defconfig
mips                           jazz_defconfig
powerpc                      ppc44x_defconfig
s390                          debug_defconfig
sh                           se7751_defconfig
sparc                       sparc64_defconfig
powerpc                     mpc83xx_defconfig
mips                         tb0226_defconfig
arm                         nhk8815_defconfig
mips                     cu1830-neo_defconfig
sh                        edosk7705_defconfig
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
parisc                           allyesconfig
s390                                defconfig
s390                             allmodconfig
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
i386                 randconfig-a001-20210312
i386                 randconfig-a005-20210312
i386                 randconfig-a002-20210312
i386                 randconfig-a003-20210312
i386                 randconfig-a004-20210312
i386                 randconfig-a006-20210312
x86_64               randconfig-a011-20210312
x86_64               randconfig-a016-20210312
x86_64               randconfig-a013-20210312
x86_64               randconfig-a014-20210312
x86_64               randconfig-a015-20210312
x86_64               randconfig-a012-20210312
i386                 randconfig-a013-20210312
i386                 randconfig-a016-20210312
i386                 randconfig-a011-20210312
i386                 randconfig-a015-20210312
i386                 randconfig-a014-20210312
i386                 randconfig-a012-20210312
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210312
x86_64               randconfig-a001-20210312
x86_64               randconfig-a005-20210312
x86_64               randconfig-a003-20210312
x86_64               randconfig-a002-20210312
x86_64               randconfig-a004-20210312

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
