Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A374A14987A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Jan 2020 03:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C20520449;
	Sun, 26 Jan 2020 02:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tuGybLK50zq9; Sun, 26 Jan 2020 02:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED1782044C;
	Sun, 26 Jan 2020 02:32:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAAC11BF82C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jan 2020 02:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D78CC8650A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jan 2020 02:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u3Ns4KRAfonV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Jan 2020 02:32:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DD8C864F4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jan 2020 02:32:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 18:32:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,364,1574150400"; d="scan'208";a="246084610"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Jan 2020 18:32:01 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivXiS-0003NJ-Ms; Sun, 26 Jan 2020 10:32:00 +0800
Date: Sun, 26 Jan 2020 10:31:03 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e2cf9e7.nfQq9Vo9RbnFTGep%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 61678d28d4a45ef376f5d02a839cc37509ae9281
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
branch HEAD: 61678d28d4a45ef376f5d02a839cc37509ae9281  net_sched: fix datalen for ematch

elapsed time: 3137m

configs tested: 188
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
arm                              allmodconfig
arm64                            allmodconfig
ia64                                defconfig
powerpc                             defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64               randconfig-g001-20200124
x86_64               randconfig-g002-20200124
x86_64               randconfig-g003-20200124
i386                 randconfig-g001-20200124
i386                 randconfig-g002-20200124
i386                 randconfig-g003-20200124
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
x86_64               randconfig-e001-20200124
x86_64               randconfig-e002-20200124
x86_64               randconfig-e003-20200124
i386                 randconfig-e001-20200124
i386                 randconfig-e002-20200124
i386                 randconfig-e003-20200124
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arm                               allnoconfig
arm                              allyesconfig
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
x86_64               randconfig-d001-20200124
x86_64               randconfig-d002-20200124
x86_64               randconfig-d003-20200124
i386                 randconfig-d001-20200124
i386                 randconfig-d002-20200124
i386                 randconfig-d003-20200124
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-a001-20200124
arm                  randconfig-a001-20200124
arm64                randconfig-a001-20200124
ia64                 randconfig-a001-20200124
powerpc              randconfig-a001-20200124
sparc                randconfig-a001-20200124
csky                 randconfig-a001-20200124
openrisc             randconfig-a001-20200124
s390                 randconfig-a001-20200124
sh                   randconfig-a001-20200124
xtensa               randconfig-a001-20200124
c6x                  randconfig-a001-20200124
h8300                randconfig-a001-20200124
microblaze           randconfig-a001-20200124
nios2                randconfig-a001-20200124
sparc64              randconfig-a001-20200124
x86_64               randconfig-f001-20200124
x86_64               randconfig-f002-20200124
x86_64               randconfig-f003-20200124
i386                 randconfig-f001-20200124
i386                 randconfig-f002-20200124
i386                 randconfig-f003-20200124
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
x86_64               randconfig-a001-20200124
x86_64               randconfig-a002-20200124
x86_64               randconfig-a003-20200124
i386                 randconfig-a001-20200124
i386                 randconfig-a002-20200124
i386                 randconfig-a003-20200124
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
x86_64               randconfig-f001-20200126
x86_64               randconfig-f002-20200126
x86_64               randconfig-f003-20200126
i386                 randconfig-f001-20200126
i386                 randconfig-f002-20200126
i386                 randconfig-f003-20200126
alpha                randconfig-a001-20200124
m68k                 randconfig-a001-20200124
mips                 randconfig-a001-20200124
nds32                randconfig-a001-20200124
parisc               randconfig-a001-20200124
riscv                randconfig-a001-20200124
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-c001-20200124
x86_64               randconfig-c002-20200124
x86_64               randconfig-c003-20200124
i386                 randconfig-c001-20200124
i386                 randconfig-c002-20200124
i386                 randconfig-c003-20200124
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64               randconfig-h001-20200125
x86_64               randconfig-h002-20200125
x86_64               randconfig-h003-20200125
i386                 randconfig-h001-20200125
i386                 randconfig-h002-20200125
i386                 randconfig-h003-20200125
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64               randconfig-b001-20200124
x86_64               randconfig-b002-20200124
x86_64               randconfig-b003-20200124
i386                 randconfig-b001-20200124
i386                 randconfig-b002-20200124
i386                 randconfig-b003-20200124
c6x                  randconfig-a001-20200125
h8300                randconfig-a001-20200125
microblaze           randconfig-a001-20200125
nios2                randconfig-a001-20200125
sparc64              randconfig-a001-20200125
x86_64               randconfig-h001-20200124
x86_64               randconfig-h002-20200124
x86_64               randconfig-h003-20200124
i386                 randconfig-h001-20200124
i386                 randconfig-h002-20200124
i386                 randconfig-h003-20200124
x86_64               randconfig-a001-20200125
x86_64               randconfig-a002-20200125
x86_64               randconfig-a003-20200125
i386                 randconfig-a001-20200125
i386                 randconfig-a002-20200125
i386                 randconfig-a003-20200125

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
