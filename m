Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52586DCFB5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2019 22:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F00B686ED0;
	Fri, 18 Oct 2019 20:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHgG5PZSxxkV; Fri, 18 Oct 2019 20:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D22286EB1;
	Fri, 18 Oct 2019 20:02:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A33EA1BF592
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 20:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E632877A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 20:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4c9ZVMyCIh1K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2019 20:02:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C257987773
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 20:02:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 13:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="398048605"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 18 Oct 2019 13:02:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iLYSK-00051R-HD; Sat, 19 Oct 2019 04:02:36 +0800
Date: Sat, 19 Oct 2019 04:02:07 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5daa1a3f.pzuOMw7J1HhMX1yj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 38b4fe320119859c11b1dc06f6b4987a16344fa1
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
branch HEAD: 38b4fe320119859c11b1dc06f6b4987a16344fa1  net: usb: lan78xx: Connect PHY before registering MAC

elapsed time: 154m

configs tested: 124

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                 randconfig-f001-201941
x86_64                 randconfig-f002-201941
x86_64                 randconfig-f003-201941
x86_64                 randconfig-f004-201941
i386                   randconfig-f001-201941
i386                   randconfig-f002-201941
i386                   randconfig-f003-201941
i386                   randconfig-f004-201941
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
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
i386                   randconfig-b001-201941
x86_64                 randconfig-b004-201941
i386                   randconfig-b002-201941
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
i386                   randconfig-c001-201941
x86_64                 randconfig-c004-201941
i386                   randconfig-c002-201941
x86_64                 randconfig-d001-201941
x86_64                 randconfig-d002-201941
x86_64                 randconfig-d003-201941
x86_64                 randconfig-d004-201941
i386                   randconfig-d001-201941
i386                   randconfig-d002-201941
i386                   randconfig-d003-201941
i386                   randconfig-d004-201941
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
x86_64                 randconfig-e004-201941
x86_64                 randconfig-e003-201941
i386                   randconfig-e003-201941
i386                   randconfig-e004-201941
i386                   randconfig-e002-201941
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                           allyesconfig
x86_64                           allmodconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
i386                   randconfig-h002-201941
i386                   randconfig-h001-201941
x86_64                 randconfig-h004-201941
x86_64                 randconfig-h001-201941
x86_64                 randconfig-h002-201941
x86_64                 randconfig-h003-201941
i386                   randconfig-h003-201941
i386                   randconfig-h004-201941
i386                             allmodconfig
x86_64                 randconfig-g001-201941
x86_64                 randconfig-g002-201941
x86_64                 randconfig-g003-201941
x86_64                 randconfig-g004-201941
i386                   randconfig-g001-201941
i386                   randconfig-g002-201941
i386                   randconfig-g003-201941
i386                   randconfig-g004-201941

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
