Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A81144742CB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 13:40:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AEF6813D2;
	Tue, 14 Dec 2021 12:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4y4AUGnmYEHS; Tue, 14 Dec 2021 12:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14C25813D0;
	Tue, 14 Dec 2021 12:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C6441BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5892040373
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H9_s8F_4th67 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 12:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E2CA40182
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 12:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639485615; x=1671021615;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Hyf26DIB1TXpXh/wYwkD2kDRyxYdrejrRydfJuPwamA=;
 b=hQuzYUF0J1QFWWL/r5EGh8lOdkU8MH3//yeWxi02pIIz6HBmEk3ahqAe
 VAluO9OCRB5zSL1MKc00SFCVAZ8oEy2d8L5rGQ6gRIOLpOo4NAOT2WVO7
 egad3JPbCE7wIP0k7Pa0qdBqSkSn3PQ37pOsJE1DJu9eoQLmi4Mk8aM/m
 /ohfBbPat+8k4FSZhRh65F6NXmKMVZ6d2FrCtOPPdyTTS6mJ4bCmnkBZD
 OqBDSY/Gzq8I0oi/mP4eE8bkwazQjIx9p6cJQrfIrYViukZeDoQs+Y0EI
 TKt0LBeWy/5sDsWJTn6bppTR+zvDsI1WHwgzrfJd2f7VvugVEvXKBA/Fu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299747540"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="299747540"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 04:40:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="614251718"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 14 Dec 2021 04:40:08 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mx76F-0000IO-Pc; Tue, 14 Dec 2021 12:40:07 +0000
Date: Tue, 14 Dec 2021 20:39:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61b89090.xPZ8fwHMneB1ksUf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 fe523d7c9a8332855376ad5eb1aa301091129ba4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: fe523d7c9a8332855376ad5eb1aa301091129ba4  iavf: do not override the adapter state in the watchdog task (again)

elapsed time: 725m

configs tested: 169
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211214
i386                 randconfig-c001-20211213
sh                           se7705_defconfig
arc                              allyesconfig
arm                          gemini_defconfig
powerpc                      walnut_defconfig
powerpc                      cm5200_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                          landisk_defconfig
powerpc                         wii_defconfig
powerpc                      acadia_defconfig
arm                        magician_defconfig
arm                        oxnas_v6_defconfig
arc                        vdk_hs38_defconfig
powerpc                     pq2fads_defconfig
arm                           h5000_defconfig
powerpc                 mpc837x_mds_defconfig
openrisc                 simple_smp_defconfig
mips                  maltasmvp_eva_defconfig
mips                     loongson1c_defconfig
arm                        mini2440_defconfig
xtensa                  audio_kc705_defconfig
arm                         orion5x_defconfig
arm                         hackkit_defconfig
xtensa                    xip_kc705_defconfig
mips                      bmips_stb_defconfig
sh                   secureedge5410_defconfig
sh                   sh7770_generic_defconfig
arm                     davinci_all_defconfig
powerpc                    ge_imp3a_defconfig
mips                         db1xxx_defconfig
arm                            hisi_defconfig
powerpc                  iss476-smp_defconfig
arm                         cm_x300_defconfig
mips                           gcw0_defconfig
arm                             mxs_defconfig
powerpc                     tqm8555_defconfig
sh                        apsh4ad0a_defconfig
arm                          imote2_defconfig
i386                             alldefconfig
sh                         ap325rxa_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                      ppc6xx_defconfig
arm                        shmobile_defconfig
arc                 nsimosci_hs_smp_defconfig
xtensa                    smp_lx200_defconfig
i386                                defconfig
arm                         assabet_defconfig
h8300                               defconfig
sh                          polaris_defconfig
mips                           mtx1_defconfig
powerpc                     ksi8560_defconfig
sh                           se7721_defconfig
mips                         tb0287_defconfig
arm                         vf610m4_defconfig
powerpc                   currituck_defconfig
powerpc                         ps3_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7206_defconfig
arc                     haps_hs_smp_defconfig
powerpc                 mpc832x_mds_defconfig
nds32                            alldefconfig
sh                           se7712_defconfig
m68k                        mvme147_defconfig
powerpc                     kilauea_defconfig
sh                        dreamcast_defconfig
powerpc                     tqm8540_defconfig
powerpc64                        alldefconfig
arm                  randconfig-c002-20211213
arm                  randconfig-c002-20211214
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211214
x86_64               randconfig-a005-20211214
x86_64               randconfig-a001-20211214
x86_64               randconfig-a002-20211214
x86_64               randconfig-a003-20211214
x86_64               randconfig-a004-20211214
i386                 randconfig-a001-20211214
i386                 randconfig-a002-20211214
i386                 randconfig-a005-20211214
i386                 randconfig-a003-20211214
i386                 randconfig-a006-20211214
i386                 randconfig-a004-20211214
x86_64               randconfig-a011-20211213
x86_64               randconfig-a012-20211213
x86_64               randconfig-a014-20211213
x86_64               randconfig-a013-20211213
x86_64               randconfig-a015-20211213
x86_64               randconfig-a016-20211213
i386                 randconfig-a013-20211213
i386                 randconfig-a011-20211213
i386                 randconfig-a016-20211213
i386                 randconfig-a014-20211213
i386                 randconfig-a015-20211213
i386                 randconfig-a012-20211213
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c007-20211213
arm                  randconfig-c002-20211213
riscv                randconfig-c006-20211213
mips                 randconfig-c004-20211213
i386                 randconfig-c001-20211213
s390                 randconfig-c005-20211213
powerpc              randconfig-c003-20211213
x86_64               randconfig-a011-20211214
x86_64               randconfig-a014-20211214
x86_64               randconfig-a012-20211214
x86_64               randconfig-a013-20211214
x86_64               randconfig-a016-20211214
x86_64               randconfig-a015-20211214
i386                 randconfig-a013-20211214
i386                 randconfig-a011-20211214
i386                 randconfig-a016-20211214
i386                 randconfig-a014-20211214
i386                 randconfig-a015-20211214
i386                 randconfig-a012-20211214
hexagon              randconfig-r045-20211214
s390                 randconfig-r044-20211214
riscv                randconfig-r042-20211214
hexagon              randconfig-r041-20211214
hexagon              randconfig-r045-20211213
hexagon              randconfig-r041-20211213

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
