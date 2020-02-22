Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A05169245
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2020 00:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 022C4879EF;
	Sat, 22 Feb 2020 23:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSJ5L2coZV+X; Sat, 22 Feb 2020 23:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D70087B4A;
	Sat, 22 Feb 2020 23:21:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DCA01BF957
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 23:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1AC7B85EBB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 23:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8oxFcCiLikO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2020 23:20:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F0B285D72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 23:20:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Feb 2020 15:20:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,473,1574150400"; d="scan'208";a="435547392"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2020 15:20:54 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j5e4s-00051D-6j; Sun, 23 Feb 2020 07:20:54 +0800
Date: Sun, 23 Feb 2020 07:20:05 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e51b725.UeDRCq6Z2vBpsh3/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 74ed193496bb2debffa26817082621be11f42f52
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
branch HEAD: 74ed193496bb2debffa26817082621be11f42f52  ice: Fix a couple off by one bugs

elapsed time: 1151m

configs tested: 209
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
parisc                            allnoconfig
riscv                             allnoconfig
nds32                               defconfig
h8300                    h8300h-sim_defconfig
mips                             allmodconfig
ia64                                defconfig
riscv                            allyesconfig
i386                                defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200223
x86_64               randconfig-a002-20200223
x86_64               randconfig-a003-20200223
i386                 randconfig-a001-20200223
i386                 randconfig-a002-20200223
i386                 randconfig-a003-20200223
alpha                randconfig-a001-20200222
m68k                 randconfig-a001-20200222
mips                 randconfig-a001-20200222
nds32                randconfig-a001-20200222
parisc               randconfig-a001-20200222
riscv                randconfig-a001-20200222
alpha                randconfig-a001-20200223
m68k                 randconfig-a001-20200223
mips                 randconfig-a001-20200223
nds32                randconfig-a001-20200223
parisc               randconfig-a001-20200223
nios2                randconfig-a001-20200222
c6x                  randconfig-a001-20200222
h8300                randconfig-a001-20200222
sparc64              randconfig-a001-20200222
microblaze           randconfig-a001-20200222
c6x                  randconfig-a001-20200223
h8300                randconfig-a001-20200223
microblaze           randconfig-a001-20200223
nios2                randconfig-a001-20200223
sparc64              randconfig-a001-20200223
csky                 randconfig-a001-20200223
openrisc             randconfig-a001-20200223
s390                 randconfig-a001-20200223
sh                   randconfig-a001-20200223
xtensa               randconfig-a001-20200223
openrisc             randconfig-a001-20200222
sh                   randconfig-a001-20200222
s390                 randconfig-a001-20200222
xtensa               randconfig-a001-20200222
csky                 randconfig-a001-20200222
x86_64               randconfig-b001-20200222
i386                 randconfig-b002-20200222
i386                 randconfig-b003-20200222
x86_64               randconfig-b003-20200222
x86_64               randconfig-b002-20200222
i386                 randconfig-b001-20200222
x86_64               randconfig-b001-20200223
x86_64               randconfig-b002-20200223
x86_64               randconfig-b003-20200223
i386                 randconfig-b001-20200223
i386                 randconfig-b002-20200223
i386                 randconfig-b003-20200223
i386                 randconfig-c003-20200222
i386                 randconfig-c001-20200222
x86_64               randconfig-c001-20200222
x86_64               randconfig-c003-20200222
x86_64               randconfig-c002-20200222
i386                 randconfig-c002-20200222
x86_64               randconfig-c001-20200223
x86_64               randconfig-c002-20200223
x86_64               randconfig-c003-20200223
i386                 randconfig-c001-20200223
i386                 randconfig-c002-20200223
i386                 randconfig-c003-20200223
x86_64               randconfig-d001-20200223
x86_64               randconfig-d002-20200223
x86_64               randconfig-d003-20200223
i386                 randconfig-d001-20200223
i386                 randconfig-d002-20200223
i386                 randconfig-d003-20200223
i386                 randconfig-d002-20200222
x86_64               randconfig-d002-20200222
x86_64               randconfig-d003-20200222
x86_64               randconfig-d001-20200222
i386                 randconfig-d001-20200222
i386                 randconfig-d003-20200222
x86_64               randconfig-e001-20200223
x86_64               randconfig-e002-20200223
x86_64               randconfig-e003-20200223
i386                 randconfig-e001-20200223
i386                 randconfig-e002-20200223
i386                 randconfig-e003-20200223
x86_64               randconfig-e002-20200222
i386                 randconfig-e001-20200222
x86_64               randconfig-e003-20200222
x86_64               randconfig-e001-20200222
i386                 randconfig-e003-20200222
i386                 randconfig-e002-20200222
x86_64               randconfig-f001-20200223
x86_64               randconfig-f002-20200223
x86_64               randconfig-f003-20200223
i386                 randconfig-f001-20200223
i386                 randconfig-f002-20200223
i386                 randconfig-f003-20200223
x86_64               randconfig-g001-20200223
x86_64               randconfig-g002-20200223
x86_64               randconfig-g003-20200223
i386                 randconfig-g001-20200223
i386                 randconfig-g002-20200223
i386                 randconfig-g003-20200223
x86_64               randconfig-h001-20200223
x86_64               randconfig-h002-20200223
x86_64               randconfig-h003-20200223
i386                 randconfig-h001-20200223
i386                 randconfig-h002-20200223
i386                 randconfig-h003-20200223
i386                 randconfig-h003-20200222
i386                 randconfig-h002-20200222
x86_64               randconfig-h002-20200222
x86_64               randconfig-h003-20200222
i386                 randconfig-h001-20200222
x86_64               randconfig-h001-20200222
arc                  randconfig-a001-20200223
arm                  randconfig-a001-20200223
arm64                randconfig-a001-20200223
ia64                 randconfig-a001-20200223
powerpc              randconfig-a001-20200223
sparc                randconfig-a001-20200223
riscv                            allmodconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
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
