Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4052435F630
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 16:32:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 815B240562;
	Wed, 14 Apr 2021 14:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJ-uv0emvG1F; Wed, 14 Apr 2021 14:32:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41D3B40527;
	Wed, 14 Apr 2021 14:32:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBF211BF322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 14:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B92FE4055D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 14:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMFZaWpBaIM0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 14:32:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C0F340527
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 14:32:22 +0000 (UTC)
IronPort-SDR: 01tLSP70XB4vAxoAV07RVykrZsKj9B69DG6PJ89pG14KGGia4bDrRXdPVXQpDabCxKMVv40zH4
 y9tm0t37LBrQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="255970817"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="255970817"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 07:32:00 -0700
IronPort-SDR: 4BFarek1278/RoIN0vt/SPl3sijJzhc3/1YOWXGg/QJSL9IPMTbZaX1dz7U2V+/9XsMfV7/qvk
 Q2SYRobvNl7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="450803297"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2021 07:31:59 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lWgYh-00003l-30; Wed, 14 Apr 2021 14:31:59 +0000
Date: Wed, 14 Apr 2021 22:31:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6076fcc9.zsgcWVaEBc/vnLS5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 ce2cb12dccab57179fc97d2c89f872333ff369f0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: ce2cb12dccab57179fc97d2c89f872333ff369f0  net: ethernet: intel: Fix a typo in the file ixgbe_dcb_nl.c

elapsed time: 723m

configs tested: 156
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

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
sh                          rsk7269_defconfig
sh                             sh03_defconfig
openrisc                 simple_smp_defconfig
arc                          axs101_defconfig
mips                  cavium_octeon_defconfig
mips                        jmr3927_defconfig
xtensa                           alldefconfig
xtensa                  cadence_csp_defconfig
arm                       imx_v4_v5_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
mips                malta_qemu_32r6_defconfig
arm                          iop32x_defconfig
arm                           sunxi_defconfig
powerpc                      cm5200_defconfig
sh                   secureedge5410_defconfig
s390                             alldefconfig
mips                        bcm47xx_defconfig
mips                  decstation_64_defconfig
h8300                       h8s-sim_defconfig
powerpc                       ebony_defconfig
powerpc                      ppc6xx_defconfig
mips                          rb532_defconfig
sh                        sh7785lcr_defconfig
mips                         tb0219_defconfig
arm                          gemini_defconfig
ia64                            zx1_defconfig
sh                           se7619_defconfig
arm                          simpad_defconfig
m68k                          multi_defconfig
i386                             alldefconfig
mips                          rm200_defconfig
arm                            mmp2_defconfig
arm                          pcm027_defconfig
arm                        cerfcube_defconfig
microblaze                          defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    sam440ep_defconfig
sh                          rsk7203_defconfig
powerpc                   currituck_defconfig
sh                            hp6xx_defconfig
sh                             espt_defconfig
m68k                       bvme6000_defconfig
arm                       versatile_defconfig
mips                         tb0226_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                        bcm63xx_defconfig
powerpc                 mpc8540_ads_defconfig
mips                        qi_lb60_defconfig
arm                            dove_defconfig
powerpc                     tqm8540_defconfig
mips                           xway_defconfig
alpha                               defconfig
arm                       aspeed_g4_defconfig
arm                           sama5_defconfig
s390                             allmodconfig
mips                       rbtx49xx_defconfig
powerpc                     mpc512x_defconfig
arm                        trizeps4_defconfig
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
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
x86_64               randconfig-a003-20210413
x86_64               randconfig-a002-20210413
x86_64               randconfig-a001-20210413
x86_64               randconfig-a005-20210413
x86_64               randconfig-a006-20210413
x86_64               randconfig-a004-20210413
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
