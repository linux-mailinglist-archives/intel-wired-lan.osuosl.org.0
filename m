Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C27432E2DC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 08:22:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A52804ECCE;
	Fri,  5 Mar 2021 07:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id do4dapdjKIEl; Fri,  5 Mar 2021 07:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 638014ECCB;
	Fri,  5 Mar 2021 07:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02A311BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 07:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4E6D6F506
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 07:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 33AGV_sGwrSO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 07:22:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BED5A6F486
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 07:22:04 +0000 (UTC)
IronPort-SDR: 4/Fe/rgDP7DzTOuLZbEO6r1Qv6v36JGmqSy2Jd2GQK/gVERhkcdbuC6wx13l5XFrmy3xYUNfpP
 idLCibs7+i5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="175221281"
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; d="scan'208";a="175221281"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 23:22:03 -0800
IronPort-SDR: nYBVeCGxjp32/PUMeRDzE6ZPbCY/sA/ZVqU4rSQwy4Il9i0/NEVAP2ilXhbGYWzY/qlHO1/0U9
 d1ApnU/+2mYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,224,1610438400"; d="scan'208";a="600989602"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2021 23:22:02 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lI4mf-0002ft-QI; Fri, 05 Mar 2021 07:22:01 +0000
Date: Fri, 05 Mar 2021 15:21:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6041dbea.+m/BC/05shL7B5K1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 7a766381634da19fc837619b0a34590498d9d29a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: 7a766381634da19fc837619b0a34590498d9d29a  ixgbe: Fix memleak in ixgbe_configure_clsu32

elapsed time: 721m

configs tested: 123
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7750_defconfig
arm                          pxa3xx_defconfig
arm                           u8500_defconfig
m68k                          sun3x_defconfig
arm                        mvebu_v7_defconfig
powerpc                    sam440ep_defconfig
arm                           corgi_defconfig
arm                       netwinder_defconfig
arc                          axs103_defconfig
mips                  cavium_octeon_defconfig
mips                           ip27_defconfig
mips                        qi_lb60_defconfig
sh                           se7619_defconfig
nds32                            alldefconfig
sh                           se7705_defconfig
mips                        maltaup_defconfig
arm                      pxa255-idp_defconfig
arm                          pxa168_defconfig
powerpc               mpc834x_itxgp_defconfig
m68k                        m5407c3_defconfig
arc                         haps_hs_defconfig
arc                        nsim_700_defconfig
powerpc                     skiroot_defconfig
mips                        workpad_defconfig
arm                         hackkit_defconfig
mips                           jazz_defconfig
csky                                defconfig
powerpc                     taishan_defconfig
powerpc                         wii_defconfig
ia64                        generic_defconfig
riscv             nommu_k210_sdcard_defconfig
h8300                               defconfig
mips                      maltasmvp_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                     pseries_defconfig
parisc                generic-32bit_defconfig
arm                            mps2_defconfig
mips                         rt305x_defconfig
arm                         cm_x300_defconfig
sh                   secureedge5410_defconfig
powerpc                      ppc6xx_defconfig
arm                          iop32x_defconfig
powerpc                     ksi8560_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allmodconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
i386                 randconfig-a005-20210305
i386                 randconfig-a003-20210305
i386                 randconfig-a002-20210305
i386                 randconfig-a004-20210305
i386                 randconfig-a006-20210305
i386                 randconfig-a001-20210305
i386                 randconfig-a005-20210304
i386                 randconfig-a003-20210304
i386                 randconfig-a002-20210304
i386                 randconfig-a004-20210304
i386                 randconfig-a006-20210304
i386                 randconfig-a001-20210304
x86_64               randconfig-a006-20210304
x86_64               randconfig-a001-20210304
x86_64               randconfig-a004-20210304
x86_64               randconfig-a005-20210304
x86_64               randconfig-a002-20210304
x86_64               randconfig-a003-20210304
i386                 randconfig-a016-20210305
i386                 randconfig-a012-20210305
i386                 randconfig-a013-20210305
i386                 randconfig-a014-20210305
i386                 randconfig-a011-20210305
i386                 randconfig-a015-20210305
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20210304
x86_64               randconfig-a016-20210304
x86_64               randconfig-a015-20210304
x86_64               randconfig-a014-20210304
x86_64               randconfig-a012-20210304
x86_64               randconfig-a011-20210304

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
