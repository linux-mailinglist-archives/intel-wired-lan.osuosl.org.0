Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A040E1A3E96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2020 05:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17FE02052C;
	Fri, 10 Apr 2020 03:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id om1NnFkabGG4; Fri, 10 Apr 2020 03:08:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C868D20524;
	Fri, 10 Apr 2020 03:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59FF41BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2020 03:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD816203F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2020 03:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3fZvJfVsjmyU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2020 03:08:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B7FB2012D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2020 03:08:47 +0000 (UTC)
IronPort-SDR: w7Ri2u31PctWw6eAMca7j88imMdLGyl77betIzcHg7ktZ221DBrYEKDgnQzC/FgRSqLg24CyxJ
 z2ZtcvHp+bbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 20:08:47 -0700
IronPort-SDR: DADh/bBrMFjosrZOaJDkwx5bA3r2JABY3k4uTrLfQzqIlfA4+Uj0p2jPAmkDRRoa37GeCGY8PM
 +KcZHgZJWaow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,364,1580803200"; d="scan'208";a="242825632"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Apr 2020 20:08:45 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jMk29-000Are-8c; Fri, 10 Apr 2020 11:08:45 +0800
Date: Fri, 10 Apr 2020 11:07:49 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e8fe305.vYDISNaB2KxWY5X3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 61c1436fa238cc723bf77c9a6a3b29b399dba209
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 61c1436fa238cc723bf77c9a6a3b29b399dba209  ice: Fix a couple off by one bugs

elapsed time: 480m

configs tested: 166
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
s390                              allnoconfig
mips                             allyesconfig
xtensa                          iss_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200410
x86_64               randconfig-a002-20200410
x86_64               randconfig-a003-20200410
i386                 randconfig-a001-20200410
i386                 randconfig-a002-20200410
i386                 randconfig-a003-20200410
alpha                randconfig-a001-20200409
m68k                 randconfig-a001-20200409
mips                 randconfig-a001-20200409
nds32                randconfig-a001-20200409
parisc               randconfig-a001-20200409
riscv                randconfig-a001-20200409
c6x                  randconfig-a001-20200410
h8300                randconfig-a001-20200410
microblaze           randconfig-a001-20200410
nios2                randconfig-a001-20200410
sparc64              randconfig-a001-20200410
csky                 randconfig-a001-20200409
openrisc             randconfig-a001-20200409
s390                 randconfig-a001-20200409
sh                   randconfig-a001-20200409
xtensa               randconfig-a001-20200409
x86_64               randconfig-b001-20200409
x86_64               randconfig-b002-20200409
x86_64               randconfig-b003-20200409
i386                 randconfig-b001-20200409
i386                 randconfig-b002-20200409
i386                 randconfig-b003-20200409
x86_64               randconfig-c001-20200409
x86_64               randconfig-c002-20200409
x86_64               randconfig-c003-20200409
i386                 randconfig-c001-20200409
i386                 randconfig-c002-20200409
i386                 randconfig-c003-20200409
x86_64               randconfig-d001-20200410
x86_64               randconfig-d002-20200410
x86_64               randconfig-d003-20200410
i386                 randconfig-d001-20200410
i386                 randconfig-d002-20200410
i386                 randconfig-d003-20200410
x86_64               randconfig-e001-20200409
x86_64               randconfig-e002-20200409
x86_64               randconfig-e003-20200409
i386                 randconfig-e001-20200409
i386                 randconfig-e002-20200409
i386                 randconfig-e003-20200409
x86_64               randconfig-f001-20200409
x86_64               randconfig-f002-20200409
x86_64               randconfig-f003-20200409
i386                 randconfig-f001-20200409
i386                 randconfig-f002-20200409
i386                 randconfig-f003-20200409
x86_64               randconfig-g001-20200410
x86_64               randconfig-g002-20200410
x86_64               randconfig-g003-20200410
i386                 randconfig-g001-20200410
i386                 randconfig-g002-20200410
i386                 randconfig-g003-20200410
x86_64               randconfig-h001-20200409
x86_64               randconfig-h002-20200409
x86_64               randconfig-h003-20200409
i386                 randconfig-h001-20200409
i386                 randconfig-h002-20200409
i386                 randconfig-h003-20200409
arc                  randconfig-a001-20200409
arm                  randconfig-a001-20200409
arm64                randconfig-a001-20200409
ia64                 randconfig-a001-20200409
powerpc              randconfig-a001-20200409
sparc                randconfig-a001-20200409
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
