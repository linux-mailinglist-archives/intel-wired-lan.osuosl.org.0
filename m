Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DC61945C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 18:47:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1681220451;
	Thu, 26 Mar 2020 17:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkK1KWeno1Xx; Thu, 26 Mar 2020 17:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92BE42046E;
	Thu, 26 Mar 2020 17:47:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 622741BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 17:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5ACDE873B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 17:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w8NBLfqguD-0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 17:47:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8622A873A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 17:47:32 +0000 (UTC)
IronPort-SDR: YgogIh8y5ZkGM3LoiQuxhBqB0LT4q2I6Q5b6NLCAcbsrZYU0ObjcMtjCdEZ4LIRAMSrd4jSvtv
 V7dUQf9AdO3g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 10:47:32 -0700
IronPort-SDR: mG3K3WCk2DpcYkeTZ03XZ5KCjnUH6T9vLSHzMC5TgQrSi94PqTkbHkkp9mimgsCD8e6GfIZY5/
 kSsXAPXPjhQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="265948171"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2020 10:47:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jHWbJ-000CVw-My; Fri, 27 Mar 2020 01:47:29 +0800
Date: Fri, 27 Mar 2020 01:46:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e7cea8f.mk6TdxCVYG/85K3A%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS
 0675e85be3de135bc369d64a91c7da5b65a1987c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: 0675e85be3de135bc369d64a91c7da5b65a1987c  i40e: Register a virtbus device to provide RDMA

elapsed time: 898m

configs tested: 164
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                              allmodconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
openrisc                    or1ksim_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
i386                 randconfig-a002-20200326
i386                 randconfig-a001-20200326
x86_64               randconfig-a002-20200326
x86_64               randconfig-a001-20200326
i386                 randconfig-a003-20200326
x86_64               randconfig-a003-20200326
alpha                randconfig-a001-20200326
m68k                 randconfig-a001-20200326
mips                 randconfig-a001-20200326
nds32                randconfig-a001-20200326
parisc               randconfig-a001-20200326
riscv                randconfig-a001-20200326
h8300                randconfig-a001-20200325
microblaze           randconfig-a001-20200325
nios2                randconfig-a001-20200325
c6x                  randconfig-a001-20200325
sparc64              randconfig-a001-20200325
c6x                  randconfig-a001-20200326
h8300                randconfig-a001-20200326
microblaze           randconfig-a001-20200326
nios2                randconfig-a001-20200326
sparc64              randconfig-a001-20200326
csky                 randconfig-a001-20200326
openrisc             randconfig-a001-20200326
s390                 randconfig-a001-20200326
xtensa               randconfig-a001-20200326
sh                   randconfig-a001-20200326
i386                 randconfig-b003-20200326
i386                 randconfig-b001-20200326
x86_64               randconfig-b003-20200326
i386                 randconfig-b002-20200326
x86_64               randconfig-b002-20200326
x86_64               randconfig-c003-20200326
x86_64               randconfig-c001-20200326
i386                 randconfig-c002-20200326
x86_64               randconfig-c002-20200326
i386                 randconfig-c003-20200326
i386                 randconfig-c001-20200326
i386                 randconfig-d003-20200326
i386                 randconfig-d001-20200326
i386                 randconfig-d002-20200326
x86_64               randconfig-e001-20200326
x86_64               randconfig-e003-20200326
i386                 randconfig-e002-20200326
i386                 randconfig-e003-20200326
i386                 randconfig-e001-20200326
x86_64               randconfig-e002-20200326
i386                 randconfig-f001-20200326
i386                 randconfig-f003-20200326
i386                 randconfig-f002-20200326
x86_64               randconfig-f002-20200326
x86_64               randconfig-f003-20200326
x86_64               randconfig-f001-20200326
i386                 randconfig-g003-20200326
x86_64               randconfig-g002-20200326
i386                 randconfig-g001-20200326
i386                 randconfig-g002-20200326
x86_64               randconfig-g001-20200326
x86_64               randconfig-g003-20200326
x86_64               randconfig-h002-20200326
x86_64               randconfig-h003-20200326
i386                 randconfig-h003-20200326
i386                 randconfig-h001-20200326
x86_64               randconfig-h001-20200326
i386                 randconfig-h002-20200326
arc                  randconfig-a001-20200326
arm                  randconfig-a001-20200326
arm64                randconfig-a001-20200326
ia64                 randconfig-a001-20200326
powerpc              randconfig-a001-20200326
sparc                randconfig-a001-20200326
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
