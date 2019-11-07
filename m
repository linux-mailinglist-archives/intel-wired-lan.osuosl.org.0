Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A496F34B3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 17:37:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFA2785B1D;
	Thu,  7 Nov 2019 16:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1bxZZjMqzXZt; Thu,  7 Nov 2019 16:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39348861C1;
	Thu,  7 Nov 2019 16:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DEBD1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 16:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 94E1E86055
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 16:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YJsO+f-m9qzZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 16:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 76F558602E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 16:37:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 08:37:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="404155873"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 07 Nov 2019 08:37:01 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iSkmK-000GJX-LL; Fri, 08 Nov 2019 00:37:00 +0800
Date: Fri, 08 Nov 2019 00:36:59 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dc4482b.P4D/FM6Sa2EYAtLV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 2836654a2735d3bc0479edd3ca7457d909b007ed
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  master
branch HEAD: 2836654a2735d3bc0479edd3ca7457d909b007ed  Documentation: TLS: Add missing counter description

elapsed time: 2279m

configs tested: 129

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-e001-201944
x86_64                 randconfig-e002-201944
x86_64                 randconfig-e003-201944
x86_64                 randconfig-e004-201944
i386                   randconfig-e001-201944
i386                   randconfig-e002-201944
i386                   randconfig-e003-201944
i386                   randconfig-e004-201944
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                           allyesconfig
i386                             allmodconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                   randconfig-f002-201944
i386                   randconfig-f001-201944
x86_64                 randconfig-f003-201944
x86_64                 randconfig-f004-201944
x86_64                 randconfig-f002-201944
i386                   randconfig-f003-201944
i386                   randconfig-f004-201944
x86_64                 randconfig-f001-201944
arm                          exynos_defconfig
mips                              allnoconfig
s390                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-a001-201944
x86_64                 randconfig-a002-201944
x86_64                 randconfig-a003-201944
x86_64                 randconfig-a004-201944
i386                   randconfig-a001-201944
i386                   randconfig-a002-201944
i386                   randconfig-a003-201944
i386                   randconfig-a004-201944
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
x86_64                 randconfig-b001-201944
x86_64                 randconfig-b002-201944
x86_64                 randconfig-b003-201944
x86_64                 randconfig-b004-201944
i386                   randconfig-b001-201944
i386                   randconfig-b002-201944
i386                   randconfig-b003-201944
i386                   randconfig-b004-201944
x86_64                 randconfig-g001-201944
x86_64                 randconfig-g002-201944
x86_64                 randconfig-g003-201944
x86_64                 randconfig-g004-201944
i386                   randconfig-g001-201944
i386                   randconfig-g002-201944
i386                   randconfig-g003-201944
i386                   randconfig-g004-201944
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
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
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64                           allmodconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arm                              allmodconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
