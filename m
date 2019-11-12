Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4ADF8717
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 04:31:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91B4920406;
	Tue, 12 Nov 2019 03:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lD3ooIFIUOMM; Tue, 12 Nov 2019 03:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F63C2034B;
	Tue, 12 Nov 2019 03:31:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 097EE1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 03:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04D07880D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 03:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BONF2FOjJZ94 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 03:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F7AD880D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 03:31:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 19:31:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,294,1569308400"; d="scan'208";a="287419179"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 11 Nov 2019 19:31:22 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iUMtl-000DKz-OL; Tue, 12 Nov 2019 11:31:21 +0800
Date: Tue, 12 Nov 2019 11:30:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dca2754.FFWFQqaTERd6w0Ze%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 e80e2453b20ba0bd0c1c3b59ba4ac930e3bbd3ed
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
branch HEAD: e80e2453b20ba0bd0c1c3b59ba4ac930e3bbd3ed  virtual-bus: Implementation of Virtual Bus

elapsed time: 220m

configs tested: 130

The following configs have been built successfully.
More configs may be tested in the coming days.

arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                           allmodconfig
i386                             alldefconfig
arm                         at91_dt_defconfig
nds32                             allnoconfig
i386                   randconfig-b001-201945
x86_64                 randconfig-b002-201945
i386                   randconfig-b003-201945
x86_64                 randconfig-b003-201945
i386                   randconfig-b004-201945
x86_64                 randconfig-b001-201945
x86_64                 randconfig-b004-201945
i386                   randconfig-b002-201945
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.6-kasan
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-h001-201945
x86_64                 randconfig-h002-201945
x86_64                 randconfig-h003-201945
x86_64                 randconfig-h004-201945
i386                   randconfig-h001-201945
i386                   randconfig-h002-201945
i386                   randconfig-h003-201945
i386                   randconfig-h004-201945
x86_64                 randconfig-c001-201945
x86_64                 randconfig-c002-201945
i386                   randconfig-c001-201945
i386                   randconfig-c004-201945
i386                   randconfig-c003-201945
i386                   randconfig-c002-201945
x86_64                 randconfig-c004-201945
x86_64                 randconfig-c003-201945
i386                              allnoconfig
i386                                defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arm                              allmodconfig
arm                               allnoconfig
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
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                 randconfig-e004-201945
x86_64                 randconfig-e001-201945
x86_64                 randconfig-e003-201945
x86_64                 randconfig-e002-201945
i386                   randconfig-e003-201945
i386                   randconfig-e001-201945
i386                   randconfig-e004-201945
i386                   randconfig-e002-201945
i386                   randconfig-f002-201945
i386                   randconfig-f001-201945
x86_64                 randconfig-f003-201945
x86_64                 randconfig-f004-201945
x86_64                 randconfig-f002-201945
i386                   randconfig-f003-201945
i386                   randconfig-f004-201945
x86_64                 randconfig-f001-201945
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                   randconfig-d002-201945
x86_64                 randconfig-d002-201945
x86_64                 randconfig-d004-201945
i386                   randconfig-d004-201945
x86_64                 randconfig-d003-201945
i386                   randconfig-d003-201945
x86_64                 randconfig-d001-201945
i386                   randconfig-d001-201945
alpha                               defconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
