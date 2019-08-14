Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B848DCD4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2019 20:19:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 487AF88312;
	Wed, 14 Aug 2019 18:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2cuGUgGaSYa; Wed, 14 Aug 2019 18:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9595D88309;
	Wed, 14 Aug 2019 18:19:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A36B81BF35A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 18:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 977E98688F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 18:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vEuoAFDrBAd4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 18:19:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2B1286881
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 18:19:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 11:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="205628688"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 14 Aug 2019 11:19:11 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hxxrZ-000GBb-An; Thu, 15 Aug 2019 02:19:09 +0800
Date: Thu, 15 Aug 2019 02:18:10 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d545062.dXXtgz4+mO+yzJwD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:master] BUILD SUCCESS
 a9a96760165d8781570f2dadeed8e38484b13499
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  master
branch HEAD: a9a96760165d8781570f2dadeed8e38484b13499  net: hns3: Make hclge_func_reset_sync_vf static

elapsed time: 1134m

configs tested: 143

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-h001-201932
x86_64                 randconfig-h002-201932
x86_64                 randconfig-h003-201932
x86_64                 randconfig-h004-201932
i386                   randconfig-h001-201932
i386                   randconfig-h002-201932
i386                   randconfig-h003-201932
i386                   randconfig-h004-201932
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
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
ia64                                defconfig
x86_64                           allyesconfig
i386                             allmodconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
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
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
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
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-f001-201932
x86_64                 randconfig-f002-201932
x86_64                 randconfig-f003-201932
x86_64                 randconfig-f004-201932
i386                   randconfig-f001-201932
i386                   randconfig-f002-201932
i386                   randconfig-f003-201932
i386                   randconfig-f004-201932
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-c001-201932
x86_64                 randconfig-c002-201932
x86_64                 randconfig-c003-201932
x86_64                 randconfig-c004-201932
i386                   randconfig-c001-201932
i386                   randconfig-c002-201932
i386                   randconfig-c003-201932
i386                   randconfig-c004-201932
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64                 randconfig-g001-201932
x86_64                 randconfig-g002-201932
x86_64                 randconfig-g003-201932
x86_64                 randconfig-g004-201932
i386                   randconfig-g001-201932
i386                   randconfig-g002-201932
i386                   randconfig-g003-201932
i386                   randconfig-g004-201932
x86_64                 randconfig-d001-201932
x86_64                 randconfig-d002-201932
x86_64                 randconfig-d003-201932
x86_64                 randconfig-d004-201932
i386                   randconfig-d001-201932
i386                   randconfig-d002-201932
i386                   randconfig-d003-201932
i386                   randconfig-d004-201932
x86_64                           allmodconfig
i386                             alldefconfig
x86_64                 randconfig-a001-201932
x86_64                 randconfig-a002-201932
x86_64                 randconfig-a003-201932
x86_64                 randconfig-a004-201932
i386                   randconfig-a001-201932
i386                   randconfig-a002-201932
i386                   randconfig-a003-201932
i386                   randconfig-a004-201932
x86_64                 randconfig-b001-201932
x86_64                 randconfig-b002-201932
x86_64                 randconfig-b003-201932
x86_64                 randconfig-b004-201932
i386                   randconfig-b001-201932
i386                   randconfig-b002-201932
i386                   randconfig-b003-201932
i386                   randconfig-b004-201932
x86_64                 randconfig-e001-201932
x86_64                 randconfig-e002-201932
x86_64                 randconfig-e003-201932
x86_64                 randconfig-e004-201932
i386                   randconfig-e001-201932
i386                   randconfig-e002-201932
i386                   randconfig-e003-201932
i386                   randconfig-e004-201932
i386                              allnoconfig
i386                                defconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
