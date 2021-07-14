Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BF43C7F4F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 09:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F2A74020E;
	Wed, 14 Jul 2021 07:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YXzezsRYXznE; Wed, 14 Jul 2021 07:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D52D40193;
	Wed, 14 Jul 2021 07:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 085341BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 07:26:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA2AD6071F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 07:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52UWPi1y-KgG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 07:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 426F8606B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 07:26:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232110707"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232110707"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 00:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="412704959"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 14 Jul 2021 00:26:33 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m3ZHs-000IXL-9t; Wed, 14 Jul 2021 07:26:32 +0000
Date: Wed, 14 Jul 2021 15:25:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60ee9175.0kIk6sKc7p4NqbyW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f52d0592d48cff3ca4d26012a72ffb4dd68295f1
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
branch HEAD: f52d0592d48cff3ca4d26012a72ffb4dd68295f1  ice: rearm other interrupt cause register after enabling VFs

elapsed time: 727m

configs tested: 155
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
riscv             nommu_k210_sdcard_defconfig
arm                  colibri_pxa270_defconfig
microblaze                          defconfig
ia64                             alldefconfig
powerpc                 mpc832x_mds_defconfig
arc                    vdk_hs38_smp_defconfig
arm                       netwinder_defconfig
powerpc                          allmodconfig
sh                           se7705_defconfig
riscv                    nommu_k210_defconfig
mips                           gcw0_defconfig
powerpc                    amigaone_defconfig
mips                           ip32_defconfig
arm                              alldefconfig
h8300                     edosk2674_defconfig
powerpc                   bluestone_defconfig
arm                        clps711x_defconfig
mips                     loongson2k_defconfig
powerpc                       ppc64_defconfig
arc                           tb10x_defconfig
powerpc                      tqm8xx_defconfig
openrisc                         alldefconfig
powerpc                      mgcoge_defconfig
arm                         lubbock_defconfig
arm                           spitz_defconfig
s390                                defconfig
mips                           ip28_defconfig
sh                           se7751_defconfig
arm                         palmz72_defconfig
powerpc                     skiroot_defconfig
arm                         nhk8815_defconfig
powerpc                    adder875_defconfig
m68k                        m5272c3_defconfig
h8300                            alldefconfig
mips                          ath79_defconfig
powerpc                 mpc834x_mds_defconfig
mips                     loongson1b_defconfig
ia64                                defconfig
arm                             mxs_defconfig
mips                     cu1000-neo_defconfig
powerpc                     kmeter1_defconfig
powerpc                 mpc8315_rdb_defconfig
sh                           se7722_defconfig
arc                                 defconfig
mips                  maltasmvp_eva_defconfig
mips                           rs90_defconfig
mips                       lemote2f_defconfig
s390                       zfcpdump_defconfig
powerpc                     tqm5200_defconfig
arm                         vf610m4_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                         bcm2835_defconfig
sh                ecovec24-romimage_defconfig
sparc                            alldefconfig
powerpc                      bamboo_defconfig
arm                        oxnas_v6_defconfig
arm                         orion5x_defconfig
powerpc                    socrates_defconfig
mips                      fuloong2e_defconfig
mips                         db1xxx_defconfig
sh                        dreamcast_defconfig
arm                            mps2_defconfig
arm                         socfpga_defconfig
powerpc                     pq2fads_defconfig
m68k                        m5307c3_defconfig
sh                            hp6xx_defconfig
powerpc                  mpc866_ads_defconfig
arm                            lart_defconfig
mips                       capcella_defconfig
arc                              alldefconfig
sh                        edosk7705_defconfig
mips                      maltaaprp_defconfig
powerpc                       maple_defconfig
powerpc                      cm5200_defconfig
arm                        neponset_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210714
x86_64               randconfig-a004-20210714
x86_64               randconfig-a002-20210714
x86_64               randconfig-a003-20210714
x86_64               randconfig-a006-20210714
x86_64               randconfig-a001-20210714
i386                 randconfig-a005-20210713
i386                 randconfig-a004-20210713
i386                 randconfig-a006-20210713
i386                 randconfig-a001-20210713
i386                 randconfig-a002-20210713
i386                 randconfig-a003-20210713
x86_64               randconfig-a013-20210713
x86_64               randconfig-a014-20210713
x86_64               randconfig-a012-20210713
x86_64               randconfig-a015-20210713
x86_64               randconfig-a016-20210713
x86_64               randconfig-a011-20210713
i386                 randconfig-a015-20210713
i386                 randconfig-a014-20210713
i386                 randconfig-a011-20210713
i386                 randconfig-a013-20210713
i386                 randconfig-a012-20210713
i386                 randconfig-a016-20210713
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210713
x86_64               randconfig-a005-20210713
x86_64               randconfig-a004-20210713
x86_64               randconfig-a003-20210713
x86_64               randconfig-a002-20210713
x86_64               randconfig-a006-20210713
x86_64               randconfig-a001-20210713

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
