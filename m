Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC34A0102
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 20:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6927661169;
	Fri, 28 Jan 2022 19:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Py13qw97XPKn; Fri, 28 Jan 2022 19:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 980906113B;
	Fri, 28 Jan 2022 19:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74DF21BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 19:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EE1A6113B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 19:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8ptynUE8J-n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 19:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9DA3A61108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 19:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643398800; x=1674934800;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JmVrUZLwNschmm8a4CMBqEMulEbM9IoX6mTOFZxgzPY=;
 b=hp6MqAsz5xrYFAPVzvGIokLOh4F3QYBjfLzRjmswi6w5H/fMGcFA6WDl
 3JpnmjnXfqs9Qa6b8EA4kmLcSP0wFzoHeBxAPpPhnaQOZc3mahnsiHZnu
 yH1t+7S33aDkQwnoDOWDOWmoPUUig7XBDkqr1XFnm6XlgIC0cHg2DVhVU
 P4AuNr+jFaRsPOdQEtlM1YclQRUqebrpoWIvDyQfVLworJ0H3+5w/fONO
 UG2seST6VOxV+cWD2aktOrckd0GD7GQnqIcM0x0UuSR4oMngC+8xzHGix
 umQxkmhnE7uwaQbw7l8ozaYkJEo5H6kBTfD/LNdq4ooVfMpEHILt4JhMS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="246957333"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="246957333"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 11:40:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="480844526"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 28 Jan 2022 11:39:58 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nDX6E-000OF4-8E; Fri, 28 Jan 2022 19:39:58 +0000
Date: Sat, 29 Jan 2022 03:39:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61f44673.j6PBxMUUjmzIm0NF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 72d044e4bfa6bd9096536e2e1c62aecfe1a525e4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 72d044e4bfa6bd9096536e2e1c62aecfe1a525e4  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 1207m

configs tested: 216
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
powerpc                 mpc834x_itx_defconfig
arm                         at91_dt_defconfig
mips                         mpc30x_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
arc                      axs103_smp_defconfig
arm                       imx_v6_v7_defconfig
m68k                       m5275evb_defconfig
um                             i386_defconfig
h8300                    h8300h-sim_defconfig
arm                         s3c6400_defconfig
m68k                        mvme147_defconfig
mips                 decstation_r4k_defconfig
riscv                            allyesconfig
ia64                        generic_defconfig
nios2                         10m50_defconfig
xtensa                  audio_kc705_defconfig
powerpc                      ppc40x_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                      mgcoge_defconfig
mips                            ar7_defconfig
arm                           tegra_defconfig
arm                         axm55xx_defconfig
arm                       aspeed_g5_defconfig
arm                             rpc_defconfig
sh                   secureedge5410_defconfig
sh                           sh2007_defconfig
sh                           se7721_defconfig
parisc                generic-64bit_defconfig
sparc                       sparc64_defconfig
mips                        bcm47xx_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
arm                         cm_x300_defconfig
sh                           se7751_defconfig
sparc                               defconfig
powerpc                      ppc6xx_defconfig
arc                           tb10x_defconfig
s390                       zfcpdump_defconfig
arm                            pleb_defconfig
powerpc                  storcenter_defconfig
arm                        keystone_defconfig
sh                     sh7710voipgw_defconfig
arc                        vdk_hs38_defconfig
m68k                           sun3_defconfig
arm                            zeus_defconfig
arm                        clps711x_defconfig
arm                      footbridge_defconfig
arm                            xcep_defconfig
sh                            shmin_defconfig
ia64                      gensparse_defconfig
powerpc                     rainier_defconfig
mips                    maltaup_xpa_defconfig
openrisc                         alldefconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                     sequoia_defconfig
powerpc                 mpc834x_mds_defconfig
sh                        sh7763rdp_defconfig
arm                          pxa910_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      pasemi_defconfig
xtensa                    xip_kc705_defconfig
parisc                           alldefconfig
nds32                             allnoconfig
powerpc                     tqm8541_defconfig
mips                           xway_defconfig
arc                              alldefconfig
arc                        nsimosci_defconfig
arm                             pxa_defconfig
s390                          debug_defconfig
arm                         assabet_defconfig
sparc                            alldefconfig
arm                             ezx_defconfig
h8300                               defconfig
sh                             espt_defconfig
riscv                               defconfig
h8300                     edosk2674_defconfig
nios2                         3c120_defconfig
sh                         apsh4a3a_defconfig
mips                           ci20_defconfig
powerpc                    adder875_defconfig
powerpc                 linkstation_defconfig
powerpc                        cell_defconfig
xtensa                  nommu_kc705_defconfig
arm                  randconfig-c002-20220127
arm                  randconfig-c002-20220124
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
s390                 randconfig-c005-20220124
x86_64                        randconfig-c007
arm                  randconfig-c002-20220125
riscv                randconfig-c006-20220125
s390                 randconfig-c005-20220125
powerpc              randconfig-c003-20220125
mips                 randconfig-c004-20220125
i386                          randconfig-c001
powerpc                     powernv_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                 mpc8560_ads_defconfig
arm                       netwinder_defconfig
arm                         orion5x_defconfig
powerpc                   bluestone_defconfig
mips                           ip27_defconfig
powerpc                      ppc44x_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                          g5_defconfig
powerpc                      acadia_defconfig
arm                        magician_defconfig
mips                     cu1830-neo_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                      katmai_defconfig
arm                         bcm2835_defconfig
powerpc                       ebony_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r045-20220127
hexagon              randconfig-r041-20220124
hexagon              randconfig-r041-20220127
s390                 randconfig-r044-20220124
hexagon              randconfig-r045-20220125
hexagon              randconfig-r041-20220125
riscv                randconfig-r042-20220126
hexagon              randconfig-r045-20220126
hexagon              randconfig-r041-20220126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
