Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 421BCB12B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 18:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E0CDF203E8;
	Thu, 12 Sep 2019 16:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aos-lxZulG8t; Thu, 12 Sep 2019 16:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F15C52278E;
	Thu, 12 Sep 2019 16:25:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 467711BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 16:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4276E8816A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 16:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEsXlp6DgBDh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 16:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4E6F8815D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 16:24:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 09:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; d="scan'208";a="186173679"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 12 Sep 2019 09:24:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i8Rtv-0000pb-BT; Fri, 13 Sep 2019 00:24:55 +0800
Date: Fri, 13 Sep 2019 00:24:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d7a713c.5pgV0bHls171N2Gn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:40GbE] BUILD INCOMPLETE
 1f459bdc20076fd6d103f5920a4704c5f8ba378b
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  40GbE
branch HEAD: 1f459bdc20076fd6d103f5920a4704c5f8ba378b  i40e: fix potential RX buffer starvation for AF_XDP

TIMEOUT after 1443m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 16

i386                             allmodconfig
m68k                             allmodconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                                   jz4740
mips                                     txx9
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                             acpi-redef
x86_64                           allyesconfig
x86_64                           allyesdebian
x86_64                                nfsroot

configs tested: 109

mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
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
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
x86_64                 randconfig-h002-201936
x86_64                 randconfig-h003-201936
i386                   randconfig-h001-201936
i386                   randconfig-h002-201936
i386                   randconfig-h004-201936
x86_64                 randconfig-h004-201936
i386                   randconfig-h003-201936
x86_64                 randconfig-h001-201936
i386                   randconfig-f004-201936
x86_64                 randconfig-f004-201936
x86_64                 randconfig-f002-201936
i386                   randconfig-f001-201936
i386                   randconfig-f002-201936
i386                   randconfig-f003-201936
x86_64                 randconfig-f003-201936
x86_64                 randconfig-f001-201936
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
x86_64                 randconfig-c003-201936
x86_64                 randconfig-c002-201936
i386                   randconfig-c004-201936
x86_64                 randconfig-c004-201936
i386                   randconfig-c003-201936
i386                   randconfig-c002-201936
x86_64                 randconfig-c001-201936
i386                   randconfig-c001-201936
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
x86_64                 randconfig-e004-201936
i386                   randconfig-e004-201936
x86_64                 randconfig-e002-201936
i386                   randconfig-e003-201936
x86_64                 randconfig-e003-201936
x86_64                 randconfig-e001-201936
i386                   randconfig-e002-201936
i386                   randconfig-e001-201936
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                           allmodconfig
x86_64                 randconfig-b002-201936
i386                   randconfig-b003-201936
i386                   randconfig-b004-201936
i386                   randconfig-b001-201936
i386                   randconfig-b002-201936
x86_64                 randconfig-b001-201936
x86_64                 randconfig-b004-201936
x86_64                 randconfig-b003-201936
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
