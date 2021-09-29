Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E01B41C518
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 15:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8CFE826BF;
	Wed, 29 Sep 2021 13:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TPlkang_mBd; Wed, 29 Sep 2021 13:00:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BACC681D2D;
	Wed, 29 Sep 2021 13:00:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3CFC1BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C265E60BBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AqMaynGIsgoq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 13:00:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2A4660629
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:00:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="223043210"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="223043210"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:00:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="519795895"
Received: from lkp-server02.sh.intel.com (HELO f7acefbbae94) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2021 06:00:07 -0700
Received: from kbuild by f7acefbbae94 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mVZBu-0002cC-JK; Wed, 29 Sep 2021 13:00:06 +0000
Date: Wed, 29 Sep 2021 20:59:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6154631e.4X1Yi04zqavLIH/v%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cda75f31e5196c175c593402ba226eb9f302a13d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: cda75f31e5196c175c593402ba226eb9f302a13d  ice: Print the api_patch as part of the fw.mgmt.api

elapsed time: 948m

configs tested: 220
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210928
i386                 randconfig-c001-20210929
i386                 randconfig-c001-20210927
powerpc                    amigaone_defconfig
powerpc                     ksi8560_defconfig
powerpc                 mpc8560_ads_defconfig
m68k                            mac_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                         bigsur_defconfig
arm                          collie_defconfig
sh                         ap325rxa_defconfig
powerpc                      mgcoge_defconfig
mips                       lemote2f_defconfig
sh                        sh7757lcr_defconfig
powerpc                     powernv_defconfig
arm                      pxa255-idp_defconfig
arm                          pxa168_defconfig
sh                           se7721_defconfig
mips                      fuloong2e_defconfig
sh                        edosk7760_defconfig
mips                        maltaup_defconfig
powerpc                       holly_defconfig
arm                      footbridge_defconfig
um                                  defconfig
arc                          axs101_defconfig
xtensa                    xip_kc705_defconfig
ia64                          tiger_defconfig
arm                           spitz_defconfig
mips                        bcm47xx_defconfig
sh                          lboxre2_defconfig
mips                     decstation_defconfig
arm                         s5pv210_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     skiroot_defconfig
ia64                                defconfig
powerpc                     tqm8555_defconfig
powerpc                   microwatt_defconfig
microblaze                          defconfig
sh                           se7722_defconfig
arm                            pleb_defconfig
arm                          ep93xx_defconfig
arm                     am200epdkit_defconfig
mips                      maltasmvp_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                       imx_v4_v5_defconfig
powerpc                     tqm8541_defconfig
powerpc                 linkstation_defconfig
sh                        sh7763rdp_defconfig
arm                           sama7_defconfig
powerpc                     tqm8560_defconfig
nds32                               defconfig
powerpc                      ep88xc_defconfig
m68k                          atari_defconfig
mips                           ip32_defconfig
arc                        nsimosci_defconfig
arm                         bcm2835_defconfig
powerpc                     ep8248e_defconfig
m68k                       bvme6000_defconfig
powerpc                          g5_defconfig
xtensa                    smp_lx200_defconfig
sh                            hp6xx_defconfig
arc                        nsim_700_defconfig
arm                           tegra_defconfig
sh                          rsk7203_defconfig
riscv                            alldefconfig
sparc64                             defconfig
arm                            hisi_defconfig
powerpc                     kilauea_defconfig
arm                        keystone_defconfig
arm                        mvebu_v7_defconfig
mips                            gpr_defconfig
mips                   sb1250_swarm_defconfig
sh                           se7750_defconfig
parisc                           alldefconfig
sh                          kfr2r09_defconfig
arm                          simpad_defconfig
arm                        spear6xx_defconfig
m68k                        mvme16x_defconfig
sparc                       sparc32_defconfig
arm                            mmp2_defconfig
arm                         assabet_defconfig
sh                           sh2007_defconfig
arm                          ixp4xx_defconfig
sh                          urquell_defconfig
mips                           ip27_defconfig
sh                          r7780mp_defconfig
m68k                        m5272c3_defconfig
powerpc                 xes_mpc85xx_defconfig
m68k                         amcore_defconfig
powerpc                    gamecube_defconfig
arm                       spear13xx_defconfig
csky                             alldefconfig
powerpc                   currituck_defconfig
sh                           se7619_defconfig
s390                                defconfig
sh                           se7780_defconfig
sh                           se7751_defconfig
powerpc                     tqm5200_defconfig
sh                          sdk7780_defconfig
arm                             ezx_defconfig
sh                             shx3_defconfig
x86_64               randconfig-c001-20210928
arm                  randconfig-c002-20210928
x86_64               randconfig-c001-20210929
arm                  randconfig-c002-20210929
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc                           allyesconfig
s390                             allmodconfig
s390                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210929
i386                 randconfig-a005-20210929
i386                 randconfig-a002-20210929
i386                 randconfig-a006-20210929
i386                 randconfig-a004-20210929
i386                 randconfig-a003-20210929
x86_64               randconfig-a014-20210928
x86_64               randconfig-a011-20210928
x86_64               randconfig-a013-20210928
x86_64               randconfig-a012-20210928
x86_64               randconfig-a015-20210928
x86_64               randconfig-a016-20210928
x86_64               randconfig-a002-20210929
x86_64               randconfig-a005-20210929
x86_64               randconfig-a001-20210929
x86_64               randconfig-a006-20210929
x86_64               randconfig-a003-20210929
x86_64               randconfig-a004-20210929
i386                 randconfig-a014-20210928
i386                 randconfig-a013-20210928
i386                 randconfig-a016-20210928
i386                 randconfig-a011-20210928
i386                 randconfig-a015-20210928
i386                 randconfig-a012-20210928
arc                  randconfig-r043-20210928
riscv                randconfig-r042-20210928
s390                 randconfig-r044-20210928
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
powerpc              randconfig-c003-20210927
x86_64               randconfig-c007-20210927
mips                 randconfig-c004-20210927
arm                  randconfig-c002-20210927
riscv                randconfig-c006-20210927
s390                 randconfig-c005-20210927
i386                 randconfig-c001-20210927
powerpc              randconfig-c003-20210929
mips                 randconfig-c004-20210929
arm                  randconfig-c002-20210929
x86_64               randconfig-c007-20210929
riscv                randconfig-c006-20210929
s390                 randconfig-c005-20210929
i386                 randconfig-c001-20210929
x86_64               randconfig-a002-20210928
x86_64               randconfig-a005-20210928
x86_64               randconfig-a001-20210928
x86_64               randconfig-a006-20210928
x86_64               randconfig-a003-20210928
x86_64               randconfig-a004-20210928
i386                 randconfig-a001-20210928
i386                 randconfig-a005-20210928
i386                 randconfig-a002-20210928
i386                 randconfig-a006-20210928
i386                 randconfig-a004-20210928
i386                 randconfig-a003-20210928
x86_64               randconfig-a014-20210929
x86_64               randconfig-a011-20210929
x86_64               randconfig-a013-20210929
x86_64               randconfig-a015-20210929
x86_64               randconfig-a012-20210929
x86_64               randconfig-a016-20210929
i386                 randconfig-a014-20210929
i386                 randconfig-a013-20210929
i386                 randconfig-a016-20210929
i386                 randconfig-a011-20210929
i386                 randconfig-a015-20210929
i386                 randconfig-a012-20210929
hexagon              randconfig-r045-20210929
riscv                randconfig-r042-20210929
hexagon              randconfig-r041-20210929
s390                 randconfig-r044-20210929

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
