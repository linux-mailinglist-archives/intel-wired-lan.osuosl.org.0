Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A8072441
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 04:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32FFD87C16;
	Wed, 24 Jul 2019 02:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fiiVmsAJcHAq; Wed, 24 Jul 2019 02:10:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B03B787C2C;
	Wed, 24 Jul 2019 02:10:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92C491BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 02:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F5EA20471
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 02:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JbfsfVOG5Wpz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 02:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DCA920444
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 02:09:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 19:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="193298143"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2019 19:09:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hq6ir-0008YU-Me; Wed, 24 Jul 2019 10:09:41 +0800
Date: Wed, 24 Jul 2019 10:08:53 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d37bdb5.P/h8kWCfhxf1Hgmi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 fa4155094edfd30ba6da01bbed06b0363f742bc1
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
branch HEAD: fa4155094edfd30ba6da01bbed06b0363f742bc1  ice: Account for all states of FW DCBx and LLDP

elapsed time: 225m

configs tested: 114

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64                 randconfig-c001-201929
x86_64                 randconfig-c002-201929
x86_64                 randconfig-c003-201929
x86_64                 randconfig-c004-201929
i386                   randconfig-c001-201929
i386                   randconfig-c002-201929
i386                   randconfig-c003-201929
i386                   randconfig-c004-201929
x86_64                           allyesconfig
i386                             allmodconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                           allmodconfig
i386                             alldefconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                              allnoconfig
i386                                defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                 randconfig-d001-201929
x86_64                 randconfig-d002-201929
x86_64                 randconfig-d003-201929
x86_64                 randconfig-d004-201929
i386                   randconfig-d001-201929
i386                   randconfig-d002-201929
i386                   randconfig-d003-201929
i386                   randconfig-d004-201929
x86_64                 randconfig-h001-201929
x86_64                 randconfig-h002-201929
x86_64                 randconfig-h003-201929
x86_64                 randconfig-h004-201929
i386                   randconfig-h001-201929
i386                   randconfig-h002-201929
i386                   randconfig-h003-201929
i386                   randconfig-h004-201929
x86_64                 randconfig-f001-201929
x86_64                 randconfig-f002-201929
x86_64                 randconfig-f003-201929
x86_64                 randconfig-f004-201929
i386                   randconfig-f001-201929
i386                   randconfig-f002-201929
i386                   randconfig-f003-201929
i386                   randconfig-f004-201929
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
x86_64                 randconfig-b001-201929
x86_64                 randconfig-b002-201929
x86_64                 randconfig-b003-201929
x86_64                 randconfig-b004-201929
i386                   randconfig-b001-201929
i386                   randconfig-b002-201929
i386                   randconfig-b003-201929
i386                   randconfig-b004-201929
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                 randconfig-g001-201929
x86_64                 randconfig-g002-201929
x86_64                 randconfig-g003-201929
x86_64                 randconfig-g004-201929
i386                   randconfig-g001-201929
i386                   randconfig-g002-201929
i386                   randconfig-g003-201929
i386                   randconfig-g004-201929
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
m68k                             allyesconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
