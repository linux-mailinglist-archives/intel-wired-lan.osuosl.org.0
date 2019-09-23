Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D7ABBDF8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2019 23:32:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63E932014B;
	Mon, 23 Sep 2019 21:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-eGwsHiZCWN; Mon, 23 Sep 2019 21:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2BCB2079A;
	Mon, 23 Sep 2019 21:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD7311BF325
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 21:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C890885C9D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 21:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzuYY8fSFtWS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2019 21:32:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 033C385C62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2019 21:32:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 14:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="389628429"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 23 Sep 2019 14:31:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iCVw5-0009nJ-LE; Tue, 24 Sep 2019 05:31:57 +0800
Date: Tue, 24 Sep 2019 05:31:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d8939c4.JAl+JeClCMFsnYLh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 f0859544b158c4abc6b15cd81d3e2bf45d71a31d
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: f0859544b158c4abc6b15cd81d3e2bf45d71a31d  igb: Fix constant media auto sense switching when no cable is connected

elapsed time: 328m

configs tested: 145

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-c001-201938
x86_64                 randconfig-c002-201938
x86_64                 randconfig-c003-201938
x86_64                 randconfig-c004-201938
i386                   randconfig-c001-201938
i386                   randconfig-c002-201938
i386                   randconfig-c003-201938
i386                   randconfig-c004-201938
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                 randconfig-g001-201938
x86_64                 randconfig-g002-201938
x86_64                 randconfig-g003-201938
x86_64                 randconfig-g004-201938
i386                   randconfig-g001-201938
i386                   randconfig-g002-201938
i386                   randconfig-g003-201938
i386                   randconfig-g004-201938
x86_64                 randconfig-f001-201938
x86_64                 randconfig-f002-201938
x86_64                 randconfig-f003-201938
x86_64                 randconfig-f004-201938
i386                   randconfig-f001-201938
i386                   randconfig-f002-201938
i386                   randconfig-f003-201938
i386                   randconfig-f004-201938
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
arm                              allmodconfig
arm64                            allmodconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                 randconfig-a001-201938
x86_64                 randconfig-a002-201938
x86_64                 randconfig-a003-201938
x86_64                 randconfig-a004-201938
i386                   randconfig-a001-201938
i386                   randconfig-a002-201938
i386                   randconfig-a003-201938
i386                   randconfig-a004-201938
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-b001-201938
x86_64                 randconfig-b002-201938
x86_64                 randconfig-b003-201938
x86_64                 randconfig-b004-201938
i386                   randconfig-b001-201938
i386                   randconfig-b002-201938
i386                   randconfig-b003-201938
i386                   randconfig-b004-201938
x86_64                 randconfig-h001-201938
x86_64                 randconfig-h002-201938
x86_64                 randconfig-h003-201938
x86_64                 randconfig-h004-201938
i386                   randconfig-h001-201938
i386                   randconfig-h002-201938
i386                   randconfig-h003-201938
i386                   randconfig-h004-201938
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                           allmodconfig
x86_64                           allyesconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64                 randconfig-d001-201938
x86_64                 randconfig-d002-201938
x86_64                 randconfig-d003-201938
x86_64                 randconfig-d004-201938
i386                   randconfig-d001-201938
i386                   randconfig-d002-201938
i386                   randconfig-d003-201938
i386                   randconfig-d004-201938
i386                             allmodconfig
i386                   randconfig-e004-201938
x86_64                 randconfig-e004-201938
x86_64                 randconfig-e002-201938
x86_64                 randconfig-e003-201938
i386                   randconfig-e003-201938
x86_64                 randconfig-e001-201938
i386                   randconfig-e002-201938
i386                   randconfig-e001-201938
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

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
