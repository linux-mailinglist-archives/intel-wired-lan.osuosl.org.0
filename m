Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8421BE0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2019 21:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A047C85BC8;
	Mon, 13 May 2019 19:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FtHiMTDviwm1; Mon, 13 May 2019 19:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0409D85BC6;
	Mon, 13 May 2019 19:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 162C81BF296
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 19:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 120B886977
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 19:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id miFfeLe1SO7f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2019 19:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C164868AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 19:32:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 12:32:39 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 13 May 2019 12:32:38 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hQGgg-00076v-0I; Tue, 14 May 2019 03:32:38 +0800
Date: Tue, 14 May 2019 03:32:05 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cd9c635.RnoYWVAg7SkAcR49%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 d4c26eb6e721683a0f93e346ce55bc8dc3cbb175
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
branch HEAD: d4c26eb6e721683a0f93e346ce55bc8dc3cbb175  net: ethernet: stmmac: dwmac-sun8i: enable support of unicast filtering

elapsed time: 150m

configs tested: 174

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-k0-05131404
x86_64                 randconfig-k1-05131404
x86_64                 randconfig-k2-05131404
x86_64                 randconfig-k3-05131404
i386                   randconfig-k0-05131404
i386                   randconfig-k1-05131404
i386                   randconfig-k2-05131404
i386                   randconfig-k3-05131404
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
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                           allmodconfig
i386                             alldefconfig
openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
nds32                             allnoconfig
nds32                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                              fedora-25
x86_64                                  kexec
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                   randconfig-m0-201919
x86_64                   randconfig-m1-201919
x86_64                   randconfig-m2-201919
x86_64                   randconfig-m3-201919
i386                     randconfig-m0-201919
i386                     randconfig-m1-201919
i386                     randconfig-m2-201919
i386                     randconfig-m3-201919
riscv                             allnoconfig
riscv                               defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-l0-05131727
x86_64                 randconfig-l1-05131727
x86_64                 randconfig-l2-05131727
x86_64                 randconfig-l3-05131727
i386                   randconfig-l0-05131727
i386                   randconfig-l1-05131727
i386                   randconfig-l2-05131727
i386                   randconfig-l3-05131727
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                   randconfig-i0-201919
x86_64                   randconfig-i1-201919
x86_64                   randconfig-i2-201919
x86_64                   randconfig-i3-201919
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                   randconfig-h0-201919
x86_64                   randconfig-h1-201919
x86_64                   randconfig-h2-201919
x86_64                   randconfig-h3-201919
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                   randconfig-g0-201919
x86_64                   randconfig-g1-201919
x86_64                   randconfig-g2-201919
x86_64                   randconfig-g3-201919
i386                   randconfig-x070-201919
i386                   randconfig-x071-201919
i386                   randconfig-x072-201919
i386                   randconfig-x073-201919
i386                   randconfig-x074-201919
i386                   randconfig-x075-201919
i386                   randconfig-x076-201919
i386                   randconfig-x077-201919
i386                   randconfig-x078-201919
i386                   randconfig-x079-201919
x86_64                 randconfig-x000-201919
x86_64                 randconfig-x001-201919
x86_64                 randconfig-x004-201919
x86_64                 randconfig-x007-201919
x86_64                 randconfig-x008-201919
x86_64                 randconfig-x003-201919
x86_64                 randconfig-x002-201919
x86_64                 randconfig-x005-201919
x86_64                 randconfig-x009-201919
x86_64                 randconfig-x006-201919
i386                   randconfig-x005-201919
i386                   randconfig-x001-201919
i386                   randconfig-x002-201919
i386                   randconfig-x007-201919
i386                   randconfig-x008-201919
i386                   randconfig-x004-201919
i386                   randconfig-x000-201919
i386                   randconfig-x003-201919
i386                   randconfig-x006-201919
i386                   randconfig-x009-201919
x86_64                 randconfig-x016-201919
x86_64                 randconfig-x015-201919
x86_64                 randconfig-x018-201919
x86_64                 randconfig-x013-201919
x86_64                 randconfig-x012-201919
x86_64                 randconfig-x017-201919
x86_64                 randconfig-x014-201919
x86_64                 randconfig-x010-201919
x86_64                 randconfig-x011-201919
x86_64                 randconfig-x019-201919
i386                     randconfig-a0-201919
i386                     randconfig-a1-201919
i386                     randconfig-a2-201919
i386                     randconfig-a3-201919
i386                   randconfig-x018-201919
i386                   randconfig-x010-201919
i386                   randconfig-x013-201919
i386                   randconfig-x017-201919
i386                   randconfig-x014-201919
i386                   randconfig-x011-201919
i386                   randconfig-x012-201919
i386                   randconfig-x016-201919
i386                   randconfig-x015-201919
i386                   randconfig-x019-201919
i386                     randconfig-n0-201919
i386                     randconfig-n1-201919
i386                     randconfig-n2-201919
i386                     randconfig-n3-201919
i386                     randconfig-i0-201919
i386                     randconfig-i1-201919
i386                     randconfig-i2-201919
i386                     randconfig-i3-201919
i386                              allnoconfig
i386                                defconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
