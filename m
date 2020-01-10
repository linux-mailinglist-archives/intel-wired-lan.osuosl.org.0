Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A471366CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2020 06:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 99E9220488;
	Fri, 10 Jan 2020 05:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id siSpXenB+enW; Fri, 10 Jan 2020 05:43:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 451FA20428;
	Fri, 10 Jan 2020 05:43:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63FB11BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 05:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F8B5883B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 05:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJ7A6EwJCpJR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2020 05:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 62C3D8833E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 05:43:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 21:43:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,415,1571727600"; d="scan'208";a="216545422"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 09 Jan 2020 21:42:59 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ipn4V-000ArR-Bx; Fri, 10 Jan 2020 13:42:59 +0800
Date: Fri, 10 Jan 2020 13:42:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e180ecc.qo8bFtYmXRFpW1HW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:40GbE] BUILD SUCCESS
 d5ad7a6a7f3c87b278d7e4973b65682be4e588dd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  40GbE
branch HEAD: d5ad7a6a7f3c87b278d7e4973b65682be4e588dd  e1000e: Revert "e1000e: Make watchdog use delayed work"

elapsed time: 474m

configs tested: 169

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64               randconfig-b001-20200110
x86_64               randconfig-b002-20200110
x86_64               randconfig-b003-20200110
i386                 randconfig-b001-20200110
i386                 randconfig-b002-20200110
i386                 randconfig-b003-20200110
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64               randconfig-g001-20200109
x86_64               randconfig-g002-20200109
x86_64               randconfig-g003-20200109
i386                 randconfig-g001-20200109
i386                 randconfig-g002-20200109
i386                 randconfig-g003-20200109
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
x86_64               randconfig-c001-20200109
x86_64               randconfig-c002-20200109
x86_64               randconfig-c003-20200109
i386                 randconfig-c001-20200109
i386                 randconfig-c002-20200109
i386                 randconfig-c003-20200109
arc                  randconfig-a001-20200109
arm                  randconfig-a001-20200109
arm64                randconfig-a001-20200109
ia64                 randconfig-a001-20200109
powerpc              randconfig-a001-20200109
sparc                randconfig-a001-20200109
c6x                  randconfig-a001-20200109
h8300                randconfig-a001-20200109
microblaze           randconfig-a001-20200109
nios2                randconfig-a001-20200109
sparc64              randconfig-a001-20200109
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
s390                             allmodconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64               randconfig-d001-20200109
x86_64               randconfig-d002-20200109
x86_64               randconfig-d003-20200109
i386                 randconfig-d001-20200109
i386                 randconfig-d002-20200109
i386                 randconfig-d003-20200109
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
alpha                randconfig-a001-20200109
m68k                 randconfig-a001-20200109
mips                 randconfig-a001-20200109
nds32                randconfig-a001-20200109
parisc               randconfig-a001-20200109
riscv                randconfig-a001-20200109
x86_64               randconfig-f001-20200109
x86_64               randconfig-f002-20200109
x86_64               randconfig-f003-20200109
i386                 randconfig-f001-20200109
i386                 randconfig-f002-20200109
i386                 randconfig-f003-20200109
csky                 randconfig-a001-20200109
openrisc             randconfig-a001-20200109
s390                 randconfig-a001-20200109
sh                   randconfig-a001-20200109
xtensa               randconfig-a001-20200109
x86_64               randconfig-a001-20200109
x86_64               randconfig-a002-20200109
x86_64               randconfig-a003-20200109
i386                 randconfig-a001-20200109
i386                 randconfig-a002-20200109
i386                 randconfig-a003-20200109
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-b001-20200109
x86_64               randconfig-b002-20200109
x86_64               randconfig-b003-20200109
i386                 randconfig-b001-20200109
i386                 randconfig-b002-20200109
i386                 randconfig-b003-20200109
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
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64               randconfig-e001-20200110
x86_64               randconfig-e002-20200110
x86_64               randconfig-e003-20200110
i386                 randconfig-e001-20200110
i386                 randconfig-e002-20200110
i386                 randconfig-e003-20200110
s390                             alldefconfig
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
c6x                  randconfig-a001-20200110
h8300                randconfig-a001-20200110
microblaze           randconfig-a001-20200110
nios2                randconfig-a001-20200110
sparc64              randconfig-a001-20200110

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
