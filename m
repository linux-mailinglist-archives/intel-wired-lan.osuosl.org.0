Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CE0342C94
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Mar 2021 12:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF016402F1;
	Sat, 20 Mar 2021 11:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbRKctLv636Z; Sat, 20 Mar 2021 11:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F881402E9;
	Sat, 20 Mar 2021 11:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE9DD1BF370
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Mar 2021 11:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C495D402E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Mar 2021 11:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5GSvG2XkjHf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Mar 2021 11:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9CE9402D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Mar 2021 11:55:24 +0000 (UTC)
IronPort-SDR: hOOEMKmruFMY53YvJWoCzP1VZMPx2rMkY6YJ7bIJri9hp4M8AoOrJtd5NLOCy3GAyk4CMook0F
 ljC7zvlFz9Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="275111768"
X-IronPort-AV: E=Sophos;i="5.81,264,1610438400"; d="scan'208";a="275111768"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2021 04:55:23 -0700
IronPort-SDR: KjYtoKgD4xOXqMJ6glKnVraJJZtLuzTtCGxmaCoEhC/ypYtZJT+Y6OWcnjGASdv+P9uO91eHWW
 1uz1fy2MJotw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,264,1610438400"; d="scan'208";a="407137555"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 20 Mar 2021 04:55:22 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lNaCP-0002Ze-UW; Sat, 20 Mar 2021 11:55:21 +0000
Date: Sat, 20 Mar 2021 19:55:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6055e2a0.w4Sk4AUr5gfjRyKf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING 8138882557813215cdad24e43c85f516ff251071
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 8138882557813215cdad24e43c85f516ff251071  intel: clean up mismatched header comments

Warning in current branch:

drivers/net/ethernet/intel/iavf/iavf_fdir.c:399: warning: expecting prototype for iavf_fdir_fltr_by_loc(). Prototype was for iavf_find_fdir_fltr_by_loc() instead
drivers/net/ethernet/intel/iavf/iavf_fdir.c:744: warning: expecting prototype for iavf_fdir_fltr_by_loc(). Prototype was for iavf_find_fdir_fltr_by_loc() instead

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- arc-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- i386-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- mips-allmodconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- parisc-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- powerpc-allmodconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- powerpc-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- sparc-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- x86_64-allyesconfig
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
|-- x86_64-rhel-7.6-kselftests
|   `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead
`-- xtensa-allyesconfig
    `-- drivers-net-ethernet-intel-iavf-iavf_fdir.c:warning:expecting-prototype-for-iavf_fdir_fltr_by_loc().-Prototype-was-for-iavf_find_fdir_fltr_by_loc()-instead

elapsed time: 796m

configs tested: 119
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
mips                         tb0287_defconfig
powerpc                     tqm8541_defconfig
arm                         socfpga_defconfig
arc                              alldefconfig
powerpc                  iss476-smp_defconfig
sh                          lboxre2_defconfig
mips                malta_kvm_guest_defconfig
arm                         lubbock_defconfig
arm                          ep93xx_defconfig
sh                            hp6xx_defconfig
powerpc                  mpc885_ads_defconfig
arm                         cm_x300_defconfig
powerpc                     pq2fads_defconfig
mips                     loongson1c_defconfig
m68k                           sun3_defconfig
mips                        bcm63xx_defconfig
arm                    vt8500_v6_v7_defconfig
arc                            hsdk_defconfig
arm                           u8500_defconfig
arm                          imote2_defconfig
powerpc                     taishan_defconfig
powerpc                        warp_defconfig
arm                        mvebu_v7_defconfig
xtensa                  audio_kc705_defconfig
m68k                        stmark2_defconfig
arm                       aspeed_g4_defconfig
powerpc                       maple_defconfig
arm                       mainstone_defconfig
sparc64                             defconfig
powerpc                      acadia_defconfig
powerpc                      pmac32_defconfig
sh                           se7750_defconfig
mips                     decstation_defconfig
mips                        qi_lb60_defconfig
mips                      pistachio_defconfig
powerpc                 mpc837x_rdb_defconfig
ia64                            zx1_defconfig
powerpc                     skiroot_defconfig
powerpc                     ksi8560_defconfig
sh                     magicpanelr2_defconfig
arm                        clps711x_defconfig
powerpc               mpc834x_itxgp_defconfig
parisc                generic-64bit_defconfig
mips                        maltaup_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210318
i386                 randconfig-a005-20210318
i386                 randconfig-a003-20210318
i386                 randconfig-a002-20210318
i386                 randconfig-a006-20210318
i386                 randconfig-a004-20210318
x86_64               randconfig-a011-20210318
x86_64               randconfig-a016-20210318
x86_64               randconfig-a013-20210318
x86_64               randconfig-a015-20210318
x86_64               randconfig-a014-20210318
x86_64               randconfig-a012-20210318
i386                 randconfig-a013-20210318
i386                 randconfig-a016-20210318
i386                 randconfig-a011-20210318
i386                 randconfig-a014-20210318
i386                 randconfig-a015-20210318
i386                 randconfig-a012-20210318
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210318
x86_64               randconfig-a001-20210318
x86_64               randconfig-a005-20210318
x86_64               randconfig-a002-20210318
x86_64               randconfig-a003-20210318
x86_64               randconfig-a004-20210318

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
