Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09262B2BB0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Nov 2020 06:57:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3080B879C2;
	Sat, 14 Nov 2020 05:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LVD+WprVnMnK; Sat, 14 Nov 2020 05:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B374879BB;
	Sat, 14 Nov 2020 05:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E46021BF82B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 05:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E16828762F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 05:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FbKZUlJt-vXI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Nov 2020 05:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F4FB8762B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 05:57:10 +0000 (UTC)
IronPort-SDR: VxVgIbPE3IQZJx2H798aCKoeGbKi3QHeIQS8rpe8upiUKP9klFsUBx3wkgb1DPgMmN4vMxw2iw
 zBwVnJkc44UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="170733822"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="170733822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 21:57:08 -0800
IronPort-SDR: MZ8xV7/pqSrLN0BFwTbIl346NLtVf/SZoucrFod4lPAIp4raXNGAuXsfL0p9CDCUnEwYpc2yiH
 aVTuoTfD7gNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="367155480"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2020 21:57:07 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kdoYd-0000hW-7C; Sat, 14 Nov 2020 05:57:07 +0000
Date: Sat, 14 Nov 2020 13:56:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5faf71a5.K6RCn/UjXu1jXkPO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 04bbddb5ef0c4c6033434b44000d9f6618dab5f3
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
branch HEAD: 04bbddb5ef0c4c6033434b44000d9f6618dab5f3  ice: display stored UNDI firmware version via devlink info

elapsed time: 721m

configs tested: 118
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     sequoia_defconfig
powerpc                       eiger_defconfig
arm                        neponset_defconfig
powerpc                     kmeter1_defconfig
nios2                            alldefconfig
sh                          rsk7203_defconfig
m68k                            q40_defconfig
sh                             shx3_defconfig
openrisc                    or1ksim_defconfig
mips                         rt305x_defconfig
powerpc                   bluestone_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                      pxa255-idp_defconfig
powerpc                     tqm8560_defconfig
sh                   sh7724_generic_defconfig
alpha                            alldefconfig
arm                         s3c6400_defconfig
arm                         vf610m4_defconfig
arm                      integrator_defconfig
sh                         ecovec24_defconfig
nds32                            alldefconfig
arm                       aspeed_g4_defconfig
arm                         assabet_defconfig
um                            kunit_defconfig
xtensa                         virt_defconfig
arm                        shmobile_defconfig
powerpc64                           defconfig
arm                           sama5_defconfig
mips                           ip32_defconfig
riscv                               defconfig
sh                          kfr2r09_defconfig
mips                     loongson1c_defconfig
arm                   milbeaut_m10v_defconfig
arm                           spitz_defconfig
mips                         tb0226_defconfig
m68k                        m5272c3_defconfig
ia64                          tiger_defconfig
arm                            xcep_defconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201113
i386                 randconfig-a005-20201113
i386                 randconfig-a002-20201113
i386                 randconfig-a001-20201113
i386                 randconfig-a003-20201113
i386                 randconfig-a004-20201113
x86_64               randconfig-a015-20201113
x86_64               randconfig-a011-20201113
x86_64               randconfig-a014-20201113
x86_64               randconfig-a013-20201113
x86_64               randconfig-a016-20201113
x86_64               randconfig-a012-20201113
i386                 randconfig-a012-20201113
i386                 randconfig-a014-20201113
i386                 randconfig-a016-20201113
i386                 randconfig-a011-20201113
i386                 randconfig-a015-20201113
i386                 randconfig-a013-20201113
x86_64               randconfig-a003-20201114
x86_64               randconfig-a005-20201114
x86_64               randconfig-a004-20201114
x86_64               randconfig-a002-20201114
x86_64               randconfig-a001-20201114
x86_64               randconfig-a006-20201114
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20201113
x86_64               randconfig-a005-20201113
x86_64               randconfig-a004-20201113
x86_64               randconfig-a002-20201113
x86_64               randconfig-a006-20201113
x86_64               randconfig-a001-20201113

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
