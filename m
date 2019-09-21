Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C34A3B9BD2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2019 03:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 508FA8805D;
	Sat, 21 Sep 2019 01:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6OYZ8kuEK4U; Sat, 21 Sep 2019 01:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1608887B0F;
	Sat, 21 Sep 2019 01:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08F691BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2019 01:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F2A11862BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2019 01:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vInY1-HQUG3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2019 01:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24458862BC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2019 01:18:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 18:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,530,1559545200"; d="scan'208";a="363000331"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2019 18:18:43 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iBU2s-000J9z-QJ; Sat, 21 Sep 2019 09:18:42 +0800
Date: Sat, 21 Sep 2019 09:17:51 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d857a3f.SSN47X7Xrrsnquwq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 9d4c039100f63c29c4370f2f8ae2679dcdca57d9
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
branch HEAD: 9d4c039100f63c29c4370f2f8ae2679dcdca57d9  i40e: Refactoring VF MAC filters counting to make more reliable

elapsed time: 240m

configs tested: 145

The following configs have been built successfully.
More configs may be tested in the coming days.

parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
arm                              allmodconfig
arm64                            allmodconfig
x86_64                 randconfig-b002-201937
i386                   randconfig-b003-201937
i386                   randconfig-b004-201937
i386                   randconfig-b001-201937
i386                   randconfig-b002-201937
x86_64                 randconfig-b001-201937
x86_64                 randconfig-b004-201937
x86_64                 randconfig-b003-201937
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
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
x86_64                 randconfig-f001-201937
x86_64                 randconfig-f002-201937
x86_64                 randconfig-f003-201937
x86_64                 randconfig-f004-201937
i386                   randconfig-f001-201937
i386                   randconfig-f002-201937
i386                   randconfig-f003-201937
i386                   randconfig-f004-201937
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
i386                             allmodconfig
x86_64                 randconfig-a001-201937
x86_64                 randconfig-a002-201937
x86_64                 randconfig-a003-201937
x86_64                 randconfig-a004-201937
i386                   randconfig-a001-201937
i386                   randconfig-a002-201937
i386                   randconfig-a003-201937
i386                   randconfig-a004-201937
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64                 randconfig-d001-201937
x86_64                 randconfig-d002-201937
x86_64                 randconfig-d003-201937
x86_64                 randconfig-d004-201937
i386                   randconfig-d001-201937
i386                   randconfig-d002-201937
i386                   randconfig-d003-201937
i386                   randconfig-d004-201937
x86_64                 randconfig-h002-201937
x86_64                 randconfig-h003-201937
i386                   randconfig-h002-201937
i386                   randconfig-h001-201937
i386                   randconfig-h004-201937
x86_64                 randconfig-h004-201937
x86_64                 randconfig-h001-201937
i386                   randconfig-h003-201937
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                           allyesconfig
x86_64                           allmodconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                 randconfig-g003-201937
i386                   randconfig-g004-201937
x86_64                 randconfig-g002-201937
x86_64                 randconfig-g001-201937
i386                   randconfig-g001-201937
x86_64                 randconfig-g004-201937
i386                   randconfig-g002-201937
i386                   randconfig-g003-201937
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                 randconfig-c003-201937
x86_64                 randconfig-c002-201937
i386                   randconfig-c004-201937
x86_64                 randconfig-c004-201937
i386                   randconfig-c003-201937
i386                   randconfig-c002-201937
x86_64                 randconfig-c001-201937
i386                   randconfig-c001-201937
x86_64                 randconfig-e001-201937
x86_64                 randconfig-e002-201937
x86_64                 randconfig-e003-201937
x86_64                 randconfig-e004-201937
i386                   randconfig-e001-201937
i386                   randconfig-e002-201937
i386                   randconfig-e003-201937
i386                   randconfig-e004-201937

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
