Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A741149F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2019 00:44:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FDD788915;
	Thu,  5 Dec 2019 23:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFck8phRYVON; Thu,  5 Dec 2019 23:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C544988884;
	Thu,  5 Dec 2019 23:43:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 558F11BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 23:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FBA1875C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 23:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJ3a6Dbb4Shm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2019 23:43:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6144875AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2019 23:43:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 15:43:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; d="scan'208";a="223817438"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 05 Dec 2019 15:43:54 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1id0mn-000APD-OE; Fri, 06 Dec 2019 07:43:53 +0800
Date: Fri, 06 Dec 2019 07:43:26 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5de9961e.+2eXdMEAYe1AK9yh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 ca8e48eb5f3baa989219ee984366404a8859f45a
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
branch HEAD: ca8e48eb5f3baa989219ee984366404a8859f45a  igc: Use Start of Packet signal from PHY for timestamping

TIMEOUT after 2888m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 19

i386                             allyesconfig
ia64                             alldefconfig
ia64                                defconfig
mips                         64r6el_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig

configs tested: 105

x86_64               randconfig-b001-20191204
i386                 randconfig-b001-20191204
i386                 randconfig-b002-20191204
x86_64               randconfig-b003-20191204
x86_64               randconfig-b002-20191204
i386                 randconfig-b003-20191204
x86_64               randconfig-c001-20191204
i386                 randconfig-c003-20191204
i386                 randconfig-c002-20191204
x86_64               randconfig-c002-20191204
i386                 randconfig-c001-20191204
x86_64               randconfig-c003-20191204
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64               randconfig-e003-20191204
i386                 randconfig-e003-20191204
x86_64               randconfig-e001-20191204
i386                 randconfig-e001-20191204
i386                 randconfig-e002-20191204
x86_64               randconfig-e002-20191204
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
mips                             allmodconfig
mips                           32r2_defconfig
mips                              allnoconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64               randconfig-h001-20191204
i386                 randconfig-h001-20191204
i386                 randconfig-h003-20191204
x86_64               randconfig-h003-20191204
x86_64               randconfig-h002-20191204
i386                 randconfig-h002-20191204
i386                 randconfig-g003-20191204
x86_64               randconfig-g003-20191204
i386                 randconfig-g002-20191204
i386                 randconfig-g001-20191204
x86_64               randconfig-g001-20191204
x86_64               randconfig-g002-20191204
arc                              allyesconfig
microblaze                    nommu_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
ia64                 randconfig-a001-20191204
arm64                randconfig-a001-20191204
powerpc              randconfig-a001-20191204
sparc                randconfig-a001-20191204
arm                  randconfig-a001-20191204
arc                 randconfig-a0031-20191204
x86_64               randconfig-f001-20191204
x86_64               randconfig-f003-20191204
i386                 randconfig-f003-20191204
i386                 randconfig-f001-20191204
i386                 randconfig-f002-20191204
x86_64               randconfig-f002-20191204
i386                 randconfig-a001-20191204
ia64                             allmodconfig
ia64                              allnoconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
