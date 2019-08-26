Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1246E9CB80
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 10:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D4CD2036B;
	Mon, 26 Aug 2019 08:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFKw8DcwGRm7; Mon, 26 Aug 2019 08:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EC7520427;
	Mon, 26 Aug 2019 08:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE1971BF954
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 08:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A9CF5854E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 08:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8FZx_l-7RnV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2019 08:28:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00CB08545B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 08:28:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 01:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="170787950"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2019 01:28:28 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i2AMV-000G3M-Ec; Mon, 26 Aug 2019 16:28:27 +0800
Date: Mon, 26 Aug 2019 16:28:03 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d639813.pqWWcvoyzqXOsmG4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 63a364c319fad95fc95c75e64ea20ede8d9d4fe5
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
branch HEAD: 63a364c319fad95fc95c75e64ea20ede8d9d4fe5  ice: shorten local and add debug prints

elapsed time: 499m

configs tested: 147

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
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
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
i386                   randconfig-f004-201934
x86_64                 randconfig-f004-201934
x86_64                 randconfig-f002-201934
i386                   randconfig-f001-201934
i386                   randconfig-f003-201934
i386                   randconfig-f002-201934
x86_64                 randconfig-f001-201934
x86_64                 randconfig-f003-201934
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                 randconfig-a004-201934
i386                   randconfig-a003-201934
x86_64                 randconfig-a002-201934
i386                   randconfig-a004-201934
i386                   randconfig-a002-201934
i386                   randconfig-a001-201934
x86_64                 randconfig-a001-201934
x86_64                 randconfig-a003-201934
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-b002-201934
i386                   randconfig-b003-201934
i386                   randconfig-b004-201934
i386                   randconfig-b001-201934
x86_64                 randconfig-b001-201934
i386                   randconfig-b002-201934
x86_64                 randconfig-b004-201934
x86_64                 randconfig-b003-201934
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-c003-201934
x86_64                 randconfig-c002-201934
i386                   randconfig-c004-201934
x86_64                 randconfig-c004-201934
i386                   randconfig-c003-201934
x86_64                 randconfig-c001-201934
i386                   randconfig-c002-201934
i386                   randconfig-c001-201934
x86_64                 randconfig-g003-201934
i386                   randconfig-g004-201934
x86_64                 randconfig-g001-201934
x86_64                 randconfig-g002-201934
i386                   randconfig-g001-201934
x86_64                 randconfig-g004-201934
i386                   randconfig-g002-201934
i386                   randconfig-g003-201934
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                           allmodconfig
x86_64                 randconfig-h002-201934
x86_64                 randconfig-h003-201934
i386                   randconfig-h001-201934
i386                   randconfig-h002-201934
i386                   randconfig-h004-201934
x86_64                 randconfig-h004-201934
i386                   randconfig-h003-201934
x86_64                 randconfig-h001-201934
x86_64                 randconfig-e004-201934
i386                   randconfig-e004-201934
x86_64                 randconfig-e002-201934
x86_64                 randconfig-e003-201934
i386                   randconfig-e003-201934
x86_64                 randconfig-e001-201934
i386                   randconfig-e002-201934
i386                   randconfig-e001-201934
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
ia64                                defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                   randconfig-d002-201934
i386                   randconfig-d004-201934
x86_64                 randconfig-d004-201934
x86_64                 randconfig-d002-201934
x86_64                 randconfig-d001-201934
x86_64                 randconfig-d003-201934
i386                   randconfig-d001-201934
i386                   randconfig-d003-201934

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
