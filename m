Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE5579C67
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2019 00:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C382851CC;
	Mon, 29 Jul 2019 22:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id viPvC1g4URFq; Mon, 29 Jul 2019 22:26:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40A1185402;
	Mon, 29 Jul 2019 22:26:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADB3B1BF398
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2019 22:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4A5D86141
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2019 22:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CRNR1nQQM+By for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jul 2019 22:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6E7A85CA8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jul 2019 22:26:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 15:26:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="190682144"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2019 15:26:03 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hsE5j-000Cip-BE; Tue, 30 Jul 2019 06:26:03 +0800
Date: Tue, 30 Jul 2019 06:25:30 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d3f725a.y/1t+rQHLNFwg1Yc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 9e4f20b50e4f5c927663d249fcef4708d6f6a051
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
branch HEAD: 9e4f20b50e4f5c927663d249fcef4708d6f6a051  igc: Add NVM checksum validation

elapsed time: 279m

configs tested: 152

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-d001-201930
x86_64                 randconfig-d002-201930
x86_64                 randconfig-d003-201930
x86_64                 randconfig-d004-201930
i386                   randconfig-d001-201930
i386                   randconfig-d002-201930
i386                   randconfig-d003-201930
i386                   randconfig-d004-201930
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             alldefconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
riscv                              tinyconfig
i386                               tinyconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
arm                              allmodconfig
arm64                            allmodconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
x86_64                 randconfig-c001-201930
x86_64                 randconfig-c002-201930
x86_64                 randconfig-c003-201930
x86_64                 randconfig-c004-201930
i386                   randconfig-c001-201930
i386                   randconfig-c002-201930
i386                   randconfig-c003-201930
i386                   randconfig-c004-201930
powerpc                             defconfig
ia64                                defconfig
x86_64                 randconfig-h001-201930
x86_64                 randconfig-h002-201930
x86_64                 randconfig-h003-201930
x86_64                 randconfig-h004-201930
i386                   randconfig-h001-201930
i386                   randconfig-h002-201930
i386                   randconfig-h003-201930
i386                   randconfig-h004-201930
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-f001-201930
x86_64                 randconfig-f002-201930
x86_64                 randconfig-f003-201930
x86_64                 randconfig-f004-201930
i386                   randconfig-f001-201930
i386                   randconfig-f002-201930
i386                   randconfig-f003-201930
i386                   randconfig-f004-201930
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
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
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-e001-201930
x86_64                 randconfig-e002-201930
x86_64                 randconfig-e003-201930
x86_64                 randconfig-e004-201930
i386                   randconfig-e001-201930
i386                   randconfig-e002-201930
i386                   randconfig-e003-201930
i386                   randconfig-e004-201930
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                 randconfig-b001-201930
x86_64                 randconfig-b002-201930
x86_64                 randconfig-b003-201930
x86_64                 randconfig-b004-201930
i386                   randconfig-b001-201930
i386                   randconfig-b002-201930
i386                   randconfig-b003-201930
i386                   randconfig-b004-201930
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
x86_64                           allmodconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                 randconfig-a001-201930
x86_64                 randconfig-a002-201930
x86_64                 randconfig-a003-201930
x86_64                 randconfig-a004-201930
i386                   randconfig-a001-201930
i386                   randconfig-a002-201930
i386                   randconfig-a003-201930
i386                   randconfig-a004-201930
x86_64                 randconfig-g001-201930
x86_64                 randconfig-g002-201930
x86_64                 randconfig-g003-201930
x86_64                 randconfig-g004-201930
i386                   randconfig-g001-201930
i386                   randconfig-g002-201930
i386                   randconfig-g003-201930
i386                   randconfig-g004-201930

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
