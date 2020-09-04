Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C4F25D0D6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 07:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B1AE2E18B;
	Fri,  4 Sep 2020 05:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YWUegIUkkZcQ; Fri,  4 Sep 2020 05:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A374B2E1A5;
	Fri,  4 Sep 2020 05:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8AF1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 05:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 542E786DA9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 05:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0p+62mtUmuA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 05:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E75F486D99
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 05:19:01 +0000 (UTC)
IronPort-SDR: nuvjh9n05OFfqJs2LXJBZQZU2qmv+XYDd0gv3d2q6VPkW1y0a4BUPvZxR03SQE2LkrErUGemi4
 egHBCw7OHgMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="145395411"
X-IronPort-AV: E=Sophos;i="5.76,388,1592895600"; d="scan'208";a="145395411"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 22:19:00 -0700
IronPort-SDR: K0lsE8t+Oflt+DjL6ONnk8SJzZmEI7KnqZ9IgxT0SL7Mj46ys1V/nFU1zCWlfkuSjRjbxIFoN7
 /yAckWZLrD1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,388,1592895600"; d="scan'208";a="282912297"
Received: from lkp-server01.sh.intel.com (HELO 492d931897e7) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 03 Sep 2020 22:18:59 -0700
Received: from kbuild by 492d931897e7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kE47n-00000h-1O; Fri, 04 Sep 2020 05:18:59 +0000
Date: Fri, 04 Sep 2020 13:18:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f51ce1d.rrWJJwu5zXrRWBZn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 56823cd9594698aa11c6da0c708517fed65fe60b
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
branch HEAD: 56823cd9594698aa11c6da0c708517fed65fe60b  igc: Reject schedules with a base_time in the future

Error/Warning in current branch:

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2273:15: error: redefinition of 'truesize'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- powerpc-defconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
`-- sparc-allyesconfig
    `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize

elapsed time: 720m

configs tested: 138
configs skipped: 11

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         cm_x300_defconfig
xtensa                generic_kc705_defconfig
sparc                               defconfig
arm                           spitz_defconfig
powerpc                      pmac32_defconfig
arm                  colibri_pxa300_defconfig
powerpc                     powernv_defconfig
arm                            lart_defconfig
sh                          rsk7203_defconfig
mips                      fuloong2e_defconfig
mips                            ar7_defconfig
arm                         lpc32xx_defconfig
powerpc                        cell_defconfig
mips                        workpad_defconfig
openrisc                         alldefconfig
powerpc                      ep88xc_defconfig
arm                           viper_defconfig
um                            kunit_defconfig
sh                          r7780mp_defconfig
powerpc                          g5_defconfig
um                             i386_defconfig
sh                            shmin_defconfig
powerpc                         ps3_defconfig
powerpc                    mvme5100_defconfig
sh                           se7780_defconfig
arc                        vdk_hs38_defconfig
mips                           rs90_defconfig
mips                         tb0226_defconfig
ia64                             allmodconfig
mips                         bigsur_defconfig
arm                         lubbock_defconfig
arm                            hisi_defconfig
sh                         ap325rxa_defconfig
arc                                 defconfig
powerpc                       ppc64_defconfig
arm                         palmz72_defconfig
arm                    vt8500_v6_v7_defconfig
alpha                            alldefconfig
x86_64                              defconfig
sh                               alldefconfig
powerpc                     ep8248e_defconfig
arm                          imote2_defconfig
sh                          urquell_defconfig
powerpc64                           defconfig
mips                        nlm_xlr_defconfig
powerpc                     mpc512x_defconfig
mips                         tb0287_defconfig
powerpc                       maple_defconfig
powerpc                      ppc64e_defconfig
openrisc                 simple_smp_defconfig
sh                   sh7724_generic_defconfig
mips                           mtx1_defconfig
arm                           stm32_defconfig
microblaze                    nommu_defconfig
sh                          lboxre2_defconfig
arm                        spear6xx_defconfig
arc                             nps_defconfig
arm                        keystone_defconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200902
i386                 randconfig-a005-20200902
i386                 randconfig-a006-20200902
i386                 randconfig-a002-20200902
i386                 randconfig-a001-20200902
i386                 randconfig-a003-20200902
x86_64               randconfig-a013-20200902
x86_64               randconfig-a016-20200902
x86_64               randconfig-a011-20200902
x86_64               randconfig-a012-20200902
x86_64               randconfig-a015-20200902
x86_64               randconfig-a014-20200902
i386                 randconfig-a016-20200903
i386                 randconfig-a015-20200903
i386                 randconfig-a011-20200903
i386                 randconfig-a013-20200903
i386                 randconfig-a014-20200903
i386                 randconfig-a012-20200903
i386                 randconfig-a016-20200902
i386                 randconfig-a015-20200902
i386                 randconfig-a011-20200902
i386                 randconfig-a013-20200902
i386                 randconfig-a014-20200902
i386                 randconfig-a012-20200902
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20200902
x86_64               randconfig-a006-20200902
x86_64               randconfig-a003-20200902
x86_64               randconfig-a005-20200902
x86_64               randconfig-a001-20200902
x86_64               randconfig-a002-20200902
x86_64               randconfig-a013-20200903
x86_64               randconfig-a016-20200903
x86_64               randconfig-a011-20200903
x86_64               randconfig-a012-20200903
x86_64               randconfig-a015-20200903
x86_64               randconfig-a014-20200903

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
