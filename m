Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBA64C19A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 21:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07D7687BB1;
	Wed, 19 Jun 2019 19:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRKYfP3KiMvM; Wed, 19 Jun 2019 19:39:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1922E87B96;
	Wed, 19 Jun 2019 19:39:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 273EE1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 19:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22D0D20399
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 19:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwflNqrKgJsu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 19:39:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 5DD4B2033C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 19:39:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 12:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="182841118"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jun 2019 12:39:51 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hdgQw-000446-94; Thu, 20 Jun 2019 03:39:50 +0800
Date: Thu, 20 Jun 2019 03:39:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d0a8f84.nuZDQ1W9HJ0OoElg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 b983e9611fa830796683940df884ea8c3260834f
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
branch HEAD: b983e9611fa830796683940df884ea8c3260834f  igb: minor ethool regdump amendment

Regressions in current branch:

drivers/net/ethernet/huawei/hinic/hinic_main.c:418:1: warning: the frame size of 1072 bytes is larger than 1024 bytes [-Wframe-larger-than=]

Error ids grouped by kconfigs:

recent_errors
`-- i386-randconfig-n004-201924
    `-- drivers-net-ethernet-huawei-hinic-hinic_main.c:warning:the-frame-size-of-bytes-is-larger-than-bytes

elapsed time: 332m

configs tested: 193

m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arm                              allmodconfig
arm64                            allmodconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
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
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
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
x86_64                 randconfig-n008-201924
x86_64                 randconfig-n009-201924
x86_64                 randconfig-n010-201924
x86_64                 randconfig-n011-201924
x86_64                 randconfig-n012-201924
x86_64                 randconfig-n013-201924
x86_64                 randconfig-n014-201924
x86_64                 randconfig-n015-201924
x86_64                 randconfig-n016-201924
x86_64                 randconfig-n017-201924
x86_64                 randconfig-n018-201924
x86_64                 randconfig-n019-201924
x86_64                 randconfig-n020-201924
x86_64                 randconfig-n021-201924
x86_64                 randconfig-n022-201924
x86_64                 randconfig-n023-201924
x86_64                 randconfig-n024-201924
x86_64                 randconfig-n025-201924
x86_64                 randconfig-n026-201924
x86_64                 randconfig-n027-201924
x86_64                 randconfig-n028-201924
x86_64                 randconfig-n029-201924
x86_64                 randconfig-n030-201924
x86_64                 randconfig-n031-201924
x86_64                 randconfig-n032-201924
i386                   randconfig-n002-201924
i386                   randconfig-n003-201924
i386                   randconfig-n004-201924
i386                   randconfig-n005-201924
i386                   randconfig-n006-201924
i386                   randconfig-n007-201924
i386                   randconfig-n008-201924
i386                   randconfig-n009-201924
i386                   randconfig-n010-201924
i386                   randconfig-n011-201924
i386                   randconfig-n012-201924
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
i386                   randconfig-n027-201924
i386                   randconfig-n028-201924
i386                   randconfig-n029-201924
i386                   randconfig-n030-201924
i386                   randconfig-n031-201924
i386                   randconfig-n032-201924
i386                   randconfig-n001-201924
riscv                             allnoconfig
riscv                               defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
riscv                              tinyconfig
i386                               tinyconfig
x86_64                           allyesconfig
i386                             allmodconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                           allmodconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
sparc                            allmodconfig
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
x86_64                 randconfig-x000-201924
x86_64                 randconfig-x001-201924
x86_64                 randconfig-x002-201924
x86_64                 randconfig-x003-201924
x86_64                 randconfig-x004-201924
x86_64                 randconfig-x005-201924
x86_64                 randconfig-x006-201924
x86_64                 randconfig-x007-201924
x86_64                 randconfig-x008-201924
x86_64                 randconfig-x009-201924
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
