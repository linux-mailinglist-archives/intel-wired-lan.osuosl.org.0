Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B7B35F62F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 16:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91EB460724;
	Wed, 14 Apr 2021 14:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1B_S3tvhFmy; Wed, 14 Apr 2021 14:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B55360697;
	Wed, 14 Apr 2021 14:32:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09A181BF322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 14:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB58D402B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 14:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J2Czg37a30Hl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 14:32:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9163E40181
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 14:32:05 +0000 (UTC)
IronPort-SDR: 2UOYOLfhN0YaW+slE47WL2nlPd///I6tnEFqmCpDyIPSGVR88lO6mwVlFFsbC/KCVlyr+TWuA9
 8g7sn+ZXsoPA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="192525632"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="192525632"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 07:32:01 -0700
IronPort-SDR: krEkI4YwnRjfZ6P9fh2PEgMCj8Rq0zkOWI4sz7zy1/sz2qB0jaBFCQEShbob/eBDM84pjmYWZk
 ZciMougdy2aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="522010159"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2021 07:31:59 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lWgYg-00003f-Ij; Wed, 14 Apr 2021 14:31:58 +0000
Date: Wed, 14 Apr 2021 22:31:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6076fccc.XR99FoRHhuYTu1Ds%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING be38a3b022aeb57094b1906d3d4b84ef94ebf0d4
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
branch HEAD: be38a3b022aeb57094b1906d3d4b84ef94ebf0d4  igc: Update driver to use ethtool_sprintf

Warning in current branch:

drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c:654:14: warning: variable 'reg_c1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm64-defconfig
    `-- drivers-net-ethernet-mellanox-mlx5-core-en-rep-tc.c:warning:variable-reg_c1-set-but-not-used

elapsed time: 723m

configs tested: 135
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
arm                       imx_v4_v5_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
mips                malta_qemu_32r6_defconfig
arm                          iop32x_defconfig
arm                           sunxi_defconfig
arc                         haps_hs_defconfig
powerpc                     taishan_defconfig
powerpc64                        alldefconfig
powerpc                     ksi8560_defconfig
xtensa                  cadence_csp_defconfig
powerpc                      cm5200_defconfig
sh                   secureedge5410_defconfig
s390                             alldefconfig
mips                        bcm47xx_defconfig
mips                  decstation_64_defconfig
mips                         tb0287_defconfig
arc                        vdk_hs38_defconfig
mips                         bigsur_defconfig
arm                         vf610m4_defconfig
powerpc                     tqm8548_defconfig
powerpc                      ppc44x_defconfig
arc                     haps_hs_smp_defconfig
mips                        maltaup_defconfig
arm                        realview_defconfig
arm                     am200epdkit_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7203_defconfig
powerpc                   currituck_defconfig
sh                            hp6xx_defconfig
openrisc                  or1klitex_defconfig
powerpc                      arches_defconfig
powerpc                      ppc64e_defconfig
arm                          badge4_defconfig
sh                           se7705_defconfig
sh                   sh7724_generic_defconfig
mips                      pic32mzda_defconfig
powerpc                    gamecube_defconfig
sh                        sh7785lcr_defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210414
i386                 randconfig-a006-20210414
i386                 randconfig-a001-20210414
i386                 randconfig-a005-20210414
i386                 randconfig-a004-20210414
i386                 randconfig-a002-20210414
i386                 randconfig-a003-20210413
i386                 randconfig-a001-20210413
i386                 randconfig-a006-20210413
i386                 randconfig-a005-20210413
i386                 randconfig-a004-20210413
i386                 randconfig-a002-20210413
x86_64               randconfig-a014-20210414
x86_64               randconfig-a015-20210414
x86_64               randconfig-a011-20210414
x86_64               randconfig-a013-20210414
x86_64               randconfig-a012-20210414
x86_64               randconfig-a016-20210414
i386                 randconfig-a015-20210413
i386                 randconfig-a014-20210413
i386                 randconfig-a013-20210413
i386                 randconfig-a012-20210413
i386                 randconfig-a016-20210413
i386                 randconfig-a011-20210413
i386                 randconfig-a015-20210414
i386                 randconfig-a014-20210414
i386                 randconfig-a013-20210414
i386                 randconfig-a012-20210414
i386                 randconfig-a016-20210414
i386                 randconfig-a011-20210414
x86_64               randconfig-a003-20210413
x86_64               randconfig-a002-20210413
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210414
x86_64               randconfig-a002-20210414
x86_64               randconfig-a005-20210414
x86_64               randconfig-a001-20210414
x86_64               randconfig-a006-20210414
x86_64               randconfig-a004-20210414
x86_64               randconfig-a014-20210413
x86_64               randconfig-a015-20210413
x86_64               randconfig-a011-20210413

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
