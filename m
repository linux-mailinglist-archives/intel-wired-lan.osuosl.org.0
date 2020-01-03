Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E0712F36D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jan 2020 04:16:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE03F84D0F;
	Fri,  3 Jan 2020 03:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EnpYL5pjwCnG; Fri,  3 Jan 2020 03:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09A7785450;
	Fri,  3 Jan 2020 03:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 054131BF981
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2020 03:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F225986365
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2020 03:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zk5nowncB6vC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jan 2020 03:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1393F861A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2020 03:16:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 19:16:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,389,1571727600"; d="scan'208";a="394209704"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 02 Jan 2020 19:16:40 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1inDS3-0003tK-TB; Fri, 03 Jan 2020 11:16:39 +0800
Date: Fri, 03 Jan 2020 11:14:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e0eb1af.xeCYu6/KEe3U6t4w%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 6a877a64faebfd5f1d8dde8f2f63111b8180d9b6
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
branch HEAD: 6a877a64faebfd5f1d8dde8f2f63111b8180d9b6  igc: Add SKU for i225 device

elapsed time: 249m

configs tested: 157

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
x86_64               randconfig-c002-20200102
x86_64               randconfig-c003-20200102
x86_64               randconfig-c001-20200102
i386                 randconfig-c001-20200102
i386                 randconfig-c002-20200102
i386                 randconfig-c003-20200102
parisc               randconfig-a001-20200102
mips                 randconfig-a001-20200102
riscv                randconfig-a001-20200102
alpha                randconfig-a001-20200102
m68k                 randconfig-a001-20200102
nds32                randconfig-a001-20200102
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
csky                 randconfig-a001-20200102
s390                 randconfig-a001-20200102
sh                   randconfig-a001-20200102
xtensa               randconfig-a001-20200102
openrisc             randconfig-a001-20200102
arm                              allmodconfig
arm64                            allmodconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
ia64                             alldefconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64               randconfig-b003-20200102
i386                 randconfig-b001-20200102
x86_64               randconfig-b002-20200102
i386                 randconfig-b003-20200102
x86_64               randconfig-b001-20200102
i386                 randconfig-b002-20200102
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
i386                              allnoconfig
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
x86_64               randconfig-a002-20200103
x86_64               randconfig-a001-20200103
i386                 randconfig-a001-20200103
i386                 randconfig-a002-20200103
x86_64               randconfig-a003-20200103
i386                 randconfig-a003-20200103
microblaze           randconfig-a001-20200102
sparc64              randconfig-a001-20200102
nios2                randconfig-a001-20200102
c6x                  randconfig-a001-20200102
h8300                randconfig-a001-20200102
csky                 randconfig-a001-20200103
openrisc             randconfig-a001-20200103
s390                 randconfig-a001-20200103
sh                   randconfig-a001-20200103
xtensa               randconfig-a001-20200103
sparc64                          allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                 randconfig-f001-20200102
x86_64               randconfig-f003-20200102
i386                 randconfig-f002-20200102
i386                 randconfig-f003-20200102
x86_64               randconfig-f001-20200102
x86_64               randconfig-f002-20200102
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64               randconfig-e001-20200102
x86_64               randconfig-e002-20200102
x86_64               randconfig-e003-20200102
i386                 randconfig-e001-20200102
i386                 randconfig-e002-20200102
i386                 randconfig-e003-20200102
x86_64               randconfig-h003-20200102
x86_64               randconfig-h002-20200102
i386                 randconfig-h002-20200102
i386                 randconfig-h003-20200102
i386                 randconfig-h001-20200102
x86_64               randconfig-h001-20200102
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64               randconfig-g002-20200102
i386                 randconfig-g003-20200102
i386                 randconfig-g002-20200102
x86_64               randconfig-g003-20200102
x86_64               randconfig-g001-20200102
i386                 randconfig-g001-20200102
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
