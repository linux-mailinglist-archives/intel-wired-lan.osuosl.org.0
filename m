Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C0C481A8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Dec 2021 08:57:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E26081323;
	Thu, 30 Dec 2021 07:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4vEhdisZARi; Thu, 30 Dec 2021 07:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05F2081328;
	Thu, 30 Dec 2021 07:57:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C32161BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB5C781320
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8coSCbpkI1K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Dec 2021 07:57:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAC9581319
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640851067; x=1672387067;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CRK/AdPYn4MzJOWPWlx1xhTH+tTJL7+FONHk7FRd6uU=;
 b=IOdq/ggvOxkYXMCCLNtLsK76RY7s0s6mcXZDNR6iWXyHFSaZxgx9fdEl
 hZmNHI0iuYY6rlxeK74eF+Aza/lZYDNfqtZAVDeiXmehhBqmno9k4GTL/
 ww8DIFUeVdeqJ5dLuzJ0fal3jcSvKgjrRZIR7dhNmmo3yNP/vkFHPrOXs
 vAFWLSLYU06CO9d+I3IyUEfoizZcJnk/7ZnQTa7BcLN62skMsTrqALrwF
 IlYl9jAPlrOXDpyikbGbOaRtVFRekaL2Z6yd27xJHzCnuW89Ok/boGw+i
 oQE12veCbc/nErWUGOklyq6Q7IhpwXKJiw9jgYpJ9lNocKtq5r6HA6FhY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10212"; a="228944574"
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; d="scan'208";a="228944574"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2021 23:57:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; d="scan'208";a="524303675"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 29 Dec 2021 23:57:45 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2qJl-0009td-5n; Thu, 30 Dec 2021 07:57:45 +0000
Date: Thu, 30 Dec 2021 15:56:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61cd6648.qOHUXDgR6XJJ8uge%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 5bec7ca2be6955ca1aa0d7bae2b981de9b1c9844
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
branch HEAD: 5bec7ca2be6955ca1aa0d7bae2b981de9b1c9844  xsk: Initialise xskb free_list_node

elapsed time: 801m

configs tested: 240
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
arc                     haps_hs_smp_defconfig
mips                      malta_kvm_defconfig
arm                            pleb_defconfig
mips                        omega2p_defconfig
xtensa                  cadence_csp_defconfig
arm                         lpc18xx_defconfig
arm                     eseries_pxa_defconfig
arc                     nsimosci_hs_defconfig
sh                        edosk7705_defconfig
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
alpha                            alldefconfig
mips                      pic32mzda_defconfig
powerpc                        fsp2_defconfig
powerpc                  iss476-smp_defconfig
mips                malta_qemu_32r6_defconfig
arm                           sama7_defconfig
mips                        vocore2_defconfig
arm                      jornada720_defconfig
powerpc                      pcm030_defconfig
powerpc                 mpc832x_rdb_defconfig
ia64                            zx1_defconfig
powerpc                     ep8248e_defconfig
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
i386                             alldefconfig
arm                            qcom_defconfig
sh                             sh03_defconfig
powerpc                    klondike_defconfig
m68k                                defconfig
powerpc                      obs600_defconfig
powerpc                       holly_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                       eiger_defconfig
xtensa                          iss_defconfig
arm                       spear13xx_defconfig
mips                   sb1250_swarm_defconfig
openrisc                         alldefconfig
mips                     loongson1b_defconfig
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
powerpc                      mgcoge_defconfig
arm                  colibri_pxa270_defconfig
h8300                               defconfig
arm                        trizeps4_defconfig
mips                       rbtx49xx_defconfig
powerpc                  mpc866_ads_defconfig
parisc                           alldefconfig
mips                       bmips_be_defconfig
arm                             pxa_defconfig
arm                        vexpress_defconfig
powerpc                          allmodconfig
powerpc                      arches_defconfig
sparc                       sparc64_defconfig
powerpc                   microwatt_defconfig
powerpc                      ppc44x_defconfig
xtensa                  nommu_kc705_defconfig
m68k                          atari_defconfig
arm                         s5pv210_defconfig
arm                        mvebu_v7_defconfig
mips                         tb0226_defconfig
m68k                        stmark2_defconfig
arc                        nsimosci_defconfig
powerpc                      cm5200_defconfig
mips                           rs90_defconfig
arm                      pxa255-idp_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                     tqm8560_defconfig
arm                  randconfig-c002-20211229
arm                  randconfig-c002-20211230
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
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
s390                             allyesconfig
parisc                           allyesconfig
parisc                              defconfig
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
x86_64               randconfig-a005-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a004-20211228
x86_64               randconfig-a002-20211228
arc                  randconfig-r043-20211230
riscv                randconfig-r042-20211230
s390                 randconfig-r044-20211230
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a004-20211229
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228
hexagon              randconfig-r045-20211228
hexagon              randconfig-r041-20211230
hexagon              randconfig-r045-20211230

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
