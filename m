Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C61A481A8E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Dec 2021 08:58:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E08060B75;
	Thu, 30 Dec 2021 07:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EhvCSagQq7u; Thu, 30 Dec 2021 07:58:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 190F1607FE;
	Thu, 30 Dec 2021 07:58:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9351BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A15F40891
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b_kjFSgm0clV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Dec 2021 07:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C65C40270
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640851075; x=1672387075;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Nt6FG1Q8T707Fs4ETluVWzNkQhAT4mTsRQKwQTK2FGs=;
 b=bI+J2YSHV4YRlGBsFNV10ldY9xvCPDoiaViLD0LHAJk4lZJEt5hV7QpG
 ET+0xRmkonYbzad1m0HYzib+8TJaHNwNlwJf1l6kf9CSU9Cb1f8WI0N1H
 zyDQO2mrr0UzE8piHiWnAAdQ/2v5AMJSjfnTyqK37wySCwAZf7ohE64TB
 /FAvNodun8LlRSnbmRaSzBFjmdqELr9OxWVy8KlwChXsk0y4k5Zy9qS0y
 r6y/x2ev5nuC8Yl2mTJZWpijXJZH/36NhfMO1A2g6dhUvJU4kp0uqIEIt
 kPHhcEFH3RvawUNESX87aY+bECo32xZaejBUzjHJGKoMgFllKA8UK+Ivk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10212"; a="221631715"
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; d="scan'208";a="221631715"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2021 23:57:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; d="scan'208";a="609843784"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Dec 2021 23:57:48 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2qJl-0009tb-4o; Thu, 30 Dec 2021 07:57:45 +0000
Date: Thu, 30 Dec 2021 15:56:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61cd664b.MIn4z6eWO/WpedtK%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 38970eac41db0031dcd337e124fab92a7105ed85
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 38970eac41db0031dcd337e124fab92a7105ed85  igb: support EXTTS on 82580/i354/i350

elapsed time: 724m

configs tested: 211
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211229
i386                 randconfig-c001-20211228
i386                 randconfig-c001-20211230
mips                 randconfig-c004-20211230
arm                        mvebu_v5_defconfig
mips                        qi_lb60_defconfig
sh                        apsh4ad0a_defconfig
sh                            hp6xx_defconfig
sh                     sh7710voipgw_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      pasemi_defconfig
arm                        shmobile_defconfig
powerpc                 linkstation_defconfig
mips                         bigsur_defconfig
powerpc                 mpc832x_mds_defconfig
nios2                               defconfig
arm                  colibri_pxa300_defconfig
mips                           ip28_defconfig
arm                      tct_hammer_defconfig
arm                         s3c6400_defconfig
powerpc                     pseries_defconfig
powerpc                     tqm8541_defconfig
powerpc                   bluestone_defconfig
sh                          landisk_defconfig
arm                          moxart_defconfig
arm                       imx_v6_v7_defconfig
s390                          debug_defconfig
mips                       capcella_defconfig
powerpc                         wii_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                     akebono_defconfig
arc                          axs101_defconfig
arm                       imx_v4_v5_defconfig
powerpc                    ge_imp3a_defconfig
sh                         ap325rxa_defconfig
arm                        oxnas_v6_defconfig
mips                        workpad_defconfig
arm                         lpc18xx_defconfig
alpha                            alldefconfig
mips                      pic32mzda_defconfig
powerpc                        fsp2_defconfig
powerpc                  iss476-smp_defconfig
mips                malta_qemu_32r6_defconfig
arm                            pleb_defconfig
arm                           sama7_defconfig
mips                        vocore2_defconfig
arm                      jornada720_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                     ep8248e_defconfig
ia64                            zx1_defconfig
powerpc                      pcm030_defconfig
powerpc                     pq2fads_defconfig
sh                          sdk7786_defconfig
arc                            hsdk_defconfig
arm                        multi_v7_defconfig
sh                                  defconfig
s390                             allmodconfig
mips                            e55_defconfig
mips                         cobalt_defconfig
arm                         at91_dt_defconfig
arc                      axs103_smp_defconfig
mips                           xway_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                       eiger_defconfig
xtensa                          iss_defconfig
arm                       spear13xx_defconfig
mips                   sb1250_swarm_defconfig
openrisc                         alldefconfig
mips                     loongson1b_defconfig
arc                     nsimosci_hs_defconfig
sh                           se7721_defconfig
powerpc                    adder875_defconfig
arc                        nsim_700_defconfig
arm                           omap1_defconfig
arm                          ixp4xx_defconfig
arm                           sunxi_defconfig
nios2                         10m50_defconfig
arm                           sama5_defconfig
mips                            ar7_defconfig
xtensa                       common_defconfig
arm                        clps711x_defconfig
arm                             ezx_defconfig
sh                        edosk7705_defconfig
powerpc                  mpc866_ads_defconfig
parisc                           alldefconfig
mips                       rbtx49xx_defconfig
mips                       bmips_be_defconfig
arm                             pxa_defconfig
arm                            qcom_defconfig
arm                        vexpress_defconfig
powerpc                          allmodconfig
powerpc                      arches_defconfig
sparc                       sparc64_defconfig
powerpc                   microwatt_defconfig
powerpc                      ppc44x_defconfig
xtensa                  nommu_kc705_defconfig
arm                  randconfig-c002-20211230
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20211228
i386                 randconfig-a004-20211228
i386                 randconfig-a002-20211228
i386                 randconfig-a003-20211228
i386                 randconfig-a001-20211228
i386                 randconfig-a005-20211228
x86_64               randconfig-a013-20211230
x86_64               randconfig-a015-20211230
x86_64               randconfig-a012-20211230
x86_64               randconfig-a011-20211230
x86_64               randconfig-a016-20211230
x86_64               randconfig-a014-20211230
i386                 randconfig-a016-20211230
i386                 randconfig-a011-20211230
i386                 randconfig-a012-20211230
i386                 randconfig-a013-20211230
i386                 randconfig-a014-20211230
i386                 randconfig-a015-20211230
arc                  randconfig-r043-20211230
riscv                randconfig-r042-20211230
s390                 randconfig-r044-20211230
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20211228
mips                 randconfig-c004-20211228
powerpc              randconfig-c003-20211228
arm                  randconfig-c002-20211228
x86_64               randconfig-c007-20211228
i386                 randconfig-c001-20211228
x86_64               randconfig-a002-20211230
x86_64               randconfig-a001-20211230
x86_64               randconfig-a003-20211230
x86_64               randconfig-a006-20211230
x86_64               randconfig-a004-20211230
x86_64               randconfig-a005-20211230
i386                 randconfig-a001-20211230
i386                 randconfig-a005-20211230
i386                 randconfig-a004-20211230
i386                 randconfig-a002-20211230
i386                 randconfig-a006-20211230
i386                 randconfig-a003-20211230
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
i386                 randconfig-a012-20211228
i386                 randconfig-a011-20211228
i386                 randconfig-a014-20211228
i386                 randconfig-a016-20211228
i386                 randconfig-a013-20211228
i386                 randconfig-a015-20211228
x86_64               randconfig-a005-20211229
x86_64               randconfig-a001-20211229
x86_64               randconfig-a003-20211229
x86_64               randconfig-a006-20211229
x86_64               randconfig-a004-20211229
x86_64               randconfig-a002-20211229
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
hexagon              randconfig-r045-20211228
s390                 randconfig-r044-20211228
hexagon              randconfig-r041-20211230
hexagon              randconfig-r045-20211230

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
