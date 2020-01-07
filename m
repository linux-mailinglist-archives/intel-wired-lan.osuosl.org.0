Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5799B131D94
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2020 03:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD67D86C82;
	Tue,  7 Jan 2020 02:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 516X7PzQVduA; Tue,  7 Jan 2020 02:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A53E886DCA;
	Tue,  7 Jan 2020 02:27:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01A1B1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 02:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED47086254
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 02:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAAnkKMympDQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2020 02:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E55E3861AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 02:27:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 18:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,404,1571727600"; d="scan'208";a="422326215"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2020 18:27:13 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ioeaP-0007Hk-4s; Tue, 07 Jan 2020 10:27:13 +0800
Date: Tue, 07 Jan 2020 10:26:34 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e13ec5a.msxuzADgodT7zp95%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 d89091a4930ee0d80bee3e259a98513f3a2543ec
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  master
branch HEAD: d89091a4930ee0d80bee3e259a98513f3a2543ec  macb: Don't unregister clks unconditionally

elapsed time: 1471m

configs tested: 186

The following configs have been built successfully.
More configs may be tested in the coming days.

um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64               randconfig-c001-20200106
x86_64               randconfig-c002-20200106
x86_64               randconfig-c003-20200106
i386                 randconfig-c001-20200106
i386                 randconfig-c002-20200106
i386                 randconfig-c003-20200106
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64               randconfig-a001-20200106
x86_64               randconfig-a002-20200106
x86_64               randconfig-a003-20200106
i386                 randconfig-a001-20200106
i386                 randconfig-a002-20200106
i386                 randconfig-a003-20200106
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
csky                 randconfig-a001-20200106
openrisc             randconfig-a001-20200106
s390                 randconfig-a001-20200106
sh                   randconfig-a001-20200106
xtensa               randconfig-a001-20200106
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64               randconfig-f001-20200106
x86_64               randconfig-f002-20200106
x86_64               randconfig-f003-20200106
i386                 randconfig-f001-20200106
i386                 randconfig-f002-20200106
i386                 randconfig-f003-20200106
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
x86_64               randconfig-c001-20200107
x86_64               randconfig-c002-20200107
x86_64               randconfig-c003-20200107
i386                 randconfig-c001-20200107
i386                 randconfig-c002-20200107
i386                 randconfig-c003-20200107
x86_64               randconfig-b003-20200106
i386                 randconfig-b001-20200106
x86_64               randconfig-b002-20200106
i386                 randconfig-b003-20200106
x86_64               randconfig-b001-20200106
i386                 randconfig-b002-20200106
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
x86_64               randconfig-g001-20200106
x86_64               randconfig-g002-20200106
x86_64               randconfig-g003-20200106
i386                 randconfig-g001-20200106
i386                 randconfig-g002-20200106
i386                 randconfig-g003-20200106
alpha                randconfig-a001-20200106
m68k                 randconfig-a001-20200106
mips                 randconfig-a001-20200106
nds32                randconfig-a001-20200106
parisc               randconfig-a001-20200106
riscv                randconfig-a001-20200106
c6x                  randconfig-a001-20200105
h8300                randconfig-a001-20200105
microblaze           randconfig-a001-20200105
nios2                randconfig-a001-20200105
sparc64              randconfig-a001-20200105
x86_64               randconfig-h001-20200106
x86_64               randconfig-h002-20200106
x86_64               randconfig-h003-20200106
i386                 randconfig-h001-20200106
i386                 randconfig-h002-20200106
i386                 randconfig-h003-20200106
alpha                randconfig-a001-20200107
m68k                 randconfig-a001-20200107
mips                 randconfig-a001-20200107
nds32                randconfig-a001-20200107
parisc               randconfig-a001-20200107
riscv                randconfig-a001-20200107
c6x                  randconfig-a001-20200106
h8300                randconfig-a001-20200106
microblaze           randconfig-a001-20200106
nios2                randconfig-a001-20200106
sparc64              randconfig-a001-20200106
arc                  randconfig-a001-20200106
arm                  randconfig-a001-20200106
arm64                randconfig-a001-20200106
ia64                 randconfig-a001-20200106
powerpc              randconfig-a001-20200106
sparc                randconfig-a001-20200106
x86_64               randconfig-d001-20200106
x86_64               randconfig-d002-20200106
x86_64               randconfig-d003-20200106
i386                 randconfig-d001-20200106
i386                 randconfig-d002-20200106
i386                 randconfig-d003-20200106
x86_64               randconfig-e001-20200106
x86_64               randconfig-e002-20200106
x86_64               randconfig-e003-20200106
i386                 randconfig-e001-20200106
i386                 randconfig-e002-20200106
i386                 randconfig-e003-20200106
c6x                  randconfig-a001-20200107
h8300                randconfig-a001-20200107
microblaze           randconfig-a001-20200107
nios2                randconfig-a001-20200107
sparc64              randconfig-a001-20200107

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
