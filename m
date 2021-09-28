Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3BC41A636
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Sep 2021 05:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 309CC402D6;
	Tue, 28 Sep 2021 03:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F_ea0wn9Tll8; Tue, 28 Sep 2021 03:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD3D94018D;
	Tue, 28 Sep 2021 03:52:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDBCB1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 03:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABC4F608F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 03:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zeUCPPCrTICK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Sep 2021 03:52:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3174E60896
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 03:52:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310161353"
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200"; d="scan'208";a="310161353"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 20:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200"; d="scan'208";a="478506812"
Received: from lkp-server02.sh.intel.com (HELO f7acefbbae94) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2021 20:51:49 -0700
Received: from kbuild by f7acefbbae94 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mV49k-0000oq-P7; Tue, 28 Sep 2021 03:51:48 +0000
Date: Tue, 28 Sep 2021 11:51:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61529131.TpIU/QsCFMBiqy2T%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b393ce50497e6d91729811ca682edf19c50a820f
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
branch HEAD: b393ce50497e6d91729811ca682edf19c50a820f  i40e: Fix freeing of uninitialized misc IRQ vector

elapsed time: 724m

configs tested: 121
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
i386                 randconfig-c001-20210927
h8300                       h8s-sim_defconfig
sh                         ecovec24_defconfig
sh                   rts7751r2dplus_defconfig
sh                        edosk7705_defconfig
powerpc                   motionpro_defconfig
powerpc                      makalu_defconfig
arm                         lpc18xx_defconfig
arm                        magician_defconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                     tqm8548_defconfig
xtensa                              defconfig
powerpc                  iss476-smp_defconfig
arm                     davinci_all_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                    klondike_defconfig
mips                           xway_defconfig
arm                         vf610m4_defconfig
xtensa                          iss_defconfig
arc                        vdk_hs38_defconfig
powerpc                 linkstation_defconfig
powerpc                       holly_defconfig
sh                            migor_defconfig
sh                     magicpanelr2_defconfig
arm                             rpc_defconfig
arm                      pxa255-idp_defconfig
arm                          badge4_defconfig
powerpc                     stx_gp3_defconfig
sh                          rsk7264_defconfig
m68k                            q40_defconfig
arc                         haps_hs_defconfig
powerpc                     pseries_defconfig
openrisc                 simple_smp_defconfig
arm                          gemini_defconfig
powerpc                     powernv_defconfig
sh                           sh2007_defconfig
mips                           ip22_defconfig
arm                          pxa3xx_defconfig
microblaze                      mmu_defconfig
mips                      maltasmvp_defconfig
x86_64               randconfig-c001-20210927
arm                  randconfig-c002-20210927
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
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
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210927
x86_64               randconfig-a006-20210927
x86_64               randconfig-a001-20210927
x86_64               randconfig-a005-20210927
x86_64               randconfig-a004-20210927
x86_64               randconfig-a003-20210927
i386                 randconfig-a001-20210927
i386                 randconfig-a005-20210927
i386                 randconfig-a006-20210927
i386                 randconfig-a002-20210927
i386                 randconfig-a003-20210927
i386                 randconfig-a004-20210927
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-a014-20210927
x86_64               randconfig-a011-20210927
x86_64               randconfig-a013-20210927
x86_64               randconfig-a016-20210927
x86_64               randconfig-a015-20210927
x86_64               randconfig-a012-20210927
i386                 randconfig-a014-20210927
i386                 randconfig-a013-20210927
i386                 randconfig-a016-20210927
i386                 randconfig-a012-20210927
i386                 randconfig-a015-20210927
i386                 randconfig-a011-20210927
hexagon              randconfig-r045-20210927
riscv                randconfig-r042-20210927
hexagon              randconfig-r041-20210927
s390                 randconfig-r044-20210927

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
