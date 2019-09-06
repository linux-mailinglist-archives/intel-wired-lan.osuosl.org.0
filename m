Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE41AC1DB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 23:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8454787C7E;
	Fri,  6 Sep 2019 21:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFtX2hRA6oN5; Fri,  6 Sep 2019 21:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E78F987CA3;
	Fri,  6 Sep 2019 21:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54E281BF3FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 21:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EEC0882ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 21:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LeuozLNzCcat for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 21:11:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3764B88253
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 21:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 14:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="195556127"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 06 Sep 2019 14:11:10 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i6LVe-000530-AO; Sat, 07 Sep 2019 05:11:10 +0800
Date: Sat, 07 Sep 2019 05:10:10 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d72cb32.ANqx5n5bdfYsEAf5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 c5bdb6a05e9839b64e8e0db33644df1338ae856c
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: c5bdb6a05e9839b64e8e0db33644df1338ae856c  ice: Bump version

Regressions in current branch:

drivers/net/ethernet/intel/i40e/i40e_xsk.c:162:9: error: implicit declaration of function 'i40e_xsk_async_xmit'; did you mean 'i40e_xdp_xmit'? [-Werror=implicit-function-declaration]

Error ids grouped by kconfigs:

recent_errors
|-- alpha-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- arm-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- arm64-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- arm64-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- i386-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- mips-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- parisc-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- powerpc-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- powerpc-defconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- powerpc-ppc64_defconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- powerpc64-defconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- s390-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- sparc-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- sparc64-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-fedora-25
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-kexec
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-lkp
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-randconfig-b003-201935
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-rhel
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
|-- x86_64-rhel-7.6
|   `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit
`-- xtensa-allmodconfig
    `-- drivers-net-ethernet-intel-i40e-i40e_xsk.c:error:implicit-declaration-of-function-i40e_xsk_async_xmit-did-you-mean-i40e_xdp_xmit

elapsed time: 132m

configs tested: 94

arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-b001-201935
x86_64                 randconfig-b002-201935
x86_64                 randconfig-b003-201935
x86_64                 randconfig-b004-201935
i386                   randconfig-b001-201935
i386                   randconfig-b002-201935
i386                   randconfig-b003-201935
i386                   randconfig-b004-201935
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
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
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                           allyesconfig
i386                             allmodconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
x86_64                           allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
