Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ADA464C27
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 11:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D5D160719;
	Wed,  1 Dec 2021 10:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Slj_iCs31Opd; Wed,  1 Dec 2021 10:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E1DF60683;
	Wed,  1 Dec 2021 10:54:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B39BD1BF296
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 10:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9839160653
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 10:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elhZ_rHWOrmH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 10:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFD366063B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 10:54:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="216451384"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="216451384"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="745097696"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2021 02:54:23 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1msNFn-000EmW-8C; Wed, 01 Dec 2021 10:54:23 +0000
Date: Wed, 01 Dec 2021 18:53:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61a75444.gcwuawwpH8Rfe5RE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 f51b5e2b5943d26387d2abb463bce2b4bd0a4a8d
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
branch HEAD: f51b5e2b5943d26387d2abb463bce2b4bd0a4a8d  igc: enable XDP metadata in driver

elapsed time: 959m

configs tested: 134
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211130
powerpc                    adder875_defconfig
sh                        edosk7760_defconfig
powerpc                       holly_defconfig
arm                      footbridge_defconfig
xtensa                  cadence_csp_defconfig
sh                          polaris_defconfig
powerpc                       maple_defconfig
sh                           se7722_defconfig
sh                            titan_defconfig
mips                    maltaup_xpa_defconfig
arm                  colibri_pxa270_defconfig
ia64                         bigsur_defconfig
powerpc                     stx_gp3_defconfig
mips                       lemote2f_defconfig
sh                          landisk_defconfig
arm                    vt8500_v6_v7_defconfig
mips                         rt305x_defconfig
m68k                        mvme16x_defconfig
arm                            xcep_defconfig
powerpc                      ppc6xx_defconfig
powerpc                        warp_defconfig
arm                       mainstone_defconfig
alpha                            alldefconfig
powerpc                 mpc8313_rdb_defconfig
mips                          rm200_defconfig
powerpc                     pq2fads_defconfig
arm                  randconfig-c002-20211129
arm                  randconfig-c002-20211128
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211201
x86_64               randconfig-a005-20211201
x86_64               randconfig-a001-20211201
x86_64               randconfig-a002-20211201
x86_64               randconfig-a004-20211201
x86_64               randconfig-a003-20211201
i386                 randconfig-a005-20211130
i386                 randconfig-a002-20211130
i386                 randconfig-a006-20211130
i386                 randconfig-a004-20211130
i386                 randconfig-a003-20211130
i386                 randconfig-a001-20211130
x86_64               randconfig-a011-20211128
x86_64               randconfig-a014-20211128
x86_64               randconfig-a012-20211128
x86_64               randconfig-a016-20211128
x86_64               randconfig-a013-20211128
x86_64               randconfig-a015-20211128
i386                 randconfig-a015-20211128
i386                 randconfig-a016-20211128
i386                 randconfig-a013-20211128
i386                 randconfig-a012-20211128
i386                 randconfig-a014-20211128
i386                 randconfig-a011-20211128
arc                  randconfig-r043-20211128
s390                 randconfig-r044-20211128
riscv                randconfig-r042-20211128
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20211128
x86_64               randconfig-a006-20211128
x86_64               randconfig-a003-20211128
x86_64               randconfig-a005-20211128
x86_64               randconfig-a004-20211128
x86_64               randconfig-a002-20211128
i386                 randconfig-a001-20211128
i386                 randconfig-a002-20211128
i386                 randconfig-a003-20211128
i386                 randconfig-a005-20211128
i386                 randconfig-a006-20211128
i386                 randconfig-a004-20211128
i386                 randconfig-a011-20211130
i386                 randconfig-a015-20211130
i386                 randconfig-a012-20211130
i386                 randconfig-a013-20211130
i386                 randconfig-a014-20211130
i386                 randconfig-a016-20211130
hexagon              randconfig-r045-20211129
hexagon              randconfig-r041-20211129
s390                 randconfig-r044-20211129
riscv                randconfig-r042-20211129
hexagon              randconfig-r045-20211128
hexagon              randconfig-r041-20211128

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
