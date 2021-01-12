Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B17AD2F3056
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jan 2021 14:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A76686837;
	Tue, 12 Jan 2021 13:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dz4NRVHWKiae; Tue, 12 Jan 2021 13:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A28C186777;
	Tue, 12 Jan 2021 13:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E74E1BF285
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 13:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0AD8B860D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 13:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BWvWYXD2wwpf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jan 2021 13:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F03F860CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 13:11:54 +0000 (UTC)
IronPort-SDR: qHDkwq4GIXmsz4wRrxp4F2z5z7B0G5pl14jFQe4NBtMC3TT+Bt07MvLOFrj0CRtgE0tzY6W491
 vK71uVziwlYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165713805"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="165713805"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 05:11:53 -0800
IronPort-SDR: WaE2ympKchFy4s+hFhZujOSeSbwvNwrxBSMPGdmnwpUOGhrAZotkkn/DlWDFKyT1PZKm9ha1bx
 aJ4yBewLi9jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="424148609"
Received: from lkp-server01.sh.intel.com (HELO b73930e00c65) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 12 Jan 2021 05:11:52 -0800
Received: from kbuild by b73930e00c65 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kzJSh-0000Ac-Ow; Tue, 12 Jan 2021 13:11:51 +0000
Date: Tue, 12 Jan 2021 21:10:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ffd9fdf.wsZBlGsZlXp1j2BY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 938288349ca8a9d4b936bf5d2f6dd4526a598974
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git  master
branch HEAD: 938288349ca8a9d4b936bf5d2f6dd4526a598974  dt-bindings: net: dwmac: fix queue priority documentation

elapsed time: 806m

configs tested: 219
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                          hp300_defconfig
arm                         bcm2835_defconfig
openrisc                            defconfig
mips                           rs90_defconfig
arm                          iop32x_defconfig
powerpc                       maple_defconfig
powerpc                      bamboo_defconfig
powerpc                     sbc8548_defconfig
mips                           mtx1_defconfig
mips                  cavium_octeon_defconfig
powerpc                  storcenter_defconfig
arm                          ep93xx_defconfig
mips                        bcm63xx_defconfig
powerpc                  iss476-smp_defconfig
sh                           se7206_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                   motionpro_defconfig
c6x                        evmc6678_defconfig
m68k                       m5275evb_defconfig
h8300                               defconfig
mips                           jazz_defconfig
sh                          sdk7786_defconfig
arm                         mv78xx0_defconfig
arm                          tango4_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                      walnut_defconfig
powerpc                      arches_defconfig
powerpc                      ppc6xx_defconfig
powerpc                       ebony_defconfig
arm                            lart_defconfig
arm                         lubbock_defconfig
arm                     am200epdkit_defconfig
mips                        bcm47xx_defconfig
ia64                      gensparse_defconfig
arm                      tct_hammer_defconfig
powerpc               mpc834x_itxgp_defconfig
m68k                          atari_defconfig
arm                         lpc32xx_defconfig
sh                           sh2007_defconfig
h8300                     edosk2674_defconfig
arm                           h5000_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                         tb0219_defconfig
sh                           se7712_defconfig
m68k                          sun3x_defconfig
mips                  decstation_64_defconfig
arm                         orion5x_defconfig
arm                         cm_x300_defconfig
sh                      rts7751r2d1_defconfig
arm                          moxart_defconfig
openrisc                  or1klitex_defconfig
arm                        magician_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm5200_defconfig
c6x                                 defconfig
c6x                              alldefconfig
openrisc                 simple_smp_defconfig
nios2                               defconfig
arm                             pxa_defconfig
sh                           se7750_defconfig
powerpc                      ep88xc_defconfig
powerpc                     tqm8548_defconfig
powerpc                     mpc5200_defconfig
sh                           se7724_defconfig
mips                         db1xxx_defconfig
xtensa                       common_defconfig
arm                        oxnas_v6_defconfig
mips                         tb0287_defconfig
m68k                       m5249evb_defconfig
powerpc                     rainier_defconfig
sh                   secureedge5410_defconfig
arm                        vexpress_defconfig
mips                malta_kvm_guest_defconfig
mips                         rt305x_defconfig
powerpc                      ppc64e_defconfig
arm                         vf610m4_defconfig
m68k                           sun3_defconfig
sh                               allmodconfig
mips                        maltaup_defconfig
m68k                       bvme6000_defconfig
arm                        cerfcube_defconfig
sh                             shx3_defconfig
arm                         axm55xx_defconfig
arm                            pleb_defconfig
sh                        sh7785lcr_defconfig
arm                        multi_v7_defconfig
sh                          landisk_defconfig
powerpc                     asp8347_defconfig
powerpc                   currituck_defconfig
sh                   rts7751r2dplus_defconfig
arm                          prima2_defconfig
arm                           stm32_defconfig
arc                           tb10x_defconfig
arc                              alldefconfig
mips                 decstation_r4k_defconfig
powerpc                      mgcoge_defconfig
powerpc                       ppc64_defconfig
mips                       rbtx49xx_defconfig
powerpc                      makalu_defconfig
mips                           ip27_defconfig
arm                       cns3420vb_defconfig
parisc                generic-32bit_defconfig
arm                             rpc_defconfig
arm                          ixp4xx_defconfig
nios2                            alldefconfig
mips                  maltasmvp_eva_defconfig
arm                         palmz72_defconfig
arm                           efm32_defconfig
arm                        mvebu_v7_defconfig
ia64                             allmodconfig
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
x86_64               randconfig-a004-20210111
x86_64               randconfig-a006-20210111
x86_64               randconfig-a001-20210111
x86_64               randconfig-a003-20210111
x86_64               randconfig-a005-20210111
x86_64               randconfig-a002-20210111
i386                 randconfig-a002-20210111
i386                 randconfig-a005-20210111
i386                 randconfig-a006-20210111
i386                 randconfig-a001-20210111
i386                 randconfig-a003-20210111
i386                 randconfig-a004-20210111
i386                 randconfig-a002-20210112
i386                 randconfig-a005-20210112
i386                 randconfig-a006-20210112
i386                 randconfig-a003-20210112
i386                 randconfig-a001-20210112
i386                 randconfig-a004-20210112
i386                 randconfig-a002-20210110
i386                 randconfig-a005-20210110
i386                 randconfig-a006-20210110
i386                 randconfig-a001-20210110
i386                 randconfig-a003-20210110
i386                 randconfig-a004-20210110
x86_64               randconfig-a015-20210112
x86_64               randconfig-a012-20210112
x86_64               randconfig-a013-20210112
x86_64               randconfig-a016-20210112
x86_64               randconfig-a014-20210112
x86_64               randconfig-a011-20210112
x86_64               randconfig-a015-20210110
x86_64               randconfig-a012-20210110
x86_64               randconfig-a013-20210110
x86_64               randconfig-a016-20210110
x86_64               randconfig-a014-20210110
x86_64               randconfig-a011-20210110
i386                 randconfig-a012-20210111
i386                 randconfig-a011-20210111
i386                 randconfig-a015-20210111
i386                 randconfig-a013-20210111
i386                 randconfig-a016-20210111
i386                 randconfig-a014-20210111
i386                 randconfig-a012-20210112
i386                 randconfig-a011-20210112
i386                 randconfig-a016-20210112
i386                 randconfig-a013-20210112
i386                 randconfig-a015-20210112
i386                 randconfig-a014-20210112
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
x86_64               randconfig-a006-20210112
x86_64               randconfig-a004-20210112
x86_64               randconfig-a001-20210112
x86_64               randconfig-a005-20210112
x86_64               randconfig-a003-20210112
x86_64               randconfig-a002-20210112
x86_64               randconfig-a015-20210111
x86_64               randconfig-a016-20210111
x86_64               randconfig-a012-20210111
x86_64               randconfig-a013-20210111
x86_64               randconfig-a014-20210111
x86_64               randconfig-a011-20210111

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
