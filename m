Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D712DC5E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jan 2020 00:59:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C88FD85C88;
	Tue, 31 Dec 2019 23:59:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOQPZQITJ125; Tue, 31 Dec 2019 23:59:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 957F98584F;
	Tue, 31 Dec 2019 23:59:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BEE01BF20F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Dec 2019 23:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 465D8861D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Dec 2019 23:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5iCu86cdYqq7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Dec 2019 23:59:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58F40857BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Dec 2019 23:59:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 15:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,381,1571727600"; d="scan'208";a="213772742"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 31 Dec 2019 15:59:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1imRQL-000CiP-Qq; Wed, 01 Jan 2020 07:59:41 +0800
Date: Wed, 01 Jan 2020 07:59:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e0be0e1.qpO6hhLmwupOyV3N%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 2e80c9b83c99d581b269f4eb9e90d83ff5d3ab20
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
branch HEAD: 2e80c9b83c99d581b269f4eb9e90d83ff5d3ab20  ice: remove redundant assignment to variable xmit_done

elapsed time: 286m

configs tested: 144

The following configs have been built successfully.
More configs may be tested in the coming days.

csky                 randconfig-a001-20200101
s390                 randconfig-a001-20200101
sh                   randconfig-a001-20200101
xtensa               randconfig-a001-20200101
openrisc             randconfig-a001-20200101
i386                 randconfig-b002-20191231
x86_64               randconfig-b002-20191231
i386                 randconfig-b001-20191231
x86_64               randconfig-b001-20191231
i386                 randconfig-b003-20191231
x86_64               randconfig-b003-20191231
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nios2                randconfig-a001-20191231
microblaze           randconfig-a001-20191231
c6x                  randconfig-a001-20191231
h8300                randconfig-a001-20191231
sparc64              randconfig-a001-20191231
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
sparc                            allyesconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
mips                             allmodconfig
mips                           32r2_defconfig
mips                             allyesconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
mips                 randconfig-a001-20200101
parisc               randconfig-a001-20200101
riscv                randconfig-a001-20200101
alpha                randconfig-a001-20200101
m68k                 randconfig-a001-20200101
nds32                randconfig-a001-20200101
arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
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
i386                              allnoconfig
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
x86_64               randconfig-a001-20191231
i386                 randconfig-a002-20191231
x86_64               randconfig-a002-20191231
x86_64               randconfig-a003-20191231
i386                 randconfig-a001-20191231
i386                 randconfig-a003-20191231
i386                 randconfig-e002-20191231
x86_64               randconfig-e001-20191231
x86_64               randconfig-e003-20191231
i386                 randconfig-e001-20191231
x86_64               randconfig-e002-20191231
i386                 randconfig-e003-20191231
i386                 randconfig-h002-20191231
i386                 randconfig-h003-20191231
i386                 randconfig-h001-20191231
x86_64               randconfig-h002-20191231
x86_64               randconfig-h001-20191231
x86_64               randconfig-h003-20191231
i386                 randconfig-f001-20191230
i386                 randconfig-f003-20191230
x86_64               randconfig-f003-20191230
x86_64               randconfig-f002-20191230
i386                 randconfig-f002-20191230
x86_64               randconfig-f001-20191230
ia64                 randconfig-a001-20191231
arm64                randconfig-a001-20191231
arm                  randconfig-a001-20191231
arc                  randconfig-a001-20191231
sparc                randconfig-a001-20191231
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
x86_64               randconfig-g002-20191230
i386                 randconfig-g003-20191230
x86_64               randconfig-g001-20191230
i386                 randconfig-g002-20191230
i386                 randconfig-g001-20191230
x86_64               randconfig-g003-20191230

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
