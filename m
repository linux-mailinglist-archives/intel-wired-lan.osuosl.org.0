Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DA51B8AD4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Apr 2020 03:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1E4887B4D;
	Sun, 26 Apr 2020 01:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xijjsG61p6ae; Sun, 26 Apr 2020 01:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BBF787B94;
	Sun, 26 Apr 2020 01:29:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3801C1BF296
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Apr 2020 01:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 34DAB85657
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Apr 2020 01:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Aw7Gu_BnZ3wa for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Apr 2020 01:29:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4450785641
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Apr 2020 01:29:33 +0000 (UTC)
IronPort-SDR: Eh1L2x94Ey5DIUtisM63vXuotW7qWm9EWomqOLp3mTpr9NaiZcpLlAKmulYqVqE+hr7wvmdX1q
 HxnXeabyFUDw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 18:29:32 -0700
IronPort-SDR: Lk4gTmiMt1G3RyN1M3u3swS+BKx4eTG21XuSBhO3Y7EcJStlEGX3P4iz9a8Pzc03WfrjsrlsAR
 j6P9exVHeoxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,318,1583222400"; d="scan'208";a="292025172"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2020 18:29:31 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jSW6s-000E3i-JB; Sun, 26 Apr 2020 09:29:30 +0800
Date: Sun, 26 Apr 2020 09:28:03 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ea4e3a3.D0Dsj/yl5pGuojZU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 e96e719f11780df67ddf630af65ddfb6a7d6d0ec
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
branch HEAD: e96e719f11780df67ddf630af65ddfb6a7d6d0ec  i40e: Add a check to see if MFS is set

elapsed time: 5032m

configs tested: 249
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
sh                          rsk7269_defconfig
m68k                             allmodconfig
sparc                               defconfig
ia64                          tiger_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                             defconfig
ia64                                defconfig
riscv                               defconfig
m68k                          multi_defconfig
ia64                         bigsur_defconfig
parisc                           allmodconfig
arc                              allyesconfig
sparc64                          allmodconfig
mips                             allyesconfig
microblaze                      mmu_defconfig
sparc64                             defconfig
m68k                       m5475evb_defconfig
um                           x86_64_defconfig
mips                           ip32_defconfig
h8300                       h8s-sim_defconfig
riscv                    nommu_virt_defconfig
ia64                              allnoconfig
s390                                defconfig
c6x                              allyesconfig
ia64                             allyesconfig
c6x                        evmc6678_defconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
riscv                             allnoconfig
mips                              allnoconfig
s390                              allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
xtensa                       common_defconfig
nds32                             allnoconfig
mips                malta_kvm_guest_defconfig
nios2                         10m50_defconfig
powerpc                       ppc64_defconfig
parisc                           allyesconfig
parisc                            allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                        generic_defconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
m68k                           sun3_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
arc                                 defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
mips                         64r6el_defconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         tb0287_defconfig
mips                       capcella_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                          ath79_defconfig
mips                        bcm63xx_defconfig
parisc               randconfig-a001-20200424
alpha                randconfig-a001-20200424
m68k                 randconfig-a001-20200424
riscv                randconfig-a001-20200424
nds32                randconfig-a001-20200424
parisc               randconfig-a001-20200426
mips                 randconfig-a001-20200426
alpha                randconfig-a001-20200426
m68k                 randconfig-a001-20200426
nds32                randconfig-a001-20200426
nios2                randconfig-a001-20200424
c6x                  randconfig-a001-20200424
h8300                randconfig-a001-20200424
sparc64              randconfig-a001-20200424
microblaze           randconfig-a001-20200424
nios2                randconfig-a001-20200423
h8300                randconfig-a001-20200423
c6x                  randconfig-a001-20200423
sparc64              randconfig-a001-20200423
microblaze           randconfig-a001-20200423
nios2                randconfig-a001-20200422
h8300                randconfig-a001-20200422
c6x                  randconfig-a001-20200422
sparc64              randconfig-a001-20200422
microblaze           randconfig-a001-20200422
nios2                randconfig-a001-20200426
c6x                  randconfig-a001-20200426
h8300                randconfig-a001-20200426
sparc64              randconfig-a001-20200426
microblaze           randconfig-a001-20200426
nios2                randconfig-a001-20200425
c6x                  randconfig-a001-20200425
h8300                randconfig-a001-20200425
sparc64              randconfig-a001-20200425
microblaze           randconfig-a001-20200425
sh                   randconfig-a001-20200423
csky                 randconfig-a001-20200423
xtensa               randconfig-a001-20200423
openrisc             randconfig-a001-20200423
sh                   randconfig-a001-20200426
csky                 randconfig-a001-20200426
s390                 randconfig-a001-20200426
xtensa               randconfig-a001-20200426
openrisc             randconfig-a001-20200426
sh                   randconfig-a001-20200424
csky                 randconfig-a001-20200424
s390                 randconfig-a001-20200424
xtensa               randconfig-a001-20200424
openrisc             randconfig-a001-20200424
sh                   randconfig-a001-20200422
csky                 randconfig-a001-20200422
s390                 randconfig-a001-20200422
xtensa               randconfig-a001-20200422
openrisc             randconfig-a001-20200422
x86_64               randconfig-a001-20200422
i386                 randconfig-a003-20200422
x86_64               randconfig-a003-20200422
i386                 randconfig-a002-20200422
i386                 randconfig-a001-20200422
x86_64               randconfig-a002-20200422
x86_64               randconfig-a001-20200426
i386                 randconfig-a003-20200426
x86_64               randconfig-a003-20200426
i386                 randconfig-a002-20200426
i386                 randconfig-a001-20200426
x86_64               randconfig-a002-20200426
i386                 randconfig-c002-20200425
i386                 randconfig-c001-20200425
x86_64               randconfig-c002-20200425
x86_64               randconfig-c001-20200425
i386                 randconfig-c003-20200425
x86_64               randconfig-c003-20200425
i386                 randconfig-c002-20200424
i386                 randconfig-c001-20200424
x86_64               randconfig-c001-20200424
i386                 randconfig-c003-20200424
x86_64               randconfig-c003-20200424
i386                 randconfig-a003-20200423
i386                 randconfig-a001-20200423
i386                 randconfig-a002-20200423
x86_64               randconfig-a002-20200423
x86_64               randconfig-d001-20200424
i386                 randconfig-d002-20200424
i386                 randconfig-d001-20200424
x86_64               randconfig-d003-20200424
i386                 randconfig-d003-20200424
x86_64               randconfig-d002-20200426
i386                 randconfig-d002-20200426
i386                 randconfig-d001-20200426
i386                 randconfig-d003-20200426
i386                 randconfig-e003-20200426
x86_64               randconfig-e003-20200426
i386                 randconfig-e002-20200426
i386                 randconfig-e001-20200426
x86_64               randconfig-e001-20200426
x86_64               randconfig-a001-20200424
i386                 randconfig-a003-20200424
x86_64               randconfig-a003-20200424
i386                 randconfig-a002-20200424
i386                 randconfig-a001-20200424
x86_64               randconfig-a002-20200424
x86_64               randconfig-f002-20200426
i386                 randconfig-f002-20200426
x86_64               randconfig-f003-20200426
i386                 randconfig-f003-20200426
i386                 randconfig-f001-20200426
x86_64               randconfig-f001-20200426
i386                 randconfig-g003-20200424
i386                 randconfig-g001-20200424
x86_64               randconfig-g001-20200424
x86_64               randconfig-g002-20200424
i386                 randconfig-g002-20200424
x86_64               randconfig-g003-20200424
i386                 randconfig-h003-20200424
x86_64               randconfig-h001-20200424
x86_64               randconfig-h003-20200424
x86_64               randconfig-h002-20200424
i386                 randconfig-h001-20200424
i386                 randconfig-h002-20200424
sparc                randconfig-a001-20200423
ia64                 randconfig-a001-20200423
arm                  randconfig-a001-20200423
arm64                randconfig-a001-20200423
arc                  randconfig-a001-20200423
sparc                randconfig-a001-20200426
ia64                 randconfig-a001-20200426
powerpc              randconfig-a001-20200426
arm                  randconfig-a001-20200426
arm64                randconfig-a001-20200426
arc                  randconfig-a001-20200426
sparc                randconfig-a001-20200425
ia64                 randconfig-a001-20200425
powerpc              randconfig-a001-20200425
arm                  randconfig-a001-20200425
arc                  randconfig-a001-20200425
sparc                randconfig-a001-20200424
ia64                 randconfig-a001-20200424
powerpc              randconfig-a001-20200424
arm64                randconfig-a001-20200424
arc                  randconfig-a001-20200424
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                             alldefconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                                allnoconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec
x86_64                         rhel-7.2-clear
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
