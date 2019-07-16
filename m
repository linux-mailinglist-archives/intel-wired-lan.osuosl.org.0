Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F081F6A23D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 08:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3B3187C9C;
	Tue, 16 Jul 2019 06:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqK4FNsgW0PK; Tue, 16 Jul 2019 06:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3E5687D48;
	Tue, 16 Jul 2019 06:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9DDA1BF331
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 06:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E6D0A85F82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 06:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8BTC87B_YPIW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 06:30:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C399785FA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 06:30:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 23:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,496,1557212400"; d="scan'208";a="318900489"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 15 Jul 2019 23:30:26 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hnGyo-0001Wb-56; Tue, 16 Jul 2019 14:30:26 +0800
Date: Tue, 16 Jul 2019 14:30:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d2d6eee.NQO09EtQ/go7X7UL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD INCOMPLETE
 aa5bb866e707b059b3b13f363cfdf52250882bc8
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: aa5bb866e707b059b3b13f363cfdf52250882bc8  checkpatch.pl: seed camelcase from the provided kernel tree root

TIMEOUT after 720m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 204

alpha                            allmodconfig
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allyesconfig
arm64                               defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
i386                             alldefconfig
i386                             allmodconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a004
i386                          randconfig-b001
i386                          randconfig-b002
i386                          randconfig-b003
i386                          randconfig-b004
i386                          randconfig-c001
i386                          randconfig-c002
i386                          randconfig-c003
i386                          randconfig-c004
i386                          randconfig-d001
i386                          randconfig-d002
i386                          randconfig-d003
i386                          randconfig-d004
i386                          randconfig-e001
i386                          randconfig-e002
i386                          randconfig-e003
i386                          randconfig-e004
i386                          randconfig-f001
i386                          randconfig-f002
i386                          randconfig-f003
i386                          randconfig-f004
i386                          randconfig-g001
i386                          randconfig-g002
i386                          randconfig-g003
i386                          randconfig-g004
i386                          randconfig-h001
i386                          randconfig-h002
i386                          randconfig-h003
i386                          randconfig-h004
i386                          randconfig-x000
i386                          randconfig-x001
i386                          randconfig-x002
i386                          randconfig-x003
i386                          randconfig-x004
i386                          randconfig-x005
i386                          randconfig-x006
i386                          randconfig-x007
i386                          randconfig-x008
i386                          randconfig-x009
i386                          randconfig-x010
i386                          randconfig-x011
i386                          randconfig-x012
i386                          randconfig-x013
i386                          randconfig-x014
i386                          randconfig-x015
i386                          randconfig-x016
i386                          randconfig-x017
i386                          randconfig-x018
i386                          randconfig-x019
i386                          randconfig-x070
i386                          randconfig-x071
i386                          randconfig-x072
i386                          randconfig-x073
i386                          randconfig-x074
i386                          randconfig-x075
i386                          randconfig-x076
i386                          randconfig-x077
i386                          randconfig-x078
i386                          randconfig-x079
i386                               tinyconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
nds32                            allmodconfig
nds32                             allnoconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
parisc                           allmodconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                              tinyconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                               allyesconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                            allmodconfig
sparc                            allyesconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                             acpi-redef
x86_64                           allmodconfig
x86_64                           allyesconfig
x86_64                           allyesdebian
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                nfsroot
x86_64                        randconfig-a001
x86_64                        randconfig-a002
x86_64                        randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-b001
x86_64                        randconfig-b002
x86_64                        randconfig-b003
x86_64                        randconfig-b004
x86_64                        randconfig-c001
x86_64                        randconfig-c002
x86_64                        randconfig-c003
x86_64                        randconfig-c004
x86_64                        randconfig-d001
x86_64                        randconfig-d002
x86_64                        randconfig-d003
x86_64                        randconfig-d004
x86_64                        randconfig-e001
x86_64                        randconfig-e002
x86_64                        randconfig-e003
x86_64                        randconfig-e004
x86_64                        randconfig-f001
x86_64                        randconfig-f002
x86_64                        randconfig-f003
x86_64                        randconfig-f004
x86_64                        randconfig-g001
x86_64                        randconfig-g002
x86_64                        randconfig-g003
x86_64                        randconfig-g004
x86_64                        randconfig-h001
x86_64                        randconfig-h002
x86_64                        randconfig-h003
x86_64                        randconfig-h004
x86_64                        randconfig-x000
x86_64                        randconfig-x001
x86_64                        randconfig-x002
x86_64                        randconfig-x003
x86_64                        randconfig-x004
x86_64                        randconfig-x005
x86_64                        randconfig-x006
x86_64                        randconfig-x007
x86_64                        randconfig-x008
x86_64                        randconfig-x009
x86_64                        randconfig-x010
x86_64                        randconfig-x011
x86_64                        randconfig-x012
x86_64                        randconfig-x013
x86_64                        randconfig-x014
x86_64                        randconfig-x015
x86_64                        randconfig-x016
x86_64                        randconfig-x017
x86_64                        randconfig-x018
x86_64                        randconfig-x019
x86_64                                   rhel
x86_64                               rhel-7.6
xtensa                           allyesconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig

configs tested: 17

arc                                 defconfig
riscv                               defconfig
i386                              allnoconfig
s390                          debug_defconfig
h8300                    h8300h-sim_defconfig
xtensa                           allmodconfig
nios2                         10m50_defconfig
arm64                             allnoconfig
m68k                             allyesconfig
m68k                          multi_defconfig
sh                                allnoconfig
parisc                           allyesconfig
sparc64                             defconfig
nds32                               defconfig
nds32                            allyesconfig
arm                              allmodconfig
arm64                            allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
