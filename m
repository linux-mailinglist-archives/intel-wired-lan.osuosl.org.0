Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C72A5169244
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2020 00:21:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F7992266F;
	Sat, 22 Feb 2020 23:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0t-bmPjo-Ht; Sat, 22 Feb 2020 23:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1B3022660;
	Sat, 22 Feb 2020 23:20:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1591D1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 23:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FF88876BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 23:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJmOF3Wmr8lo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2020 23:20:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 06C7686FE9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2020 23:20:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Feb 2020 15:20:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,473,1574150400"; d="scan'208";a="240666723"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Feb 2020 15:20:54 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j5e4s-00050H-26; Sun, 23 Feb 2020 07:20:54 +0800
Date: Sun, 23 Feb 2020 07:19:54 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e51b71a.7UDx9Z8VN1yM0/rk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 241f3c7f95af6c26e3cb986a236794560874f2e8
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
branch HEAD: 241f3c7f95af6c26e3cb986a236794560874f2e8  igc: Add UDP segmentation offload support

elapsed time: 1152m

configs tested: 193
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
parisc                            allnoconfig
riscv                             allnoconfig
nds32                               defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
h8300                    h8300h-sim_defconfig
riscv                            allmodconfig
mips                             allmodconfig
ia64                                defconfig
riscv                            allyesconfig
m68k                       m5475evb_defconfig
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
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
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
c6x                  randconfig-a001-20200223
h8300                randconfig-a001-20200223
microblaze           randconfig-a001-20200223
nios2                randconfig-a001-20200223
sparc64              randconfig-a001-20200223
nios2                randconfig-a001-20200222
c6x                  randconfig-a001-20200222
h8300                randconfig-a001-20200222
sparc64              randconfig-a001-20200222
microblaze           randconfig-a001-20200222
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
x86_64               randconfig-e002-20200222
i386                 randconfig-e001-20200222
x86_64               randconfig-e001-20200223
x86_64               randconfig-e002-20200223
x86_64               randconfig-e003-20200223
i386                 randconfig-e001-20200223
i386                 randconfig-e002-20200223
i386                 randconfig-e003-20200223
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
arc                  randconfig-a001-20200223
arm                  randconfig-a001-20200223
arm64                randconfig-a001-20200223
ia64                 randconfig-a001-20200223
powerpc              randconfig-a001-20200223
sparc                randconfig-a001-20200223
arm64                randconfig-a001-20200222
ia64                 randconfig-a001-20200222
powerpc              randconfig-a001-20200222
arm                  randconfig-a001-20200222
arc                  randconfig-a001-20200222
sparc                randconfig-a001-20200222
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
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
sparc64                             defconfig
um                                  defconfig
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
