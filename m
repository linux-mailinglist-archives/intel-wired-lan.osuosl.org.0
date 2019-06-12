Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E03A42298
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 12:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EEF4887C17;
	Wed, 12 Jun 2019 10:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AkUchEM8JbSx; Wed, 12 Jun 2019 10:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 411D687F52;
	Wed, 12 Jun 2019 10:35:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2BFC1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 10:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD15F20354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 10:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7mYXH7YvBQrv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 10:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C58520007
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 10:35:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 03:35:48 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2019 03:35:47 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hb0ba-000IkW-NW; Wed, 12 Jun 2019 18:35:46 +0800
Date: Wed, 12 Jun 2019 18:34:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d00d547.HSV/hHmM3x2t0x0S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 88098cd522c54b24ae18fa7c02f7071b80565723
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
branch HEAD: 88098cd522c54b24ae18fa7c02f7071b80565723  e1000: Use dma_wmb() instead of wmb() before doorbell writes

TIMEOUT after 605m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 206

alpha                            allmodconfig
alpha                            allyesconfig
alpha                               defconfig
arm                              allmodconfig
arm                               allnoconfig
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
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
i386                             alldefconfig
i386                             allmodconfig
i386                              allnoconfig
i386                                defconfig
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
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
nds32                            allyesconfig
nds32                               defconfig
nios2                         10m50_defconfig
openrisc                    or1ksim_defconfig
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
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                          debug_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                               allyesconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                            allmodconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                             acpi-redef
x86_64                           allmodconfig
x86_64                           allyesconfig
x86_64                           allyesdebian
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
xtensa                           allmodconfig
xtensa                           allyesconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig

configs tested: 7

riscv                              tinyconfig
i386                               tinyconfig
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
