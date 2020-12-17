Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 400B82DD426
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Dec 2020 16:28:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A632F233A6;
	Thu, 17 Dec 2020 15:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3otgC4Cotuim; Thu, 17 Dec 2020 15:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 789832E2A0;
	Thu, 17 Dec 2020 15:28:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8BCA1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 15:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0404878D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 15:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U+IRlX2C84ys for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Dec 2020 15:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A36CD878D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Dec 2020 15:28:07 +0000 (UTC)
IronPort-SDR: st9jPH+YH4CdcfKBs5amPQt019CVcDysVdRzDr2IQPA0SEIQrmpdij0bbjlw5VS9QeV2YjzTid
 2GGJ9SyQT+kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="239357862"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="239357862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 07:28:05 -0800
IronPort-SDR: Eu3tslP6TAa225dtl4YV4KtgZxwsAw4pHlAJ1aohwlCcaAqhG6xSBLlkGg6wJvA1BHr6vXyfVL
 JOZ+ZRsvFpDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="369875353"
Received: from lkp-server02.sh.intel.com (HELO 070e1a605002) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 17 Dec 2020 07:28:04 -0800
Received: from kbuild by 070e1a605002 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kpvCF-0001FZ-OE; Thu, 17 Dec 2020 15:28:03 +0000
Date: Thu, 17 Dec 2020 23:27:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fdb78ea.PVURzvw4QpiKPLg1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING c929b995e9037188f8ebd7f2f8df8b60da940e0d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  dev-queue
branch HEAD: c929b995e9037188f8ebd7f2f8df8b60da940e0d  i40e, xsk: Simplify the do-while allocation loop

Warning in current branch:

drivers/net/ethernet/intel/i40e/i40e_dcb.c:1639:6: warning: 'mfs_max' is used uninitialized in this function [-Wuninitialized]
drivers/net/ethernet/intel/i40e/i40e_txrx.c:547:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- arc-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- arc-randconfig-r036-20201217
|   `-- drivers-net-ethernet-intel-i40e-i40e_dcb.c:warning:mfs_max-is-used-uninitialized-in-this-function
|-- arm-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- arm-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- arm64-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- parisc-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- powerpc-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- s390-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- x86_64-allmodconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
|-- x86_64-allyesconfig
|   `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used
`-- xtensa-allyesconfig
    `-- drivers-net-ethernet-intel-i40e-i40e_txrx.c:warning:variable-ret-set-but-not-used

elapsed time: 720m

configs tested: 121
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
c6x                                 defconfig
mips                        jmr3927_defconfig
arm                       versatile_defconfig
arm                        magician_defconfig
xtensa                  nommu_kc705_defconfig
ia64                             allmodconfig
sh                      rts7751r2d1_defconfig
arm                           h3600_defconfig
m68k                        stmark2_defconfig
sh                        sh7757lcr_defconfig
mips                  cavium_octeon_defconfig
arm                       mainstone_defconfig
sh                   sh7724_generic_defconfig
arm                           sama5_defconfig
h8300                    h8300h-sim_defconfig
arm                         orion5x_defconfig
powerpc                    adder875_defconfig
sh                             espt_defconfig
sparc                       sparc32_defconfig
powerpc                     akebono_defconfig
mips                      fuloong2e_defconfig
powerpc                      cm5200_defconfig
sh                        apsh4ad0a_defconfig
arm                          ep93xx_defconfig
m68k                           sun3_defconfig
arm                         hackkit_defconfig
powerpc                      pcm030_defconfig
mips                     decstation_defconfig
arm                             ezx_defconfig
mips                        vocore2_defconfig
mips                           ip22_defconfig
ia64                          tiger_defconfig
arc                           tb10x_defconfig
xtensa                       common_defconfig
arm                          pxa168_defconfig
mips                        nlm_xlp_defconfig
nios2                               defconfig
arm                          moxart_defconfig
mips                           rs90_defconfig
sh                            shmin_defconfig
ia64                            zx1_defconfig
sh                     sh7710voipgw_defconfig
powerpc                       maple_defconfig
arm                         s3c6400_defconfig
sh                          sdk7786_defconfig
powerpc                     ppa8548_defconfig
powerpc                      ppc44x_defconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20201217
x86_64               randconfig-a006-20201217
x86_64               randconfig-a002-20201217
x86_64               randconfig-a005-20201217
x86_64               randconfig-a004-20201217
x86_64               randconfig-a001-20201217
i386                 randconfig-a001-20201217
i386                 randconfig-a004-20201217
i386                 randconfig-a003-20201217
i386                 randconfig-a002-20201217
i386                 randconfig-a006-20201217
i386                 randconfig-a005-20201217
i386                 randconfig-a014-20201217
i386                 randconfig-a013-20201217
i386                 randconfig-a012-20201217
i386                 randconfig-a011-20201217
i386                 randconfig-a015-20201217
i386                 randconfig-a016-20201217
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20201217
x86_64               randconfig-a012-20201217
x86_64               randconfig-a013-20201217
x86_64               randconfig-a015-20201217
x86_64               randconfig-a014-20201217
x86_64               randconfig-a011-20201217

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
