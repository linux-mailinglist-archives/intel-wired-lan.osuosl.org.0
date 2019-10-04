Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78606CC376
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2019 21:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 309272442C;
	Fri,  4 Oct 2019 19:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zwpKWDUX8IP; Fri,  4 Oct 2019 19:16:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A76424400;
	Fri,  4 Oct 2019 19:15:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 776651BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 19:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72DE187D13
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 19:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MF3YjOVENwmu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2019 19:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC06686D13
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 19:15:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 12:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,257,1566889200"; d="scan'208";a="182806235"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 04 Oct 2019 12:15:53 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iGT3R-000BYe-Bw; Sat, 05 Oct 2019 03:15:53 +0800
Date: Sat, 05 Oct 2019 03:15:20 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d979a48.dx7hhdLAgd033Fkj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 0ba46794b7da93856333e4124cf6eb95c1c002e9
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
branch HEAD: 0ba46794b7da93856333e4124cf6eb95c1c002e9  mlx5: reject unsupported external timestamp flags

elapsed time: 215m

configs tested: 145

The following configs have been built successfully.
More configs may be tested in the coming days.

m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
arm                              allmodconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-c003-201939
i386                   randconfig-c004-201939
x86_64                 randconfig-c002-201939
x86_64                 randconfig-c004-201939
i386                   randconfig-c003-201939
i386                   randconfig-c001-201939
x86_64                 randconfig-c001-201939
i386                   randconfig-c002-201939
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
x86_64                 randconfig-b002-201939
i386                   randconfig-b003-201939
i386                   randconfig-b004-201939
x86_64                 randconfig-b001-201939
i386                   randconfig-b002-201939
i386                   randconfig-b001-201939
x86_64                 randconfig-b004-201939
x86_64                 randconfig-b003-201939
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
i386                   randconfig-g004-201939
x86_64                 randconfig-g003-201939
x86_64                 randconfig-g002-201939
x86_64                 randconfig-g001-201939
x86_64                 randconfig-g004-201939
i386                   randconfig-g001-201939
i386                   randconfig-g002-201939
i386                   randconfig-g003-201939
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
mips                             allmodconfig
mips                           32r2_defconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
x86_64                 randconfig-f004-201939
i386                   randconfig-f004-201939
i386                   randconfig-f003-201939
i386                   randconfig-f002-201939
i386                   randconfig-f001-201939
x86_64                 randconfig-f002-201939
x86_64                 randconfig-f001-201939
x86_64                 randconfig-f003-201939
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
x86_64                 randconfig-a004-201939
x86_64                 randconfig-a002-201939
i386                   randconfig-a003-201939
i386                   randconfig-a004-201939
i386                   randconfig-a002-201939
x86_64                 randconfig-a003-201939
x86_64                 randconfig-a001-201939
i386                   randconfig-a001-201939
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
i386                   randconfig-e004-201939
x86_64                 randconfig-e004-201939
x86_64                 randconfig-e002-201939
x86_64                 randconfig-e003-201939
i386                   randconfig-e003-201939
x86_64                 randconfig-e001-201939
i386                   randconfig-e001-201939
i386                   randconfig-e002-201939
i386                   randconfig-d002-201939
i386                   randconfig-d004-201939
x86_64                 randconfig-d004-201939
x86_64                 randconfig-d001-201939
x86_64                 randconfig-d002-201939
x86_64                 randconfig-d003-201939
i386                   randconfig-d001-201939
i386                   randconfig-d003-201939
i386                             allmodconfig
x86_64                 randconfig-h003-201939
x86_64                 randconfig-h002-201939
i386                   randconfig-h002-201939
i386                   randconfig-h001-201939
x86_64                 randconfig-h004-201939
i386                   randconfig-h004-201939
x86_64                 randconfig-h001-201939
i386                   randconfig-h003-201939
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
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
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
x86_64                           allyesconfig
x86_64                           allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
