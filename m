Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909DBB066D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 03:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CDE887D98;
	Thu, 12 Sep 2019 01:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0g1u09Zq5av; Thu, 12 Sep 2019 01:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9138687F0C;
	Thu, 12 Sep 2019 01:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4568C1BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 01:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4022487EE6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 01:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dE80uerhAvXl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 01:25:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9957487D98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 01:25:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 18:25:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360307046"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 11 Sep 2019 18:25:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i8Drl-0009cQ-Tu; Thu, 12 Sep 2019 09:25:45 +0800
Date: Thu, 12 Sep 2019 09:25:23 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d799e83.LV3Ca8zHhCRin/go%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 ef40abd17082063f1b952378fcb45aff7f322e4f
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
branch HEAD: ef40abd17082063f1b952378fcb45aff7f322e4f  ixgbe: Prevent u8 wrapping of ITR value to something less than 10us

elapsed time: 553m

configs tested: 114

The following configs have been built successfully.
More configs may be tested in the coming days.

c6x                        evmc6678_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                 randconfig-a001-201936
x86_64                 randconfig-a002-201936
x86_64                 randconfig-a003-201936
x86_64                 randconfig-a004-201936
i386                   randconfig-a001-201936
i386                   randconfig-a002-201936
i386                   randconfig-a003-201936
i386                   randconfig-a004-201936
x86_64                 randconfig-e001-201936
x86_64                 randconfig-e002-201936
x86_64                 randconfig-e003-201936
x86_64                 randconfig-e004-201936
i386                   randconfig-e001-201936
i386                   randconfig-e002-201936
i386                   randconfig-e003-201936
i386                   randconfig-e004-201936
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64                 randconfig-g003-201936
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
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
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                 randconfig-g001-201936
x86_64                 randconfig-g002-201936
x86_64                 randconfig-g004-201936
i386                   randconfig-g001-201936
i386                   randconfig-g002-201936
i386                   randconfig-g003-201936
i386                   randconfig-g004-201936
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                 randconfig-b002-201936
i386                   randconfig-b003-201936
i386                   randconfig-b004-201936
i386                   randconfig-b001-201936
i386                   randconfig-b002-201936
x86_64                 randconfig-b001-201936
x86_64                 randconfig-b004-201936
x86_64                 randconfig-b003-201936
x86_64                 randconfig-f001-201936
x86_64                 randconfig-f002-201936
x86_64                 randconfig-f003-201936
x86_64                 randconfig-f004-201936
i386                   randconfig-f001-201936
i386                   randconfig-f002-201936
i386                   randconfig-f003-201936
i386                   randconfig-f004-201936
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
x86_64                           allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
