Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8860E12BC45
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Dec 2019 03:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A5EC8598A;
	Sat, 28 Dec 2019 02:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yEaclkTAaePV; Sat, 28 Dec 2019 02:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BB2585683;
	Sat, 28 Dec 2019 02:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBCBF1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Dec 2019 02:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 336EA2038F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Dec 2019 02:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atksInMPqxZ8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Dec 2019 02:41:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id D4CF020113
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Dec 2019 02:41:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 18:41:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,365,1571727600"; d="scan'208";a="419857849"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 27 Dec 2019 18:41:38 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1il22r-00099Y-Dl; Sat, 28 Dec 2019 10:41:37 +0800
Date: Sat, 28 Dec 2019 10:40:42 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e06c0aa.P0k0p3xKw1cinu07%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD REGRESSION
 7e5a53fc0c524519c2941cfd719ee598800a5572
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 7e5a53fc0c524519c2941cfd719ee598800a5572  e1000e: Revert "e1000e: Make watchdog use delayed work"

Regressions in current branch:

drivers/net/ethernet/intel/e1000e/netdev.c:7604:6: warning: the address of 'down' will always evaluate as 'true' [-Waddress]

Error ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- i386-allmodconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- i386-randconfig-f001-20191228
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- parisc-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- powerpc-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- sparc-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- sparc64-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- x86_64-allyesconfig
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
|-- x86_64-randconfig-f001-20191228
|   `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true
`-- xtensa-allyesconfig
    `-- drivers-net-ethernet-intel-e1000e-netdev.c:warning:the-address-of-down-will-always-evaluate-as-true

elapsed time: 256m

configs tested: 181

arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-a001-20191227
x86_64               randconfig-a002-20191227
x86_64               randconfig-a003-20191227
i386                 randconfig-a001-20191227
i386                 randconfig-a002-20191227
i386                 randconfig-a003-20191227
i386                 randconfig-h002-20191227
x86_64               randconfig-h001-20191227
i386                 randconfig-h003-20191227
x86_64               randconfig-h003-20191227
i386                 randconfig-h001-20191227
x86_64               randconfig-h002-20191227
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                  randconfig-a001-20191228
h8300                randconfig-a001-20191228
microblaze           randconfig-a001-20191228
nios2                randconfig-a001-20191228
sparc64              randconfig-a001-20191228
m68k                             allmodconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
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
x86_64               randconfig-e001-20191227
x86_64               randconfig-e002-20191227
x86_64               randconfig-e003-20191227
i386                 randconfig-e001-20191227
i386                 randconfig-e002-20191227
i386                 randconfig-e003-20191227
x86_64               randconfig-f001-20191227
x86_64               randconfig-f002-20191227
x86_64               randconfig-f003-20191227
i386                 randconfig-f001-20191227
i386                 randconfig-f002-20191227
i386                 randconfig-f003-20191227
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64               randconfig-b001-20191227
x86_64               randconfig-b002-20191227
x86_64               randconfig-b003-20191227
i386                 randconfig-b001-20191227
i386                 randconfig-b002-20191227
i386                 randconfig-b003-20191227
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
csky                 randconfig-a001-20191228
openrisc             randconfig-a001-20191228
s390                 randconfig-a001-20191228
sh                   randconfig-a001-20191228
xtensa               randconfig-a001-20191228
csky                 randconfig-a001-20191227
openrisc             randconfig-a001-20191227
s390                 randconfig-a001-20191227
sh                   randconfig-a001-20191227
xtensa               randconfig-a001-20191227
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
x86_64               randconfig-c003-20191227
i386                 randconfig-c001-20191227
i386                 randconfig-c002-20191227
i386                 randconfig-c003-20191227
x86_64               randconfig-c002-20191227
x86_64               randconfig-c001-20191227
x86_64               randconfig-d001-20191227
x86_64               randconfig-d002-20191227
x86_64               randconfig-d003-20191227
i386                 randconfig-d001-20191227
i386                 randconfig-d002-20191227
i386                 randconfig-d003-20191227
alpha                randconfig-a001-20191228
m68k                 randconfig-a001-20191228
mips                 randconfig-a001-20191228
nds32                randconfig-a001-20191228
parisc               randconfig-a001-20191228
riscv                randconfig-a001-20191228
i386                 randconfig-f001-20191228
x86_64               randconfig-f003-20191228
i386                 randconfig-f003-20191228
x86_64               randconfig-f001-20191228
i386                 randconfig-f002-20191228
x86_64               randconfig-f002-20191228
x86_64               randconfig-e001-20191228
x86_64               randconfig-e002-20191228
x86_64               randconfig-e003-20191228
i386                 randconfig-e001-20191228
i386                 randconfig-e002-20191228
i386                 randconfig-e003-20191228
arc                  randconfig-a001-20191227
arm                  randconfig-a001-20191227
arm64                randconfig-a001-20191227
ia64                 randconfig-a001-20191227
powerpc              randconfig-a001-20191227
sparc                randconfig-a001-20191227
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
alpha                randconfig-a001-20191227
m68k                 randconfig-a001-20191227
mips                 randconfig-a001-20191227
nds32                randconfig-a001-20191227
parisc               randconfig-a001-20191227
riscv                randconfig-a001-20191227

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
