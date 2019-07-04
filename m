Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5045B5F71D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2019 13:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 057F986079;
	Thu,  4 Jul 2019 11:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iG_ay1dsXDYw; Thu,  4 Jul 2019 11:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75364860BE;
	Thu,  4 Jul 2019 11:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3A5A1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 11:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9501487E40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 11:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-4S52EDBeY9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2019 11:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 90B3B87C0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 11:11:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 04:11:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="166803950"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 04 Jul 2019 04:11:38 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hizeL-0009cP-Tj; Thu, 04 Jul 2019 19:11:37 +0800
Date: Thu, 04 Jul 2019 19:11:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d1ddedf.YeODizZgoqTLzD7s%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 3b5377dd74f70ccadd5ee04e11e49782517ac34c
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
branch HEAD: 3b5377dd74f70ccadd5ee04e11e49782517ac34c  i40e: Remove unicast log when VF is leaving multicast mode

TIMEOUT after 720m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 127

alpha                            allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
arc                                 defconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
c6x                              allyesconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
i386                          randconfig-n001
i386                          randconfig-n002
i386                          randconfig-n003
i386                          randconfig-n004
i386                          randconfig-n005
i386                          randconfig-n006
i386                          randconfig-n007
i386                          randconfig-n008
i386                          randconfig-n009
i386                          randconfig-n010
i386                          randconfig-n011
i386                          randconfig-n012
i386                          randconfig-n013
i386                          randconfig-n014
i386                          randconfig-n015
i386                          randconfig-n016
i386                          randconfig-n017
i386                          randconfig-n018
i386                          randconfig-n019
i386                          randconfig-n020
i386                          randconfig-n021
i386                          randconfig-n022
i386                          randconfig-n023
i386                          randconfig-n024
i386                          randconfig-n025
i386                          randconfig-n026
i386                          randconfig-n027
i386                          randconfig-n028
i386                          randconfig-n029
i386                          randconfig-n030
i386                          randconfig-n031
i386                          randconfig-n032
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
ia64                             allyesconfig
m68k                             allyesconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allyesconfig
mips                                   jz4740
mips                                     txx9
nds32                            allmodconfig
nds32                            allyesconfig
nios2                         3c120_defconfig
openrisc                 simple_smp_defconfig
parisc                           allmodconfig
parisc                           allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
s390                             allyesconfig
sh                               allyesconfig
sparc                            allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
x86_64                             acpi-redef
x86_64                           allmodconfig
x86_64                           allyesdebian
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                nfsroot
x86_64                        randconfig-n001
x86_64                        randconfig-n002
x86_64                        randconfig-n003
x86_64                        randconfig-n004
x86_64                        randconfig-n005
x86_64                        randconfig-n006
x86_64                        randconfig-n007
x86_64                        randconfig-n008
x86_64                        randconfig-n009
x86_64                        randconfig-n010
x86_64                        randconfig-n011
x86_64                        randconfig-n012
x86_64                        randconfig-n013
x86_64                        randconfig-n014
x86_64                        randconfig-n015
x86_64                        randconfig-n016
x86_64                        randconfig-n017
x86_64                        randconfig-n018
x86_64                        randconfig-n019
x86_64                        randconfig-n020
x86_64                        randconfig-n021
x86_64                        randconfig-n022
x86_64                        randconfig-n023
x86_64                        randconfig-n024
x86_64                        randconfig-n025
x86_64                        randconfig-n026
x86_64                        randconfig-n027
x86_64                        randconfig-n028
x86_64                        randconfig-n029
x86_64                        randconfig-n030
x86_64                        randconfig-n031
x86_64                        randconfig-n032
x86_64                                   rhel
x86_64                               rhel-7.6
xtensa                           allmodconfig
xtensa                           allyesconfig

configs tested: 44

s390                             allmodconfig
x86_64                           allyesconfig
i386                             allmodconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
openrisc                    or1ksim_defconfig
h8300                    h8300h-sim_defconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                          debug_defconfig
powerpc                           allnoconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
m68k                           sun3_defconfig
m68k                             allmodconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
um                                  defconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
um                           x86_64_defconfig
um                             i386_defconfig
sh                               allmodconfig
nds32                             allnoconfig
nds32                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
riscv                             allnoconfig
riscv                               defconfig
arm                              allmodconfig
arm64                            allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
