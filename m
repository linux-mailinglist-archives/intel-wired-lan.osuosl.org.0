Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBFA30B40
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 11:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C25C0883B8;
	Fri, 31 May 2019 09:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UiCBMwRIY37N; Fri, 31 May 2019 09:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD73F8837F;
	Fri, 31 May 2019 09:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C8F1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 09:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09A22876A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 09:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLO2n4vXDV5A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 09:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5CA787683
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 09:19:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:19:27 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 31 May 2019 02:19:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hWdh7-0002QT-CB; Fri, 31 May 2019 17:19:25 +0800
Date: Fri, 31 May 2019 17:18:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cf0f169.myB+3fR9oiSxN1i/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 8b2d002239e0655548bd7a8542d3191346e2abf0
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
branch HEAD: 8b2d002239e0655548bd7a8542d3191346e2abf0  i40e: update copyright string

Regressions in current branch:

include/linux/netfilter_ipv6.h:110:9: error: implicit declaration of function 'nf_ct_frag6_gather'; did you mean 'nf_ct_attach'? [-Werror=implicit-function-declaration]
include/linux/netfilter_ipv6.h:110:9: error: implicit declaration of function 'nf_ct_frag6_gather'; did you mean 'nf_ct_bridge_register'? [-Werror=implicit-function-declaration]
include/linux/netfilter_ipv6.h:110:9: error: implicit declaration of function 'nf_ct_frag6_gather'; did you mean 'nf_ct_netns_get'? [-Werror=implicit-function-declaration]

Error ids grouped by kconfigs:

TIMEOUT after 609m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 98

alpha                            allmodconfig
alpha                            allyesconfig
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
mips                             allyesconfig
nds32                            allmodconfig
nds32                            allyesconfig
parisc                           allmodconfig
parisc                           allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
s390                             allyesconfig
sh                               allyesconfig
sparc                            allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
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
xtensa                           allmodconfig
xtensa                           allyesconfig

configs tested: 125

arm                              allmodconfig
arm64                            allmodconfig
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
riscv                              tinyconfig
i386                               tinyconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                           allnoconfig
s390                          debug_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
nds32                             allnoconfig
nds32                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
s390                             allmodconfig
x86_64                           allmodconfig
i386                             alldefconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                           allyesconfig
i386                             allmodconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
i386                   randconfig-x073-201921
i386                   randconfig-x071-201921
i386                   randconfig-x070-201921
i386                   randconfig-x074-201921
i386                   randconfig-x078-201921
i386                   randconfig-x075-201921
i386                   randconfig-x072-201921
i386                   randconfig-x076-201921
i386                   randconfig-x077-201921
i386                   randconfig-x079-201921
x86_64                 randconfig-x006-201921
x86_64                 randconfig-x003-201921
x86_64                 randconfig-x001-201921
x86_64                 randconfig-x007-201921
x86_64                 randconfig-x004-201921
x86_64                 randconfig-x005-201921
x86_64                 randconfig-x002-201921
x86_64                 randconfig-x009-201921
x86_64                 randconfig-x008-201921
x86_64                 randconfig-x000-201921
x86_64                 randconfig-x019-201921
x86_64                 randconfig-x015-201921
x86_64                 randconfig-x010-201921
x86_64                 randconfig-x012-201921
x86_64                 randconfig-x014-201921
x86_64                 randconfig-x017-201921
x86_64                 randconfig-x016-201921
x86_64                 randconfig-x018-201921
x86_64                 randconfig-x011-201921
x86_64                 randconfig-x013-201921
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
x86_64                  randconfig-x000201921
x86_64                  randconfig-x001201921
x86_64                  randconfig-x002201921
x86_64                  randconfig-x003201921
x86_64                  randconfig-x004201921
x86_64                  randconfig-x005201921
x86_64                  randconfig-x006201921
x86_64                  randconfig-x007201921
x86_64                  randconfig-x008201921
x86_64                  randconfig-x009201921
i386                   randconfig-x009-201921
i386                   randconfig-x008-201921
i386                   randconfig-x006-201921
i386                   randconfig-x004-201921
i386                   randconfig-x005-201921
i386                   randconfig-x001-201921
i386                   randconfig-x000-201921
i386                   randconfig-x007-201921
i386                   randconfig-x003-201921
i386                   randconfig-x002-201921

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
