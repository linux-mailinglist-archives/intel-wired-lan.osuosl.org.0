Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 051B51361CD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 21:30:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A30F6868A8;
	Thu,  9 Jan 2020 20:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BoIjsnx-sS28; Thu,  9 Jan 2020 20:30:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D02BD868D0;
	Thu,  9 Jan 2020 20:30:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA8F21BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 20:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E2C0B86881
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 20:30:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ytvb3VAdclSH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 20:30:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 363F3866A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 20:30:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 12:30:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="218462254"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 09 Jan 2020 12:30:30 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ipeRq-000Hdd-Cn; Fri, 10 Jan 2020 04:30:30 +0800
Date: Fri, 10 Jan 2020 04:29:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e178d3b.cSiFrxh28EWXAdPs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 30780d086a83332adcd9362281201cee7c3d9d19
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
branch HEAD: 30780d086a83332adcd9362281201cee7c3d9d19  atm: eni: fix uninitialized variable warning

elapsed time: 1352m

configs tested: 151

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64               randconfig-f001-20200109
x86_64               randconfig-f002-20200109
x86_64               randconfig-f003-20200109
i386                 randconfig-f001-20200109
i386                 randconfig-f002-20200109
i386                 randconfig-f003-20200109
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
arc                  randconfig-a001-20200109
arm                  randconfig-a001-20200109
arm64                randconfig-a001-20200109
ia64                 randconfig-a001-20200109
powerpc              randconfig-a001-20200109
sparc                randconfig-a001-20200109
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64               randconfig-g001-20200109
x86_64               randconfig-g002-20200109
x86_64               randconfig-g003-20200109
i386                 randconfig-g001-20200109
i386                 randconfig-g002-20200109
i386                 randconfig-g003-20200109
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64               randconfig-b001-20200109
x86_64               randconfig-b002-20200109
x86_64               randconfig-b003-20200109
i386                 randconfig-b001-20200109
i386                 randconfig-b002-20200109
i386                 randconfig-b003-20200109
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64               randconfig-h001-20200109
x86_64               randconfig-h002-20200109
x86_64               randconfig-h003-20200109
i386                 randconfig-h001-20200109
i386                 randconfig-h002-20200109
i386                 randconfig-h003-20200109
x86_64               randconfig-c001-20200109
x86_64               randconfig-c002-20200109
x86_64               randconfig-c003-20200109
i386                 randconfig-c001-20200109
i386                 randconfig-c002-20200109
i386                 randconfig-c003-20200109
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
riscv                    nommu_virt_defconfig
c6x                  randconfig-a001-20200109
h8300                randconfig-a001-20200109
microblaze           randconfig-a001-20200109
nios2                randconfig-a001-20200109
sparc64              randconfig-a001-20200109
x86_64               randconfig-d001-20200109
x86_64               randconfig-d002-20200109
x86_64               randconfig-d003-20200109
i386                 randconfig-d001-20200109
i386                 randconfig-d002-20200109
i386                 randconfig-d003-20200109
x86_64               randconfig-a001-20200109
x86_64               randconfig-a002-20200109
x86_64               randconfig-a003-20200109
i386                 randconfig-a001-20200109
i386                 randconfig-a002-20200109
i386                 randconfig-a003-20200109
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arm                              allmodconfig
arm64                            allmodconfig
alpha                randconfig-a001-20200109
m68k                 randconfig-a001-20200109
mips                 randconfig-a001-20200109
nds32                randconfig-a001-20200109
parisc               randconfig-a001-20200109
riscv                randconfig-a001-20200109
csky                 randconfig-a001-20200109
openrisc             randconfig-a001-20200109
s390                 randconfig-a001-20200109
sh                   randconfig-a001-20200109
xtensa               randconfig-a001-20200109
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                          rv32_defconfig
arm                               allnoconfig
arm                              allyesconfig
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

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
