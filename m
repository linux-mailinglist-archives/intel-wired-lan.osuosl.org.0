Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A38FC494A3E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jan 2022 10:02:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F38954098C;
	Thu, 20 Jan 2022 09:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qy-W3eeYYg59; Thu, 20 Jan 2022 09:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5F4E40282;
	Thu, 20 Jan 2022 09:02:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0F6D1BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 09:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A71560AC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 09:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7L4L1MxL8UZ4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jan 2022 09:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB05660A7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 09:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642669316; x=1674205316;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BU/r1o42DVv88DoJkCG8rkGHB6ys+JilXXJcAVFlVms=;
 b=Pi9EJ+LKT9eHoF5Qa7P4SWtZPhm0WUdQj+F5VbivnGwLfjzD2kLpqOVP
 ipg6BUO4ZOab8SQr494Cf/ox6rudC/bkjzJTq0AG8DAyCXiUtUQsTdrUB
 9LHbFJQcGrPZi3iQID0UPwwtCymRzb5iSm1aHJpPurOImnA50opOk/KJG
 6Ja53wXbULiMHezj2QtCWC2gzIM3kjOqVX+vlAkRKqd0ruUfIYKvV5zSk
 cs5CUs8GkU7qS1SZVdA7jahZZQvYDzKZnlZIvYp30KhsHfWRRTIldI6Tb
 H5RHP8OvWqx+H18ItKEYpji8r0mlLnO29CAKDWggvrsr7n4Z7QiCefDBf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245503801"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245503801"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 01:01:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="694126438"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2022 01:01:54 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nATKM-000EA7-3G; Thu, 20 Jan 2022 09:01:54 +0000
Date: Thu, 20 Jan 2022 17:01:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61e924d2.gHaWP0fSuR+BZTGA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD REGRESSION
 91191ec316c30812ab1d0adc51fe28091c9470d6
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
branch HEAD: 91191ec316c30812ab1d0adc51fe28091c9470d6  ice: Fix KASAN error in LAG NETDEV_UNREGISTER handler

possible Error/Warning in current branch (please contact us if interested):

aarch64-linux-ld: Unexpected GOT/PLT entries detected!
aarch64-linux-ld: Unexpected run-time procedure linkages detected!

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-randconfig-r022-20220117
|   |-- aarch64-linux-ld:Unexpected-GOT-PLT-entries-detected
|   `-- aarch64-linux-ld:Unexpected-run-time-procedure-linkages-detected
|-- arm64-randconfig-r033-20220120
|   |-- aarch64-linux-ld:Unexpected-GOT-PLT-entries-detected
|   `-- aarch64-linux-ld:Unexpected-run-time-procedure-linkages-detected
`-- arm64-randconfig-r035-20220118
    |-- aarch64-linux-ld:Unexpected-GOT-PLT-entries-detected
    `-- aarch64-linux-ld:Unexpected-run-time-procedure-linkages-detected

elapsed time: 725m

configs tested: 122
configs skipped: 4

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
arc                         haps_hs_defconfig
arm                           sunxi_defconfig
powerpc                        warp_defconfig
powerpc                 linkstation_defconfig
powerpc                     tqm8548_defconfig
um                               alldefconfig
sh                          sdk7780_defconfig
powerpc                     sequoia_defconfig
xtensa                  nommu_kc705_defconfig
arm                            lart_defconfig
arc                        vdk_hs38_defconfig
powerpc                    klondike_defconfig
csky                             alldefconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
xtensa                           allyesconfig
mips                           ip32_defconfig
arm                      integrator_defconfig
openrisc                 simple_smp_defconfig
arm                            xcep_defconfig
sh                   rts7751r2dplus_defconfig
sh                         microdev_defconfig
x86_64                           alldefconfig
mips                       capcella_defconfig
s390                                defconfig
arc                     haps_hs_smp_defconfig
arc                        nsimosci_defconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220119
arm                  randconfig-c002-20220120
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
s390                             allmodconfig
parisc                           allyesconfig
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
x86_64               randconfig-a016-20220117
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
i386                 randconfig-a012-20220117
i386                 randconfig-a016-20220117
i386                 randconfig-a014-20220117
i386                 randconfig-a015-20220117
i386                 randconfig-a011-20220117
i386                 randconfig-a013-20220117
arc                  randconfig-r043-20220120
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
powerpc                     powernv_defconfig
mips                     cu1000-neo_defconfig
powerpc                     ksi8560_defconfig
powerpc                  mpc885_ads_defconfig
mips                           ip22_defconfig
mips                malta_qemu_32r6_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20220120
hexagon              randconfig-r045-20220120
hexagon              randconfig-r041-20220120
s390                 randconfig-r044-20220120

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
