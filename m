Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE793C346A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jul 2021 14:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE6E742267;
	Sat, 10 Jul 2021 12:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rg7HS0Tcrx2p; Sat, 10 Jul 2021 12:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E31542265;
	Sat, 10 Jul 2021 12:00:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 567B21BF359
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 12:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5240340137
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 12:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0u9dLix5xfS0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jul 2021 12:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F65E400B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 12:00:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="197096422"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="197096422"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2021 05:00:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="411612871"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 10 Jul 2021 05:00:35 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m2Bet-000FhR-6y; Sat, 10 Jul 2021 12:00:35 +0000
Date: Sat, 10 Jul 2021 20:00:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60e98bdf.7qQXUq2eZiVc8/nw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e84671cd9648eb1f2b346378c100b4ebfbd1b01c
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
branch HEAD: e84671cd9648eb1f2b346378c100b4ebfbd1b01c  ice: fix build issue if CONFIG_1588_PTP_CLOCk=m

elapsed time: 721m

configs tested: 109
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                  mpc885_ads_defconfig
powerpc                        fsp2_defconfig
arm                          lpd270_defconfig
mips                      maltasmvp_defconfig
sh                           se7780_defconfig
mips                           gcw0_defconfig
m68k                            q40_defconfig
mips                        jmr3927_defconfig
arm                        clps711x_defconfig
powerpc                      ep88xc_defconfig
arm                        mvebu_v7_defconfig
xtensa                generic_kc705_defconfig
riscv                    nommu_virt_defconfig
sh                              ul2_defconfig
arm                         nhk8815_defconfig
sh                           se7724_defconfig
m68k                       m5208evb_defconfig
arm                       aspeed_g5_defconfig
arc                            hsdk_defconfig
arm                          ep93xx_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                      acadia_defconfig
sh                         ecovec24_defconfig
arm                        multi_v7_defconfig
x86_64                            allnoconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210710
x86_64               randconfig-a004-20210710
x86_64               randconfig-a002-20210710
x86_64               randconfig-a003-20210710
x86_64               randconfig-a006-20210710
x86_64               randconfig-a001-20210710
i386                 randconfig-a006-20210709
i386                 randconfig-a004-20210709
i386                 randconfig-a001-20210709
i386                 randconfig-a003-20210709
i386                 randconfig-a005-20210709
i386                 randconfig-a002-20210709
i386                 randconfig-a015-20210709
i386                 randconfig-a016-20210709
i386                 randconfig-a011-20210709
i386                 randconfig-a012-20210709
i386                 randconfig-a013-20210709
i386                 randconfig-a014-20210709
x86_64               randconfig-a004-20210709
x86_64               randconfig-a005-20210709
x86_64               randconfig-a002-20210709
x86_64               randconfig-a006-20210709
x86_64               randconfig-a003-20210709
x86_64               randconfig-a001-20210709
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210709
x86_64               randconfig-a015-20210709
x86_64               randconfig-a011-20210709
x86_64               randconfig-a012-20210709
x86_64               randconfig-a014-20210709
x86_64               randconfig-a016-20210709
x86_64               randconfig-a013-20210709

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
