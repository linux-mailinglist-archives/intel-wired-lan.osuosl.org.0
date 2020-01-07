Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31353132236
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2020 10:24:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6970187860;
	Tue,  7 Jan 2020 09:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPrPHtroRHG0; Tue,  7 Jan 2020 09:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFE408788E;
	Tue,  7 Jan 2020 09:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 174451BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 09:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E4F98783F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 09:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2KlXPiSwNVT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2020 09:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 08AD787834
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 09:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 01:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,405,1571727600"; d="scan'208";a="211075823"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 07 Jan 2020 01:23:57 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iol5g-000D8Z-GU; Tue, 07 Jan 2020 17:23:56 +0800
Date: Tue, 07 Jan 2020 17:23:26 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e144e0e.iroQxBgyWXPDHFYg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:1GbE] BUILD SUCCESS
 a299df3524eabc1def8e93bf005b07ea396ff2bd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  1GbE
branch HEAD: a299df3524eabc1def8e93bf005b07ea396ff2bd  igc: Use Start of Packet signal from PHY for timestamping

elapsed time: 602m

configs tested: 158

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                randconfig-a001-20200107
m68k                 randconfig-a001-20200107
mips                 randconfig-a001-20200107
nds32                randconfig-a001-20200107
parisc               randconfig-a001-20200107
riscv                randconfig-a001-20200107
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
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
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
x86_64               randconfig-e001-20200107
x86_64               randconfig-e002-20200107
x86_64               randconfig-e003-20200107
i386                 randconfig-e001-20200107
i386                 randconfig-e002-20200107
i386                 randconfig-e003-20200107
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
microblaze           randconfig-a001-20200107
sparc64              randconfig-a001-20200107
nios2                randconfig-a001-20200107
h8300                randconfig-a001-20200107
c6x                  randconfig-a001-20200107
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-h001-20200107
x86_64               randconfig-h002-20200107
x86_64               randconfig-h003-20200107
i386                 randconfig-h001-20200107
i386                 randconfig-h002-20200107
i386                 randconfig-h003-20200107
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
sparc                            allyesconfig
csky                 randconfig-a001-20200107
openrisc             randconfig-a001-20200107
s390                 randconfig-a001-20200107
sh                   randconfig-a001-20200107
xtensa               randconfig-a001-20200107
x86_64               randconfig-g001-20200107
x86_64               randconfig-g002-20200107
x86_64               randconfig-g003-20200107
i386                 randconfig-g001-20200107
i386                 randconfig-g002-20200107
i386                 randconfig-g003-20200107
x86_64               randconfig-f001-20200106
x86_64               randconfig-f002-20200106
x86_64               randconfig-f003-20200106
i386                 randconfig-f001-20200106
i386                 randconfig-f002-20200106
i386                 randconfig-f003-20200106
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64               randconfig-f001-20200107
x86_64               randconfig-f002-20200107
x86_64               randconfig-f003-20200107
i386                 randconfig-f001-20200107
i386                 randconfig-f002-20200107
i386                 randconfig-f003-20200107
x86_64               randconfig-h003-20200106
x86_64               randconfig-h002-20200106
i386                 randconfig-h003-20200106
i386                 randconfig-h002-20200106
i386                 randconfig-h001-20200106
x86_64               randconfig-h001-20200106
x86_64               randconfig-c002-20200106
x86_64               randconfig-c001-20200106
x86_64               randconfig-c003-20200106
i386                 randconfig-c001-20200106
i386                 randconfig-c002-20200106
i386                 randconfig-c003-20200106
x86_64               randconfig-a001-20200107
x86_64               randconfig-a002-20200107
x86_64               randconfig-a003-20200107
i386                 randconfig-a001-20200107
i386                 randconfig-a002-20200107
i386                 randconfig-a003-20200107
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
