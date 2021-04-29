Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 858B936E3E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Apr 2021 06:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85325419D2;
	Thu, 29 Apr 2021 04:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UQfGWdjinvZO; Thu, 29 Apr 2021 04:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43198419B0;
	Thu, 29 Apr 2021 04:00:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8621BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 04:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78E064065F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 04:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1WYnlQywJyL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Apr 2021 04:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89B5840111
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 04:00:52 +0000 (UTC)
IronPort-SDR: Q+AD5k817/MbEHawIIuSrZfvpEkUO64U4Nvls8uM54cQi6BMzP6lX2Kllv2FxTIt2g9Br2eDFD
 wGG6dgtbgj+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="176395547"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="176395547"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 21:00:50 -0700
IronPort-SDR: VegT69WzjrgqBkOjX2EN02x2EIetkiDvqC/INLIx5bTcFmqV6ana0S3/mA7n8g4NnnC4akxLQO
 l/SsBkKw98nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="393724022"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Apr 2021 21:00:49 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lbxr7-0007TC-2o; Thu, 29 Apr 2021 04:00:49 +0000
Date: Thu, 29 Apr 2021 12:00:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <608a2f46.D0pwbOEqE2Or1Mag%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0d20bffdab2ac8d7fa2dac91ea77846c6d198919
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0d20bffdab2ac8d7fa2dac91ea77846c6d198919  ice: Enable configuration of number of qps per VF via devlink

elapsed time: 720m

configs tested: 129
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
i386                             allyesconfig
riscv                            allyesconfig
arm                         bcm2835_defconfig
mips                            ar7_defconfig
powerpc                  storcenter_defconfig
arm                        keystone_defconfig
sh                            shmin_defconfig
mips                          ath25_defconfig
s390                          debug_defconfig
sh                         ap325rxa_defconfig
mips                        qi_lb60_defconfig
m68k                             alldefconfig
arm                       mainstone_defconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
mips                           ci20_defconfig
mips                         rt305x_defconfig
xtensa                generic_kc705_defconfig
arm                        cerfcube_defconfig
sh                        edosk7705_defconfig
arm                         shannon_defconfig
arc                          axs101_defconfig
sh                           se7750_defconfig
arc                                 defconfig
mips                        bcm47xx_defconfig
powerpc                     ksi8560_defconfig
arm                        mini2440_defconfig
arm                          iop32x_defconfig
mips                  decstation_64_defconfig
arm                            qcom_defconfig
sh                               j2_defconfig
xtensa                          iss_defconfig
mips                         tb0287_defconfig
mips                     cu1830-neo_defconfig
powerpc                   bluestone_defconfig
arm                        clps711x_defconfig
arm                             rpc_defconfig
powerpc                      ppc44x_defconfig
sh                          rsk7201_defconfig
arm                       omap2plus_defconfig
i386                             alldefconfig
m68k                         apollo_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                      bamboo_defconfig
powerpc                      makalu_defconfig
powerpc                      obs600_defconfig
arc                         haps_hs_defconfig
m68k                          sun3x_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                           ip22_defconfig
arm                    vt8500_v6_v7_defconfig
sh                         microdev_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                         nhk8815_defconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210428
i386                 randconfig-a002-20210428
i386                 randconfig-a001-20210428
i386                 randconfig-a006-20210428
i386                 randconfig-a003-20210428
i386                 randconfig-a004-20210428
x86_64               randconfig-a015-20210428
x86_64               randconfig-a016-20210428
x86_64               randconfig-a011-20210428
x86_64               randconfig-a014-20210428
x86_64               randconfig-a013-20210428
x86_64               randconfig-a012-20210428
i386                 randconfig-a012-20210428
i386                 randconfig-a014-20210428
i386                 randconfig-a013-20210428
i386                 randconfig-a011-20210428
i386                 randconfig-a015-20210428
i386                 randconfig-a016-20210428
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210428
x86_64               randconfig-a002-20210428
x86_64               randconfig-a005-20210428
x86_64               randconfig-a006-20210428
x86_64               randconfig-a001-20210428
x86_64               randconfig-a003-20210428

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
