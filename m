Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CDA6509D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2019 05:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D235C86BA8;
	Thu, 11 Jul 2019 03:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5YZQmVWII2C; Thu, 11 Jul 2019 03:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D23E386BC6;
	Thu, 11 Jul 2019 03:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 841DD1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 03:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 809B286225
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 03:22:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8r8u8ksrcpd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2019 03:22:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A5A181101
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 03:22:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 20:22:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="317553650"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2019 20:22:45 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hlPfQ-000Hc2-Ro; Thu, 11 Jul 2019 11:22:44 +0800
Date: Thu, 11 Jul 2019 11:20:15 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d26aaef.FRSjpvvuihmwzcK5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD INCOMPLETE
 e858faf556d4e14c750ba1e8852783c6f9520a0e
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
branch HEAD: e858faf556d4e14c750ba1e8852783c6f9520a0e  tcp: Reset bytes_acked and bytes_received when disconnecting

TIMEOUT after 2890m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 94

alpha                            allmodconfig
alpha                            allyesconfig
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
riscv                            allyesconfig
s390                             allyesconfig
sh                               allyesconfig
sparc                            allmodconfig
sparc64                          allyesconfig
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
xtensa                           allmodconfig
xtensa                           allyesconfig

configs tested: 127

microblaze                    nommu_defconfig
microblaze                      mmu_defconfig
arc                              allyesconfig
arc                                 defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
riscv                              tinyconfig
i386                               tinyconfig
i386                   randconfig-x000-201927
i386                   randconfig-x001-201927
i386                   randconfig-x002-201927
i386                   randconfig-x003-201927
i386                   randconfig-x004-201927
i386                   randconfig-x005-201927
i386                   randconfig-x006-201927
i386                   randconfig-x007-201927
i386                   randconfig-x008-201927
i386                   randconfig-x009-201927
riscv                             allnoconfig
riscv                               defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                           allmodconfig
x86_64                           allyesconfig
i386                             alldefconfig
i386                   randconfig-x070-201927
i386                   randconfig-x071-201927
i386                   randconfig-x072-201927
i386                   randconfig-x073-201927
i386                   randconfig-x074-201927
i386                   randconfig-x075-201927
i386                   randconfig-x076-201927
i386                   randconfig-x077-201927
i386                   randconfig-x078-201927
i386                   randconfig-x079-201927
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
i386                   randconfig-x010-201927
i386                   randconfig-x011-201927
i386                   randconfig-x012-201927
i386                   randconfig-x013-201927
i386                   randconfig-x014-201927
i386                   randconfig-x015-201927
i386                   randconfig-x016-201927
i386                   randconfig-x017-201927
i386                   randconfig-x018-201927
i386                   randconfig-x019-201927
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                          debug_defconfig
nds32                             allnoconfig
nds32                               defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
s390                              allnoconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                 randconfig-x000-201927
x86_64                 randconfig-x001-201927
x86_64                 randconfig-x002-201927
x86_64                 randconfig-x003-201927
x86_64                 randconfig-x004-201927
x86_64                 randconfig-x005-201927
x86_64                 randconfig-x006-201927
x86_64                 randconfig-x007-201927
x86_64                 randconfig-x008-201927
x86_64                 randconfig-x009-201927
i386                             allmodconfig
s390                                defconfig
i386                              allnoconfig
i386                                defconfig
x86_64                 randconfig-x010-201927
x86_64                 randconfig-x011-201927
x86_64                 randconfig-x012-201927
x86_64                 randconfig-x013-201927
x86_64                 randconfig-x014-201927
x86_64                 randconfig-x015-201927
x86_64                 randconfig-x016-201927
x86_64                 randconfig-x017-201927
x86_64                 randconfig-x018-201927
x86_64                 randconfig-x019-201927
arm                              allmodconfig
arm64                            allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
