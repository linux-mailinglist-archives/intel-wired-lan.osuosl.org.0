Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F453488A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 06:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F36B084937;
	Thu, 25 Mar 2021 05:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CdsrsBS244hP; Thu, 25 Mar 2021 05:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3B5B848B7;
	Thu, 25 Mar 2021 05:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 565821BF82C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 05:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4597E607E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 05:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PthAwRjXrYbG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 05:46:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 470BD606FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 05:46:41 +0000 (UTC)
IronPort-SDR: SpX6Sa//F3va3TSGgfYT2EMAK2wshfXZIqvpqMv+X60DsFynBdWwBLkCvkdO7EVNd7uc8jphSF
 yO0RqrrgMWCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="188559796"
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="188559796"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 22:46:31 -0700
IronPort-SDR: akR3HsVLXbIS999xkF0DQIBGnxuaoerWFvt3Gm4m/KvPOJAQeEbLzXSK1h/KOh+5tBoZFkRNmj
 vTuQBqPX2PBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="415825170"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Mar 2021 22:46:29 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lPIpA-0001lp-DR; Thu, 25 Mar 2021 05:46:28 +0000
Date: Thu, 25 Mar 2021 13:45:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <605c237a.pXH2mMmJw/4GwwY1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a461bf477e3046cb65c27fd106325055954deccc
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
branch HEAD: a461bf477e3046cb65c27fd106325055954deccc  ixgbe: fix unbalanced device enable/disable in suspend/resume

elapsed time: 734m

configs tested: 153
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
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
sh                           se7750_defconfig
m68k                       m5275evb_defconfig
arm                         mv78xx0_defconfig
xtensa                              defconfig
ia64                      gensparse_defconfig
mips                         tb0287_defconfig
arm                            mmp2_defconfig
sh                              ul2_defconfig
powerpc                 mpc85xx_cds_defconfig
arc                                 defconfig
sh                        edosk7760_defconfig
arm                             ezx_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                           se7780_defconfig
m68k                          hp300_defconfig
arc                           tb10x_defconfig
mips                        bcm63xx_defconfig
powerpc                   bluestone_defconfig
powerpc                     sequoia_defconfig
m68k                        mvme147_defconfig
microblaze                      mmu_defconfig
sh                     sh7710voipgw_defconfig
mips                           ci20_defconfig
mips                     loongson1b_defconfig
arm                            lart_defconfig
powerpc                      ppc64e_defconfig
sh                            shmin_defconfig
powerpc                     ksi8560_defconfig
powerpc                     akebono_defconfig
sh                        sh7763rdp_defconfig
arm                            pleb_defconfig
powerpc                    gamecube_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                      jornada720_defconfig
mips                        maltaup_defconfig
arm                        oxnas_v6_defconfig
powerpc                     ppa8548_defconfig
arc                          axs101_defconfig
m68k                        m5307c3_defconfig
mips                        bcm47xx_defconfig
arm                         axm55xx_defconfig
arm64                            alldefconfig
mips                     loongson1c_defconfig
powerpc                  storcenter_defconfig
sh                            hp6xx_defconfig
powerpc                      makalu_defconfig
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
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
i386                 randconfig-a003-20210323
i386                 randconfig-a004-20210323
i386                 randconfig-a001-20210323
i386                 randconfig-a002-20210323
i386                 randconfig-a006-20210323
i386                 randconfig-a005-20210323
i386                 randconfig-a004-20210324
i386                 randconfig-a003-20210324
i386                 randconfig-a001-20210324
i386                 randconfig-a002-20210324
i386                 randconfig-a006-20210324
i386                 randconfig-a005-20210324
x86_64               randconfig-a012-20210324
x86_64               randconfig-a015-20210324
x86_64               randconfig-a014-20210324
x86_64               randconfig-a013-20210324
x86_64               randconfig-a016-20210324
x86_64               randconfig-a011-20210324
i386                 randconfig-a014-20210325
i386                 randconfig-a011-20210325
i386                 randconfig-a015-20210325
i386                 randconfig-a016-20210325
i386                 randconfig-a013-20210325
i386                 randconfig-a012-20210325
i386                 randconfig-a014-20210324
i386                 randconfig-a011-20210324
i386                 randconfig-a015-20210324
i386                 randconfig-a016-20210324
i386                 randconfig-a013-20210324
i386                 randconfig-a012-20210324
i386                 randconfig-a014-20210323
i386                 randconfig-a011-20210323
i386                 randconfig-a015-20210323
i386                 randconfig-a016-20210323
i386                 randconfig-a012-20210323
i386                 randconfig-a013-20210323
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a012-20210325
x86_64               randconfig-a015-20210325
x86_64               randconfig-a014-20210325
x86_64               randconfig-a013-20210325
x86_64               randconfig-a011-20210325
x86_64               randconfig-a016-20210325
x86_64               randconfig-a002-20210324
x86_64               randconfig-a003-20210324
x86_64               randconfig-a001-20210324
x86_64               randconfig-a006-20210324
x86_64               randconfig-a005-20210324
x86_64               randconfig-a004-20210324

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
