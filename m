Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4A64AE52
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 01:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CFCF20505;
	Tue, 18 Jun 2019 23:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mH1QO7ZzJIBZ; Tue, 18 Jun 2019 23:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8677D20502;
	Tue, 18 Jun 2019 23:01:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 458E01BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 23:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 419C7204FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 23:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jA16q9b9Fvdg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2019 23:01:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A21320344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 23:01:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 16:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="181497977"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2019 16:01:13 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hdN6H-000Gbo-Q7; Wed, 19 Jun 2019 07:01:13 +0800
Date: Wed, 19 Jun 2019 07:00:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d096d1c.5OZB5ojg3h914Toz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 89454b45ef297d32c5a9a44d887eaff6b3ce59e9
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
branch HEAD: 89454b45ef297d32c5a9a44d887eaff6b3ce59e9  e1000e: Make watchdog use delayed work

elapsed time: 353m

configs tested: 173

The following configs have been built successfully.
More configs may be tested in the coming days.

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
x86_64                 randconfig-n001-201924
x86_64                 randconfig-n002-201924
x86_64                 randconfig-n003-201924
x86_64                 randconfig-n004-201924
x86_64                 randconfig-n005-201924
x86_64                 randconfig-n006-201924
x86_64                 randconfig-n007-201924
x86_64                 randconfig-n009-201924
x86_64                 randconfig-n010-201924
x86_64                 randconfig-n011-201924
x86_64                 randconfig-n012-201924
x86_64                 randconfig-n014-201924
x86_64                 randconfig-n015-201924
x86_64                 randconfig-n016-201924
x86_64                 randconfig-n017-201924
x86_64                 randconfig-n020-201924
x86_64                 randconfig-n021-201924
x86_64                 randconfig-n022-201924
x86_64                 randconfig-n023-201924
x86_64                 randconfig-n024-201924
x86_64                 randconfig-n026-201924
x86_64                 randconfig-n027-201924
x86_64                 randconfig-n028-201924
x86_64                 randconfig-n029-201924
x86_64                 randconfig-n030-201924
x86_64                 randconfig-n031-201924
x86_64                 randconfig-n032-201924
i386                   randconfig-n002-201924
i386                   randconfig-n004-201924
i386                   randconfig-n005-201924
i386                   randconfig-n006-201924
i386                   randconfig-n007-201924
i386                   randconfig-n008-201924
i386                   randconfig-n010-201924
i386                   randconfig-n013-201924
i386                   randconfig-n014-201924
i386                   randconfig-n015-201924
i386                   randconfig-n016-201924
i386                   randconfig-n017-201924
i386                   randconfig-n018-201924
i386                   randconfig-n019-201924
i386                   randconfig-n020-201924
i386                   randconfig-n021-201924
i386                   randconfig-n022-201924
i386                   randconfig-n023-201924
i386                   randconfig-n024-201924
i386                   randconfig-n025-201924
i386                   randconfig-n026-201924
i386                   randconfig-n028-201924
i386                   randconfig-n029-201924
i386                   randconfig-n030-201924
i386                   randconfig-n031-201924
i386                   randconfig-n032-201924
x86_64                 randconfig-n008-201924
x86_64                 randconfig-n013-201924
x86_64                 randconfig-n018-201924
x86_64                 randconfig-n019-201924
x86_64                 randconfig-n025-201924
i386                   randconfig-n001-201924
i386                   randconfig-n003-201924
i386                   randconfig-n012-201924
i386                   randconfig-n027-201924
riscv                             allnoconfig
riscv                               defconfig
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                 randconfig-x019-201924
x86_64                 randconfig-x012-201924
x86_64                 randconfig-x014-201924
x86_64                 randconfig-x015-201924
x86_64                 randconfig-x010-201924
x86_64                 randconfig-x017-201924
x86_64                 randconfig-x011-201924
x86_64                 randconfig-x016-201924
x86_64                 randconfig-x018-201924
x86_64                 randconfig-x013-201924
riscv                              tinyconfig
i386                               tinyconfig
i386                   randconfig-x013-201924
i386                   randconfig-x018-201924
i386                   randconfig-x012-201924
i386                   randconfig-x011-201924
i386                   randconfig-x016-201924
i386                   randconfig-x010-201924
i386                   randconfig-x017-201924
i386                   randconfig-x015-201924
i386                   randconfig-x014-201924
i386                   randconfig-x019-201924
i386                   randconfig-x009-201924
i386                   randconfig-x004-201924
i386                   randconfig-x005-201924
i386                   randconfig-x008-201924
i386                   randconfig-x006-201924
i386                   randconfig-x001-201924
i386                   randconfig-x007-201924
i386                   randconfig-x000-201924
i386                   randconfig-x002-201924
i386                   randconfig-x003-201924
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
i386                   randconfig-x071-201924
i386                   randconfig-x070-201924
i386                   randconfig-x073-201924
i386                   randconfig-x078-201924
i386                   randconfig-x074-201924
i386                   randconfig-x072-201924
i386                   randconfig-x075-201924
i386                   randconfig-x077-201924
i386                   randconfig-x076-201924
i386                   randconfig-x079-201924

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
