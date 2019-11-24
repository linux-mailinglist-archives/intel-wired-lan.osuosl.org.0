Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9031D10840D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Nov 2019 16:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4EA0787D46;
	Sun, 24 Nov 2019 15:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7GUkakO6zGT; Sun, 24 Nov 2019 15:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EA3A87D86;
	Sun, 24 Nov 2019 15:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8F7B1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Nov 2019 15:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFD6585F94
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Nov 2019 15:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id slj8dyDTokm0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Nov 2019 15:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17C1C85F93
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Nov 2019 15:20:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Nov 2019 07:20:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,238,1571727600"; d="scan'208";a="233162165"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Nov 2019 07:20:31 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iYtgc-0007uK-Uo; Sun, 24 Nov 2019 23:20:30 +0800
Date: Sun, 24 Nov 2019 23:19:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dda9f90.SfhvYVFrz4/pKDhn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:master] BUILD SUCCESS
 ab818362c9054beb950b97a09ce7b0d56f5a32a1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  master
branch HEAD: ab818362c9054beb950b97a09ce7b0d56f5a32a1  net: use rhashtable_lookup() instead of rhashtable_lookup_fast()

elapsed time: 888m

configs tested: 125

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64               randconfig-g001-20191124
x86_64               randconfig-g002-20191124
x86_64               randconfig-g003-20191124
i386                 randconfig-g002-20191124
i386                 randconfig-g003-20191124
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-f001-20191124
x86_64               randconfig-f002-20191124
x86_64               randconfig-f003-20191124
i386                 randconfig-f001-20191124
i386                 randconfig-f002-20191124
i386                 randconfig-f003-20191124
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64               randconfig-c002-20191124
i386                 randconfig-c001-20191124
i386                 randconfig-c002-20191124
i386                 randconfig-c003-20191124
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-h002-20191124
x86_64               randconfig-h003-20191124
i386                 randconfig-h001-20191124
i386                 randconfig-h003-20191124
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
arc                 randconfig-a0031-20191124
arm                  randconfig-a001-20191124
arm64                randconfig-a001-20191124
ia64                 randconfig-a001-20191124
powerpc              randconfig-a001-20191124
sparc                randconfig-a001-20191124
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64               randconfig-c001-20191124
x86_64               randconfig-c003-20191124
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
arm                              allmodconfig
arm                               allnoconfig
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
x86_64               randconfig-d001-20191124
x86_64               randconfig-d002-20191124
x86_64               randconfig-d003-20191124
i386                 randconfig-d002-20191124
x86_64               randconfig-a001-20191124
x86_64               randconfig-a002-20191124
x86_64               randconfig-a003-20191124
i386                 randconfig-a001-20191124
i386                 randconfig-a002-20191124
i386                 randconfig-a003-20191124
c6x                              allyesconfig
i386                 randconfig-g001-20191124
mips                             allmodconfig
x86_64               randconfig-h001-20191124
i386                 randconfig-h002-20191124
i386                 randconfig-d001-20191124
i386                 randconfig-d003-20191124
x86_64               randconfig-e001-20191124
x86_64               randconfig-e002-20191124
x86_64               randconfig-e003-20191124
i386                 randconfig-e001-20191124
i386                 randconfig-e002-20191124
i386                 randconfig-e003-20191124
m68k                             allmodconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
