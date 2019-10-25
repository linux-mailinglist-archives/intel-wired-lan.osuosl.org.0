Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E25FE4C6D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2019 15:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5CD121135;
	Fri, 25 Oct 2019 13:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LN1+EXMy23z; Fri, 25 Oct 2019 13:38:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2BE3D20767;
	Fri, 25 Oct 2019 13:38:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3257D1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 13:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 216F485BDF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 13:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b43j1C-PNQZb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 13:38:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 713338578B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 13:38:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 06:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="373558876"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 25 Oct 2019 06:38:47 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iNznj-000AQT-7k; Fri, 25 Oct 2019 21:38:47 +0800
Date: Fri, 25 Oct 2019 21:38:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5db2fad8.33xmrcITrN0KE/R/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 e7d25497f176aa3e963f7e03456ced929700aeef
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
branch HEAD: e7d25497f176aa3e963f7e03456ced929700aeef  i40e: enable X710 support

elapsed time: 888m

configs tested: 145

The following configs have been built successfully.
More configs may be tested in the coming days.

i386                   randconfig-d002-201942
x86_64                 randconfig-d002-201942
i386                   randconfig-d004-201942
x86_64                 randconfig-d004-201942
x86_64                 randconfig-d003-201942
i386                   randconfig-d003-201942
x86_64                 randconfig-d001-201942
i386                   randconfig-d001-201942
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
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
x86_64                 randconfig-g002-201942
i386                   randconfig-g004-201942
x86_64                 randconfig-g001-201942
i386                   randconfig-g002-201942
x86_64                 randconfig-g004-201942
x86_64                 randconfig-g003-201942
i386                   randconfig-g003-201942
i386                   randconfig-g001-201942
x86_64                           allyesconfig
i386                             allmodconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-h002-201942
x86_64                 randconfig-h001-201942
i386                   randconfig-h004-201942
i386                   randconfig-h003-201942
x86_64                 randconfig-h003-201942
i386                   randconfig-h002-201942
i386                   randconfig-h001-201942
x86_64                 randconfig-h004-201942
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64                 randconfig-c001-201942
i386                   randconfig-c001-201942
x86_64                 randconfig-c002-201942
i386                   randconfig-c004-201942
i386                   randconfig-c003-201942
x86_64                 randconfig-c004-201942
i386                   randconfig-c002-201942
x86_64                 randconfig-c003-201942
i386                   randconfig-f002-201942
i386                   randconfig-f001-201942
x86_64                 randconfig-f003-201942
x86_64                 randconfig-f004-201942
x86_64                 randconfig-f002-201942
i386                   randconfig-f003-201942
x86_64                 randconfig-f001-201942
i386                   randconfig-f004-201942
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
i386                   randconfig-b001-201942
x86_64                 randconfig-b002-201942
x86_64                 randconfig-b003-201942
i386                   randconfig-b003-201942
i386                   randconfig-b004-201942
x86_64                 randconfig-b004-201942
x86_64                 randconfig-b001-201942
i386                   randconfig-b002-201942
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                 randconfig-a004-201942
x86_64                 randconfig-a001-201942
i386                   randconfig-a002-201942
x86_64                 randconfig-a002-201942
i386                   randconfig-a001-201942
i386                   randconfig-a003-201942
i386                   randconfig-a004-201942
x86_64                 randconfig-a003-201942
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-e004-201942
x86_64                 randconfig-e001-201942
x86_64                 randconfig-e003-201942
x86_64                 randconfig-e002-201942
i386                   randconfig-e003-201942
i386                   randconfig-e004-201942
i386                   randconfig-e001-201942
i386                   randconfig-e002-201942
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64                           allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
