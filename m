Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E751569F6
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Feb 2020 12:20:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B25F87B97;
	Sun,  9 Feb 2020 11:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id six0LdEvdZBq; Sun,  9 Feb 2020 11:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83EEF87D17;
	Sun,  9 Feb 2020 11:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 580FB1BF427
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2020 11:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 531FE87B97
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2020 11:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pe+EiKKMecIN for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Feb 2020 11:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2DD2586D73
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2020 11:20:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Feb 2020 03:20:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,421,1574150400"; d="scan'208";a="265545117"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2020 03:20:44 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j0kdo-000HBF-EK; Sun, 09 Feb 2020 19:20:44 +0800
Date: Sun, 09 Feb 2020 19:20:07 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e3feae7.fU+aeIN5LkX3M5gI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 f798a5a0a60575f329ff29b13360bf4a14cc90d1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  master
branch HEAD: f798a5a0a60575f329ff29b13360bf4a14cc90d1  Merge tag 'mlx5-fixes-2020-02-06' of git://git.kernel.org/pub/scm/linux/kernel/git/saeed/linux

elapsed time: 3536m

configs tested: 194
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

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
sparc                            allyesconfig
s390                                defconfig
sh                          rsk7269_defconfig
ia64                                defconfig
mips                              allnoconfig
mips                      malta_kvm_defconfig
riscv                             allnoconfig
sparc64                          allmodconfig
sh                                allnoconfig
parisc                           allyesconfig
mips                             allyesconfig
powerpc                             defconfig
parisc                              defconfig
riscv                    nommu_virt_defconfig
s390                       zfcpdump_defconfig
sparc64                          allyesconfig
arc                              allyesconfig
xtensa                          iss_defconfig
arc                                 defconfig
s390                             alldefconfig
s390                             allmodconfig
microblaze                      mmu_defconfig
powerpc                           allnoconfig
sparc                               defconfig
powerpc                       ppc64_defconfig
alpha                               defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
csky                                defconfig
riscv                               defconfig
openrisc                 simple_smp_defconfig
um                           x86_64_defconfig
ia64                              allnoconfig
nios2                         3c120_defconfig
sh                  sh7785lcr_32bit_defconfig
openrisc                    or1ksim_defconfig
sh                            titan_defconfig
nios2                         10m50_defconfig
sparc64                           allnoconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                             allyesconfig
c6x                              allyesconfig
xtensa                       common_defconfig
nds32                               defconfig
nds32                             allnoconfig
h8300                     edosk2674_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
microblaze                    nommu_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                      fuloong2e_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
x86_64               randconfig-a001-20200207
x86_64               randconfig-a002-20200207
x86_64               randconfig-a003-20200207
i386                 randconfig-a001-20200207
i386                 randconfig-a002-20200207
i386                 randconfig-a003-20200207
x86_64               randconfig-a001-20200208
x86_64               randconfig-a002-20200208
x86_64               randconfig-a003-20200208
i386                 randconfig-a001-20200208
i386                 randconfig-a002-20200208
i386                 randconfig-a003-20200208
alpha                randconfig-a001-20200208
m68k                 randconfig-a001-20200208
mips                 randconfig-a001-20200208
nds32                randconfig-a001-20200208
parisc               randconfig-a001-20200208
riscv                randconfig-a001-20200208
alpha                randconfig-a001-20200207
m68k                 randconfig-a001-20200207
mips                 randconfig-a001-20200207
nds32                randconfig-a001-20200207
parisc               randconfig-a001-20200207
riscv                randconfig-a001-20200207
c6x                  randconfig-a001-20200209
h8300                randconfig-a001-20200209
microblaze           randconfig-a001-20200209
nios2                randconfig-a001-20200209
sparc64              randconfig-a001-20200209
h8300                randconfig-a001-20200207
nios2                randconfig-a001-20200207
sparc64              randconfig-a001-20200207
microblaze           randconfig-a001-20200207
c6x                  randconfig-a001-20200207
sh                   randconfig-a001-20200207
csky                 randconfig-a001-20200207
s390                 randconfig-a001-20200207
xtensa               randconfig-a001-20200207
openrisc             randconfig-a001-20200207
x86_64               randconfig-b001-20200207
x86_64               randconfig-b002-20200207
x86_64               randconfig-b003-20200207
i386                 randconfig-b001-20200207
i386                 randconfig-b002-20200207
i386                 randconfig-b003-20200207
x86_64               randconfig-c001-20200207
x86_64               randconfig-c002-20200207
x86_64               randconfig-c003-20200207
i386                 randconfig-c001-20200207
i386                 randconfig-c002-20200207
i386                 randconfig-c003-20200207
x86_64               randconfig-c001-20200208
x86_64               randconfig-c002-20200208
x86_64               randconfig-c003-20200208
i386                 randconfig-c001-20200208
i386                 randconfig-c002-20200208
i386                 randconfig-c003-20200208
x86_64               randconfig-d001-20200207
x86_64               randconfig-d002-20200207
x86_64               randconfig-d003-20200207
i386                 randconfig-d001-20200207
i386                 randconfig-d002-20200207
i386                 randconfig-d003-20200207
x86_64               randconfig-e001-20200207
x86_64               randconfig-e002-20200207
x86_64               randconfig-e003-20200207
i386                 randconfig-e001-20200207
i386                 randconfig-e002-20200207
i386                 randconfig-e003-20200207
x86_64               randconfig-g001-20200207
x86_64               randconfig-g002-20200207
x86_64               randconfig-g003-20200207
i386                 randconfig-g001-20200207
i386                 randconfig-g002-20200207
i386                 randconfig-g003-20200207
x86_64               randconfig-h001-20200206
x86_64               randconfig-h002-20200206
x86_64               randconfig-h003-20200206
i386                 randconfig-h001-20200206
i386                 randconfig-h002-20200206
i386                 randconfig-h003-20200206
x86_64               randconfig-h001-20200208
x86_64               randconfig-h002-20200208
x86_64               randconfig-h003-20200208
i386                 randconfig-h001-20200208
i386                 randconfig-h002-20200208
i386                 randconfig-h003-20200208
arc                  randconfig-a001-20200207
arm                  randconfig-a001-20200207
arm64                randconfig-a001-20200207
ia64                 randconfig-a001-20200207
powerpc              randconfig-a001-20200207
sparc                randconfig-a001-20200207
arc                  randconfig-a001-20200208
arm                  randconfig-a001-20200208
arm64                randconfig-a001-20200208
ia64                 randconfig-a001-20200208
powerpc              randconfig-a001-20200208
sparc                randconfig-a001-20200208
riscv                            allmodconfig
riscv                            allyesconfig
riscv                          rv32_defconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
sh                               allmodconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
