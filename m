Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5EC12BC42
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Dec 2019 03:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E7B7B20385;
	Sat, 28 Dec 2019 02:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IV8l0bBGH04S; Sat, 28 Dec 2019 02:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A7019203F4;
	Sat, 28 Dec 2019 02:34:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1DB81BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Dec 2019 02:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8763C20385
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Dec 2019 02:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqCkkaR8UrBb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Dec 2019 02:34:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 758B420113
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Dec 2019 02:34:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 18:34:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,365,1571727600"; d="scan'208";a="392737254"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 27 Dec 2019 18:34:37 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1il1w5-0007qy-23; Sat, 28 Dec 2019 10:34:37 +0800
Date: Sat, 28 Dec 2019 10:34:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e06bf3b.iSmAeGXtUczqgPzA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 bde70cc7c17e6d6f7387b7908c5de63858d11cd2
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
branch HEAD: bde70cc7c17e6d6f7387b7908c5de63858d11cd2  ice: remove redundant assignment to variable xmit_done

elapsed time: 257m

configs tested: 181

The following configs have been built successfully.
More configs may be tested in the coming days.

arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arm                  randconfig-a001-20191227
arm64                randconfig-a001-20191227
arc                  randconfig-a001-20191227
ia64                 randconfig-a001-20191227
sparc                randconfig-a001-20191227
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                                defconfig
x86_64               randconfig-h001-20191227
x86_64               randconfig-h002-20191227
x86_64               randconfig-h003-20191227
i386                 randconfig-h001-20191227
i386                 randconfig-h002-20191227
i386                 randconfig-h003-20191227
x86_64               randconfig-a001-20191227
x86_64               randconfig-a002-20191227
x86_64               randconfig-a003-20191227
i386                 randconfig-a001-20191227
i386                 randconfig-a002-20191227
i386                 randconfig-a003-20191227
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                  randconfig-a001-20191228
h8300                randconfig-a001-20191228
microblaze           randconfig-a001-20191228
nios2                randconfig-a001-20191228
sparc64              randconfig-a001-20191228
m68k                             allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
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
x86_64               randconfig-e001-20191227
x86_64               randconfig-e002-20191227
x86_64               randconfig-e003-20191227
i386                 randconfig-e001-20191227
i386                 randconfig-e002-20191227
i386                 randconfig-e003-20191227
x86_64               randconfig-f003-20191227
i386                 randconfig-f001-20191227
i386                 randconfig-f003-20191227
i386                 randconfig-f002-20191227
x86_64               randconfig-f001-20191227
x86_64               randconfig-f002-20191227
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-b001-20191227
x86_64               randconfig-b002-20191227
x86_64               randconfig-b003-20191227
i386                 randconfig-b001-20191227
i386                 randconfig-b002-20191227
i386                 randconfig-b003-20191227
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
csky                 randconfig-a001-20191228
openrisc             randconfig-a001-20191228
s390                 randconfig-a001-20191228
sh                   randconfig-a001-20191228
xtensa               randconfig-a001-20191228
s390                 randconfig-a001-20191227
sh                   randconfig-a001-20191227
xtensa               randconfig-a001-20191227
openrisc             randconfig-a001-20191227
csky                 randconfig-a001-20191227
x86_64               randconfig-c001-20191227
x86_64               randconfig-c002-20191227
x86_64               randconfig-c003-20191227
i386                 randconfig-c001-20191227
i386                 randconfig-c002-20191227
i386                 randconfig-c003-20191227
x86_64               randconfig-d001-20191227
x86_64               randconfig-d002-20191227
x86_64               randconfig-d003-20191227
i386                 randconfig-d001-20191227
i386                 randconfig-d002-20191227
i386                 randconfig-d003-20191227
mips                 randconfig-a001-20191228
riscv                randconfig-a001-20191228
m68k                 randconfig-a001-20191228
parisc               randconfig-a001-20191228
nds32                randconfig-a001-20191228
alpha                randconfig-a001-20191228
i386                             allyesconfig
x86_64               randconfig-e001-20191228
x86_64               randconfig-e002-20191228
x86_64               randconfig-e003-20191228
i386                 randconfig-e001-20191228
i386                 randconfig-e002-20191228
i386                 randconfig-e003-20191228
x86_64               randconfig-a002-20191228
x86_64               randconfig-a001-20191228
i386                 randconfig-a001-20191228
x86_64               randconfig-a003-20191228
i386                 randconfig-a003-20191228
i386                 randconfig-a002-20191228
powerpc              randconfig-a001-20191227
sparc                            allyesconfig
i386                             alldefconfig
i386                              allnoconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
alpha                randconfig-a001-20191227
m68k                 randconfig-a001-20191227
mips                 randconfig-a001-20191227
nds32                randconfig-a001-20191227
parisc               randconfig-a001-20191227
riscv                randconfig-a001-20191227

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
