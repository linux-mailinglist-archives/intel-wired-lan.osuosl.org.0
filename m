Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 770AB138181
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jan 2020 15:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F0F2860F0;
	Sat, 11 Jan 2020 14:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WlmYKSGo6EmL; Sat, 11 Jan 2020 14:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C1C7860F2;
	Sat, 11 Jan 2020 14:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 199941BF333
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2020 14:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B8D186132
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2020 14:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAS1k5EC1r35 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jan 2020 14:17:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 35823860DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2020 14:17:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 06:17:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,421,1571727600"; d="scan'208";a="396704502"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 11 Jan 2020 06:17:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iqHZp-000GhR-4Z; Sat, 11 Jan 2020 22:17:21 +0800
Date: Sat, 11 Jan 2020 22:17:14 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e19d8ea.Z97tx+LgvQGdteT+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 9778083593cb76a6d509ca5d405d017bd68a040b
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
branch HEAD: 9778083593cb76a6d509ca5d405d017bd68a040b  igc: Add PHY power management control

elapsed time: 2430m

configs tested: 163

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
x86_64               randconfig-f001-20200109
x86_64               randconfig-f002-20200109
x86_64               randconfig-f003-20200109
i386                 randconfig-f001-20200109
i386                 randconfig-f002-20200109
i386                 randconfig-f003-20200109
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
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
arm                  randconfig-a001-20200109
sparc                randconfig-a001-20200109
arm64                randconfig-a001-20200109
powerpc              randconfig-a001-20200109
ia64                 randconfig-a001-20200109
arc                  randconfig-a001-20200109
s390                             allmodconfig
sparc64              randconfig-a001-20200109
nios2                randconfig-a001-20200109
c6x                  randconfig-a001-20200109
h8300                randconfig-a001-20200109
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
nds32                               defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
x86_64               randconfig-d001-20200109
x86_64               randconfig-d002-20200109
x86_64               randconfig-d003-20200109
i386                 randconfig-d001-20200109
i386                 randconfig-d002-20200109
i386                 randconfig-d003-20200109
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
microblaze           randconfig-a001-20200109
x86_64               randconfig-g001-20200109
x86_64               randconfig-g002-20200109
x86_64               randconfig-g003-20200109
i386                 randconfig-g001-20200109
i386                 randconfig-g002-20200109
i386                 randconfig-g003-20200109
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
csky                 randconfig-a001-20200109
s390                 randconfig-a001-20200109
sh                   randconfig-a001-20200109
xtensa               randconfig-a001-20200109
openrisc             randconfig-a001-20200109
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                              allnoconfig
x86_64               randconfig-c003-20200109
x86_64               randconfig-c001-20200109
x86_64               randconfig-c002-20200109
i386                 randconfig-c001-20200109
i386                 randconfig-c002-20200109
i386                 randconfig-c003-20200109
x86_64               randconfig-e001-20200109
i386                 randconfig-e002-20200109
x86_64               randconfig-e002-20200109
i386                 randconfig-e003-20200109
x86_64               randconfig-e003-20200109
i386                 randconfig-e001-20200109
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
i386                 randconfig-b001-20200109
x86_64               randconfig-b003-20200109
x86_64               randconfig-b002-20200109
x86_64               randconfig-b001-20200109
i386                 randconfig-b003-20200109
i386                 randconfig-b002-20200109
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
i386                 randconfig-a003-20200110
x86_64               randconfig-a002-20200110
x86_64               randconfig-a001-20200110
i386                 randconfig-a002-20200110
i386                 randconfig-a001-20200110
x86_64               randconfig-a003-20200110
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
csky                 randconfig-a001-20200110
openrisc             randconfig-a001-20200110
s390                 randconfig-a001-20200110
sh                   randconfig-a001-20200110
xtensa               randconfig-a001-20200110
s390                              allnoconfig
s390                             alldefconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
s390                             allyesconfig
mips                 randconfig-a001-20200110
parisc               randconfig-a001-20200110
riscv                randconfig-a001-20200110
alpha                randconfig-a001-20200110
m68k                 randconfig-a001-20200110
nds32                randconfig-a001-20200110

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
