Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A16652DE001
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 09:40:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57CF487854;
	Fri, 18 Dec 2020 08:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6-iVCUZHkWQ; Fri, 18 Dec 2020 08:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2123E87827;
	Fri, 18 Dec 2020 08:40:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0C451BF390
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 08:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 795162E10C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 08:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gc52qfBTZjOo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 08:40:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id F22FD2E103
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 08:40:04 +0000 (UTC)
IronPort-SDR: me4LqZ42rvyDOFG9djQBdKBF2mba9oZPmeqlS57MnDm3JuIj5owiqZAlKnw0bivRTSZ48Hitdi
 Mz4GSNRfwS4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="174631162"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="174631162"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 00:40:02 -0800
IronPort-SDR: kQhtueTlSRXA2ToIwIWpvVGUqgOlsoUt7zFTC1hBXOj3rA3Xw8DrFJJtXT7903W5uLk8rwjz3A
 QSmvBzhP3wRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="413894416"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 18 Dec 2020 00:40:00 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kqBIt-00007t-W9; Fri, 18 Dec 2020 08:39:59 +0000
Date: Fri, 18 Dec 2020 16:39:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fdc6ab4./1hqhTgdaDcRUBvC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 caf5876592122a2a31a309e5d3679a18deca8822
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  dev-queue
branch HEAD: caf5876592122a2a31a309e5d3679a18deca8822  i40e, xsk: Simplify the do-while allocation loop

elapsed time: 724m

configs tested: 117
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm                         cm_x300_defconfig
powerpc                      pasemi_defconfig
powerpc                      mgcoge_defconfig
powerpc                     rainier_defconfig
s390                       zfcpdump_defconfig
riscv                    nommu_k210_defconfig
c6x                         dsk6455_defconfig
arm                            mps2_defconfig
powerpc                         ps3_defconfig
mips                malta_kvm_guest_defconfig
mips                  cavium_octeon_defconfig
mips                      bmips_stb_defconfig
mips                       capcella_defconfig
openrisc                         alldefconfig
powerpc                      ppc64e_defconfig
arm                          imote2_defconfig
m68k                          hp300_defconfig
powerpc                    amigaone_defconfig
sh                          rsk7269_defconfig
h8300                               defconfig
arm                      jornada720_defconfig
powerpc                           allnoconfig
xtensa                generic_kc705_defconfig
powerpc                    mvme5100_defconfig
powerpc                 mpc832x_mds_defconfig
arm                         lubbock_defconfig
ia64                      gensparse_defconfig
sh                            migor_defconfig
powerpc                     tqm8541_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                      ppc6xx_defconfig
xtensa                           alldefconfig
mips                      malta_kvm_defconfig
mips                           jazz_defconfig
xtensa                    smp_lx200_defconfig
mips                          ath25_defconfig
ia64                            zx1_defconfig
h8300                       h8s-sim_defconfig
powerpc                      bamboo_defconfig
arm                        mvebu_v7_defconfig
powerpc                     ksi8560_defconfig
ia64                             alldefconfig
sh                     magicpanelr2_defconfig
ia64                             allmodconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
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
