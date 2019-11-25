Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4599F1088EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Nov 2019 08:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2E2B87B0A;
	Mon, 25 Nov 2019 07:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zK8KDHzwAqRr; Mon, 25 Nov 2019 07:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F5D287B8E;
	Mon, 25 Nov 2019 07:01:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B6DE1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 07:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6674D87B3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 07:01:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2SGqrUtZYvd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2019 07:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E75487B0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 07:01:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Nov 2019 23:01:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,240,1571727600"; d="scan'208";a="210935781"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 24 Nov 2019 23:01:37 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iZ8NN-0004e0-5w; Mon, 25 Nov 2019 15:01:37 +0800
Date: Mon, 25 Nov 2019 15:01:09 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ddb7c35.vqNBukIel6KbMbyG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 de0899c23d72a13b8b9bd5352964add065a31849
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: de0899c23d72a13b8b9bd5352964add065a31849  RDMA/irdma: Update MAINTAINERS file

elapsed time: 1829m

configs tested: 132

The following configs have been built successfully.
More configs may be tested in the coming days.

i386                 randconfig-a002-20191124
x86_64               randconfig-a003-20191124
i386                 randconfig-a001-20191124
x86_64               randconfig-a001-20191124
i386                 randconfig-a003-20191124
x86_64               randconfig-a002-20191124
x86_64               randconfig-g002-20191124
x86_64               randconfig-g001-20191124
i386                 randconfig-g002-20191124
i386                 randconfig-g003-20191124
i386                 randconfig-g001-20191124
x86_64               randconfig-g003-20191124
x86_64               randconfig-f001-20191124
x86_64               randconfig-f002-20191124
x86_64               randconfig-f003-20191124
i386                 randconfig-f001-20191124
i386                 randconfig-f002-20191124
i386                 randconfig-f003-20191124
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
arc                 randconfig-a0031-20191124
arm                  randconfig-a001-20191124
arm64                randconfig-a001-20191124
ia64                 randconfig-a001-20191124
powerpc              randconfig-a001-20191124
sparc                randconfig-a001-20191124
x86_64               randconfig-c001-20191124
x86_64               randconfig-c002-20191124
x86_64               randconfig-c003-20191124
i386                 randconfig-c001-20191124
i386                 randconfig-c002-20191124
i386                 randconfig-c003-20191124
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
arm                              allmodconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
i386                 randconfig-e002-20191124
x86_64               randconfig-e003-20191124
i386                 randconfig-e001-20191124
x86_64               randconfig-e001-20191124
x86_64               randconfig-e002-20191124
i386                 randconfig-e003-20191124
x86_64               randconfig-d002-20191124
i386                 randconfig-d001-20191124
i386                 randconfig-d003-20191124
x86_64               randconfig-d001-20191124
i386                 randconfig-d002-20191124
x86_64               randconfig-d003-20191124
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
m68k                       m5475evb_defconfig
x86_64               randconfig-h001-20191124
x86_64               randconfig-h002-20191124
x86_64               randconfig-h003-20191124
i386                 randconfig-h001-20191124
i386                 randconfig-h002-20191124
i386                 randconfig-h003-20191124
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
i386                 randconfig-b002-20191124
x86_64               randconfig-b001-20191124
x86_64               randconfig-b002-20191124
i386                 randconfig-b003-20191124
x86_64               randconfig-b003-20191124
i386                 randconfig-b001-20191124
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
