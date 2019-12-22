Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B814128C2E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Dec 2019 02:58:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD7E320335;
	Sun, 22 Dec 2019 01:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RofcgGweNMHT; Sun, 22 Dec 2019 01:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 983E5204B2;
	Sun, 22 Dec 2019 01:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7B691BF25B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2019 01:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C391386216
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2019 01:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nS8itIkK9JkI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Dec 2019 01:58:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E570685D9B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2019 01:58:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Dec 2019 17:58:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,342,1571727600"; d="scan'208";a="418330831"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Dec 2019 17:58:38 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iiqVy-0008eP-8F; Sun, 22 Dec 2019 09:58:38 +0800
Date: Sun, 22 Dec 2019 09:58:15 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dfecdb7.GNeNWXdQrrBjlHLO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 4d0f025125a229960630ffa17861df8133108e29
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
branch HEAD: 4d0f025125a229960630ffa17861df8133108e29  ice: remove redundant assignment to variable xmit_done

TIMEOUT after 2881m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 26

arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
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
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig

configs tested: 149

um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                 randconfig-e002-20191220
x86_64               randconfig-e002-20191220
x86_64               randconfig-e001-20191220
i386                 randconfig-e003-20191220
x86_64               randconfig-e003-20191220
i386                 randconfig-e001-20191220
x86_64               randconfig-g002-20191220
i386                 randconfig-g003-20191220
i386                 randconfig-g001-20191220
x86_64               randconfig-g001-20191220
i386                 randconfig-g002-20191220
x86_64               randconfig-g003-20191220
x86_64               randconfig-d001-20191222
x86_64               randconfig-d002-20191222
x86_64               randconfig-d003-20191222
i386                 randconfig-d001-20191222
i386                 randconfig-d002-20191222
i386                 randconfig-d003-20191222
arm64                randconfig-a001-20191220
arm                  randconfig-a001-20191220
powerpc              randconfig-a001-20191220
arc                  randconfig-a001-20191220
ia64                 randconfig-a001-20191220
sparc                randconfig-a001-20191220
i386                 randconfig-d003-20191220
x86_64               randconfig-d001-20191220
x86_64               randconfig-d002-20191220
i386                 randconfig-d002-20191220
x86_64               randconfig-d003-20191220
i386                 randconfig-d001-20191220
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
sparc64                          allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                             allyesconfig
i386                 randconfig-h003-20191220
x86_64               randconfig-a002-20191222
x86_64               randconfig-a001-20191222
x86_64               randconfig-a003-20191222
i386                 randconfig-a001-20191222
i386                 randconfig-a002-20191222
i386                 randconfig-a003-20191222
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
arm                           sunxi_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
c6x                  randconfig-a001-20191222
h8300                randconfig-a001-20191222
microblaze           randconfig-a001-20191222
nios2                randconfig-a001-20191222
sparc64              randconfig-a001-20191222
i386                 randconfig-f001-20191220
x86_64               randconfig-f003-20191220
i386                 randconfig-f003-20191220
i386                 randconfig-f002-20191220
x86_64               randconfig-f001-20191220
x86_64               randconfig-f002-20191220
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64               randconfig-b001-20191222
x86_64               randconfig-b002-20191222
x86_64               randconfig-b003-20191222
i386                 randconfig-b001-20191222
i386                 randconfig-b002-20191222
i386                 randconfig-b003-20191222
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
mips                 randconfig-a001-20191220
m68k                 randconfig-a001-20191220
riscv                randconfig-a001-20191220
nds32                randconfig-a001-20191220
parisc               randconfig-a001-20191220
alpha                randconfig-a001-20191220
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
csky                 randconfig-a001-20191222
openrisc             randconfig-a001-20191222
s390                 randconfig-a001-20191222
sh                   randconfig-a001-20191222
xtensa               randconfig-a001-20191222
x86_64               randconfig-b003-20191220
x86_64               randconfig-b001-20191220
x86_64               randconfig-b002-20191220
i386                 randconfig-b001-20191220
i386                 randconfig-b003-20191220
i386                 randconfig-b002-20191220
s390                 randconfig-a001-20191220
sh                   randconfig-a001-20191220
xtensa               randconfig-a001-20191220
openrisc             randconfig-a001-20191220
csky                 randconfig-a001-20191220
x86_64               randconfig-c003-20191222
i386                 randconfig-c001-20191222
i386                 randconfig-c003-20191222
i386                 randconfig-c002-20191222
x86_64               randconfig-c002-20191222
x86_64               randconfig-c001-20191222

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
