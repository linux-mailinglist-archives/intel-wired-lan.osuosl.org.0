Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A21B1639
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 00:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6511A875EA;
	Thu, 12 Sep 2019 22:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CANrxLw4KJOs; Thu, 12 Sep 2019 22:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C2EF875D9;
	Thu, 12 Sep 2019 22:19:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAA651BF33A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 22:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D69DD8818E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 22:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lSCn2om+tVGa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 22:19:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0446288184
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 22:19:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 15:19:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="269231131"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2019 15:19:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i8XQh-0004G8-1L; Fri, 13 Sep 2019 06:19:07 +0800
Date: Fri, 13 Sep 2019 06:19:01 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d7ac455.nyi+JsClmAPmvkGh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 f477d90c2dfb1179372b6a94cb2693b6521ffd7c
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
branch HEAD: f477d90c2dfb1179372b6a94cb2693b6521ffd7c  ixgbe: fix xdp handle calculations

elapsed time: 346m

configs tested: 127

The following configs have been built successfully.
More configs may be tested in the coming days.

sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-c003-201936
x86_64                 randconfig-c002-201936
i386                   randconfig-c004-201936
x86_64                 randconfig-c004-201936
i386                   randconfig-c003-201936
i386                   randconfig-c002-201936
x86_64                 randconfig-c001-201936
i386                   randconfig-c001-201936
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
x86_64                 randconfig-b002-201936
i386                   randconfig-b003-201936
i386                   randconfig-b004-201936
i386                   randconfig-b001-201936
i386                   randconfig-b002-201936
x86_64                 randconfig-b001-201936
x86_64                 randconfig-b004-201936
x86_64                 randconfig-b003-201936
i386                   randconfig-f004-201936
x86_64                 randconfig-f004-201936
x86_64                 randconfig-f002-201936
i386                   randconfig-f001-201936
i386                   randconfig-f002-201936
i386                   randconfig-f003-201936
x86_64                 randconfig-f003-201936
x86_64                 randconfig-f001-201936
x86_64                           allyesconfig
i386                             allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
i386                   randconfig-d002-201936
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                 randconfig-h002-201936
x86_64                 randconfig-h003-201936
i386                   randconfig-h001-201936
i386                   randconfig-h002-201936
i386                   randconfig-h004-201936
x86_64                 randconfig-h004-201936
i386                   randconfig-h003-201936
x86_64                 randconfig-h001-201936
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
x86_64                 randconfig-e004-201936
i386                   randconfig-e004-201936
x86_64                 randconfig-e002-201936
i386                   randconfig-e003-201936
x86_64                 randconfig-e003-201936
x86_64                 randconfig-e001-201936
i386                   randconfig-e002-201936
i386                   randconfig-e001-201936
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
x86_64                           allmodconfig
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
x86_64                 randconfig-g003-201936
i386                   randconfig-g004-201936
x86_64                 randconfig-g001-201936
x86_64                 randconfig-g002-201936
i386                   randconfig-g001-201936
x86_64                 randconfig-g004-201936
i386                   randconfig-g002-201936
i386                   randconfig-g003-201936

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
