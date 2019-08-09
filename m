Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6AD88546
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 23:48:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D862A87F50;
	Fri,  9 Aug 2019 21:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54GjXkq7QltB; Fri,  9 Aug 2019 21:48:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F7EC88287;
	Fri,  9 Aug 2019 21:48:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FEF41BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2019 21:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 09B492042B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2019 21:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BiYcf3VrxBcW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2019 21:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id DAAA4203A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2019 21:48:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 14:48:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="180256345"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Aug 2019 14:48:24 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hwCkJ-000401-Hh; Sat, 10 Aug 2019 05:48:23 +0800
Date: Sat, 10 Aug 2019 05:48:01 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d4dea11.NXhGatDQYETVLKwb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS
 46b92bab90de1d18dfd39ba2275b3bb827fc54cd
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: 46b92bab90de1d18dfd39ba2275b3bb827fc54cd  ice: improve print for VF's when adding/deleting MAC filters

elapsed time: 267m

configs tested: 152

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                           allmodconfig
x86_64                           allyesconfig
i386                             alldefconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
ia64                                defconfig
powerpc                             defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
i386                             allmodconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
arm                              allmodconfig
arm64                            allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
riscv                              tinyconfig
i386                               tinyconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
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
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64                 randconfig-b001-201931
x86_64                 randconfig-b002-201931
x86_64                 randconfig-b003-201931
x86_64                 randconfig-b004-201931
i386                   randconfig-b001-201931
i386                   randconfig-b002-201931
i386                   randconfig-b003-201931
i386                   randconfig-b004-201931
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                 randconfig-d001-201931
x86_64                 randconfig-d002-201931
x86_64                 randconfig-d003-201931
x86_64                 randconfig-d004-201931
i386                   randconfig-d001-201931
i386                   randconfig-d002-201931
i386                   randconfig-d003-201931
i386                   randconfig-d004-201931
x86_64                 randconfig-g001-201931
x86_64                 randconfig-g002-201931
x86_64                 randconfig-g003-201931
x86_64                 randconfig-g004-201931
i386                   randconfig-g001-201931
i386                   randconfig-g002-201931
i386                   randconfig-g003-201931
i386                   randconfig-g004-201931
x86_64                 randconfig-f001-201931
x86_64                 randconfig-f002-201931
x86_64                 randconfig-f003-201931
x86_64                 randconfig-f004-201931
i386                   randconfig-f001-201931
i386                   randconfig-f002-201931
i386                   randconfig-f003-201931
i386                   randconfig-f004-201931
i386                              allnoconfig
i386                                defconfig
x86_64                 randconfig-c001-201931
x86_64                 randconfig-c002-201931
x86_64                 randconfig-c003-201931
x86_64                 randconfig-c004-201931
i386                   randconfig-c001-201931
i386                   randconfig-c002-201931
i386                   randconfig-c003-201931
i386                   randconfig-c004-201931
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
x86_64                 randconfig-h001-201931
x86_64                 randconfig-h002-201931
x86_64                 randconfig-h003-201931
x86_64                 randconfig-h004-201931
i386                   randconfig-h001-201931
i386                   randconfig-h002-201931
i386                   randconfig-h003-201931
i386                   randconfig-h004-201931
x86_64                 randconfig-e001-201931
x86_64                 randconfig-e002-201931
x86_64                 randconfig-e003-201931
x86_64                 randconfig-e004-201931
i386                   randconfig-e001-201931
i386                   randconfig-e002-201931
i386                   randconfig-e003-201931
i386                   randconfig-e004-201931
x86_64                 randconfig-a001-201931
x86_64                 randconfig-a002-201931
x86_64                 randconfig-a003-201931
x86_64                 randconfig-a004-201931
i386                   randconfig-a001-201931
i386                   randconfig-a002-201931
i386                   randconfig-a003-201931
i386                   randconfig-a004-201931

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
