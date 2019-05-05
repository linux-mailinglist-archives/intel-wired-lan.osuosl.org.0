Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E286813E63
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 May 2019 10:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2465785C54;
	Sun,  5 May 2019 08:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMPwlUlzDAQX; Sun,  5 May 2019 08:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12AA485C63;
	Sun,  5 May 2019 08:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2D731BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 May 2019 08:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF5CE2152F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 May 2019 08:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZSl+30F+fTG for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 May 2019 08:07:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A90D21513
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 May 2019 08:07:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 May 2019 01:07:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,433,1549958400"; d="scan'208";a="146404441"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 05 May 2019 01:07:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hNCAv-000IVY-CZ; Sun, 05 May 2019 16:07:09 +0800
Date: Sun, 05 May 2019 16:06:20 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cce997c.8kX5KYpgP4Btrxog%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:40GbE] BUILD SUCCESS
 0b63644602cfcbac849f7ea49272a39e90fa95eb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  40GbE
branch HEAD: 0b63644602cfcbac849f7ea49272a39e90fa95eb  i40e: Memory leak in i40e_config_iwarp_qvlist

elapsed time: 114m

configs tested: 168

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-x000-201918
x86_64                 randconfig-x001-201918
x86_64                 randconfig-x004-201918
x86_64                 randconfig-x008-201918
x86_64                 randconfig-x007-201918
x86_64                 randconfig-x003-201918
x86_64                 randconfig-x002-201918
x86_64                 randconfig-x005-201918
x86_64                 randconfig-x009-201918
x86_64                 randconfig-x006-201918
i386                     randconfig-i0-201918
i386                     randconfig-i1-201918
i386                     randconfig-i2-201918
i386                     randconfig-i3-201918
arm                              allmodconfig
arm64                            allmodconfig
i386                     randconfig-k2-201918
x86_64                   randconfig-k2-201918
x86_64                   randconfig-k1-201918
i386                     randconfig-k0-201918
i386                     randconfig-k3-201918
x86_64                   randconfig-k3-201918
x86_64                   randconfig-k0-201918
i386                     randconfig-k1-201918
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
riscv                              tinyconfig
i386                               tinyconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
nds32                             allnoconfig
nds32                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                     randconfig-m3-201918
i386                     randconfig-m0-201918
x86_64                   randconfig-m2-201918
x86_64                   randconfig-m1-201918
i386                     randconfig-m2-201918
i386                     randconfig-m1-201918
x86_64                   randconfig-m3-201918
x86_64                   randconfig-m0-201918
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-l0-05051416
x86_64                 randconfig-l2-05051416
i386                   randconfig-l0-05051416
i386                   randconfig-l3-05051416
x86_64                 randconfig-l3-05051416
x86_64                 randconfig-l1-05051416
i386                   randconfig-l2-05051416
i386                   randconfig-l1-05051416
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                   randconfig-g0-201918
x86_64                   randconfig-g3-201918
x86_64                   randconfig-g1-201918
x86_64                   randconfig-g2-201918
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                           allyesconfig
i386                             allmodconfig
i386                   randconfig-x005-201918
i386                   randconfig-x001-201918
i386                   randconfig-x002-201918
i386                   randconfig-x007-201918
i386                   randconfig-x008-201918
i386                   randconfig-x004-201918
i386                   randconfig-x000-201918
i386                   randconfig-x003-201918
i386                   randconfig-x006-201918
i386                   randconfig-x009-201918
x86_64                 randconfig-x016-201918
x86_64                 randconfig-x015-201918
x86_64                 randconfig-x018-201918
x86_64                 randconfig-x013-201918
x86_64                 randconfig-x012-201918
x86_64                 randconfig-x017-201918
x86_64                 randconfig-x014-201918
x86_64                 randconfig-x010-201918
x86_64                 randconfig-x011-201918
x86_64                 randconfig-x019-201918
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
i386                     randconfig-a0-201918
i386                     randconfig-a1-201918
i386                     randconfig-a2-201918
i386                     randconfig-a3-201918
i386                   randconfig-x018-201918
i386                   randconfig-x010-201918
i386                   randconfig-x013-201918
i386                   randconfig-x017-201918
i386                   randconfig-x014-201918
i386                   randconfig-x011-201918
i386                   randconfig-x012-201918
i386                   randconfig-x016-201918
i386                   randconfig-x015-201918
i386                   randconfig-x019-201918
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
i386                     randconfig-n3-201918
i386                     randconfig-n2-201918
i386                     randconfig-n0-201918
i386                     randconfig-n1-201918
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
i386                   randconfig-x070-201918
i386                   randconfig-x074-201918
i386                   randconfig-x077-201918
i386                   randconfig-x072-201918
i386                   randconfig-x071-201918
i386                   randconfig-x075-201918
i386                   randconfig-x076-201918
i386                   randconfig-x073-201918
i386                   randconfig-x078-201918
i386                   randconfig-x079-201918
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
x86_64                           allmodconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
