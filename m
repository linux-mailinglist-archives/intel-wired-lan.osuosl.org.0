Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5A7AC940
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Sep 2019 22:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D8B3876F2;
	Sat,  7 Sep 2019 20:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04uwGwOgoMgd; Sat,  7 Sep 2019 20:40:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B0C7879A5;
	Sat,  7 Sep 2019 20:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D77351BF352
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2019 20:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE32C863D0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2019 20:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1NTcX0OSa+B2 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Sep 2019 20:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0DD99863CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2019 20:40:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 13:40:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,478,1559545200"; d="scan'208";a="191133920"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Sep 2019 13:40:31 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i6hVW-0000e5-Hy; Sun, 08 Sep 2019 04:40:30 +0800
Date: Sun, 08 Sep 2019 04:39:50 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d741596.orkT7tV8MCk4eooY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 b7d87da5b3fe71aa6f36f0c3aa6c6269dee39f0b
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: b7d87da5b3fe71aa6f36f0c3aa6c6269dee39f0b  ice: Initialize DDP package structures

elapsed time: 58m

configs tested: 119

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
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
x86_64                 randconfig-a001-201936
x86_64                 randconfig-a002-201936
x86_64                 randconfig-a003-201936
x86_64                 randconfig-a004-201936
i386                   randconfig-a001-201936
i386                   randconfig-a002-201936
i386                   randconfig-a003-201936
i386                   randconfig-a004-201936
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-g001-201936
x86_64                 randconfig-g002-201936
x86_64                 randconfig-g003-201936
x86_64                 randconfig-g004-201936
i386                   randconfig-g001-201936
i386                   randconfig-g002-201936
i386                   randconfig-g003-201936
i386                   randconfig-g004-201936
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                           allyesconfig
i386                             allmodconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                           allmodconfig
i386                             alldefconfig
x86_64                 randconfig-h002-201936
x86_64                 randconfig-h003-201936
i386                   randconfig-h001-201936
i386                   randconfig-h002-201936
i386                   randconfig-h004-201936
x86_64                 randconfig-h004-201936
i386                   randconfig-h003-201936
x86_64                 randconfig-h001-201936
x86_64                 randconfig-e001-201936
x86_64                 randconfig-e002-201936
x86_64                 randconfig-e003-201936
x86_64                 randconfig-e004-201936
i386                   randconfig-e001-201936
i386                   randconfig-e002-201936
i386                   randconfig-e003-201936
i386                   randconfig-e004-201936
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                 randconfig-c001-201936
x86_64                 randconfig-c002-201936
x86_64                 randconfig-c003-201936
x86_64                 randconfig-c004-201936
i386                   randconfig-c001-201936
i386                   randconfig-c002-201936
i386                   randconfig-c003-201936
i386                   randconfig-c004-201936
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
i386                              allnoconfig
i386                                defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
