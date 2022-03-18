Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C0A4DDC46
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 15:55:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26C1260A79;
	Fri, 18 Mar 2022 14:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGGwSlQpmoPf; Fri, 18 Mar 2022 14:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28F6C607F1;
	Fri, 18 Mar 2022 14:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E61AE1C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 14:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4FFF8484E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 14:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjG21aaxB4Rt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 14:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 031048484C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 14:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647615344; x=1679151344;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5VbRP1pK+mu/CpUSGkm4vbEQj1hhYsILgV10dgQE3KI=;
 b=RZQT4AKks7wQrJtnhLHXrE7RnTRwXrGWMK8Rg/Q9/KAGgih6yEXvTETA
 MlfT9JD0nOX/meR7dsJruiDe0fsMUS1NLl2oQ3HakHe+0mcjDOMPg77vy
 RYqEjx+sFho2ikrW6ZZ5KE7LR41vO5ZOMjQ93w72nxRSFgxmG317AVNpa
 0+pAtLVd3JI+Uu3mOuVwaQd5y6KT2fO8iv0MevqqX1coH4aAWNEaQrray
 FDsk5HXZXGz3XGTGUEo60fcHnNKUhsSRXKPQkCC1SFaO004pzykRpSWo7
 x5eqMbQvTg+xQuuwbVb+881m+cNZREoXqnldqoCQopaxAp5ZHnw+RCx9T A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257097926"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="257097926"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="635779708"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Mar 2022 07:55:42 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nVE0z-000Eqc-Ah; Fri, 18 Mar 2022 14:55:41 +0000
Date: Fri, 18 Mar 2022 22:54:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62349d2f.ugsb5HEnRlmjFwud%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 e243f39685af1bd6d837fa7bff40c1afdf3eb7fa
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: e243f39685af1bd6d837fa7bff40c1afdf3eb7fa  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 723m

configs tested: 136
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
arm                             pxa_defconfig
sh                   rts7751r2dplus_defconfig
nios2                         10m50_defconfig
sh                               alldefconfig
m68k                          hp300_defconfig
parisc64                         alldefconfig
mips                         tb0226_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                      maltasmvp_defconfig
openrisc                  or1klitex_defconfig
alpha                            alldefconfig
powerpc                     tqm8555_defconfig
powerpc                      pcm030_defconfig
m68k                       m5208evb_defconfig
sparc64                             defconfig
powerpc                        warp_defconfig
powerpc                       holly_defconfig
powerpc                    adder875_defconfig
sparc                            alldefconfig
ia64                            zx1_defconfig
sh                           se7780_defconfig
arm                  randconfig-c002-20220318
arm                  randconfig-c002-20220317
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
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
s390                             allmodconfig
parisc64                            defconfig
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
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220318
riscv                randconfig-r042-20220317
arc                  randconfig-r043-20220317
s390                 randconfig-r044-20220317
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                  randconfig-c002-20220318
x86_64                        randconfig-c007
s390                 randconfig-c005-20220317
s390                 randconfig-c005-20220318
arm                  randconfig-c002-20220317
mips                 randconfig-c004-20220318
mips                 randconfig-c004-20220317
riscv                randconfig-c006-20220318
powerpc              randconfig-c003-20220318
powerpc              randconfig-c003-20220317
i386                          randconfig-c001
riscv                randconfig-c006-20220317
arm                    vt8500_v6_v7_defconfig
mips                        qi_lb60_defconfig
powerpc                 mpc832x_mds_defconfig
arm                         lpc32xx_defconfig
arm                          pxa168_defconfig
powerpc                     tqm5200_defconfig
powerpc                     mpc512x_defconfig
riscv                            alldefconfig
mips                      maltaaprp_defconfig
mips                     loongson1c_defconfig
powerpc                 mpc836x_mds_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220318
hexagon              randconfig-r045-20220317
hexagon              randconfig-r041-20220318
riscv                randconfig-r042-20220318
hexagon              randconfig-r041-20220317
s390                 randconfig-r044-20220318

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
