Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC3F34E125
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Mar 2021 08:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 573254033B;
	Tue, 30 Mar 2021 06:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcmVW7Qcv3zi; Tue, 30 Mar 2021 06:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB74040320;
	Tue, 30 Mar 2021 06:25:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CBA91BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 06:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19A8260819
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 06:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3X1oVPOp6i2V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Mar 2021 06:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12FB760736
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 06:25:24 +0000 (UTC)
IronPort-SDR: oUclpJ1yuOePEKPEvecrP9tjgiItG1Dg1G/fCKtYDIL669LePS+ffT1Rg0WrD4MsuOB4YqiQaU
 crYnO9ozGkdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="189451025"
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; d="scan'208";a="189451025"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 23:25:23 -0700
IronPort-SDR: Oe/N7NRVOfmRJawkkzudElreduCxbT5Q2H4rYoJ8TRfVYoJ9T/tFN5yj0bohv7zlXogQ6LJrno
 Qj3NyqHWmSJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; d="scan'208";a="595354522"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 29 Mar 2021 23:25:22 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lR7oX-00056a-GK; Tue, 30 Mar 2021 06:25:21 +0000
Date: Tue, 30 Mar 2021 14:25:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6062c447.AsNei0iroZFNxN8D%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 b7eeb52721fe417730fc5adc5cbeeb5fe349ab26
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: b7eeb52721fe417730fc5adc5cbeeb5fe349ab26  ice: Cleanup fltr list in case of allocation issues

elapsed time: 732m

configs tested: 179
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
arm64                            alldefconfig
xtensa                              defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      pcm030_defconfig
powerpc                    socrates_defconfig
mips                       lemote2f_defconfig
powerpc                      ppc44x_defconfig
powerpc               mpc834x_itxgp_defconfig
arc                            hsdk_defconfig
sh                            hp6xx_defconfig
powerpc                      makalu_defconfig
m68k                            q40_defconfig
mips                     loongson1c_defconfig
sh                   sh7770_generic_defconfig
powerpc                mpc7448_hpc2_defconfig
sh                            migor_defconfig
mips                         cobalt_defconfig
powerpc                      pasemi_defconfig
xtensa                  audio_kc705_defconfig
arm                         vf610m4_defconfig
arm                        magician_defconfig
arm                       spear13xx_defconfig
powerpc                           allnoconfig
powerpc                    sam440ep_defconfig
powerpc                  storcenter_defconfig
parisc                           allyesconfig
arm                          simpad_defconfig
m68k                        stmark2_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                       ebony_defconfig
sh                            titan_defconfig
sparc64                             defconfig
arc                        vdk_hs38_defconfig
mips                       capcella_defconfig
arm                         lubbock_defconfig
powerpc                       ppc64_defconfig
arm                           h5000_defconfig
arm                         orion5x_defconfig
powerpc                    klondike_defconfig
powerpc                 mpc832x_mds_defconfig
mips                      loongson3_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 mpc834x_itx_defconfig
mips                         tb0219_defconfig
mips                            ar7_defconfig
arm                     am200epdkit_defconfig
arm                          pxa910_defconfig
arm                          collie_defconfig
xtensa                generic_kc705_defconfig
arm                         lpc18xx_defconfig
powerpc                     rainier_defconfig
um                                  defconfig
powerpc                   motionpro_defconfig
mips                           gcw0_defconfig
arm                          gemini_defconfig
powerpc                     ppa8548_defconfig
s390                       zfcpdump_defconfig
arm                       omap2plus_defconfig
m68k                          sun3x_defconfig
mips                        jmr3927_defconfig
sh                           se7724_defconfig
m68k                        m5407c3_defconfig
arm                          pcm027_defconfig
mips                           rs90_defconfig
powerpc                      ppc40x_defconfig
sh                        dreamcast_defconfig
arm                    vt8500_v6_v7_defconfig
sh                          r7785rp_defconfig
arm                            hisi_defconfig
arm                       multi_v4t_defconfig
powerpc                 mpc834x_mds_defconfig
arm                          exynos_defconfig
sh                            shmin_defconfig
sh                        edosk7705_defconfig
powerpc                     mpc5200_defconfig
powerpc                  mpc885_ads_defconfig
mips                     loongson1b_defconfig
mips                     decstation_defconfig
sh                         apsh4a3a_defconfig
arm                         assabet_defconfig
arm                      tct_hammer_defconfig
x86_64                           alldefconfig
arm                        cerfcube_defconfig
m68k                        mvme147_defconfig
powerpc                      ppc64e_defconfig
powerpc                      ppc6xx_defconfig
powerpc                         wii_defconfig
arc                        nsimosci_defconfig
mips                      pic32mzda_defconfig
m68k                       m5275evb_defconfig
mips                        nlm_xlp_defconfig
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a002-20210329
x86_64               randconfig-a003-20210329
x86_64               randconfig-a006-20210329
x86_64               randconfig-a001-20210329
x86_64               randconfig-a005-20210329
x86_64               randconfig-a004-20210329
i386                 randconfig-a003-20210329
i386                 randconfig-a004-20210329
i386                 randconfig-a001-20210329
i386                 randconfig-a002-20210329
i386                 randconfig-a006-20210329
i386                 randconfig-a005-20210329
i386                 randconfig-a004-20210330
i386                 randconfig-a006-20210330
i386                 randconfig-a003-20210330
i386                 randconfig-a002-20210330
i386                 randconfig-a001-20210330
i386                 randconfig-a005-20210330
i386                 randconfig-a014-20210329
i386                 randconfig-a011-20210329
i386                 randconfig-a015-20210329
i386                 randconfig-a016-20210329
i386                 randconfig-a013-20210329
i386                 randconfig-a012-20210329
i386                 randconfig-a015-20210330
i386                 randconfig-a011-20210330
i386                 randconfig-a014-20210330
i386                 randconfig-a013-20210330
i386                 randconfig-a016-20210330
i386                 randconfig-a012-20210330
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210329
x86_64               randconfig-a012-20210329
x86_64               randconfig-a013-20210329
x86_64               randconfig-a014-20210329
x86_64               randconfig-a011-20210329
x86_64               randconfig-a016-20210329

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
