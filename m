Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B83CF91375
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Aug 2019 00:22:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E82520476;
	Sat, 17 Aug 2019 22:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XL9Fb+N4rV7R; Sat, 17 Aug 2019 22:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAA612045E;
	Sat, 17 Aug 2019 22:22:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37F971BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2019 22:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3093886091
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2019 22:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HeCg0KdeGSbx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Aug 2019 22:22:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43FC686044
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Aug 2019 22:22:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 15:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,398,1559545200"; d="scan'208";a="261458119"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2019 15:22:23 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hz75b-000I7s-0X; Sun, 18 Aug 2019 06:22:23 +0800
Date: Sun, 18 Aug 2019 06:22:05 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d587e0d.RvhNUjdcGo7Fu9LY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 ad67e9a3882a272c4b5cc4c3b945fafb62d09fff
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: ad67e9a3882a272c4b5cc4c3b945fafb62d09fff  ice: shorten local and add debug prints

TIMEOUT after 1446m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 28

alpha                            allmodconfig
alpha                            allyesconfig
i386                               tinyconfig
ia64                             allyesconfig
m68k                             allyesconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allyesconfig
mips                                   jz4740
mips                                     txx9
nds32                            allmodconfig
nds32                            allyesconfig
parisc                           allmodconfig
parisc                           allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
riscv                              tinyconfig
s390                             allyesconfig
sh                               allyesconfig
sparc                            allmodconfig
sparc64                          allyesconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
xtensa                           allmodconfig
xtensa                           allyesconfig

configs tested: 143

arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                 randconfig-h002-201932
x86_64                 randconfig-h003-201932
i386                   randconfig-h001-201932
i386                   randconfig-h002-201932
x86_64                 randconfig-h004-201932
i386                   randconfig-h004-201932
i386                   randconfig-h003-201932
x86_64                 randconfig-h001-201932
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
i386                   randconfig-f004-201932
x86_64                 randconfig-f004-201932
i386                   randconfig-f001-201932
x86_64                 randconfig-f002-201932
i386                   randconfig-f002-201932
i386                   randconfig-f003-201932
x86_64                 randconfig-f003-201932
x86_64                 randconfig-f001-201932
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             alldefconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
powerpc                             defconfig
ia64                                defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
x86_64                 randconfig-a004-201932
i386                   randconfig-a003-201932
x86_64                 randconfig-a002-201932
i386                   randconfig-a004-201932
i386                   randconfig-a002-201932
x86_64                 randconfig-a001-201932
i386                   randconfig-a001-201932
x86_64                 randconfig-a003-201932
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                 randconfig-c003-201932
x86_64                 randconfig-c002-201932
i386                   randconfig-c004-201932
x86_64                 randconfig-c004-201932
i386                   randconfig-c003-201932
i386                   randconfig-c001-201932
i386                   randconfig-c002-201932
x86_64                 randconfig-c001-201932
x86_64                 randconfig-e004-201932
i386                   randconfig-e004-201932
x86_64                 randconfig-e002-201932
i386                   randconfig-e003-201932
x86_64                 randconfig-e003-201932
x86_64                 randconfig-e001-201932
i386                   randconfig-e002-201932
i386                   randconfig-e001-201932
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
x86_64                           allmodconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
i386                   randconfig-d002-201932
i386                   randconfig-d004-201932
x86_64                 randconfig-d004-201932
x86_64                 randconfig-d001-201932
x86_64                 randconfig-d002-201932
x86_64                 randconfig-d003-201932
i386                   randconfig-d001-201932
i386                   randconfig-d003-201932
arm                              allmodconfig
arm64                            allmodconfig
x86_64                 randconfig-b002-201932
i386                   randconfig-b003-201932
i386                   randconfig-b004-201932
i386                   randconfig-b002-201932
x86_64                 randconfig-b001-201932
i386                   randconfig-b001-201932
x86_64                 randconfig-b004-201932
x86_64                 randconfig-b003-201932
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
arc                              allyesconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                 randconfig-g003-201932
i386                   randconfig-g004-201932
x86_64                 randconfig-g001-201932
x86_64                 randconfig-g002-201932
i386                   randconfig-g001-201932
x86_64                 randconfig-g004-201932
i386                   randconfig-g002-201932
i386                   randconfig-g003-201932

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
