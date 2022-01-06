Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F1648614B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jan 2022 09:12:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6F8C6FBCA;
	Thu,  6 Jan 2022 08:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lWdlBUzrTx_8; Thu,  6 Jan 2022 08:12:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95FE56FBC9;
	Thu,  6 Jan 2022 08:12:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D2161BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 08:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4969641631
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 08:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AHDWSSw7pVx8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jan 2022 08:12:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63DF64043D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jan 2022 08:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641456732; x=1672992732;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sY9OPfzKuSPsRDwxyeqil/68QR80aFkLp0W7v0TMHM4=;
 b=kcgxZVCtK9fUEY500huPi/gZ31o31AkkEkFM5pMO6cv3t21HHjVzl7U5
 u/EDhHFcGg7FHJ094OOg2dhei7OoV1lOFUQaH+7fmAIql+8571sRvXBnS
 eMoa23DdOgF1zJOXITrm6Ez/otAk0Fz5zxH9uLV4ehmg6yrI0WiN5dHPu
 ag5GHjbC7SzekJA6bVDflpJFTHwZXkbeRsOFw5U2MpwDyi90r80bA1l+K
 8lBO2O25EZecelZnKQlnKNNt5ssyU2wwyuu9rsyPGLphEgXdR3k6ctSCD
 h/HSloAL5en8lzmSzDro3ey0SezUKF909J7yQ9sEE98tvmB1pqo65p7Mo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242411367"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="242411367"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 00:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="488868333"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 06 Jan 2022 00:12:10 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n5NsX-000HUU-PV; Thu, 06 Jan 2022 08:12:09 +0000
Date: Thu, 06 Jan 2022 16:11:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61d6a42e.axswQpa73Au5FA98%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 af872b691926240fa5dcc6810acbdf053cd46ff2
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
branch HEAD: af872b691926240fa5dcc6810acbdf053cd46ff2  Merge tag 'ieee802154-for-net-2022-01-05' of git://git.kernel.org/pub/scm/linux/kernel/git/sschmidt/wpan

elapsed time: 727m

configs tested: 165
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220105
mips                        jmr3927_defconfig
arm                           h5000_defconfig
sh                            shmin_defconfig
ia64                            zx1_defconfig
arm                         axm55xx_defconfig
sh                   sh7724_generic_defconfig
mips                      fuloong2e_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                           se7705_defconfig
sh                 kfr2r09-romimage_defconfig
sh                            migor_defconfig
xtensa                  cadence_csp_defconfig
powerpc                    klondike_defconfig
parisc                generic-32bit_defconfig
sh                   sh7770_generic_defconfig
powerpc                        warp_defconfig
ia64                         bigsur_defconfig
arc                    vdk_hs38_smp_defconfig
arm                         vf610m4_defconfig
s390                       zfcpdump_defconfig
sh                      rts7751r2d1_defconfig
arm                          pxa3xx_defconfig
arm                          pxa910_defconfig
sh                          r7785rp_defconfig
sh                            titan_defconfig
powerpc                      tqm8xx_defconfig
h8300                     edosk2674_defconfig
m68k                          amiga_defconfig
arm                          iop32x_defconfig
powerpc                      makalu_defconfig
powerpc                      ppc6xx_defconfig
m68k                       m5275evb_defconfig
sh                   rts7751r2dplus_defconfig
arc                        nsim_700_defconfig
mips                         mpc30x_defconfig
mips                         cobalt_defconfig
arm                      jornada720_defconfig
mips                           gcw0_defconfig
openrisc                         alldefconfig
sh                           se7750_defconfig
m68k                        mvme16x_defconfig
parisc                           allyesconfig
sh                     magicpanelr2_defconfig
powerpc                       maple_defconfig
arm                       omap2plus_defconfig
arm64                            alldefconfig
arm                        mini2440_defconfig
sh                        dreamcast_defconfig
sh                          lboxre2_defconfig
powerpc                    sam440ep_defconfig
arm                         assabet_defconfig
s390                          debug_defconfig
sparc64                             defconfig
powerpc                     sequoia_defconfig
sh                         ecovec24_defconfig
arm                           sunxi_defconfig
arm                  randconfig-c002-20220105
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
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
x86_64               randconfig-a005-20220105
x86_64               randconfig-a001-20220105
x86_64               randconfig-a004-20220105
x86_64               randconfig-a006-20220105
x86_64               randconfig-a003-20220105
x86_64               randconfig-a002-20220105
i386                 randconfig-a003-20220105
i386                 randconfig-a005-20220105
i386                 randconfig-a004-20220105
i386                 randconfig-a006-20220105
i386                 randconfig-a002-20220105
i386                 randconfig-a001-20220105
x86_64               randconfig-a012-20220106
x86_64               randconfig-a015-20220106
x86_64               randconfig-a014-20220106
x86_64               randconfig-a013-20220106
x86_64               randconfig-a011-20220106
x86_64               randconfig-a016-20220106
s390                 randconfig-r044-20220106
arc                  randconfig-r043-20220106
riscv                randconfig-r042-20220106
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
mips                 randconfig-c004-20220105
arm                  randconfig-c002-20220105
i386                 randconfig-c001-20220105
riscv                randconfig-c006-20220105
powerpc              randconfig-c003-20220105
s390                 randconfig-c005-20220105
x86_64               randconfig-c007-20220105
mips                        workpad_defconfig
mips                          malta_defconfig
mips                           rs90_defconfig
powerpc                       ebony_defconfig
arm                           sama7_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
arm                          ixp4xx_defconfig
arm                       spear13xx_defconfig
x86_64               randconfig-a005-20220106
x86_64               randconfig-a001-20220106
x86_64               randconfig-a004-20220106
x86_64               randconfig-a006-20220106
x86_64               randconfig-a002-20220106
x86_64               randconfig-a003-20220106
x86_64               randconfig-a012-20220105
x86_64               randconfig-a015-20220105
x86_64               randconfig-a014-20220105
x86_64               randconfig-a013-20220105
x86_64               randconfig-a011-20220105
x86_64               randconfig-a016-20220105
i386                 randconfig-a012-20220105
i386                 randconfig-a016-20220105
i386                 randconfig-a015-20220105
i386                 randconfig-a014-20220105
i386                 randconfig-a011-20220105
i386                 randconfig-a013-20220105
hexagon              randconfig-r041-20220105
hexagon              randconfig-r045-20220105
riscv                randconfig-r042-20220105

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
