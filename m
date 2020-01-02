Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A212E444
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2020 10:12:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44CB3878A5;
	Thu,  2 Jan 2020 09:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qOGhhq9ko6CJ; Thu,  2 Jan 2020 09:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47790878B0;
	Thu,  2 Jan 2020 09:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76AED1BF352
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2020 09:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7277A84FD5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2020 09:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45FOgZr7naUF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2020 09:12:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 355078458C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2020 09:12:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 01:12:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,386,1571727600"; d="scan'208";a="421083757"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jan 2020 01:12:35 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1imwWx-0000hl-B0; Thu, 02 Jan 2020 17:12:35 +0800
Date: Thu, 02 Jan 2020 17:12:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e0db3f0.U09tyiHQkGsTX1ST%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 74c2ae1254468e2c3db1ff410175525a465488a3
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
branch HEAD: 74c2ae1254468e2c3db1ff410175525a465488a3  igc: Fix typo in a comment

Regressions in current branch:

drivers/net/ethernet/intel/igc/igc_main.c:129:13: error: redefinition of 'igc_power_down_link'
drivers/net/ethernet/intel/igc/igc_main.c:143:13: error: redefinition of 'igc_power_down_link'
drivers/net/ethernet/intel/igc/igc_ptp.c:425:17: sparse: sparse: incorrect type in argument 1 (different base types)

Error ids grouped by kconfigs:

recent_errors
|-- alpha-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- arm-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- arm-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- arm64-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- arm64-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- i386-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- i386-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- ia64-randconfig-a001-20200102
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- mips-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- parisc-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- powerpc-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- s390-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- sparc-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- sparc-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- sparc64-allmodconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- sparc64-allyesconfig
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|-- x86_64-allmodconfig
|   |-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|   `-- drivers-net-ethernet-intel-igc-igc_ptp.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)
|-- x86_64-allyesconfig
|   |-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
|   `-- drivers-net-ethernet-intel-igc-igc_ptp.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)
|-- x86_64-randconfig-h003-20200102
|   `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link
`-- xtensa-allmodconfig
    `-- drivers-net-ethernet-intel-igc-igc_main.c:error:redefinition-of-igc_power_down_link

elapsed time: 308m

configs tested: 158

x86_64               randconfig-a002-20200102
x86_64               randconfig-a001-20200102
i386                 randconfig-a001-20200102
i386                 randconfig-a002-20200102
x86_64               randconfig-a003-20200102
i386                 randconfig-a003-20200102
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64               randconfig-b001-20200102
x86_64               randconfig-b002-20200102
x86_64               randconfig-b003-20200102
i386                 randconfig-b001-20200102
i386                 randconfig-b002-20200102
i386                 randconfig-b003-20200102
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
arm                              allmodconfig
arm64                            allmodconfig
x86_64               randconfig-h001-20200102
x86_64               randconfig-h002-20200102
x86_64               randconfig-h003-20200102
i386                 randconfig-h001-20200102
i386                 randconfig-h002-20200102
i386                 randconfig-h003-20200102
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64               randconfig-c001-20200102
x86_64               randconfig-c002-20200102
x86_64               randconfig-c003-20200102
i386                 randconfig-c001-20200102
i386                 randconfig-c002-20200102
i386                 randconfig-c003-20200102
x86_64               randconfig-e001-20200102
x86_64               randconfig-e002-20200102
x86_64               randconfig-e003-20200102
i386                 randconfig-e001-20200102
i386                 randconfig-e002-20200102
i386                 randconfig-e003-20200102
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
arm                               allnoconfig
arm                              allyesconfig
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
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
csky                 randconfig-a001-20200102
s390                 randconfig-a001-20200102
sh                   randconfig-a001-20200102
xtensa               randconfig-a001-20200102
openrisc             randconfig-a001-20200102
c6x                  randconfig-a001-20200102
h8300                randconfig-a001-20200102
microblaze           randconfig-a001-20200102
nios2                randconfig-a001-20200102
sparc64              randconfig-a001-20200102
arc                  randconfig-a001-20200102
arm                  randconfig-a001-20200102
arm64                randconfig-a001-20200102
ia64                 randconfig-a001-20200102
powerpc              randconfig-a001-20200102
sparc                randconfig-a001-20200102
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64               randconfig-d001-20200102
x86_64               randconfig-d002-20200102
x86_64               randconfig-d003-20200102
i386                 randconfig-d001-20200102
i386                 randconfig-d002-20200102
i386                 randconfig-d003-20200102
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
alpha                randconfig-a001-20200102
m68k                 randconfig-a001-20200102
mips                 randconfig-a001-20200102
nds32                randconfig-a001-20200102
parisc               randconfig-a001-20200102
riscv                randconfig-a001-20200102
x86_64               randconfig-g001-20200102
x86_64               randconfig-g002-20200102
x86_64               randconfig-g003-20200102
i386                 randconfig-g001-20200102
i386                 randconfig-g002-20200102
i386                 randconfig-g003-20200102
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
