Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1A82C0237
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 10:23:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17CAC870B4;
	Mon, 23 Nov 2020 09:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6izQeCJgXYIB; Mon, 23 Nov 2020 09:22:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95803870BB;
	Mon, 23 Nov 2020 09:22:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51D5F1BF489
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 09:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4A557870B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 09:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKHuP1NRfw2l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 09:22:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89BFB870B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 09:22:57 +0000 (UTC)
IronPort-SDR: EN201jYoL47fHpARpWnJIkkEYtFmyPI+NmABNlbwZMiMZgjOW/we/yEWp6N/gNYE2/58mW9B7q
 r7bREMNcSvVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="168220945"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="168220945"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 01:22:57 -0800
IronPort-SDR: jez5IJl/dsmXljjVd/tnpmJZfR8Fjb4ghOycFttvKX/kn0Kv2d6kFIxRZv3mRqL1aOllva3HuF
 OVLF+P/53psQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="546343180"
Received: from lkp-server01.sh.intel.com (HELO 1138cb5768e3) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2020 01:22:55 -0800
Received: from kbuild by 1138cb5768e3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kh83j-00001Q-Ao; Mon, 23 Nov 2020 09:22:55 +0000
Date: Mon, 23 Nov 2020 17:22:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fbb7f45.OXPJt2oAAWwkS6tC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7aa6fa64108cb4ae72ad19d912a0d3ed425357e0
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
branch HEAD: 7aa6fa64108cb4ae72ad19d912a0d3ed425357e0  ice: Fix trivial error message

elapsed time: 721m

configs tested: 87
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm64                               defconfig
mips                         tb0287_defconfig
riscv                            alldefconfig
arm                        oxnas_v6_defconfig
powerpc                     pq2fads_defconfig
sh                          r7780mp_defconfig
arm                           omap1_defconfig
mips                    maltaup_xpa_defconfig
um                           x86_64_defconfig
mips                     loongson1b_defconfig
mips                        jmr3927_defconfig
arm                          ep93xx_defconfig
arm                            qcom_defconfig
c6x                        evmc6678_defconfig
powerpc                       ebony_defconfig
sparc                               defconfig
arc                 nsimosci_hs_smp_defconfig
c6x                        evmc6472_defconfig
arm                       omap2plus_defconfig
sh                          rsk7203_defconfig
mips                           mtx1_defconfig
powerpc                  storcenter_defconfig
m68k                       m5275evb_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201123
i386                 randconfig-a003-20201123
i386                 randconfig-a002-20201123
x86_64               randconfig-a015-20201123
x86_64               randconfig-a011-20201123
x86_64               randconfig-a014-20201123
x86_64               randconfig-a016-20201123
x86_64               randconfig-a012-20201123
x86_64               randconfig-a013-20201123
i386                 randconfig-a012-20201123
i386                 randconfig-a013-20201123
i386                 randconfig-a011-20201123
i386                 randconfig-a016-20201123
i386                 randconfig-a014-20201123
i386                 randconfig-a015-20201123
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel

clang tested configs:
x86_64               randconfig-a006-20201123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
