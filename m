Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BADC2496BC6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jan 2022 11:49:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAEAB60AB1;
	Sat, 22 Jan 2022 10:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JiAEjeLxodZC; Sat, 22 Jan 2022 10:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D577C606C0;
	Sat, 22 Jan 2022 10:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56D291BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jan 2022 10:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51AF7606C0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jan 2022 10:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsxjYqjIHOCe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jan 2022 10:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D5F5605DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jan 2022 10:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642848577; x=1674384577;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xrJT7u++8EtXzCXjqFu9YAejvHZbpzhXMif+ScicH4E=;
 b=eD5/uHNBTueJLUlGR46f58aeQYm/xTdSP9MHT6WioK8RLQvBpLBnder/
 1NyvfYzMzR7yrtV9F5COC3Eki9B5S4VHd4ZXw6eAaXxAF/ZFUe8NVyecG
 4cLRTrr/6PnkEZH6I6JJ5R6Ur0rO1o+zIZ0pb9evNEPXNTgHzthQ1Klie
 /Ft20ESP7olKtxGAdP6XSLsgufPtzEKSu/hwCcNW5tc7vooALo017FYLQ
 cYQog60cZJZAzt7O7FUj1QENnLhudvt0Wh+OsFrqILXVW4eZApgItJBvV
 esVnl0OifOFGe2oj3jIh1FK4QvNmXOHmEjkjnQmmA2Qi9kvIgqyI7TGeS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="270245248"
X-IronPort-AV: E=Sophos;i="5.88,308,1635231600"; d="scan'208";a="270245248"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2022 02:49:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,308,1635231600"; d="scan'208";a="476226500"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 22 Jan 2022 02:49:34 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nBDxe-000GKD-4Q; Sat, 22 Jan 2022 10:49:34 +0000
Date: Sat, 22 Jan 2022 18:48:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61ebe102.e0bLmqvjdf/V1vtr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d69aa713cce12bd6869d4c2ead52ed17edf60dd9
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
branch HEAD: d69aa713cce12bd6869d4c2ead52ed17edf60dd9  ice: Fix KASAN error in LAG NETDEV_UNREGISTER handler

elapsed time: 727m

configs tested: 141
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220120
nds32                             allnoconfig
sh                        apsh4ad0a_defconfig
sh                        dreamcast_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                          polaris_defconfig
m68k                            q40_defconfig
powerpc                  storcenter_defconfig
arc                     nsimosci_hs_defconfig
xtensa                  nommu_kc705_defconfig
sh                        sh7763rdp_defconfig
arm                           stm32_defconfig
s390                             allmodconfig
arc                          axs103_defconfig
mips                          rb532_defconfig
sh                                  defconfig
sh                          rsk7203_defconfig
sh                           se7206_defconfig
parisc                generic-32bit_defconfig
xtensa                  cadence_csp_defconfig
m68k                         apollo_defconfig
x86_64                           alldefconfig
arm                           tegra_defconfig
nios2                               defconfig
mips                           gcw0_defconfig
nios2                         10m50_defconfig
mips                             allyesconfig
arm                           h5000_defconfig
arm                          exynos_defconfig
mips                  maltasmvp_eva_defconfig
arm                      footbridge_defconfig
sh                     sh7710voipgw_defconfig
mips                      maltasmvp_defconfig
arm                     eseries_pxa_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                         wii_defconfig
powerpc                      ppc40x_defconfig
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
arc                              allyesconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220121
arc                  randconfig-r043-20220121
s390                 randconfig-r044-20220121
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
x86_64                        randconfig-c007
arm                  randconfig-c002-20220120
riscv                randconfig-c006-20220120
powerpc              randconfig-c003-20220120
mips                 randconfig-c004-20220120
i386                          randconfig-c001
mips                      maltaaprp_defconfig
arm                         shannon_defconfig
powerpc                   bluestone_defconfig
arm                        vexpress_defconfig
arm                                 defconfig
arm                   milbeaut_m10v_defconfig
powerpc                          allmodconfig
mips                           rs90_defconfig
powerpc                     tqm8540_defconfig
powerpc                      pmac32_defconfig
powerpc                       ebony_defconfig
arm                  colibri_pxa270_defconfig
riscv                            alldefconfig
powerpc                 mpc832x_rdb_defconfig
mips                        bcm63xx_defconfig
powerpc                    mvme5100_defconfig
arm                        spear3xx_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220122
hexagon              randconfig-r045-20220122
hexagon              randconfig-r041-20220122

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
