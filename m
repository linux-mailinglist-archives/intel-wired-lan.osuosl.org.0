Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F8EB1552
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 22:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3379920000;
	Thu, 12 Sep 2019 20:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hMmeReVGujXc; Thu, 12 Sep 2019 20:21:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 29B1F20513;
	Thu, 12 Sep 2019 20:21:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C3E51BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 20:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6847D861F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 20:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XX9RhZ0e8i-6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 20:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B1CA861EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 20:21:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 13:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385190620"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 13:21:45 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i8Vb7-000GON-7V; Fri, 13 Sep 2019 04:21:45 +0800
Date: Fri, 13 Sep 2019 04:20:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d7aa89b.uSGKHzTGJo5ub3Bg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 b456d72412ca8797234449c25815e82f4e1426c0
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/net-queue.git  master
branch HEAD: b456d72412ca8797234449c25815e82f4e1426c0  sctp: Fix the link time qualifier of 'sctp_ctrlsock_exit()'

elapsed time: 490m

configs tested: 95

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                           allyesconfig
i386                             allmodconfig
x86_64                 randconfig-b002-201936
i386                   randconfig-b003-201936
i386                   randconfig-b004-201936
i386                   randconfig-b001-201936
i386                   randconfig-b002-201936
x86_64                 randconfig-b001-201936
x86_64                 randconfig-b004-201936
x86_64                 randconfig-b003-201936
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                 randconfig-h002-201936
x86_64                 randconfig-h003-201936
i386                   randconfig-h001-201936
i386                   randconfig-h002-201936
i386                   randconfig-h004-201936
x86_64                 randconfig-h004-201936
i386                   randconfig-h003-201936
x86_64                 randconfig-h001-201936
i386                   randconfig-f004-201936
x86_64                 randconfig-f004-201936
x86_64                 randconfig-f002-201936
i386                   randconfig-f001-201936
i386                   randconfig-f002-201936
i386                   randconfig-f003-201936
x86_64                 randconfig-f003-201936
x86_64                 randconfig-f001-201936
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
x86_64                 randconfig-e004-201936
i386                   randconfig-e004-201936
x86_64                 randconfig-e002-201936
i386                   randconfig-e003-201936
x86_64                 randconfig-e003-201936
x86_64                 randconfig-e001-201936
i386                   randconfig-e002-201936
i386                   randconfig-e001-201936
x86_64                           allmodconfig
i386                   randconfig-g004-201936
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
