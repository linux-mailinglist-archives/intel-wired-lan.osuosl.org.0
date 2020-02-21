Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EF1168A33
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2020 00:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97DF4865E0;
	Fri, 21 Feb 2020 23:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQOEsy2jg_9A; Fri, 21 Feb 2020 23:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 576C78665F;
	Fri, 21 Feb 2020 23:04:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AE571BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1743E865E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dw4QAciwbPcD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2020 23:04:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98D4B865DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:04:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 15:04:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="259771615"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 21 Feb 2020 15:04:04 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j5HL1-000IE9-Hk; Sat, 22 Feb 2020 07:04:03 +0800
Date: Sat, 22 Feb 2020 07:03:51 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e5061d7.O4aJrD2ICfYMsBQ3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS
 2fbfa9668bbf4c87ede7b47e15428268cd13c0a2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: 2fbfa9668bbf4c87ede7b47e15428268cd13c0a2  ice: fix define for E822 backplane device

elapsed time: 2881m

configs tested: 302
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
s390                             allyesconfig
i386                              allnoconfig
openrisc                 simple_smp_defconfig
m68k                          multi_defconfig
nds32                             allnoconfig
riscv                            allyesconfig
powerpc                             defconfig
openrisc                    or1ksim_defconfig
h8300                       h8s-sim_defconfig
nios2                         10m50_defconfig
powerpc                           allnoconfig
microblaze                      mmu_defconfig
arc                              allyesconfig
ia64                              allnoconfig
ia64                             alldefconfig
um                                  defconfig
mips                             allmodconfig
arc                                 defconfig
xtensa                          iss_defconfig
m68k                           sun3_defconfig
parisc                generic-32bit_defconfig
c6x                              allyesconfig
h8300                     edosk2674_defconfig
sparc64                             defconfig
m68k                             allmodconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                        evmc6678_defconfig
nios2                         3c120_defconfig
xtensa                       common_defconfig
alpha                               defconfig
csky                                defconfig
nds32                               defconfig
h8300                    h8300h-sim_defconfig
m68k                       m5475evb_defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200220
x86_64               randconfig-a002-20200220
x86_64               randconfig-a003-20200220
i386                 randconfig-a001-20200220
i386                 randconfig-a002-20200220
i386                 randconfig-a003-20200220
x86_64               randconfig-a001-20200219
x86_64               randconfig-a002-20200219
x86_64               randconfig-a003-20200219
i386                 randconfig-a001-20200219
i386                 randconfig-a002-20200219
i386                 randconfig-a003-20200219
x86_64               randconfig-a001-20200221
x86_64               randconfig-a002-20200221
x86_64               randconfig-a003-20200221
i386                 randconfig-a001-20200221
i386                 randconfig-a002-20200221
i386                 randconfig-a003-20200221
alpha                randconfig-a001-20200221
m68k                 randconfig-a001-20200221
mips                 randconfig-a001-20200221
nds32                randconfig-a001-20200221
parisc               randconfig-a001-20200221
riscv                randconfig-a001-20200221
alpha                randconfig-a001-20200220
m68k                 randconfig-a001-20200220
mips                 randconfig-a001-20200220
nds32                randconfig-a001-20200220
parisc               randconfig-a001-20200220
riscv                randconfig-a001-20200220
alpha                randconfig-a001-20200219
m68k                 randconfig-a001-20200219
nds32                randconfig-a001-20200219
parisc               randconfig-a001-20200219
riscv                randconfig-a001-20200219
c6x                  randconfig-a001-20200221
h8300                randconfig-a001-20200221
microblaze           randconfig-a001-20200221
nios2                randconfig-a001-20200221
sparc64              randconfig-a001-20200221
c6x                  randconfig-a001-20200220
h8300                randconfig-a001-20200220
microblaze           randconfig-a001-20200220
nios2                randconfig-a001-20200220
sparc64              randconfig-a001-20200220
c6x                  randconfig-a001-20200219
h8300                randconfig-a001-20200219
microblaze           randconfig-a001-20200219
nios2                randconfig-a001-20200219
sparc64              randconfig-a001-20200219
openrisc             randconfig-a001-20200219
sh                   randconfig-a001-20200219
csky                 randconfig-a001-20200219
s390                 randconfig-a001-20200219
xtensa               randconfig-a001-20200219
csky                 randconfig-a001-20200221
openrisc             randconfig-a001-20200221
s390                 randconfig-a001-20200221
sh                   randconfig-a001-20200221
xtensa               randconfig-a001-20200221
csky                 randconfig-a001-20200220
openrisc             randconfig-a001-20200220
s390                 randconfig-a001-20200220
sh                   randconfig-a001-20200220
xtensa               randconfig-a001-20200220
csky                 randconfig-a001-20200222
openrisc             randconfig-a001-20200222
s390                 randconfig-a001-20200222
sh                   randconfig-a001-20200222
xtensa               randconfig-a001-20200222
x86_64               randconfig-b001-20200220
x86_64               randconfig-b002-20200220
x86_64               randconfig-b003-20200220
i386                 randconfig-b001-20200220
i386                 randconfig-b002-20200220
i386                 randconfig-b003-20200220
x86_64               randconfig-b001-20200219
x86_64               randconfig-b002-20200219
x86_64               randconfig-b003-20200219
i386                 randconfig-b001-20200219
i386                 randconfig-b002-20200219
i386                 randconfig-b003-20200219
x86_64               randconfig-b001-20200221
x86_64               randconfig-b002-20200221
x86_64               randconfig-b003-20200221
i386                 randconfig-b001-20200221
i386                 randconfig-b002-20200221
i386                 randconfig-b003-20200221
x86_64               randconfig-c001-20200220
x86_64               randconfig-c002-20200220
x86_64               randconfig-c003-20200220
i386                 randconfig-c001-20200220
i386                 randconfig-c002-20200220
i386                 randconfig-c003-20200220
x86_64               randconfig-c001-20200221
x86_64               randconfig-c002-20200221
x86_64               randconfig-c003-20200221
i386                 randconfig-c001-20200221
i386                 randconfig-c002-20200221
i386                 randconfig-c003-20200221
x86_64               randconfig-c001-20200219
x86_64               randconfig-c002-20200219
x86_64               randconfig-c003-20200219
i386                 randconfig-c001-20200219
i386                 randconfig-c002-20200219
i386                 randconfig-c003-20200219
x86_64               randconfig-d001-20200220
x86_64               randconfig-d002-20200220
x86_64               randconfig-d003-20200220
i386                 randconfig-d001-20200220
i386                 randconfig-d002-20200220
i386                 randconfig-d003-20200220
x86_64               randconfig-d001-20200221
x86_64               randconfig-d002-20200221
x86_64               randconfig-d003-20200221
i386                 randconfig-d001-20200221
i386                 randconfig-d002-20200221
i386                 randconfig-d003-20200221
x86_64               randconfig-e001-20200219
x86_64               randconfig-e002-20200219
x86_64               randconfig-e003-20200219
i386                 randconfig-e001-20200219
i386                 randconfig-e002-20200219
i386                 randconfig-e003-20200219
x86_64               randconfig-e001-20200220
x86_64               randconfig-e002-20200220
x86_64               randconfig-e003-20200220
i386                 randconfig-e001-20200220
i386                 randconfig-e002-20200220
i386                 randconfig-e003-20200220
x86_64               randconfig-e001-20200221
x86_64               randconfig-e002-20200221
x86_64               randconfig-e003-20200221
i386                 randconfig-e001-20200221
i386                 randconfig-e002-20200221
i386                 randconfig-e003-20200221
x86_64               randconfig-f001-20200219
x86_64               randconfig-f002-20200219
x86_64               randconfig-f003-20200219
i386                 randconfig-f001-20200219
i386                 randconfig-f002-20200219
i386                 randconfig-f003-20200219
x86_64               randconfig-f001-20200221
x86_64               randconfig-f002-20200221
x86_64               randconfig-f003-20200221
i386                 randconfig-f001-20200221
i386                 randconfig-f002-20200221
i386                 randconfig-f003-20200221
x86_64               randconfig-f001-20200220
x86_64               randconfig-f002-20200220
x86_64               randconfig-f003-20200220
i386                 randconfig-f001-20200220
i386                 randconfig-f002-20200220
i386                 randconfig-f003-20200220
x86_64               randconfig-g001-20200219
x86_64               randconfig-g002-20200219
x86_64               randconfig-g003-20200219
i386                 randconfig-g001-20200219
i386                 randconfig-g002-20200219
i386                 randconfig-g003-20200219
x86_64               randconfig-g001-20200220
x86_64               randconfig-g002-20200220
x86_64               randconfig-g003-20200220
i386                 randconfig-g001-20200220
i386                 randconfig-g002-20200220
i386                 randconfig-g003-20200220
x86_64               randconfig-g001-20200221
x86_64               randconfig-g002-20200221
x86_64               randconfig-g003-20200221
i386                 randconfig-g001-20200221
i386                 randconfig-g002-20200221
i386                 randconfig-g003-20200221
x86_64               randconfig-h001-20200219
x86_64               randconfig-h002-20200219
x86_64               randconfig-h003-20200219
i386                 randconfig-h001-20200219
i386                 randconfig-h002-20200219
i386                 randconfig-h003-20200219
x86_64               randconfig-h001-20200220
x86_64               randconfig-h002-20200220
x86_64               randconfig-h003-20200220
i386                 randconfig-h001-20200220
i386                 randconfig-h002-20200220
i386                 randconfig-h003-20200220
x86_64               randconfig-h001-20200221
x86_64               randconfig-h002-20200221
x86_64               randconfig-h003-20200221
i386                 randconfig-h001-20200221
i386                 randconfig-h002-20200221
i386                 randconfig-h003-20200221
arc                  randconfig-a001-20200220
arm                  randconfig-a001-20200220
arm64                randconfig-a001-20200220
ia64                 randconfig-a001-20200220
powerpc              randconfig-a001-20200220
sparc                randconfig-a001-20200220
arc                  randconfig-a001-20200219
arm                  randconfig-a001-20200219
arm64                randconfig-a001-20200219
ia64                 randconfig-a001-20200219
powerpc              randconfig-a001-20200219
sparc                randconfig-a001-20200219
arc                  randconfig-a001-20200221
arm                  randconfig-a001-20200221
arm64                randconfig-a001-20200221
ia64                 randconfig-a001-20200221
powerpc              randconfig-a001-20200221
sparc                randconfig-a001-20200221
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
