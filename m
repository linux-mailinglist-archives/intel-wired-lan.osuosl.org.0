Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C28AA33D8E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C1686F664;
	Tue, 16 Mar 2021 16:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eA_XFMPMGOnK; Tue, 16 Mar 2021 16:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BC266F60D;
	Tue, 16 Mar 2021 16:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7F4C1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C40D4431A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:15:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kvYZxWCc6qWj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5DD3431A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:15:33 +0000 (UTC)
IronPort-SDR: AxE3agK59fqAe+1UOmIaaAH8vpS1qQRduLpfyvPjm26upD3zMy7d1ALKnjeG9DMn0I+OExoXNM
 XqIIiipCFs3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="186910831"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="186910831"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:15:31 -0700
IronPort-SDR: EDnbqsjb1IlI5VuCPMlXo0HIx6qzAUmOP59zoFUAiUumwavzqtCWXTZfYYRSUNnEfnPqjp2Ufs
 mueCPByHDx8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="522547605"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 16 Mar 2021 09:15:29 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lMCLx-0000D5-3O; Tue, 16 Mar 2021 16:15:29 +0000
Date: Wed, 17 Mar 2021 00:14:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6050d964.f7QG0W71OUj9ea5m%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 3335369bad99c40b3513da2d165e6ae83f3f3c8b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 3335369bad99c40b3513da2d165e6ae83f3f3c8b  e1000e: Remove the runtime suspend restriction on CNP+

elapsed time: 725m

configs tested: 108
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
m68k                             alldefconfig
sh                          urquell_defconfig
powerpc                      obs600_defconfig
arm                         s3c6400_defconfig
arm                           u8500_defconfig
arm                          imote2_defconfig
sh                          rsk7269_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                       imx_v6_v7_defconfig
sh                             espt_defconfig
arm                         palmz72_defconfig
sh                           se7705_defconfig
h8300                       h8s-sim_defconfig
mips                        bcm47xx_defconfig
ia64                             alldefconfig
xtensa                           allyesconfig
powerpc                     mpc5200_defconfig
powerpc                     pq2fads_defconfig
arm                       netwinder_defconfig
arm                         orion5x_defconfig
openrisc                            defconfig
sh                   secureedge5410_defconfig
arm                             rpc_defconfig
arm                          exynos_defconfig
powerpc                     skiroot_defconfig
powerpc                      bamboo_defconfig
arm                         lubbock_defconfig
powerpc                     taishan_defconfig
arm                            mps2_defconfig
mips                  cavium_octeon_defconfig
powerpc                   lite5200b_defconfig
m68k                          sun3x_defconfig
powerpc                      acadia_defconfig
m68k                            mac_defconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210316
i386                 randconfig-a005-20210316
i386                 randconfig-a002-20210316
i386                 randconfig-a003-20210316
i386                 randconfig-a004-20210316
i386                 randconfig-a006-20210316
x86_64               randconfig-a011-20210316
x86_64               randconfig-a016-20210316
x86_64               randconfig-a013-20210316
x86_64               randconfig-a014-20210316
x86_64               randconfig-a015-20210316
x86_64               randconfig-a012-20210316
i386                 randconfig-a013-20210316
i386                 randconfig-a016-20210316
i386                 randconfig-a011-20210316
i386                 randconfig-a012-20210316
i386                 randconfig-a015-20210316
i386                 randconfig-a014-20210316
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210316
x86_64               randconfig-a001-20210316
x86_64               randconfig-a005-20210316
x86_64               randconfig-a004-20210316
x86_64               randconfig-a003-20210316
x86_64               randconfig-a002-20210316

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
