Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABAD130C4E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2020 04:02:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54EEF8491C;
	Mon,  6 Jan 2020 03:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJVu1MzcZwTJ; Mon,  6 Jan 2020 03:02:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1469A8472A;
	Mon,  6 Jan 2020 03:02:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25E3B1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2020 03:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 210E68584A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2020 03:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v50ZcFr_Xu8Z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2020 03:02:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5572385792
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2020 03:02:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 19:02:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,401,1571727600"; d="scan'208";a="222716458"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Jan 2020 19:02:41 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ioIfA-000Da2-Tv; Mon, 06 Jan 2020 11:02:40 +0800
Date: Mon, 06 Jan 2020 11:02:21 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e12a33d.hVvvroFHmbU10IGf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 ea8ccaef9261a81b7e9ba5fff71a806c31a7a479
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
branch HEAD: ea8ccaef9261a81b7e9ba5fff71a806c31a7a479  i40e: Fix receive buffer starvation for AF_XDP

elapsed time: 1092m

configs tested: 145

The following configs have been built successfully.
More configs may be tested in the coming days.

sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
i386                 randconfig-f001-20200105
x86_64               randconfig-f003-20200105
x86_64               randconfig-f001-20200105
i386                 randconfig-f003-20200105
i386                 randconfig-f002-20200105
x86_64               randconfig-f002-20200105
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
x86_64               randconfig-b003-20200105
i386                 randconfig-b001-20200105
x86_64               randconfig-b002-20200105
i386                 randconfig-b003-20200105
x86_64               randconfig-b001-20200105
i386                 randconfig-b002-20200105
i386                             alldefconfig
arm                              allmodconfig
arm64                            allmodconfig
x86_64               randconfig-a002-20200105
i386                 randconfig-a001-20200105
x86_64               randconfig-a001-20200105
i386                 randconfig-a002-20200105
x86_64               randconfig-a003-20200105
i386                 randconfig-a003-20200105
i386                 randconfig-e002-20200105
x86_64               randconfig-e001-20200105
x86_64               randconfig-e002-20200105
i386                 randconfig-e003-20200105
x86_64               randconfig-e003-20200105
i386                 randconfig-e001-20200105
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
sparc64                          allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
i386                             allyesconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
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
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
csky                 randconfig-a001-20200105
s390                 randconfig-a001-20200105
sh                   randconfig-a001-20200105
xtensa               randconfig-a001-20200105
openrisc             randconfig-a001-20200105
sparc64              randconfig-a001-20200105
nios2                randconfig-a001-20200105
h8300                randconfig-a001-20200105
c6x                  randconfig-a001-20200105
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
ia64                             alldefconfig
mips                 randconfig-a001-20200105
parisc               randconfig-a001-20200105
riscv                randconfig-a001-20200105
alpha                randconfig-a001-20200105
m68k                 randconfig-a001-20200105
nds32                randconfig-a001-20200105
mips                             allmodconfig
mips                           32r2_defconfig
mips                             allyesconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
x86_64               randconfig-h003-20200105
x86_64               randconfig-h002-20200105
i386                 randconfig-h003-20200105
i386                 randconfig-h002-20200105
i386                 randconfig-h001-20200105
x86_64               randconfig-h001-20200105
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-d003-20200105
x86_64               randconfig-d002-20200105
x86_64               randconfig-d001-20200105
i386                 randconfig-d002-20200105
i386                 randconfig-d001-20200105
i386                 randconfig-d003-20200105
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
i386                              allnoconfig
i386                                defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
