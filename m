Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B7A5D6D6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 21:23:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 43D9F2154A;
	Tue,  2 Jul 2019 19:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N+6o45rcnDAq; Tue,  2 Jul 2019 19:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCB2921574;
	Tue,  2 Jul 2019 19:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C55E91BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 19:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2E662154A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 19:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mmj8KvqUen8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 19:23:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E55D2156B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 19:23:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 12:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="168905164"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 02 Jul 2019 12:23:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hiOMu-0006Oc-JO; Wed, 03 Jul 2019 03:23:08 +0800
Date: Wed, 03 Jul 2019 03:22:31 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d1baef7.1H6i8o4ia7RPuruE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD INCOMPLETE
 b8e8a86337c25941cb06e9a1c8ee01ab9aab0cc2
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/net-queue.git  master
branch HEAD: b8e8a86337c25941cb06e9a1c8ee01ab9aab0cc2  net/ipv6: Fix misuse of proc_dointvec "skip_notify_on_dev_down"

TIMEOUT after 728m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 50

alpha                            allmodconfig
alpha                            allyesconfig
alpha                               defconfig
i386                             alldefconfig
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
i386                               tinyconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                             allyesconfig
nds32                            allmodconfig
nds32                            allyesconfig
parisc                           allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
riscv                              tinyconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
sh                               allyesconfig
sparc                            allmodconfig
sparc64                          allyesconfig
um                                  defconfig
x86_64                           allmodconfig
xtensa                           allmodconfig
xtensa                           allyesconfig

configs tested: 127

openrisc                    or1ksim_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
arm                              allmodconfig
arm64                            allmodconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                           allyesconfig
i386                             allmodconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-n001-201926
x86_64                 randconfig-n002-201926
x86_64                 randconfig-n003-201926
x86_64                 randconfig-n004-201926
x86_64                 randconfig-n005-201926
x86_64                 randconfig-n006-201926
x86_64                 randconfig-n007-201926
x86_64                 randconfig-n008-201926
x86_64                 randconfig-n009-201926
x86_64                 randconfig-n010-201926
x86_64                 randconfig-n011-201926
x86_64                 randconfig-n012-201926
x86_64                 randconfig-n013-201926
x86_64                 randconfig-n014-201926
x86_64                 randconfig-n015-201926
x86_64                 randconfig-n016-201926
x86_64                 randconfig-n017-201926
x86_64                 randconfig-n018-201926
x86_64                 randconfig-n019-201926
x86_64                 randconfig-n020-201926
x86_64                 randconfig-n021-201926
x86_64                 randconfig-n022-201926
x86_64                 randconfig-n023-201926
x86_64                 randconfig-n024-201926
x86_64                 randconfig-n025-201926
x86_64                 randconfig-n026-201926
x86_64                 randconfig-n027-201926
x86_64                 randconfig-n028-201926
x86_64                 randconfig-n029-201926
x86_64                 randconfig-n030-201926
x86_64                 randconfig-n031-201926
x86_64                 randconfig-n032-201926
i386                   randconfig-n001-201926
i386                   randconfig-n002-201926
i386                   randconfig-n003-201926
i386                   randconfig-n004-201926
i386                   randconfig-n005-201926
i386                   randconfig-n006-201926
i386                   randconfig-n007-201926
i386                   randconfig-n008-201926
i386                   randconfig-n009-201926
i386                   randconfig-n010-201926
i386                   randconfig-n011-201926
i386                   randconfig-n012-201926
i386                   randconfig-n013-201926
i386                   randconfig-n014-201926
i386                   randconfig-n015-201926
i386                   randconfig-n016-201926
i386                   randconfig-n017-201926
i386                   randconfig-n018-201926
i386                   randconfig-n019-201926
i386                   randconfig-n020-201926
i386                   randconfig-n021-201926
i386                   randconfig-n022-201926
i386                   randconfig-n023-201926
i386                   randconfig-n024-201926
i386                   randconfig-n025-201926
i386                   randconfig-n026-201926
i386                   randconfig-n027-201926
i386                   randconfig-n028-201926
i386                   randconfig-n029-201926
i386                   randconfig-n030-201926
i386                   randconfig-n031-201926
i386                   randconfig-n032-201926
arc                              allyesconfig
arc                                 defconfig
openrisc                 simple_smp_defconfig
c6x                              allyesconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
nios2                         3c120_defconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
