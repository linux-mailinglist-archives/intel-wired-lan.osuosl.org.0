Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175C5107676
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2019 18:31:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F21588D7C;
	Fri, 22 Nov 2019 17:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LrJgvG1-M+Wz; Fri, 22 Nov 2019 17:31:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A42688D5B;
	Fri, 22 Nov 2019 17:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FE181BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2019 17:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99F8020405
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2019 17:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJzUwk+K1leD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2019 17:31:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id EA20B203FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2019 17:31:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 09:31:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,230,1571727600"; d="scan'208";a="205528389"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2019 09:31:46 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iYCmY-000BZP-4S; Sat, 23 Nov 2019 01:31:46 +0800
Date: Sat, 23 Nov 2019 01:30:49 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dd81b49.EBT9Cl2lRL0nKCh3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS
 61393009e0b602a19caad0d4f50af25a06d4a164
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: 61393009e0b602a19caad0d4f50af25a06d4a164  ice: Update FW API minor version

elapsed time: 1443m

configs tested: 138

The following configs have been built successfully.
More configs may be tested in the coming days.

m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
arm                              allmodconfig
arm64                            allmodconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
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
i386                 randconfig-f003-20191121
i386                 randconfig-f002-20191121
x86_64               randconfig-f002-20191121
x86_64               randconfig-f003-20191121
i386                 randconfig-f001-20191121
x86_64               randconfig-f001-20191121
x86_64               randconfig-g001-20191121
x86_64               randconfig-g002-20191121
x86_64               randconfig-g003-20191121
i386                 randconfig-g001-20191121
i386                 randconfig-g002-20191121
i386                 randconfig-g003-20191121
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64               randconfig-d001-20191122
x86_64               randconfig-d002-20191122
x86_64               randconfig-d003-20191122
i386                 randconfig-d001-20191122
i386                 randconfig-d002-20191122
i386                 randconfig-d003-20191122
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
ia64                 randconfig-a001-20191121
sparc                randconfig-a001-20191121
arc                 randconfig-a0031-20191121
powerpc              randconfig-a001-20191121
arm64                randconfig-a001-20191121
arm                  randconfig-a001-20191121
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allmodconfig
x86_64                           allyesconfig
i386                 randconfig-e002-20191121
x86_64               randconfig-e003-20191121
x86_64               randconfig-e001-20191121
i386                 randconfig-e001-20191121
x86_64               randconfig-e002-20191121
i386                 randconfig-e003-20191121
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
x86_64               randconfig-c001-20191121
i386                 randconfig-c003-20191121
x86_64               randconfig-c003-20191121
i386                 randconfig-c002-20191121
x86_64               randconfig-c002-20191121
i386                 randconfig-c001-20191121
x86_64               randconfig-d002-20191121
i386                 randconfig-d001-20191121
i386                 randconfig-d003-20191121
i386                 randconfig-d002-20191121
x86_64               randconfig-d001-20191121
x86_64               randconfig-d003-20191121
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
i386                 randconfig-a002-20191121
x86_64               randconfig-a003-20191121
i386                 randconfig-a001-20191121
x86_64               randconfig-a001-20191121
i386                 randconfig-a003-20191121
x86_64               randconfig-a002-20191121
i386                 randconfig-b002-20191121
x86_64               randconfig-b002-20191121
x86_64               randconfig-b001-20191121
i386                 randconfig-b003-20191121
x86_64               randconfig-b003-20191121
i386                 randconfig-b001-20191121
x86_64               randconfig-h001-20191121
i386                 randconfig-h002-20191121
x86_64               randconfig-h003-20191121
i386                 randconfig-h001-20191121
i386                 randconfig-h003-20191121
x86_64               randconfig-h002-20191121
i386                             allmodconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
