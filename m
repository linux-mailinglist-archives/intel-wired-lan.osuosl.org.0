Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CFDB6A86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2019 20:34:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8941867EC;
	Wed, 18 Sep 2019 18:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2QOvNh+ksV3x; Wed, 18 Sep 2019 18:34:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5FE8867C0;
	Wed, 18 Sep 2019 18:34:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76CFF1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 18:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 735BA80ECA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 18:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVufdRb2TR1E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2019 18:34:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A461480868
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2019 18:34:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 11:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="362270252"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2019 11:34:05 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iAemC-0005Ei-VO; Thu, 19 Sep 2019 02:34:04 +0800
Date: Thu, 19 Sep 2019 02:33:20 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d827870.F0Zg6E+2nTfxkN8G%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 33a7e1d91e3ac6d4efba611518789e9d5d2497b2
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
branch HEAD: 33a7e1d91e3ac6d4efba611518789e9d5d2497b2  e1000e: Add support for S0ix

elapsed time: 171m

configs tested: 127

The following configs have been built successfully.
More configs may be tested in the coming days.

i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                 randconfig-g003-201937
i386                   randconfig-g004-201937
x86_64                 randconfig-g002-201937
x86_64                 randconfig-g001-201937
i386                   randconfig-g001-201937
x86_64                 randconfig-g004-201937
i386                   randconfig-g002-201937
i386                   randconfig-g003-201937
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
x86_64                 randconfig-b002-201937
i386                   randconfig-b003-201937
i386                   randconfig-b004-201937
i386                   randconfig-b001-201937
i386                   randconfig-b002-201937
x86_64                 randconfig-b001-201937
x86_64                 randconfig-b004-201937
x86_64                 randconfig-b003-201937
x86_64                           allyesconfig
i386                             allmodconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
x86_64                 randconfig-e004-201937
i386                   randconfig-e004-201937
x86_64                 randconfig-e002-201937
i386                   randconfig-e003-201937
x86_64                 randconfig-e003-201937
x86_64                 randconfig-e001-201937
i386                   randconfig-e001-201937
i386                   randconfig-e002-201937
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
i386                   randconfig-d002-201937
i386                   randconfig-d004-201937
x86_64                 randconfig-d004-201937
x86_64                 randconfig-d002-201937
x86_64                 randconfig-d001-201937
x86_64                 randconfig-d003-201937
i386                   randconfig-d001-201937
i386                   randconfig-d003-201937
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
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
i386                   randconfig-f004-201937
x86_64                 randconfig-f004-201937
x86_64                 randconfig-f002-201937
i386                   randconfig-f001-201937
i386                   randconfig-f002-201937
i386                   randconfig-f003-201937
x86_64                 randconfig-f003-201937
x86_64                 randconfig-f001-201937
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
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
x86_64                 randconfig-h002-201937
x86_64                 randconfig-h003-201937
i386                   randconfig-h002-201937
i386                   randconfig-h001-201937
i386                   randconfig-h004-201937
x86_64                 randconfig-h004-201937
x86_64                 randconfig-h001-201937
i386                   randconfig-h003-201937
x86_64                           allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
