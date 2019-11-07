Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51158F2EC0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 14:02:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC95B85A96;
	Thu,  7 Nov 2019 13:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FM29IJBSZcRN; Thu,  7 Nov 2019 13:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D44C585A82;
	Thu,  7 Nov 2019 13:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E5191BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 13:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 00C7285A73
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 13:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdSNHksaGAWb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 13:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB89885A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 13:02:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 05:02:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="377414314"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 07 Nov 2019 05:02:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iShQw-00084u-7Q; Thu, 07 Nov 2019 21:02:42 +0800
Date: Thu, 07 Nov 2019 21:02:05 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dc415cd.xLuJb3rtqT8RrhxF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 0cb4801d9e328581b66f642131e1b6a912521db6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 0cb4801d9e328581b66f642131e1b6a912521db6  i40e: Fix for ethtool -m issue on X722 NIC

elapsed time: 802m

configs tested: 129

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-e004-201944
x86_64                 randconfig-e001-201944
x86_64                 randconfig-e003-201944
x86_64                 randconfig-e002-201944
i386                   randconfig-e003-201944
i386                   randconfig-e001-201944
i386                   randconfig-e004-201944
i386                   randconfig-e002-201944
x86_64                           allmodconfig
i386                             alldefconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
mips                             allmodconfig
mips                           32r2_defconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
x86_64                           allyesconfig
i386                             allmodconfig
i386                   randconfig-b001-201944
x86_64                 randconfig-b002-201944
i386                   randconfig-b003-201944
x86_64                 randconfig-b003-201944
i386                   randconfig-b004-201944
x86_64                 randconfig-b001-201944
x86_64                 randconfig-b004-201944
i386                   randconfig-b002-201944
x86_64                 randconfig-a004-201944
x86_64                 randconfig-a001-201944
x86_64                 randconfig-a002-201944
i386                   randconfig-a002-201944
i386                   randconfig-a001-201944
i386                   randconfig-a003-201944
i386                   randconfig-a004-201944
x86_64                 randconfig-a003-201944
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
x86_64                 randconfig-g002-201944
i386                   randconfig-g004-201944
x86_64                 randconfig-g001-201944
i386                   randconfig-g002-201944
x86_64                 randconfig-g004-201944
x86_64                 randconfig-g003-201944
i386                   randconfig-g003-201944
i386                   randconfig-g001-201944
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
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
x86_64                 randconfig-c001-201944
x86_64                 randconfig-c002-201944
i386                   randconfig-c001-201944
i386                   randconfig-c004-201944
i386                   randconfig-c003-201944
i386                   randconfig-c002-201944
x86_64                 randconfig-c004-201944
x86_64                 randconfig-c003-201944
i386                   randconfig-f002-201944
i386                   randconfig-f001-201944
x86_64                 randconfig-f003-201944
x86_64                 randconfig-f004-201944
x86_64                 randconfig-f002-201944
i386                   randconfig-f003-201944
i386                   randconfig-f004-201944
x86_64                 randconfig-f001-201944
i386                              allnoconfig
i386                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
