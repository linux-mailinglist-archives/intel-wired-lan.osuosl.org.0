Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7ED12E83D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2020 16:46:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FFA98643F;
	Thu,  2 Jan 2020 15:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3m9uCIDbpasb; Thu,  2 Jan 2020 15:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2232586411;
	Thu,  2 Jan 2020 15:46:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADAAD1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2020 15:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A7074863E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2020 15:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCeAeeNK2-f2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2020 15:46:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 69F8684B8F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2020 15:46:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 07:46:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,387,1571727600"; d="scan'208";a="221911514"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 02 Jan 2020 07:46:07 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1in2fm-0004Fa-TL; Thu, 02 Jan 2020 23:46:06 +0800
Date: Thu, 02 Jan 2020 23:45:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e0e1027.rbv6LIvWgchsKE7S%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:1GbE] BUILD SUCCESS
 684ea87cc312c98386c667d1046c61eb92ea8379
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  1GbE
branch HEAD: 684ea87cc312c98386c667d1046c61eb92ea8379  igc: Remove serdes comments from a description of methods

elapsed time: 2476m

configs tested: 132

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
s390                              allnoconfig
s390                             alldefconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
s390                       zfcpdump_defconfig
s390                             allyesconfig
arm                              allmodconfig
arm64                            allmodconfig
arm                               allnoconfig
sh                          rsk7269_defconfig
arm64                            allyesconfig
sparc64                           allnoconfig
um                             i386_defconfig
sparc64              randconfig-a001-20200101
nios2                randconfig-a001-20200101
c6x                  randconfig-a001-20200101
h8300                randconfig-a001-20200101
x86_64               randconfig-b001-20200101
x86_64               randconfig-b002-20200101
x86_64               randconfig-b003-20200101
i386                 randconfig-b001-20200101
i386                 randconfig-b002-20200101
i386                 randconfig-b003-20200101
mips                             allmodconfig
mips                           32r2_defconfig
mips                             allyesconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
ia64                             alldefconfig
nds32                               defconfig
arm                        shmobile_defconfig
openrisc                    or1ksim_defconfig
nios2                         10m50_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
h8300                       h8s-sim_defconfig
powerpc                           allnoconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
riscv                          rv32_defconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
um                                  defconfig
um                           x86_64_defconfig
csky                 randconfig-a001-20200101
s390                 randconfig-a001-20200101
sh                   randconfig-a001-20200101
xtensa               randconfig-a001-20200101
openrisc             randconfig-a001-20200101
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                          allyesconfig
sparc64                             defconfig
i386                 randconfig-h002-20191231
i386                 randconfig-h003-20191231
i386                 randconfig-h001-20191231
x86_64               randconfig-h002-20191231
x86_64               randconfig-h001-20191231
x86_64               randconfig-h003-20191231
x86_64               randconfig-f001-20200101
x86_64               randconfig-f002-20200101
x86_64               randconfig-f003-20200101
i386                 randconfig-f001-20200101
i386                 randconfig-f002-20200101
i386                 randconfig-f003-20200101
sh                               allmodconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         3c120_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
sparc                randconfig-a001-20200101
arm64                randconfig-a001-20200101
arm                  randconfig-a001-20200101
ia64                 randconfig-a001-20200101
arc                  randconfig-a001-20200101
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                               defconfig
x86_64               randconfig-g002-20191231
x86_64               randconfig-g001-20191231
i386                 randconfig-g003-20191231
i386                 randconfig-g002-20191231
i386                 randconfig-g001-20191231
x86_64               randconfig-g003-20191231
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
