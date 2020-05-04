Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ED41C3CDC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 16:21:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C262522EE7;
	Mon,  4 May 2020 14:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqVODvEBI6ZN; Mon,  4 May 2020 14:21:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9E4325C56;
	Mon,  4 May 2020 14:21:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72E451BF306
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 14:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6EA8587547
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 14:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UrP467Se9pnG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 14:21:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F38E86935
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 14:21:46 +0000 (UTC)
IronPort-SDR: bUmRwBRB/1/sWzGAsPRl1T5IYlEIXJ/6nGK18M/jVOY5HkKX2p1bFhLD16FJLWIsDR4O4+gn7R
 bRwa5TecFW9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 07:21:45 -0700
IronPort-SDR: 6wDc8jzWkBr/ayOAlhDi4G7QkAlEbiC72naInvCz2yHGw2iWz+m0grteXnhDlMA3fApKJcfuB8
 0ZLqS38knsfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="250628610"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 04 May 2020 07:21:44 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jVbyZ-000CUB-Hv; Mon, 04 May 2020 22:21:43 +0800
Date: Mon, 04 May 2020 22:20:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5eb024c0.vURCjUGpHoIXIssr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 4726c14e382081e483d53a9721d8b986f52a6e3d
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
branch HEAD: 4726c14e382081e483d53a9721d8b986f52a6e3d  igc: Remove igc_nfc_rule_exit()

elapsed time: 4774m

configs tested: 236
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
xtensa                          iss_defconfig
h8300                    h8300h-sim_defconfig
c6x                              allyesconfig
arc                                 defconfig
powerpc                             defconfig
sparc64                           allnoconfig
i386                             alldefconfig
powerpc                    adder875_defconfig
powerpc                      chrp32_defconfig
m68k                       m5475evb_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                        generic_defconfig
ia64                          tiger_defconfig
ia64                         bigsur_defconfig
ia64                             allyesconfig
ia64                             alldefconfig
m68k                             allmodconfig
m68k                       bvme6000_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
xtensa                       common_defconfig
arc                              allyesconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                malta_kvm_guest_defconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                           ip32_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                       holly_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
powerpc                           allnoconfig
powerpc                  mpc866_ads_defconfig
powerpc                    amigaone_defconfig
powerpc                     ep8248e_defconfig
powerpc                          g5_defconfig
powerpc                     mpc512x_defconfig
parisc               randconfig-a001-20200430
mips                 randconfig-a001-20200430
m68k                 randconfig-a001-20200430
riscv                randconfig-a001-20200430
alpha                randconfig-a001-20200430
nds32                randconfig-a001-20200430
m68k                 randconfig-a001-20200501
mips                 randconfig-a001-20200501
nds32                randconfig-a001-20200501
alpha                randconfig-a001-20200501
parisc               randconfig-a001-20200501
riscv                randconfig-a001-20200501
microblaze           randconfig-a001-20200430
nios2                randconfig-a001-20200430
h8300                randconfig-a001-20200430
c6x                  randconfig-a001-20200430
sparc64              randconfig-a001-20200430
h8300                randconfig-a001-20200501
nios2                randconfig-a001-20200501
microblaze           randconfig-a001-20200501
c6x                  randconfig-a001-20200501
sparc64              randconfig-a001-20200501
s390                 randconfig-a001-20200430
xtensa               randconfig-a001-20200430
csky                 randconfig-a001-20200430
openrisc             randconfig-a001-20200430
sh                   randconfig-a001-20200430
s390                 randconfig-a001-20200501
xtensa               randconfig-a001-20200501
sh                   randconfig-a001-20200501
openrisc             randconfig-a001-20200501
csky                 randconfig-a001-20200501
i386                 randconfig-b003-20200501
x86_64               randconfig-b002-20200501
i386                 randconfig-b001-20200501
x86_64               randconfig-b003-20200501
x86_64               randconfig-b001-20200501
i386                 randconfig-b002-20200501
i386                 randconfig-b001-20200430
i386                 randconfig-b002-20200430
x86_64               randconfig-b001-20200430
i386                 randconfig-b003-20200430
x86_64               randconfig-b002-20200430
x86_64               randconfig-b003-20200430
i386                 randconfig-b003-20200502
i386                 randconfig-b001-20200502
x86_64               randconfig-b003-20200502
x86_64               randconfig-b001-20200502
i386                 randconfig-b002-20200502
x86_64               randconfig-c001-20200430
i386                 randconfig-c001-20200430
i386                 randconfig-c002-20200430
x86_64               randconfig-c002-20200430
x86_64               randconfig-c003-20200430
i386                 randconfig-c003-20200430
x86_64               randconfig-d002-20200430
x86_64               randconfig-d001-20200430
i386                 randconfig-d001-20200430
i386                 randconfig-d003-20200430
i386                 randconfig-d002-20200430
x86_64               randconfig-d003-20200430
x86_64               randconfig-e003-20200502
i386                 randconfig-e003-20200502
x86_64               randconfig-e001-20200502
i386                 randconfig-e002-20200502
i386                 randconfig-e001-20200502
x86_64               randconfig-e002-20200501
x86_64               randconfig-e003-20200501
i386                 randconfig-e003-20200501
x86_64               randconfig-e001-20200501
i386                 randconfig-e002-20200501
i386                 randconfig-e001-20200501
x86_64               randconfig-e002-20200430
i386                 randconfig-e003-20200430
x86_64               randconfig-e003-20200430
i386                 randconfig-e002-20200430
x86_64               randconfig-e001-20200430
i386                 randconfig-e001-20200430
i386                 randconfig-f003-20200501
x86_64               randconfig-f001-20200501
x86_64               randconfig-f003-20200501
i386                 randconfig-f001-20200501
i386                 randconfig-f002-20200501
x86_64               randconfig-f001-20200430
i386                 randconfig-f002-20200430
i386                 randconfig-f003-20200430
i386                 randconfig-f001-20200430
x86_64               randconfig-f003-20200430
i386                 randconfig-g002-20200430
i386                 randconfig-g001-20200430
i386                 randconfig-g003-20200430
x86_64               randconfig-g002-20200430
x86_64               randconfig-g003-20200502
i386                 randconfig-g003-20200502
i386                 randconfig-g002-20200502
x86_64               randconfig-g001-20200502
x86_64               randconfig-g002-20200502
i386                 randconfig-g001-20200502
i386                 randconfig-h001-20200501
i386                 randconfig-h002-20200501
i386                 randconfig-h003-20200501
x86_64               randconfig-h001-20200501
x86_64               randconfig-h003-20200501
i386                 randconfig-h002-20200430
i386                 randconfig-h003-20200430
x86_64               randconfig-h001-20200430
x86_64               randconfig-h003-20200430
i386                 randconfig-h001-20200430
ia64                 randconfig-a001-20200501
arc                  randconfig-a001-20200501
powerpc              randconfig-a001-20200501
arm                  randconfig-a001-20200501
sparc                randconfig-a001-20200501
sparc                randconfig-a001-20200430
arc                  randconfig-a001-20200430
ia64                 randconfig-a001-20200430
powerpc              randconfig-a001-20200430
arm                  randconfig-a001-20200430
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
