Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA4235951E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 08:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 819CD419FB;
	Fri,  9 Apr 2021 06:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tedaF4Q0stg9; Fri,  9 Apr 2021 06:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 564F1419F4;
	Fri,  9 Apr 2021 06:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB4DA1BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 06:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7263419F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 06:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sl3Duso8Rd21 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Apr 2021 06:04:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1530E41915
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Apr 2021 06:04:56 +0000 (UTC)
IronPort-SDR: 1yl4DG4c7PlwxFLuEmwweCShXnbENpO2P/5FTnGrjGxjSErpJKHWGJ0Y22+oKTCzTVCVJEXuVs
 Hq0P0rv+Dbvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="255030365"
X-IronPort-AV: E=Sophos;i="5.82,208,1613462400"; d="scan'208";a="255030365"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 23:04:55 -0700
IronPort-SDR: mAPyOYF9fV9UPrJe+Pj4v8ysCUFxRYUFUtCyZEo5vRBUDK9OOpXctf6rAhvpoUD3lylTY7Bo9X
 s/rIZmV6VAzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,208,1613462400"; d="scan'208";a="416122332"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2021 23:04:54 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUkGE-000GHg-18; Fri, 09 Apr 2021 06:04:54 +0000
Date: Fri, 09 Apr 2021 14:04:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <606fee80.C0OflyMfn4LTqF4C%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d28345b73719e670f23795148e133424df6e7021
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
branch HEAD: d28345b73719e670f23795148e133424df6e7021  ice: fix memory leak of aRFS after resuming from suspend

elapsed time: 725m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
sh                          landisk_defconfig
powerpc                      arches_defconfig
mips                          rb532_defconfig
arm                            zeus_defconfig
arm                      footbridge_defconfig
powerpc                        warp_defconfig
mips                           ip22_defconfig
m68k                          multi_defconfig
sh                          lboxre2_defconfig
s390                          debug_defconfig
arc                        vdk_hs38_defconfig
sh                           se7751_defconfig
mips                      pic32mzda_defconfig
arm                   milbeaut_m10v_defconfig
arm                           h5000_defconfig
mips                         rt305x_defconfig
arm                            xcep_defconfig
ia64                            zx1_defconfig
sh                  sh7785lcr_32bit_defconfig
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
arc                                 defconfig
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
x86_64               randconfig-a004-20210408
x86_64               randconfig-a005-20210408
x86_64               randconfig-a003-20210408
x86_64               randconfig-a001-20210408
x86_64               randconfig-a002-20210408
x86_64               randconfig-a006-20210408
i386                 randconfig-a006-20210408
i386                 randconfig-a003-20210408
i386                 randconfig-a001-20210408
i386                 randconfig-a004-20210408
i386                 randconfig-a005-20210408
i386                 randconfig-a002-20210408
i386                 randconfig-a014-20210408
i386                 randconfig-a016-20210408
i386                 randconfig-a011-20210408
i386                 randconfig-a012-20210408
i386                 randconfig-a013-20210408
i386                 randconfig-a015-20210408
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210408
x86_64               randconfig-a015-20210408
x86_64               randconfig-a012-20210408
x86_64               randconfig-a013-20210408

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
