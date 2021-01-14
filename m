Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB322F69F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 19:52:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07B6386A40;
	Thu, 14 Jan 2021 18:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsoSerRfrFAa; Thu, 14 Jan 2021 18:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9514886A9A;
	Thu, 14 Jan 2021 18:52:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A31221BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 18:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3196620762
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 18:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8c+USsoDAixF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 18:51:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E0792051A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 18:51:59 +0000 (UTC)
IronPort-SDR: jeNQ2J0rGdstJOqv367Gr+aT7gdRKbCo1sP3COimfTyo8BHbmwkHP/Pl/+5NT0adp0WlcqJ2X/
 qQQfqDW+tvJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="157604279"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="157604279"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 10:51:58 -0800
IronPort-SDR: uZ9t7ItQOwpXcx3YPGZa1BUhq4RdV1zdsdhDO1I6VALCgs9KrALVkWQpHfESLBCD2FlSIwn1Co
 0iC8mHxSucIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="465342826"
Received: from lkp-server01.sh.intel.com (HELO d5d1a9a2c6bb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2021 10:51:57 -0800
Received: from kbuild by d5d1a9a2c6bb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l07iu-00015Z-Is; Thu, 14 Jan 2021 18:51:56 +0000
Date: Fri, 15 Jan 2021 02:51:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <600092a7.sGUpxqZOovCZqlwb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 a95d25dd7b94a5ba18246da09b4218f132fed60e
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
branch HEAD: a95d25dd7b94a5ba18246da09b4218f132fed60e  rxrpc: Call state should be read with READ_ONCE() under some circumstances

elapsed time: 1413m

configs tested: 221
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                        mvebu_v7_defconfig
mips                        bcm47xx_defconfig
sh                          rsk7201_defconfig
m68k                          hp300_defconfig
powerpc64                           defconfig
ia64                             allyesconfig
m68k                          multi_defconfig
parisc                              defconfig
powerpc                 mpc8560_ads_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
ia64                      gensparse_defconfig
arm                          pxa910_defconfig
mips                           ip28_defconfig
m68k                         amcore_defconfig
sh                        apsh4ad0a_defconfig
mips                    maltaup_xpa_defconfig
ia64                         bigsur_defconfig
powerpc                      ppc44x_defconfig
powerpc                         ps3_defconfig
powerpc                 mpc832x_rdb_defconfig
nios2                         10m50_defconfig
arm                           sama5_defconfig
sh                           se7619_defconfig
powerpc                     ksi8560_defconfig
mips                  cavium_octeon_defconfig
alpha                            alldefconfig
sh                          r7780mp_defconfig
sparc64                             defconfig
m68k                        stmark2_defconfig
arc                        nsimosci_defconfig
powerpc                      tqm8xx_defconfig
powerpc                      katmai_defconfig
powerpc                       eiger_defconfig
arc                              alldefconfig
m68k                        mvme147_defconfig
um                            kunit_defconfig
powerpc                    sam440ep_defconfig
powerpc                  mpc885_ads_defconfig
arm                       cns3420vb_defconfig
powerpc                      bamboo_defconfig
mips                         mpc30x_defconfig
mips                         db1xxx_defconfig
arm                           stm32_defconfig
m68k                        m5272c3_defconfig
ia64                            zx1_defconfig
openrisc                    or1ksim_defconfig
m68k                       m5475evb_defconfig
powerpc                 linkstation_defconfig
mips                     loongson1c_defconfig
arm                             ezx_defconfig
sh                            shmin_defconfig
powerpc                 mpc834x_itx_defconfig
arm                       imx_v6_v7_defconfig
arm                        magician_defconfig
mips                       lemote2f_defconfig
mips                malta_kvm_guest_defconfig
arm                         lpc18xx_defconfig
sh                          polaris_defconfig
ia64                          tiger_defconfig
arm                          ep93xx_defconfig
powerpc                        icon_defconfig
arm                            zeus_defconfig
mips                        workpad_defconfig
arm                     eseries_pxa_defconfig
mips                     cu1000-neo_defconfig
mips                      maltasmvp_defconfig
arm                        clps711x_defconfig
c6x                        evmc6457_defconfig
arm                        neponset_defconfig
mips                           ci20_defconfig
mips                        bcm63xx_defconfig
arm                           corgi_defconfig
arm                       aspeed_g5_defconfig
arm                        mvebu_v5_defconfig
arm                         assabet_defconfig
arm                        multi_v7_defconfig
powerpc                      walnut_defconfig
c6x                         dsk6455_defconfig
m68k                          sun3x_defconfig
arm                          collie_defconfig
m68k                        m5307c3_defconfig
arc                      axs103_smp_defconfig
m68k                        mvme16x_defconfig
arm                        vexpress_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                        qi_lb60_defconfig
powerpc                    gamecube_defconfig
mips                      pistachio_defconfig
microblaze                          defconfig
sh                         ecovec24_defconfig
powerpc                      chrp32_defconfig
nios2                            alldefconfig
arm                         s3c6400_defconfig
mips                           jazz_defconfig
powerpc                       holly_defconfig
powerpc                 mpc836x_mds_defconfig
mips                     loongson1b_defconfig
mips                           mtx1_defconfig
arm                        spear3xx_defconfig
arc                          axs103_defconfig
powerpc                       maple_defconfig
powerpc                     redwood_defconfig
arm                            xcep_defconfig
mips                        vocore2_defconfig
nios2                               defconfig
arm                         cm_x300_defconfig
sh                           se7750_defconfig
sh                           se7206_defconfig
powerpc                     tqm8555_defconfig
arm                         lpc32xx_defconfig
powerpc                     tqm8541_defconfig
sh                         ap325rxa_defconfig
arm                         palmz72_defconfig
s390                             alldefconfig
h8300                    h8300h-sim_defconfig
powerpc                     tqm8540_defconfig
mips                      pic32mzda_defconfig
arm                     am200epdkit_defconfig
x86_64                           alldefconfig
arm                       spear13xx_defconfig
arm                       imx_v4_v5_defconfig
ia64                             allmodconfig
ia64                                defconfig
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
x86_64               randconfig-a006-20210113
x86_64               randconfig-a004-20210113
x86_64               randconfig-a001-20210113
x86_64               randconfig-a005-20210113
x86_64               randconfig-a003-20210113
x86_64               randconfig-a002-20210113
i386                 randconfig-a002-20210113
i386                 randconfig-a005-20210113
i386                 randconfig-a006-20210113
i386                 randconfig-a003-20210113
i386                 randconfig-a001-20210113
i386                 randconfig-a004-20210113
i386                 randconfig-a002-20210114
i386                 randconfig-a005-20210114
i386                 randconfig-a006-20210114
i386                 randconfig-a001-20210114
i386                 randconfig-a003-20210114
i386                 randconfig-a004-20210114
x86_64               randconfig-a015-20210114
x86_64               randconfig-a012-20210114
x86_64               randconfig-a013-20210114
x86_64               randconfig-a016-20210114
x86_64               randconfig-a014-20210114
x86_64               randconfig-a011-20210114
i386                 randconfig-a012-20210114
i386                 randconfig-a011-20210114
i386                 randconfig-a016-20210114
i386                 randconfig-a015-20210114
i386                 randconfig-a013-20210114
i386                 randconfig-a014-20210114
i386                 randconfig-a012-20210113
i386                 randconfig-a011-20210113
i386                 randconfig-a016-20210113
i386                 randconfig-a013-20210113
i386                 randconfig-a015-20210113
i386                 randconfig-a014-20210113
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
x86_64               randconfig-a004-20210114
x86_64               randconfig-a006-20210114
x86_64               randconfig-a001-20210114
x86_64               randconfig-a003-20210114
x86_64               randconfig-a005-20210114
x86_64               randconfig-a002-20210114
x86_64               randconfig-a015-20210113
x86_64               randconfig-a012-20210113
x86_64               randconfig-a013-20210113
x86_64               randconfig-a016-20210113
x86_64               randconfig-a014-20210113
x86_64               randconfig-a011-20210113

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
