Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C783DF084
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 16:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF4074034F;
	Tue,  3 Aug 2021 14:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DBLnmqUfUqQI; Tue,  3 Aug 2021 14:39:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97254401BD;
	Tue,  3 Aug 2021 14:39:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B54511BF35A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 14:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A38A460838
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 14:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJhhXTaNtFMM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 14:39:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DFDA6083A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 14:39:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="200894952"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="200894952"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 07:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="441204293"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2021 07:39:36 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mAvZw-000Dzw-23; Tue, 03 Aug 2021 14:39:36 +0000
Date: Tue, 03 Aug 2021 22:38:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <610954ee.TYACWlQeJ485Fx7E%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cf469a217f4da8ac54a5f0a1c19dbf26f64d8c34
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
branch HEAD: cf469a217f4da8ac54a5f0a1c19dbf26f64d8c34  ethernet/intel: fix PTP_1588_CLOCK dependencies

elapsed time: 720m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210803
parisc                              defconfig
ia64                                defconfig
x86_64                            allnoconfig
riscv                               defconfig
arm                         nhk8815_defconfig
arm                  colibri_pxa300_defconfig
arm                     davinci_all_defconfig
sh                           se7750_defconfig
sh                         apsh4a3a_defconfig
riscv                            allyesconfig
powerpc                     powernv_defconfig
mips                         bigsur_defconfig
openrisc                 simple_smp_defconfig
arm                        spear3xx_defconfig
arc                          axs103_defconfig
arm                       mainstone_defconfig
parisc                generic-64bit_defconfig
arm                        multi_v5_defconfig
arm                            mps2_defconfig
openrisc                    or1ksim_defconfig
mips                        bcm63xx_defconfig
powerpc                    socrates_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
sh                        sh7763rdp_defconfig
sh                          sdk7786_defconfig
sh                ecovec24-romimage_defconfig
mips                           rs90_defconfig
microblaze                          defconfig
powerpc                  iss476-smp_defconfig
arm                       imx_v6_v7_defconfig
powerpc                      bamboo_defconfig
arm                          ixp4xx_defconfig
powerpc                      ppc44x_defconfig
sh                                  defconfig
arm                          moxart_defconfig
sh                          kfr2r09_defconfig
arm                         palmz72_defconfig
ia64                             allmodconfig
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
s390                             allyesconfig
s390                             allmodconfig
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
x86_64               randconfig-a002-20210803
x86_64               randconfig-a004-20210803
x86_64               randconfig-a006-20210803
x86_64               randconfig-a003-20210803
x86_64               randconfig-a001-20210803
x86_64               randconfig-a005-20210803
i386                 randconfig-a004-20210802
i386                 randconfig-a005-20210802
i386                 randconfig-a002-20210802
i386                 randconfig-a006-20210802
i386                 randconfig-a001-20210802
i386                 randconfig-a003-20210802
i386                 randconfig-a004-20210803
i386                 randconfig-a005-20210803
i386                 randconfig-a002-20210803
i386                 randconfig-a006-20210803
i386                 randconfig-a001-20210803
i386                 randconfig-a003-20210803
i386                 randconfig-a012-20210803
i386                 randconfig-a011-20210803
i386                 randconfig-a015-20210803
i386                 randconfig-a013-20210803
i386                 randconfig-a014-20210803
i386                 randconfig-a016-20210803
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210803
x86_64               randconfig-c001-20210802
x86_64               randconfig-a012-20210803
x86_64               randconfig-a016-20210803
x86_64               randconfig-a013-20210803
x86_64               randconfig-a011-20210803
x86_64               randconfig-a014-20210803
x86_64               randconfig-a015-20210803

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
