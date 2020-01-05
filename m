Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8164130947
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2020 18:11:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91148860D5;
	Sun,  5 Jan 2020 17:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a60GDGZh55iq; Sun,  5 Jan 2020 17:11:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EAF785C7D;
	Sun,  5 Jan 2020 17:11:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 867461BF281
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 17:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7DA6B85B8D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 17:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJdFlOwNnMoi for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2020 17:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F0A485B8A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 17:11:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 09:11:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,399,1571727600"; d="scan'208";a="214982031"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 05 Jan 2020 09:11:25 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1io9Qz-000INS-9A; Mon, 06 Jan 2020 01:11:25 +0800
Date: Mon, 06 Jan 2020 01:10:24 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e121880.yifjN6Pjd79JLuM2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 77be7962ad5b5f8a0e63b4fe7327f73e14fbabfc
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
branch HEAD: 77be7962ad5b5f8a0e63b4fe7327f73e14fbabfc  i40e: Fix receive buffer starvation for AF_XDP

Regressions in current branch:

drivers/net/ethernet/intel/igc/igc_ptp.c:425:17: sparse: sparse: incorrect type in argument 1 (different base types)

Error ids grouped by kconfigs:

recent_errors
|-- x86_64-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_ptp.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)
`-- x86_64-allyesconfig
    `-- drivers-net-ethernet-intel-igc-igc_ptp.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)

elapsed time: 497m

configs tested: 146

sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
ia64                             alldefconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
i386                              allnoconfig
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
arm64                randconfig-a001-20200105
sparc                randconfig-a001-20200105
arm                  randconfig-a001-20200105
ia64                 randconfig-a001-20200105
powerpc              randconfig-a001-20200105
arc                  randconfig-a001-20200105
x86_64               randconfig-d003-20200105
x86_64               randconfig-d002-20200105
x86_64               randconfig-d001-20200105
i386                 randconfig-d002-20200105
i386                 randconfig-d001-20200105
i386                 randconfig-d003-20200105
x86_64               randconfig-a002-20200105
i386                 randconfig-a001-20200105
x86_64               randconfig-a001-20200105
i386                 randconfig-a002-20200105
x86_64               randconfig-a003-20200105
i386                 randconfig-a003-20200105
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
csky                 randconfig-a001-20200105
s390                 randconfig-a001-20200105
sh                   randconfig-a001-20200105
xtensa               randconfig-a001-20200105
openrisc             randconfig-a001-20200105
sparc                            allyesconfig
i386                 randconfig-f001-20200105
x86_64               randconfig-f003-20200105
x86_64               randconfig-f001-20200105
i386                 randconfig-f003-20200105
i386                 randconfig-f002-20200105
x86_64               randconfig-f002-20200105
x86_64               randconfig-c001-20200105
x86_64               randconfig-c002-20200105
x86_64               randconfig-c003-20200105
i386                 randconfig-c001-20200105
i386                 randconfig-c002-20200105
i386                 randconfig-c003-20200105
x86_64               randconfig-g002-20200105
i386                 randconfig-g003-20200105
i386                 randconfig-g002-20200105
x86_64               randconfig-g003-20200105
x86_64               randconfig-g001-20200105
i386                 randconfig-g001-20200105
nds32                               defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
s390                              allnoconfig
s390                             alldefconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
s390                       zfcpdump_defconfig
s390                             allyesconfig
i386                 randconfig-b003-20200105
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
sparc64              randconfig-a001-20200105
nios2                randconfig-a001-20200105
h8300                randconfig-a001-20200105
c6x                  randconfig-a001-20200105
sparc64                          allmodconfig
sparc64                          allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                 randconfig-e002-20200105
x86_64               randconfig-e001-20200105
x86_64               randconfig-e002-20200105
i386                 randconfig-e003-20200105
x86_64               randconfig-e003-20200105
i386                 randconfig-e001-20200105
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
