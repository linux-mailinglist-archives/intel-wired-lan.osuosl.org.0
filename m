Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7F834A10E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 06:30:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC6E660618;
	Fri, 26 Mar 2021 05:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwOmTF8iDvkD; Fri, 26 Mar 2021 05:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E00A860611;
	Fri, 26 Mar 2021 05:30:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FAFF1BF380
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 05:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A12240F3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 05:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3DXLApAiuENT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 05:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A861740F33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 05:30:37 +0000 (UTC)
IronPort-SDR: 8n4MlM5mZhm+I2HW7xyKtKuE4um24u5h71OGn8P1m94RH864iYmX3g6El+7i/eXU2L8xi7kmSJ
 TbbOFCIzZ/uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188799436"
X-IronPort-AV: E=Sophos;i="5.81,279,1610438400"; d="scan'208";a="188799436"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 22:30:36 -0700
IronPort-SDR: FkYdduWk4VPUtluu30LoX0wyZT9a4rgGrteJzIKWKvOz4dhW75ruU80WC66ZcM8IYtpdKk7Y0e
 vGav08wilcmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,279,1610438400"; d="scan'208";a="414433408"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 25 Mar 2021 22:30:35 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lPf3K-0002Wz-FL; Fri, 26 Mar 2021 05:30:34 +0000
Date: Fri, 26 Mar 2021 13:30:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <605d716f.0OEdSxvSTTNENVtk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1e0da94d7b20a403b8d0eb538ca450f8ca305787
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
branch HEAD: 1e0da94d7b20a403b8d0eb538ca450f8ca305787  ixgbe: fix unbalanced device enable/disable in suspend/resume

elapsed time: 728m

configs tested: 149
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
i386                             allyesconfig
riscv                            allyesconfig
powerpc                       maple_defconfig
powerpc                      obs600_defconfig
sparc64                             defconfig
arm                         assabet_defconfig
xtensa                              defconfig
sh                         ecovec24_defconfig
powerpc                     mpc5200_defconfig
arm                          pxa3xx_defconfig
sh                          rsk7264_defconfig
csky                                defconfig
sh                     sh7710voipgw_defconfig
m68k                        stmark2_defconfig
arm                       aspeed_g5_defconfig
arm                            pleb_defconfig
arm                            mmp2_defconfig
s390                             alldefconfig
xtensa                  cadence_csp_defconfig
powerpc                         ps3_defconfig
parisc                generic-64bit_defconfig
mips                        qi_lb60_defconfig
sh                   sh7770_generic_defconfig
mips                        vocore2_defconfig
m68k                       m5475evb_defconfig
parisc                           alldefconfig
arm                        shmobile_defconfig
powerpc                       ppc64_defconfig
arm                           spitz_defconfig
arm                        keystone_defconfig
arm                          lpd270_defconfig
mips                      maltaaprp_defconfig
arm                        spear3xx_defconfig
arm                       imx_v6_v7_defconfig
mips                     loongson1c_defconfig
powerpc                     sequoia_defconfig
powerpc                      katmai_defconfig
arm                        multi_v7_defconfig
mips                  cavium_octeon_defconfig
m68k                           sun3_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                     tqm5200_defconfig
powerpc                 linkstation_defconfig
powerpc64                           defconfig
mips                          malta_defconfig
csky                             alldefconfig
nds32                            alldefconfig
riscv                    nommu_k210_defconfig
powerpc                      ep88xc_defconfig
xtensa                    xip_kc705_defconfig
mips                        omega2p_defconfig
sh                     magicpanelr2_defconfig
mips                       capcella_defconfig
powerpc                      ppc6xx_defconfig
arm                       versatile_defconfig
arm                           tegra_defconfig
arm                          pcm027_defconfig
sh                   secureedge5410_defconfig
powerpc                     stx_gp3_defconfig
mips                           ip22_defconfig
sh                           se7712_defconfig
arc                    vdk_hs38_smp_defconfig
arm                        multi_v5_defconfig
mips                         cobalt_defconfig
powerpc                        icon_defconfig
powerpc                     tqm8548_defconfig
sh                          polaris_defconfig
mips                       lemote2f_defconfig
powerpc                     tqm8541_defconfig
m68k                            q40_defconfig
xtensa                    smp_lx200_defconfig
arm                  colibri_pxa270_defconfig
powerpc                 mpc837x_mds_defconfig
um                            kunit_defconfig
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
x86_64               randconfig-a002-20210325
x86_64               randconfig-a003-20210325
x86_64               randconfig-a006-20210325
x86_64               randconfig-a001-20210325
x86_64               randconfig-a005-20210325
x86_64               randconfig-a004-20210325
i386                 randconfig-a003-20210325
i386                 randconfig-a004-20210325
i386                 randconfig-a001-20210325
i386                 randconfig-a002-20210325
i386                 randconfig-a006-20210325
i386                 randconfig-a005-20210325
i386                 randconfig-a014-20210325
i386                 randconfig-a011-20210325
i386                 randconfig-a015-20210325
i386                 randconfig-a016-20210325
i386                 randconfig-a013-20210325
i386                 randconfig-a012-20210325
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
