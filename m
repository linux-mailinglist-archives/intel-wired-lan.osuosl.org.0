Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FC21365C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2020 04:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99CC686AD2;
	Fri, 10 Jan 2020 03:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5kVkXbUYvpAZ; Fri, 10 Jan 2020 03:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BBBA86A59;
	Fri, 10 Jan 2020 03:21:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B75D81BF3FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 03:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B2581203E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 03:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s9iq8H67vdB9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2020 03:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 62DEF203A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2020 03:21:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 19:21:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,415,1571727600"; d="scan'208";a="371487866"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Jan 2020 19:21:18 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ipkrO-000FaD-Ds; Fri, 10 Jan 2020 11:21:18 +0800
Date: Fri, 10 Jan 2020 11:21:01 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e17ed9d.IFn38KMd39eehSal%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 9546a0b7ce0077d827470f603f2522b845ce5954
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git  master
branch HEAD: 9546a0b7ce0077d827470f603f2522b845ce5954  tipc: fix wrong connect() return code

elapsed time: 708m

configs tested: 164

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
i386                             allyesconfig
arc                  randconfig-a001-20200109
arm                  randconfig-a001-20200109
arm64                randconfig-a001-20200109
ia64                 randconfig-a001-20200109
powerpc              randconfig-a001-20200109
sparc                randconfig-a001-20200109
x86_64               randconfig-f001-20200109
x86_64               randconfig-f002-20200109
x86_64               randconfig-f003-20200109
i386                 randconfig-f001-20200109
i386                 randconfig-f002-20200109
i386                 randconfig-f003-20200109
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
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64               randconfig-h001-20200109
x86_64               randconfig-h002-20200109
x86_64               randconfig-h003-20200109
i386                 randconfig-h001-20200109
i386                 randconfig-h002-20200109
i386                 randconfig-h003-20200109
x86_64               randconfig-c001-20200109
x86_64               randconfig-c002-20200109
x86_64               randconfig-c003-20200109
i386                 randconfig-c001-20200109
i386                 randconfig-c002-20200109
i386                 randconfig-c003-20200109
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
sparc                            allyesconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
s390                             allyesconfig
c6x                  randconfig-a001-20200109
h8300                randconfig-a001-20200109
microblaze           randconfig-a001-20200109
nios2                randconfig-a001-20200109
sparc64              randconfig-a001-20200109
x86_64               randconfig-d001-20200109
x86_64               randconfig-d002-20200109
x86_64               randconfig-d003-20200109
i386                 randconfig-d001-20200109
i386                 randconfig-d002-20200109
i386                 randconfig-d003-20200109
s390                             allmodconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-a001-20200109
x86_64               randconfig-a002-20200109
x86_64               randconfig-a003-20200109
i386                 randconfig-a001-20200109
i386                 randconfig-a002-20200109
i386                 randconfig-a003-20200109
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
csky                 randconfig-a001-20200109
openrisc             randconfig-a001-20200109
s390                 randconfig-a001-20200109
sh                   randconfig-a001-20200109
xtensa               randconfig-a001-20200109
x86_64               randconfig-b001-20200109
x86_64               randconfig-b002-20200109
x86_64               randconfig-b003-20200109
i386                 randconfig-b001-20200109
i386                 randconfig-b002-20200109
i386                 randconfig-b003-20200109
alpha                randconfig-a001-20200109
m68k                 randconfig-a001-20200109
mips                 randconfig-a001-20200109
nds32                randconfig-a001-20200109
parisc               randconfig-a001-20200109
riscv                randconfig-a001-20200109
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
s390                             alldefconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-e001-20200110
x86_64               randconfig-e002-20200110
x86_64               randconfig-e003-20200110
i386                 randconfig-e001-20200110
i386                 randconfig-e002-20200110
i386                 randconfig-e003-20200110

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
