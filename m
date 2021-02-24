Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B273236DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 06:30:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 565154B4F3;
	Wed, 24 Feb 2021 05:29:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTs8L1OYO-kr; Wed, 24 Feb 2021 05:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 182244BC25;
	Wed, 24 Feb 2021 05:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EA621BF35A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 05:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0F914AAFC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 05:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4UQyXW4wiCu2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Feb 2021 05:29:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAAC84A648
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 05:29:50 +0000 (UTC)
IronPort-SDR: ddWIXNgg1yrB+ovxe+wgJ1xC+st4lJcfwUKb4WAqeAPDm6l53TWUdfDa0Z6e9p0O9njLjqXpS3
 BMZABn0mlxPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="182578065"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="182578065"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 21:29:50 -0800
IronPort-SDR: zFwLUbe7Cb+8xh2TG87MYtylt6EOt4jQE0OkALucX9UGAhs/JhNP8o+j+fuzn6xiCGsgQEGZVX
 ol18zoZD5f+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="433099651"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2021 21:29:48 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lEmk8-0001ov-6d; Wed, 24 Feb 2021 05:29:48 +0000
Date: Wed, 24 Feb 2021 13:29:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6035e443.3njCdYZv9funYtaz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 42870a1a8728ec3c35a12aaf078eaefa0f042772
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: 42870a1a8728ec3c35a12aaf078eaefa0f042772  Merge branch '40GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue

elapsed time: 1527m

configs tested: 169
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           ip27_defconfig
powerpc                       ebony_defconfig
h8300                    h8300h-sim_defconfig
powerpc                     stx_gp3_defconfig
arm                         axm55xx_defconfig
m68k                         amcore_defconfig
arm                          ep93xx_defconfig
powerpc                    gamecube_defconfig
ia64                         bigsur_defconfig
powerpc                     tqm8560_defconfig
nds32                            alldefconfig
powerpc                      chrp32_defconfig
sh                          landisk_defconfig
arm                      tct_hammer_defconfig
arm                          pcm027_defconfig
sh                          r7780mp_defconfig
powerpc                    klondike_defconfig
powerpc                     sbc8548_defconfig
powerpc                        cell_defconfig
powerpc                        icon_defconfig
sh                           se7751_defconfig
mips                        omega2p_defconfig
riscv                    nommu_virt_defconfig
m68k                       m5275evb_defconfig
sh                           se7619_defconfig
mips                      maltaaprp_defconfig
xtensa                         virt_defconfig
mips                     cu1000-neo_defconfig
arm                            pleb_defconfig
sh                        apsh4ad0a_defconfig
mips                           ci20_defconfig
mips                        nlm_xlp_defconfig
mips                         db1xxx_defconfig
powerpc                   lite5200b_defconfig
mips                  decstation_64_defconfig
sh                   rts7751r2dplus_defconfig
xtensa                  cadence_csp_defconfig
arm                        shmobile_defconfig
mips                      malta_kvm_defconfig
powerpc                      cm5200_defconfig
arm                           omap1_defconfig
powerpc                    ge_imp3a_defconfig
m68k                       m5475evb_defconfig
arm                       netwinder_defconfig
s390                                defconfig
sh                           se7750_defconfig
i386                             alldefconfig
sh                 kfr2r09-romimage_defconfig
m68k                        mvme16x_defconfig
sh                        edosk7705_defconfig
mips                           xway_defconfig
mips                       bmips_be_defconfig
m68k                        mvme147_defconfig
nios2                         3c120_defconfig
powerpc                      arches_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        oxnas_v6_defconfig
arm                           sama5_defconfig
arm                         s3c2410_defconfig
arm                              alldefconfig
sh                          lboxre2_defconfig
mips                           ip28_defconfig
um                           x86_64_defconfig
arm                        realview_defconfig
microblaze                          defconfig
arm                            zeus_defconfig
parisc                generic-32bit_defconfig
openrisc                    or1ksim_defconfig
sh                     magicpanelr2_defconfig
powerpc                 mpc8560_ads_defconfig
sh                             espt_defconfig
arm                        mvebu_v5_defconfig
microblaze                      mmu_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm8541_defconfig
powerpc                     redwood_defconfig
sh                            titan_defconfig
arm                       imx_v6_v7_defconfig
arm                         assabet_defconfig
c6x                              alldefconfig
powerpc                 mpc8540_ads_defconfig
powerpc                      walnut_defconfig
mips                           ip32_defconfig
arm                      footbridge_defconfig
powerpc                     sequoia_defconfig
arm                        multi_v5_defconfig
mips                          ath79_defconfig
arm                         socfpga_defconfig
sh                          rsk7201_defconfig
arm                             pxa_defconfig
powerpc                 mpc8313_rdb_defconfig
csky                             alldefconfig
powerpc                  storcenter_defconfig
powerpc                     mpc512x_defconfig
ia64                             allmodconfig
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
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210223
i386                 randconfig-a006-20210223
i386                 randconfig-a004-20210223
i386                 randconfig-a003-20210223
i386                 randconfig-a001-20210223
i386                 randconfig-a002-20210223
x86_64               randconfig-a015-20210223
x86_64               randconfig-a011-20210223
x86_64               randconfig-a012-20210223
x86_64               randconfig-a016-20210223
x86_64               randconfig-a014-20210223
x86_64               randconfig-a013-20210223
i386                 randconfig-a013-20210223
i386                 randconfig-a012-20210223
i386                 randconfig-a011-20210223
i386                 randconfig-a014-20210223
i386                 randconfig-a016-20210223
i386                 randconfig-a015-20210223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
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
x86_64               randconfig-a001-20210223
x86_64               randconfig-a002-20210223
x86_64               randconfig-a003-20210223
x86_64               randconfig-a005-20210223
x86_64               randconfig-a006-20210223
x86_64               randconfig-a004-20210223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
