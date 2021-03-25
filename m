Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4E434889F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 06:46:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A1FC6072E;
	Thu, 25 Mar 2021 05:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W7e_5bdXAm74; Thu, 25 Mar 2021 05:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BF99606FF;
	Thu, 25 Mar 2021 05:46:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90B441BF82C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 05:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C3564013A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 05:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KsDH4QV0yCvv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 05:46:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1C80400E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 05:46:31 +0000 (UTC)
IronPort-SDR: 4WxWIeQOSg9UdcvfDEDVLSdfjFpXcv4I568voC2G2xZHbAxfdJnytZZvaJlDzTkQ0LJDrlm5CI
 /QhpeYHSWkRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="190950376"
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="190950376"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 22:46:30 -0700
IronPort-SDR: 27pDVcMDfkqolgaG+/igtEK71VSYgJOilxLT4rENIsXqT75ZXW4TIGki1yXS0BYeeJ3OG2q220
 4JyPnM+GBElQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="391587964"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 24 Mar 2021 22:46:29 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lPIpA-0001lv-R1; Thu, 25 Mar 2021 05:46:28 +0000
Date: Thu, 25 Mar 2021 13:45:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <605c2378.NBa5S6MBO6HpO+QI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ca4303103f33952646218db4e0869e6f6aa1c840
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
branch HEAD: ca4303103f33952646218db4e0869e6f6aa1c840  ixgbe: fix unbalanced device enable/disable in suspend/resume

elapsed time: 734m

configs tested: 172
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                      obs600_defconfig
arm                           h3600_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                      pmac32_defconfig
sh                        sh7785lcr_defconfig
arm                         hackkit_defconfig
powerpc                    klondike_defconfig
powerpc                     tqm8555_defconfig
h8300                    h8300h-sim_defconfig
sh                          lboxre2_defconfig
arm                      tct_hammer_defconfig
arm                             mxs_defconfig
sh                            titan_defconfig
mips                 decstation_r4k_defconfig
mips                           ip28_defconfig
powerpc                    adder875_defconfig
sh                             sh03_defconfig
sh                           se7343_defconfig
m68k                          hp300_defconfig
s390                             allmodconfig
arc                           tb10x_defconfig
mips                        bcm63xx_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                        workpad_defconfig
powerpc64                           defconfig
arm                          pcm027_defconfig
xtensa                    smp_lx200_defconfig
arm                        keystone_defconfig
mips                           ip27_defconfig
arm                       netwinder_defconfig
arm                        cerfcube_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                      ppc44x_defconfig
m68k                            q40_defconfig
mips                     loongson1b_defconfig
m68k                        m5407c3_defconfig
arm                      footbridge_defconfig
arm                          simpad_defconfig
arc                     haps_hs_smp_defconfig
m68k                       m5475evb_defconfig
arm                     am200epdkit_defconfig
mips                       bmips_be_defconfig
arm                           h5000_defconfig
sh                           se7705_defconfig
arm                          moxart_defconfig
powerpc                     sequoia_defconfig
xtensa                         virt_defconfig
powerpc                 mpc8540_ads_defconfig
sh                          sdk7786_defconfig
arm                           stm32_defconfig
sh                           se7721_defconfig
powerpc                 mpc85xx_cds_defconfig
nds32                               defconfig
mips                     cu1000-neo_defconfig
powerpc                     pseries_defconfig
arm                          pxa168_defconfig
sh                          urquell_defconfig
powerpc                          g5_defconfig
arm                         mv78xx0_defconfig
arm                          exynos_defconfig
riscv                             allnoconfig
arm                         axm55xx_defconfig
arm64                            alldefconfig
mips                     loongson1c_defconfig
powerpc                  storcenter_defconfig
sh                            hp6xx_defconfig
powerpc                      makalu_defconfig
sh                      rts7751r2d1_defconfig
powerpc                       ebony_defconfig
powerpc                  iss476-smp_defconfig
mips                      maltaaprp_defconfig
mips                  maltasmvp_eva_defconfig
ia64                             alldefconfig
riscv                          rv32_defconfig
powerpc                 mpc8272_ads_defconfig
arm                       versatile_defconfig
powerpc                     stx_gp3_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210325
x86_64               randconfig-a003-20210325
x86_64               randconfig-a006-20210325
x86_64               randconfig-a001-20210325
x86_64               randconfig-a005-20210325
x86_64               randconfig-a004-20210325
i386                 randconfig-a004-20210324
i386                 randconfig-a003-20210324
i386                 randconfig-a001-20210324
i386                 randconfig-a002-20210324
i386                 randconfig-a006-20210324
i386                 randconfig-a005-20210324
i386                 randconfig-a003-20210325
i386                 randconfig-a004-20210325
i386                 randconfig-a001-20210325
i386                 randconfig-a002-20210325
i386                 randconfig-a006-20210325
i386                 randconfig-a005-20210325
x86_64               randconfig-a012-20210324
x86_64               randconfig-a015-20210324
x86_64               randconfig-a014-20210324
x86_64               randconfig-a013-20210324
x86_64               randconfig-a016-20210324
x86_64               randconfig-a011-20210324
i386                 randconfig-a014-20210324
i386                 randconfig-a011-20210324
i386                 randconfig-a015-20210324
i386                 randconfig-a016-20210324
i386                 randconfig-a013-20210324
i386                 randconfig-a012-20210324
i386                 randconfig-a014-20210325
i386                 randconfig-a011-20210325
i386                 randconfig-a015-20210325
i386                 randconfig-a016-20210325
i386                 randconfig-a013-20210325
i386                 randconfig-a012-20210325
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
x86_64               randconfig-a002-20210324
x86_64               randconfig-a003-20210324
x86_64               randconfig-a001-20210324
x86_64               randconfig-a006-20210324
x86_64               randconfig-a005-20210324
x86_64               randconfig-a004-20210324
x86_64               randconfig-a012-20210325
x86_64               randconfig-a015-20210325
x86_64               randconfig-a014-20210325
x86_64               randconfig-a013-20210325
x86_64               randconfig-a011-20210325
x86_64               randconfig-a016-20210325

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
