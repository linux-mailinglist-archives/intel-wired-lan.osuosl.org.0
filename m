Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9874FF41A0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 09:07:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB865867A1;
	Fri,  8 Nov 2019 08:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yr7lxYUlaAg9; Fri,  8 Nov 2019 08:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9329E86742;
	Fri,  8 Nov 2019 08:07:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2821F1BF363
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 08:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 229D385F46
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 08:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYxzI3_ICn7t for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 08:06:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 588BE85F45
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 08:06:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 00:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,280,1569308400"; d="scan'208";a="214857623"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 08 Nov 2019 00:06:55 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iSzIF-000DF9-8O; Fri, 08 Nov 2019 16:06:55 +0800
Date: Fri, 08 Nov 2019 16:06:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dc52208.fSIdowMiUiBNvl7M%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:master] BUILD SUCCESS
 e497df686e8fed8c1dd69179010656362858edb3
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
branch HEAD: e497df686e8fed8c1dd69179010656362858edb3  net: usb: qmi_wwan: add support for DW5821e with eSIM support

elapsed time: 493m

configs tested: 146

The following configs have been built successfully.
More configs may be tested in the coming days.

alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-b001-201944
x86_64                 randconfig-b002-201944
x86_64                 randconfig-b003-201944
x86_64                 randconfig-b004-201944
i386                   randconfig-b001-201944
i386                   randconfig-b002-201944
i386                   randconfig-b003-201944
i386                   randconfig-b004-201944
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.3
x86_64                               rhel-7.6
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64                 randconfig-g001-201944
x86_64                 randconfig-g002-201944
x86_64                 randconfig-g003-201944
x86_64                 randconfig-g004-201944
i386                   randconfig-g001-201944
i386                   randconfig-g002-201944
i386                   randconfig-g003-201944
i386                   randconfig-g004-201944
x86_64                           allyesconfig
i386                             allmodconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
sh                          rsk7269_defconfig
x86_64                 randconfig-f001-201944
x86_64                 randconfig-f002-201944
x86_64                 randconfig-f003-201944
x86_64                 randconfig-f004-201944
i386                   randconfig-f001-201944
i386                   randconfig-f002-201944
i386                   randconfig-f003-201944
i386                   randconfig-f004-201944
arm                              allmodconfig
arm64                            allmodconfig
x86_64                 randconfig-d001-201944
x86_64                 randconfig-d002-201944
x86_64                 randconfig-d003-201944
x86_64                 randconfig-d004-201944
i386                   randconfig-d001-201944
i386                   randconfig-d002-201944
i386                   randconfig-d003-201944
i386                   randconfig-d004-201944
sh                               allmodconfig
sh                                allnoconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
x86_64                 randconfig-c001-201944
x86_64                 randconfig-c002-201944
x86_64                 randconfig-c003-201944
x86_64                 randconfig-c004-201944
i386                   randconfig-c001-201944
i386                   randconfig-c002-201944
i386                   randconfig-c003-201944
i386                   randconfig-c004-201944
x86_64                           allmodconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-h001-201944
x86_64                 randconfig-h002-201944
x86_64                 randconfig-h003-201944
x86_64                 randconfig-h004-201944
i386                   randconfig-h001-201944
i386                   randconfig-h002-201944
i386                   randconfig-h003-201944
i386                   randconfig-h004-201944
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-a001-201944
x86_64                 randconfig-a002-201944
x86_64                 randconfig-a003-201944
x86_64                 randconfig-a004-201944
i386                   randconfig-a001-201944
i386                   randconfig-a002-201944
i386                   randconfig-a003-201944
i386                   randconfig-a004-201944
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
x86_64                 randconfig-e001-201944
x86_64                 randconfig-e002-201944
x86_64                 randconfig-e003-201944
x86_64                 randconfig-e004-201944
i386                   randconfig-e001-201944
i386                   randconfig-e002-201944
i386                   randconfig-e003-201944
i386                   randconfig-e004-201944
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
