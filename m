Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68107F5CA0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2019 02:09:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AD0384D89;
	Sat,  9 Nov 2019 01:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vnIyPva2TLg8; Sat,  9 Nov 2019 01:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06760848A3;
	Sat,  9 Nov 2019 01:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7CCD1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2019 01:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D735220505
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2019 01:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1S6R2NnjHsZC for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2019 01:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id CC439203AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2019 01:09:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 17:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="233824422"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 08 Nov 2019 17:09:39 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iTFFy-0001jH-PI; Sat, 09 Nov 2019 09:09:38 +0800
Date: Sat, 09 Nov 2019 09:08:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dc6119c.LOf4o1KpkDBd7skh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 768b18fb66eb3e43f8db0a064926d6ed3f4e3bbd
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
branch HEAD: 768b18fb66eb3e43f8db0a064926d6ed3f4e3bbd  ixgbe: need_wakeup flag might not be set for Tx

elapsed time: 274m

configs tested: 145

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                           allmodconfig
x86_64                           allyesconfig
i386                             alldefconfig
x86_64                 randconfig-f001-201944
x86_64                 randconfig-f002-201944
x86_64                 randconfig-f003-201944
x86_64                 randconfig-f004-201944
i386                   randconfig-f001-201944
i386                   randconfig-f002-201944
i386                   randconfig-f003-201944
i386                   randconfig-f004-201944
i386                             allmodconfig
i386                   randconfig-b001-201944
x86_64                 randconfig-b002-201944
i386                   randconfig-b003-201944
x86_64                 randconfig-b003-201944
i386                   randconfig-b004-201944
x86_64                 randconfig-b001-201944
x86_64                 randconfig-b004-201944
i386                   randconfig-b002-201944
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                              allnoconfig
i386                                defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-g001-201944
x86_64                 randconfig-g002-201944
x86_64                 randconfig-g003-201944
x86_64                 randconfig-g004-201944
i386                   randconfig-g001-201944
i386                   randconfig-g002-201944
i386                   randconfig-g003-201944
i386                   randconfig-g004-201944
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-h001-201944
x86_64                 randconfig-h002-201944
x86_64                 randconfig-h003-201944
x86_64                 randconfig-h004-201944
i386                   randconfig-h001-201944
i386                   randconfig-h002-201944
i386                   randconfig-h003-201944
i386                   randconfig-h004-201944
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                 randconfig-a001-201944
x86_64                 randconfig-a002-201944
x86_64                 randconfig-a003-201944
x86_64                 randconfig-a004-201944
i386                   randconfig-a001-201944
i386                   randconfig-a002-201944
i386                   randconfig-a003-201944
i386                   randconfig-a004-201944
x86_64                 randconfig-d001-201944
x86_64                 randconfig-d002-201944
x86_64                 randconfig-d003-201944
x86_64                 randconfig-d004-201944
i386                   randconfig-d001-201944
i386                   randconfig-d002-201944
i386                   randconfig-d003-201944
i386                   randconfig-d004-201944
x86_64                 randconfig-c001-201944
x86_64                 randconfig-c002-201944
x86_64                 randconfig-c003-201944
x86_64                 randconfig-c004-201944
i386                   randconfig-c001-201944
i386                   randconfig-c002-201944
i386                   randconfig-c003-201944
i386                   randconfig-c004-201944
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
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
x86_64                 randconfig-e004-201944
x86_64                 randconfig-e001-201944
x86_64                 randconfig-e003-201944
x86_64                 randconfig-e002-201944
i386                   randconfig-e003-201944
i386                   randconfig-e001-201944
i386                   randconfig-e004-201944
i386                   randconfig-e002-201944
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

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
