Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B05168A6A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2020 00:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7292875BA;
	Fri, 21 Feb 2020 23:30:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9mUkGnD+4Uk; Fri, 21 Feb 2020 23:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94E5B875E0;
	Fri, 21 Feb 2020 23:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 601AB1BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 535F488171
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZcc1WydB8uM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2020 23:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E7AA87EAD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2020 23:30:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 15:30:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="259776509"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 21 Feb 2020 15:30:22 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j5HkU-0006EB-0p; Sat, 22 Feb 2020 07:30:22 +0800
Date: Sat, 22 Feb 2020 07:30:05 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e5067fd.EAnQk7DxcwMVYOGp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:100GbE] BUILD SUCCESS
 c54d209c78b8a3d0a75e710993833ebe1eb3273b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  100GbE
branch HEAD: c54d209c78b8a3d0a75e710993833ebe1eb3273b  ice: Wait for VF to be reset/ready before configuration

elapsed time: 2885m

configs tested: 280
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
sparc                            allyesconfig
sparc                               defconfig
xtensa                       common_defconfig
s390                          debug_defconfig
sparc64                             defconfig
h8300                       h8s-sim_defconfig
riscv                            allyesconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
s390                       zfcpdump_defconfig
csky                                defconfig
sh                            titan_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
ia64                             alldefconfig
m68k                          multi_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
microblaze                      mmu_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                 simple_smp_defconfig
nds32                             allnoconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200220
x86_64               randconfig-a002-20200220
x86_64               randconfig-a003-20200220
i386                 randconfig-a001-20200220
i386                 randconfig-a002-20200220
i386                 randconfig-a003-20200220
x86_64               randconfig-a001-20200219
x86_64               randconfig-a002-20200219
x86_64               randconfig-a003-20200219
i386                 randconfig-a001-20200219
i386                 randconfig-a002-20200219
i386                 randconfig-a003-20200219
x86_64               randconfig-a001-20200221
x86_64               randconfig-a002-20200221
x86_64               randconfig-a003-20200221
i386                 randconfig-a001-20200221
i386                 randconfig-a002-20200221
i386                 randconfig-a003-20200221
alpha                randconfig-a001-20200221
m68k                 randconfig-a001-20200221
mips                 randconfig-a001-20200221
nds32                randconfig-a001-20200221
parisc               randconfig-a001-20200221
riscv                randconfig-a001-20200221
alpha                randconfig-a001-20200220
m68k                 randconfig-a001-20200220
mips                 randconfig-a001-20200220
nds32                randconfig-a001-20200220
parisc               randconfig-a001-20200220
riscv                randconfig-a001-20200220
alpha                randconfig-a001-20200219
m68k                 randconfig-a001-20200219
nds32                randconfig-a001-20200219
parisc               randconfig-a001-20200219
riscv                randconfig-a001-20200219
alpha                randconfig-a001-20200222
m68k                 randconfig-a001-20200222
mips                 randconfig-a001-20200222
nds32                randconfig-a001-20200222
parisc               randconfig-a001-20200222
riscv                randconfig-a001-20200222
mips                 randconfig-a001-20200219
c6x                  randconfig-a001-20200221
h8300                randconfig-a001-20200221
microblaze           randconfig-a001-20200221
nios2                randconfig-a001-20200221
sparc64              randconfig-a001-20200221
c6x                  randconfig-a001-20200220
h8300                randconfig-a001-20200220
microblaze           randconfig-a001-20200220
nios2                randconfig-a001-20200220
sparc64              randconfig-a001-20200220
c6x                  randconfig-a001-20200219
h8300                randconfig-a001-20200219
microblaze           randconfig-a001-20200219
nios2                randconfig-a001-20200219
sparc64              randconfig-a001-20200219
openrisc             randconfig-a001-20200219
sh                   randconfig-a001-20200219
csky                 randconfig-a001-20200219
s390                 randconfig-a001-20200219
xtensa               randconfig-a001-20200219
csky                 randconfig-a001-20200220
openrisc             randconfig-a001-20200220
s390                 randconfig-a001-20200220
sh                   randconfig-a001-20200220
xtensa               randconfig-a001-20200220
csky                 randconfig-a001-20200221
openrisc             randconfig-a001-20200221
s390                 randconfig-a001-20200221
sh                   randconfig-a001-20200221
xtensa               randconfig-a001-20200221
x86_64               randconfig-b001-20200220
x86_64               randconfig-b002-20200220
x86_64               randconfig-b003-20200220
i386                 randconfig-b001-20200220
i386                 randconfig-b002-20200220
i386                 randconfig-b003-20200220
x86_64               randconfig-b001-20200219
x86_64               randconfig-b002-20200219
x86_64               randconfig-b003-20200219
i386                 randconfig-b001-20200219
i386                 randconfig-b002-20200219
i386                 randconfig-b003-20200219
x86_64               randconfig-b001-20200221
x86_64               randconfig-b002-20200221
x86_64               randconfig-b003-20200221
i386                 randconfig-b001-20200221
i386                 randconfig-b002-20200221
i386                 randconfig-b003-20200221
x86_64               randconfig-c001-20200220
x86_64               randconfig-c002-20200220
x86_64               randconfig-c003-20200220
i386                 randconfig-c001-20200220
i386                 randconfig-c002-20200220
i386                 randconfig-c003-20200220
x86_64               randconfig-c001-20200221
x86_64               randconfig-c002-20200221
x86_64               randconfig-c003-20200221
i386                 randconfig-c001-20200221
i386                 randconfig-c002-20200221
i386                 randconfig-c003-20200221
x86_64               randconfig-d003-20200219
x86_64               randconfig-d001-20200219
i386                 randconfig-d003-20200219
x86_64               randconfig-d002-20200219
i386                 randconfig-d002-20200219
i386                 randconfig-d001-20200219
x86_64               randconfig-d001-20200220
x86_64               randconfig-d002-20200220
x86_64               randconfig-d003-20200220
i386                 randconfig-d001-20200220
i386                 randconfig-d002-20200220
i386                 randconfig-d003-20200220
x86_64               randconfig-d001-20200221
x86_64               randconfig-d002-20200221
x86_64               randconfig-d003-20200221
i386                 randconfig-d001-20200221
i386                 randconfig-d002-20200221
i386                 randconfig-d003-20200221
x86_64               randconfig-e001-20200221
x86_64               randconfig-e002-20200221
x86_64               randconfig-e003-20200221
i386                 randconfig-e001-20200221
i386                 randconfig-e002-20200221
i386                 randconfig-e003-20200221
x86_64               randconfig-f001-20200220
x86_64               randconfig-f002-20200220
x86_64               randconfig-f003-20200220
i386                 randconfig-f001-20200220
i386                 randconfig-f002-20200220
i386                 randconfig-f003-20200220
i386                 randconfig-f001-20200219
x86_64               randconfig-f001-20200219
x86_64               randconfig-f002-20200219
i386                 randconfig-f002-20200219
x86_64               randconfig-f003-20200219
i386                 randconfig-f003-20200219
x86_64               randconfig-f001-20200221
x86_64               randconfig-f002-20200221
x86_64               randconfig-f003-20200221
i386                 randconfig-f001-20200221
i386                 randconfig-f002-20200221
i386                 randconfig-f003-20200221
x86_64               randconfig-g001-20200220
x86_64               randconfig-g002-20200220
x86_64               randconfig-g003-20200220
i386                 randconfig-g001-20200220
i386                 randconfig-g002-20200220
i386                 randconfig-g003-20200220
x86_64               randconfig-g001-20200221
x86_64               randconfig-g002-20200221
x86_64               randconfig-g003-20200221
i386                 randconfig-g001-20200221
i386                 randconfig-g002-20200221
i386                 randconfig-g003-20200221
x86_64               randconfig-h001-20200219
x86_64               randconfig-h002-20200219
x86_64               randconfig-h003-20200219
i386                 randconfig-h001-20200219
i386                 randconfig-h002-20200219
i386                 randconfig-h003-20200219
x86_64               randconfig-h001-20200221
x86_64               randconfig-h002-20200221
x86_64               randconfig-h003-20200221
i386                 randconfig-h001-20200221
i386                 randconfig-h002-20200221
i386                 randconfig-h003-20200221
x86_64               randconfig-h001-20200220
x86_64               randconfig-h002-20200220
x86_64               randconfig-h003-20200220
i386                 randconfig-h001-20200220
i386                 randconfig-h002-20200220
i386                 randconfig-h003-20200220
arc                  randconfig-a001-20200220
arm                  randconfig-a001-20200220
arm64                randconfig-a001-20200220
ia64                 randconfig-a001-20200220
powerpc              randconfig-a001-20200220
sparc                randconfig-a001-20200220
arc                  randconfig-a001-20200221
arm                  randconfig-a001-20200221
arm64                randconfig-a001-20200221
ia64                 randconfig-a001-20200221
powerpc              randconfig-a001-20200221
sparc                randconfig-a001-20200221
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
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
