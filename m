Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E5219DBFA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Apr 2020 18:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C0C3879A3;
	Fri,  3 Apr 2020 16:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2HRml04taH+Y; Fri,  3 Apr 2020 16:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25A67879EF;
	Fri,  3 Apr 2020 16:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5EA31BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 16:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E184586BEA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 16:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPviqmifdCDr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2020 16:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13F9F86BB9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 16:47:35 +0000 (UTC)
IronPort-SDR: tREbP7GL540gABb2oDP1Fk35I1MNux5EnPveaF27AObwVYZIP8gWJGVpZ/i49VVbrKLhatHOFp
 3CvUrQDwMnEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 09:47:34 -0700
IronPort-SDR: pWP7twkEgWNiRPCLyCucZDNdcC+w3aenP9kQprJUPQNcPLbR+2wbaSwVv+WDmmpe7Tu5AWrUsM
 jshVbapI6dhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="296037498"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Apr 2020 09:47:32 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jKPTg-000EcV-7W; Sat, 04 Apr 2020 00:47:32 +0800
Date: Sat, 04 Apr 2020 00:46:46 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e876876.fhzrRaHojoPanb7/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 bb8237738a0292dc82134d6428c6e86166d2dc85
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
branch HEAD: bb8237738a0292dc82134d6428c6e86166d2dc85  igc: Remove PCIe Control register

elapsed time: 1312m

configs tested: 131
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
riscv                          rv32_defconfig
sh                  sh7785lcr_32bit_defconfig
ia64                                defconfig
powerpc                             defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
arm                              allmodconfig
arm64                            allmodconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
alpha                randconfig-a001-20200403
m68k                 randconfig-a001-20200403
mips                 randconfig-a001-20200403
nds32                randconfig-a001-20200403
parisc               randconfig-a001-20200403
mips                 randconfig-a001-20200402
nds32                randconfig-a001-20200402
m68k                 randconfig-a001-20200402
alpha                randconfig-a001-20200402
parisc               randconfig-a001-20200402
riscv                randconfig-a001-20200402
sparc64              randconfig-a001-20200402
h8300                randconfig-a001-20200402
nios2                randconfig-a001-20200402
microblaze           randconfig-a001-20200402
c6x                  randconfig-a001-20200402
csky                 randconfig-a001-20200403
openrisc             randconfig-a001-20200403
s390                 randconfig-a001-20200403
sh                   randconfig-a001-20200403
xtensa               randconfig-a001-20200403
s390                 randconfig-a001-20200402
xtensa               randconfig-a001-20200402
csky                 randconfig-a001-20200402
openrisc             randconfig-a001-20200402
sh                   randconfig-a001-20200402
x86_64               randconfig-b001-20200403
x86_64               randconfig-b002-20200403
x86_64               randconfig-b003-20200403
x86_64               randconfig-d002-20200403
x86_64               randconfig-d003-20200403
i386                 randconfig-d001-20200403
i386                 randconfig-d003-20200403
x86_64               randconfig-e001-20200403
x86_64               randconfig-e002-20200403
x86_64               randconfig-e003-20200403
i386                 randconfig-e001-20200403
i386                 randconfig-e003-20200403
x86_64               randconfig-g002-20200403
arm64                randconfig-a001-20200402
sparc                randconfig-a001-20200402
ia64                 randconfig-a001-20200402
arc                  randconfig-a001-20200402
arm                  randconfig-a001-20200402
powerpc              randconfig-a001-20200403
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
sh                               allmodconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
