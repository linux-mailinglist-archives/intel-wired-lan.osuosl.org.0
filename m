Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5542DE69
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 15:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0885130B2A;
	Wed, 29 May 2019 13:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0t5l0DC+9zL; Wed, 29 May 2019 13:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E18B030B22;
	Wed, 29 May 2019 13:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A52F11BF238
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 13:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A193387E27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 13:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipBUnvFZneBa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 13:37:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E46C187DFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 13:37:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 06:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,527,1549958400"; d="scan'208";a="179581203"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 29 May 2019 06:37:13 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hVylU-000G37-Vv; Wed, 29 May 2019 21:37:13 +0800
Date: Wed, 29 May 2019 21:36:53 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cee8af5.cT4hszbW3/9csbbh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS
 e89e899f3e3213a98ccf60d832f37ecef7000a5b
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
branch HEAD: e89e899f3e3213a98ccf60d832f37ecef7000a5b  ice: Add a helper to trigger software interrupt

elapsed time: 213m

configs tested: 128

The following configs have been built successfully.
More configs may be tested in the coming days.

m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
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
riscv                              tinyconfig
i386                               tinyconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                          debug_defconfig
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
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
riscv                            allmodconfig
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
x86_64                           allmodconfig
i386                             alldefconfig
s390                             allyesconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                           allyesconfig
i386                             allmodconfig
m68k                             allmodconfig
i386                              allnoconfig
i386                                defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
i386                   randconfig-x011-201921
i386                   randconfig-x018-201921
i386                   randconfig-x013-201921
i386                   randconfig-x012-201921
i386                   randconfig-x016-201921
i386                   randconfig-x017-201921
i386                   randconfig-x010-201921
i386                   randconfig-x014-201921
i386                   randconfig-x015-201921
i386                   randconfig-x019-201921
x86_64                 randconfig-x000-201921
x86_64                 randconfig-x001-201921
x86_64                 randconfig-x002-201921
x86_64                 randconfig-x003-201921
x86_64                 randconfig-x004-201921
x86_64                 randconfig-x005-201921
x86_64                 randconfig-x006-201921
x86_64                 randconfig-x007-201921
x86_64                 randconfig-x008-201921
x86_64                 randconfig-x009-201921
x86_64                 randconfig-x019-201921
x86_64                 randconfig-x015-201921
x86_64                 randconfig-x010-201921
x86_64                 randconfig-x012-201921
x86_64                 randconfig-x014-201921
x86_64                 randconfig-x017-201921
x86_64                 randconfig-x016-201921
x86_64                 randconfig-x018-201921
x86_64                 randconfig-x011-201921
x86_64                 randconfig-x013-201921
i386                   randconfig-x009-201921
i386                   randconfig-x008-201921
i386                   randconfig-x006-201921
i386                   randconfig-x004-201921
i386                   randconfig-x005-201921
i386                   randconfig-x001-201921
i386                   randconfig-x000-201921
i386                   randconfig-x007-201921
i386                   randconfig-x003-201921
i386                   randconfig-x002-201921
i386                   randconfig-x073-201921
i386                   randconfig-x071-201921
i386                   randconfig-x070-201921
i386                   randconfig-x074-201921
i386                   randconfig-x078-201921
i386                   randconfig-x075-201921
i386                   randconfig-x072-201921
i386                   randconfig-x076-201921
i386                   randconfig-x077-201921
i386                   randconfig-x079-201921

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
