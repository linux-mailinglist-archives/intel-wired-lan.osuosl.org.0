Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0F9496A69
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jan 2022 07:28:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 469DB404C6;
	Sat, 22 Jan 2022 06:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ANKw35DALHH; Sat, 22 Jan 2022 06:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF335403BF;
	Sat, 22 Jan 2022 06:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAA201BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jan 2022 06:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97F7F60B04
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jan 2022 06:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9WBeFOO4tXM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jan 2022 06:28:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF11360706
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jan 2022 06:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642832905; x=1674368905;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=j0G0v0MXxOf/nDe12BiVdKy/nbFtbZ/QPGqCOIXiXoU=;
 b=RwIqgNUE1oyTsAWvYgHDgUlYwKPp+53l9N4901xpINsNFxd7RkEfYna7
 1prQtJ1AV98YyO3ugLv7mUPD5Jzlxl1ivzSGxz1Z4OZnf2WtWUp4qkmc6
 KJQ7tzQnBvTfJt1QaIayoxja6H//aoE70WZYrT2iT472o72A1fske7W2j
 oWWOAuToGIGBbdh3XVZk1K6YmInWJqRADxDgWqJM1e+E0LTvOCKPQ+7CF
 RzedZeWTqh6SDGs6w+CWfwnBrla2aDdli7CousW3HiwgC3UbDIMMXO8dK
 ibuUQSbm4OCR/+iLIXsb7kEYSoqYZ9uoYKAmS/rNstikvF4zm1uIprP0s Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="233153177"
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="233153177"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 22:28:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="562129566"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 22:28:23 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB9st-000G79-9w; Sat, 22 Jan 2022 06:28:23 +0000
Date: Sat, 22 Jan 2022 14:27:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61eba3ce.1DlGzt0JH9bva8Wv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0366e227cbb7dd194e54b3ba7e4aaf37bd640d17
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
branch HEAD: 0366e227cbb7dd194e54b3ba7e4aaf37bd640d17  iavf: Add reset to watchdog task

elapsed time: 726m

configs tested: 149
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
powerpc              randconfig-c003-20220120
mips                         bigsur_defconfig
arm                           h3600_defconfig
m68k                          multi_defconfig
arm                         lpc18xx_defconfig
arm                          exynos_defconfig
mips                         tb0226_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                                defconfig
parisc                generic-32bit_defconfig
xtensa                  cadence_csp_defconfig
sh                           se7206_defconfig
m68k                         apollo_defconfig
x86_64                           alldefconfig
arm                           tegra_defconfig
ia64                          tiger_defconfig
arm                         nhk8815_defconfig
xtensa                    xip_kc705_defconfig
arm                           viper_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        multi_v7_defconfig
mips                           gcw0_defconfig
nios2                         10m50_defconfig
mips                             allyesconfig
arm                           h5000_defconfig
sh                           se7751_defconfig
sh                          sdk7780_defconfig
ia64                            zx1_defconfig
powerpc                     mpc83xx_defconfig
sh                           se7619_defconfig
mips                         rt305x_defconfig
sh                          r7780mp_defconfig
arm                        oxnas_v6_defconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220119
arm                  randconfig-c002-20220120
arm                  randconfig-c002-20220121
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
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
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64               randconfig-a016-20220117
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220122
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
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                          rhel-8.3-func

clang tested configs:
x86_64                        randconfig-c007
arm                  randconfig-c002-20220120
riscv                randconfig-c006-20220120
powerpc              randconfig-c003-20220120
mips                 randconfig-c004-20220120
i386                          randconfig-c001
powerpc                          allmodconfig
powerpc                       ebony_defconfig
riscv                            alldefconfig
arm                  colibri_pxa270_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                        bcm63xx_defconfig
arm                       aspeed_g4_defconfig
arm                           sama7_defconfig
powerpc                   microwatt_defconfig
powerpc                    mvme5100_defconfig
arm                        spear3xx_defconfig
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
x86_64                        randconfig-a016
x86_64                        randconfig-a014
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
x86_64               randconfig-a005-20220117
x86_64               randconfig-a006-20220117
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
s390                 randconfig-r044-20220122
hexagon              randconfig-r045-20220122
hexagon              randconfig-r041-20220122
riscv                randconfig-r042-20220122

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
