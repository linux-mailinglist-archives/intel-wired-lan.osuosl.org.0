Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D3F249201
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 02:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AC428704A;
	Wed, 19 Aug 2020 00:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PnLzekpVioYB; Wed, 19 Aug 2020 00:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C2B5877E1;
	Wed, 19 Aug 2020 00:50:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D94FF1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 00:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99574864D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 00:50:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id goyjKc067H4y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 00:50:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7940486429
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 00:50:20 +0000 (UTC)
IronPort-SDR: patKhDP8y0ffw8wQypoIYRFFyegEcOWx4Nt5DRY6Qf/bNfKxMHDaeywKEEs3VAhc0gbdL8mFYC
 IbGjOSqxMPsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="154290319"
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="154290319"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 17:50:19 -0700
IronPort-SDR: vlsiTj0q8DVBLhzMi4hZjhMqA98AdF7qRGVWJQKHZ5p3+IwS5lQuCGF+rbP3+XiHrutYhtFi5Z
 6IsmOvAIUrug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="292942451"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 18 Aug 2020 17:50:18 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k8CJ0-0001Wr-6d; Wed, 19 Aug 2020 00:50:18 +0000
Date: Wed, 19 Aug 2020 08:49:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f3c7724.LaebN+LLeXaJqJ2K%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 f8a4d05b5330695c72ba71e6e2d6a966e3f26100
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: f8a4d05b5330695c72ba71e6e2d6a966e3f26100  ice: Fix a couple off by one bugs

elapsed time: 4219m

configs tested: 88
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nds32                            alldefconfig
powerpc                     pq2fads_defconfig
sh                        edosk7705_defconfig
sh                           se7705_defconfig
mips                malta_qemu_32r6_defconfig
mips                          malta_defconfig
arm                          ep93xx_defconfig
arm                         lpc32xx_defconfig
h8300                       h8s-sim_defconfig
sh                           se7206_defconfig
mips                     loongson1b_defconfig
m68k                       bvme6000_defconfig
sh                          r7780mp_defconfig
arm                           omap1_defconfig
powerpc                    gamecube_defconfig
arm                       aspeed_g4_defconfig
arm                           tegra_defconfig
mips                          ath79_defconfig
powerpc                     powernv_defconfig
arm                           h3600_defconfig
mips                          rm200_defconfig
arc                        nsimosci_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200816
i386                 randconfig-a001-20200816
i386                 randconfig-a002-20200816
i386                 randconfig-a003-20200816
i386                 randconfig-a006-20200816
i386                 randconfig-a004-20200816
x86_64               randconfig-a013-20200816
x86_64               randconfig-a012-20200816
x86_64               randconfig-a011-20200816
x86_64               randconfig-a014-20200816
x86_64               randconfig-a015-20200816
x86_64               randconfig-a016-20200816
i386                 randconfig-a016-20200816
i386                 randconfig-a011-20200816
i386                 randconfig-a013-20200816
i386                 randconfig-a015-20200816
i386                 randconfig-a014-20200816
i386                 randconfig-a012-20200816
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
