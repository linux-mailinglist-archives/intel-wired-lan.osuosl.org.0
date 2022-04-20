Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D34508796
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 13:58:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1563D418C7;
	Wed, 20 Apr 2022 11:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WT3uFm8fEMzu; Wed, 20 Apr 2022 11:58:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4CDA41825;
	Wed, 20 Apr 2022 11:58:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A46791BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92A0E82A0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wYpmh-AX0F-A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 11:58:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FC34818C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 11:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650455924; x=1681991924;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nq5VduGjTud4eEq8thrihJRbAQ9QDSeyYuP8tHm0Q7s=;
 b=UZavO9ar5/04PwlTkGtMRhBRZAPqJvUcwPYm1pwlCJuVCBVEWwx88j08
 PTKuDR3eQbyyPynDgezSR0DTnY6obgnndaoRg1mNVS06K6tDs0Nrf0CmD
 zcLAasCuofF+jMbVe+8LLXHULsDUDUrj2D7jp2+TP3ww/7fXguoGm6eD+
 h9IGYLXKX3KgvtgaJg9NYKumf0k7AjNGEFGcRWDYNmV3De7Gp3wDXOkwX
 GlOCQYPAlWZyRcqJc19T5JyvvQFa+FJc/SaVLcUEcnDqAALDdhGW7IhOu
 5YBszwHIB40ftP0JxKKh/81n6grXzrWsV71iW0D9Z3FcZ1fSiSqhYS5QV Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263470257"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="263470257"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 04:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="562080354"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Apr 2022 04:58:23 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nh8yU-0006yQ-Gf;
 Wed, 20 Apr 2022 11:58:22 +0000
Date: Wed, 20 Apr 2022 19:57:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <625ff542.O9cRIjodvggNwj1x%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 99c07327ae11e24886d552dddbe4537bfca2765d
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
branch HEAD: 99c07327ae11e24886d552dddbe4537bfca2765d  netlink: reset network and mac headers in netlink_dump()

elapsed time: 1341m

configs tested: 137
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220420
sh                              ul2_defconfig
arm                       aspeed_g5_defconfig
nios2                               defconfig
nios2                            alldefconfig
riscv             nommu_k210_sdcard_defconfig
mips                        vocore2_defconfig
powerpc                        warp_defconfig
sh                     magicpanelr2_defconfig
ia64                         bigsur_defconfig
arm                        keystone_defconfig
powerpc                     redwood_defconfig
mips                     loongson1b_defconfig
m68k                         amcore_defconfig
s390                                defconfig
powerpc                      makalu_defconfig
ia64                        generic_defconfig
mips                            ar7_defconfig
xtensa                    xip_kc705_defconfig
sh                           se7721_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                        mvme16x_defconfig
arc                            hsdk_defconfig
mips                       bmips_be_defconfig
mips                      loongson3_defconfig
arc                        nsimosci_defconfig
sh                            hp6xx_defconfig
microblaze                          defconfig
sh                           se7722_defconfig
i386                                defconfig
xtensa                       common_defconfig
m68k                        mvme147_defconfig
ia64                             alldefconfig
sh                        dreamcast_defconfig
sh                   rts7751r2dplus_defconfig
mips                         cobalt_defconfig
arc                     nsimosci_hs_defconfig
arm                           u8500_defconfig
sh                           sh2007_defconfig
csky                                defconfig
sh                        apsh4ad0a_defconfig
sh                          r7785rp_defconfig
arm                        shmobile_defconfig
m68k                        m5307c3_defconfig
arm                        mvebu_v7_defconfig
powerpc                     asp8347_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220420
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
arc                              allyesconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220419
s390                 randconfig-r044-20220419
arc                  randconfig-r043-20220419
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3

clang tested configs:
riscv                randconfig-c006-20220420
mips                 randconfig-c004-20220420
x86_64                        randconfig-c007
i386                          randconfig-c001
s390                 randconfig-c005-20220420
arm                  randconfig-c002-20220420
powerpc              randconfig-c003-20220420
mips                        qi_lb60_defconfig
arm                         s3c2410_defconfig
powerpc                    socrates_defconfig
mips                           ip22_defconfig
arm                         shannon_defconfig
powerpc                      katmai_defconfig
arm                       mainstone_defconfig
powerpc                     ksi8560_defconfig
powerpc                  mpc885_ads_defconfig
arm                         mv78xx0_defconfig
powerpc                      ppc64e_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220420
riscv                randconfig-r042-20220420
hexagon              randconfig-r045-20220420
hexagon              randconfig-r041-20220419
hexagon              randconfig-r045-20220419

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
