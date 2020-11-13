Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 522DD2B1CF1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Nov 2020 15:12:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 355CD2E244;
	Fri, 13 Nov 2020 14:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ciNdLbrX4qP3; Fri, 13 Nov 2020 14:12:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B292C2E21A;
	Fri, 13 Nov 2020 14:12:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D18B61BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 14:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCC20878A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 14:12:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jr2hmlt8zwWM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Nov 2020 14:12:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E091876C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 14:12:50 +0000 (UTC)
IronPort-SDR: NYuXJb10qRhup9TRZt+iR/5VIpt2vr7bIIkjee5jDxTkzJ4PXrpKBKEiQ86IxV+RNqFgkR/CBS
 qqgsk/7AuqTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="255185528"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="255185528"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 06:12:50 -0800
IronPort-SDR: 4o3bm+jX03E9TxP0hc5fuskFdHIumMJcm2Q/fvoDFvqUKFaMHKAvmO0yHtWX7IzSftFtt1SnXX
 78QKOsh6mHOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="474673194"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 13 Nov 2020 06:12:48 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kdZom-0000L4-9u; Fri, 13 Nov 2020 14:12:48 +0000
Date: Fri, 13 Nov 2020 22:12:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fae9440.OjinXP0Ze0+vEqnO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 8a5c2906c52f4a81939b4f8536e0004a4193a154
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
branch HEAD: 8a5c2906c52f4a81939b4f8536e0004a4193a154  Merge branch '40GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue

elapsed time: 720m

configs tested: 183
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                    vdk_hs38_smp_defconfig
powerpc                     sbc8548_defconfig
arm                         lubbock_defconfig
powerpc                      acadia_defconfig
mips                  cavium_octeon_defconfig
powerpc                     pq2fads_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                     loongson1b_defconfig
powerpc                     rainier_defconfig
ia64                          tiger_defconfig
m68k                             alldefconfig
m68k                            q40_defconfig
arm                          ep93xx_defconfig
arm                       multi_v4t_defconfig
mips                      maltasmvp_defconfig
nios2                         10m50_defconfig
arm                             mxs_defconfig
arm                          prima2_defconfig
arm64                            alldefconfig
mips                          ath79_defconfig
mips                          malta_defconfig
powerpc                       holly_defconfig
powerpc                      ppc6xx_defconfig
powerpc                        warp_defconfig
arm                        neponset_defconfig
mips                         bigsur_defconfig
arm                         s3c6400_defconfig
arm                         s5pv210_defconfig
arm                        cerfcube_defconfig
arm                         assabet_defconfig
sh                           se7343_defconfig
mips                     loongson1c_defconfig
parisc                generic-32bit_defconfig
arm                          tango4_defconfig
arm                         s3c2410_defconfig
xtensa                              defconfig
sh                          lboxre2_defconfig
arc                            hsdk_defconfig
arc                           tb10x_defconfig
powerpc                 mpc836x_mds_defconfig
mips                     cu1830-neo_defconfig
powerpc                      pcm030_defconfig
arm                            qcom_defconfig
m68k                          amiga_defconfig
powerpc                     mpc512x_defconfig
powerpc                 mpc834x_mds_defconfig
sparc                       sparc32_defconfig
powerpc                     tqm8548_defconfig
um                            kunit_defconfig
arc                          axs103_defconfig
powerpc                      chrp32_defconfig
powerpc                       eiger_defconfig
h8300                               defconfig
mips                           ip22_defconfig
sh                           se7750_defconfig
c6x                              alldefconfig
arc                     nsimosci_hs_defconfig
mips                        nlm_xlr_defconfig
mips                        workpad_defconfig
ia64                                defconfig
mips                          ath25_defconfig
mips                         cobalt_defconfig
arm                        spear3xx_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                    sam440ep_defconfig
arm                           h3600_defconfig
powerpc                     stx_gp3_defconfig
arm                           sunxi_defconfig
sh                           se7722_defconfig
c6x                                 defconfig
csky                             alldefconfig
arc                        nsim_700_defconfig
nds32                            alldefconfig
powerpc                      ep88xc_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                 mpc836x_rdk_defconfig
arm                       imx_v6_v7_defconfig
powerpc                      pasemi_defconfig
ia64                        generic_defconfig
arm                            dove_defconfig
sh                              ul2_defconfig
sh                            hp6xx_defconfig
microblaze                          defconfig
mips                         tb0287_defconfig
xtensa                generic_kc705_defconfig
arm                              zx_defconfig
mips                            gpr_defconfig
powerpc                     skiroot_defconfig
arm                          lpd270_defconfig
m68k                          hp300_defconfig
riscv                            allyesconfig
mips                        maltaup_defconfig
mips                        nlm_xlp_defconfig
arm                            u300_defconfig
openrisc                 simple_smp_defconfig
sh                          polaris_defconfig
sh                          urquell_defconfig
arm                         bcm2835_defconfig
m68k                       m5475evb_defconfig
arm                      tct_hammer_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                         rt305x_defconfig
arc                          axs101_defconfig
xtensa                    xip_kc705_defconfig
arm                           u8500_defconfig
powerpc                      ppc40x_defconfig
sh                          rsk7201_defconfig
sh                          rsk7269_defconfig
arm                           spitz_defconfig
powerpc                         wii_defconfig
xtensa                          iss_defconfig
ia64                             allmodconfig
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
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201113
i386                 randconfig-a005-20201113
i386                 randconfig-a002-20201113
i386                 randconfig-a001-20201113
i386                 randconfig-a003-20201113
i386                 randconfig-a004-20201113
x86_64               randconfig-a015-20201113
x86_64               randconfig-a011-20201113
x86_64               randconfig-a014-20201113
x86_64               randconfig-a013-20201113
x86_64               randconfig-a016-20201113
x86_64               randconfig-a012-20201113
i386                 randconfig-a012-20201113
i386                 randconfig-a014-20201113
i386                 randconfig-a016-20201113
i386                 randconfig-a011-20201113
i386                 randconfig-a015-20201113
i386                 randconfig-a013-20201113
riscv                    nommu_k210_defconfig
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20201113
x86_64               randconfig-a005-20201113
x86_64               randconfig-a004-20201113
x86_64               randconfig-a002-20201113
x86_64               randconfig-a006-20201113
x86_64               randconfig-a001-20201113

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
