Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFA34C9F17
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 09:25:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90331410A3;
	Wed,  2 Mar 2022 08:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7QnFjQ7axA-t; Wed,  2 Mar 2022 08:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 846D6408B0;
	Wed,  2 Mar 2022 08:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 388241BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 08:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25AAE408AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 08:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V5ru6JhfsM8w for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 08:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8E5D40291
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 08:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646209496; x=1677745496;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=PvDvgj8zxMP5WqEOIkAqywLmPxUSWdfkhG9Vbg2J/0E=;
 b=h5tZngbLcoOqH0o7iqnGEOBtHkjS5Yd6+G1xWY+2jKBXIOuOC1EplWz/
 jnT13VC5IjmSmW4o3tYlG2hDFVkiwbAsLc7jNET0qO1EY1bzsDtIarAU3
 fXzqOvfucoR5UVHs+54gVFeR/SRqu1gGaskMhPT+6MMJibzzr1rTA1c2Q
 Cws0c7LnRq/Wd4PHO58UeNYZWqDjton1FqDGxpeihxfGQ1GcBbQorI5wF
 6rWl2nfhWaDA/dPG3Y2XyN6U2hcAPJn1fnHNk5DZ5UPmbEylAM7EE1+z3
 W9Tix7XX5o3qiTnELDRR94Uwkwfpatmn3KYm/kpK/AZPb1tQ9qQbsvxRQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="236852486"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="236852486"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 00:24:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="551143990"
Received: from lkp-server02.sh.intel.com (HELO e9605edfa585) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 00:24:54 -0800
Received: from kbuild by e9605edfa585 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nPKI1-0001Eb-Od; Wed, 02 Mar 2022 08:24:53 +0000
Date: Wed, 02 Mar 2022 16:24:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <621f29b0.SM93/Si5tmAIXYqS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 0a62b2098987ca690070eff2374eee126118af77
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 0a62b2098987ca690070eff2374eee126118af77  iavf: Remove non-inclusive language

elapsed time: 722m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
sh                          kfr2r09_defconfig
mips                     loongson1b_defconfig
powerpc                 mpc837x_mds_defconfig
sh                     magicpanelr2_defconfig
powerpc                         ps3_defconfig
arm                       multi_v4t_defconfig
m68k                          amiga_defconfig
arm                            pleb_defconfig
sh                        apsh4ad0a_defconfig
arm                          iop32x_defconfig
arc                    vdk_hs38_smp_defconfig
arm                     eseries_pxa_defconfig
mips                        vocore2_defconfig
powerpc                      mgcoge_defconfig
arm                          gemini_defconfig
sh                          polaris_defconfig
sh                        sh7757lcr_defconfig
sh                          urquell_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7724_defconfig
h8300                            alldefconfig
arm                       imx_v6_v7_defconfig
m68k                          multi_defconfig
arc                           tb10x_defconfig
microblaze                          defconfig
arm                  randconfig-c002-20220301
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                     mpc5200_defconfig
arm                                 defconfig
powerpc                  mpc866_ads_defconfig
powerpc                     powernv_defconfig
arm                     davinci_all_defconfig
powerpc                      pmac32_defconfig
mips                            e55_defconfig
powerpc                          g5_defconfig
powerpc                     mpc512x_defconfig
arm                        spear3xx_defconfig
powerpc                    ge_imp3a_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220301
hexagon              randconfig-r041-20220301
riscv                randconfig-r042-20220301

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
