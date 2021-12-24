Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B18A47ECA7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Dec 2021 08:26:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F06FD60B1F;
	Fri, 24 Dec 2021 07:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrmssSsXmG9a; Fri, 24 Dec 2021 07:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C782060B02;
	Fri, 24 Dec 2021 07:26:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 262AC1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 07:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1327F8139E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 07:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwlbf3fX4CkU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Dec 2021 07:26:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84EC9812DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 07:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640330806; x=1671866806;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mfZCbJWH7UebDofyzTcApkZtZNZ+BlqtRO4J82ptgTc=;
 b=SBQ0wPUPHOIGXfW1F9wL/GVcQtB2Iuw6/E5RMfIO/eGccVp3oTtDIVvH
 IQJU25mvqikCoM4Kj5TtIaOKf8iUOCBB4ockNeAUAImpO7CS9hAZHwx4R
 jNUMiExf87eekjFgHhH7EDFpLRl9+LUOFJY+ZxegIHGAU8fd2ysxs8PtV
 o/QpbBq8RhTho0NHg9z/5RbtVdiOc5f+pGKlQVyHrOlRXP/LB8bsdxSxD
 /PvfTjNAlIhUmRkwyuu+oszLnvM4IG5aah9MG+hCxTUbn8ATvdjjeAkN9
 TQNsNDXdaHQmnjXvRbnyRq7TbeP9vcQdXOduIVsBkxuJwTUvdz9apDaGL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="301705406"
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; d="scan'208";a="301705406"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 23:26:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; d="scan'208";a="607989303"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Dec 2021 23:26:44 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n0eyR-0002n1-DM; Fri, 24 Dec 2021 07:26:43 +0000
Date: Fri, 24 Dec 2021 15:26:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c5760d.3VhCZu1LL8Nx5Mu9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b55752036aa057dd75c06eeb2667ca16e4b137cb
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
branch HEAD: b55752036aa057dd75c06eeb2667ca16e4b137cb  i40e: Add a stat for tracking busy rx pages

elapsed time: 723m

configs tested: 145
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211223
powerpc                     mpc5200_defconfig
arm                       imx_v6_v7_defconfig
sh                   rts7751r2dplus_defconfig
sh                      rts7751r2d1_defconfig
arm                   milbeaut_m10v_defconfig
m68k                        mvme147_defconfig
powerpc                      mgcoge_defconfig
powerpc                    mvme5100_defconfig
m68k                         amcore_defconfig
m68k                            q40_defconfig
arc                      axs103_smp_defconfig
arm                            mmp2_defconfig
arm                           omap1_defconfig
mips                            e55_defconfig
alpha                            alldefconfig
sh                           se7343_defconfig
arm                       spear13xx_defconfig
arm                      integrator_defconfig
mips                        vocore2_defconfig
arm                          simpad_defconfig
powerpc                      ep88xc_defconfig
mips                     decstation_defconfig
arc                            hsdk_defconfig
powerpc                      pmac32_defconfig
arm                        oxnas_v6_defconfig
powerpc                     ppa8548_defconfig
mips                         tb0219_defconfig
powerpc                      pcm030_defconfig
powerpc                    amigaone_defconfig
powerpc                      arches_defconfig
arm                           sunxi_defconfig
sh                        apsh4ad0a_defconfig
arm                           corgi_defconfig
powerpc                     redwood_defconfig
arm                         lubbock_defconfig
arm                          iop32x_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 linkstation_defconfig
arm                           u8500_defconfig
arm                            xcep_defconfig
um                               alldefconfig
mips                 decstation_r4k_defconfig
mips                         tb0287_defconfig
powerpc                 mpc832x_mds_defconfig
arm                       cns3420vb_defconfig
mips                         cobalt_defconfig
mips                     loongson1b_defconfig
sh                           se7724_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                           se7721_defconfig
arm                     eseries_pxa_defconfig
powerpc64                           defconfig
arm                        neponset_defconfig
arm                         lpc18xx_defconfig
sh                ecovec24-romimage_defconfig
m68k                            mac_defconfig
arm                          exynos_defconfig
sh                          lboxre2_defconfig
nios2                               defconfig
arm                         palmz72_defconfig
arm                  randconfig-c002-20211223
arm                  randconfig-c002-20211224
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
s390                             allmodconfig
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
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a013-20211223
x86_64               randconfig-a014-20211223
x86_64               randconfig-a011-20211223
x86_64               randconfig-a012-20211223
x86_64               randconfig-a015-20211223
x86_64               randconfig-a016-20211223
i386                 randconfig-a012-20211223
i386                 randconfig-a011-20211223
i386                 randconfig-a014-20211223
i386                 randconfig-a016-20211223
i386                 randconfig-a015-20211223
i386                 randconfig-a013-20211223
arc                  randconfig-r043-20211223
s390                 randconfig-r044-20211223
riscv                randconfig-r042-20211223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20211223
x86_64               randconfig-a003-20211223
x86_64               randconfig-a005-20211223
x86_64               randconfig-a006-20211223
x86_64               randconfig-a004-20211223
x86_64               randconfig-a002-20211223
i386                 randconfig-a006-20211223
i386                 randconfig-a004-20211223
i386                 randconfig-a002-20211223
i386                 randconfig-a003-20211223
i386                 randconfig-a005-20211223
i386                 randconfig-a001-20211223
hexagon              randconfig-r041-20211223
hexagon              randconfig-r045-20211223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
