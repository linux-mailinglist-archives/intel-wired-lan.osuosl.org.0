Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607E54A9A68
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 14:55:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D13C94052A;
	Fri,  4 Feb 2022 13:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2u8Dc-Vp3riK; Fri,  4 Feb 2022 13:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1549940577;
	Fri,  4 Feb 2022 13:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A05131BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 13:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8AFCE82849
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 13:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9kPma_0uoVX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 13:55:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A9E88309A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 13:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643982939; x=1675518939;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ng1SIT13NofRlWB9LXWbA23CA3XrEh+ytgTRnPSnC/Y=;
 b=APf/FekDMaC4RwW+o//dk8WZkdz5S/KGRVgEvEjxgvhcVhPvSo2P4FgZ
 +3KGPAu2yrm0UoSOL7yo4H/+uF8ppgBpI4VXecHr+ezgZ4B5799yFmek9
 aCcqOMPjsmrwepqq7990CpM3UDZTL+XmFJKKugTwO6iDBnL7kRk8H92yf
 4gu7mXdTuJG3OI3hnvU/o0r5E5ZWmwh3hDn6tiW61GGZFK/DtnxQVBbOv
 vuooJVTz8WFu08c/HtV0atO8GVusLnIliB3w6Uzj6uU2FZTVKnHsepNtE
 ZilxWIrjYj6nBjTA4af+1bgLiNGiUepQh0CO6OYp/JW2v6xO7mvY/8qFO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="245959456"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="245959456"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 05:55:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="600233011"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 04 Feb 2022 05:55:26 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nFz3e-000Xgf-3P; Fri, 04 Feb 2022 13:55:26 +0000
Date: Fri, 04 Feb 2022 21:55:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61fd3036.Ep2W0eHCARc7Bt2z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c6c26f68dec4683469f385e543b638dc81b7b9d1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: c6c26f68dec4683469f385e543b638dc81b7b9d1  iavf: Fix adopting new combined setting

elapsed time: 727m

configs tested: 149
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220131
powerpc              randconfig-c003-20220131
i386                          randconfig-c001
sh                   secureedge5410_defconfig
arc                        nsim_700_defconfig
mips                           ci20_defconfig
sh                           se7750_defconfig
sh                         microdev_defconfig
arc                            hsdk_defconfig
arm                         vf610m4_defconfig
parisc                           allyesconfig
arc                          axs101_defconfig
ia64                             allmodconfig
powerpc                      ep88xc_defconfig
mips                          rb532_defconfig
arm                            mps2_defconfig
arm                           sunxi_defconfig
m68k                       m5249evb_defconfig
sh                        apsh4ad0a_defconfig
mips                         mpc30x_defconfig
arm                         assabet_defconfig
sh                           se7712_defconfig
powerpc                     mpc83xx_defconfig
powerpc                     stx_gp3_defconfig
mips                         bigsur_defconfig
powerpc                   currituck_defconfig
powerpc                     tqm8548_defconfig
powerpc                 canyonlands_defconfig
openrisc                  or1klitex_defconfig
sh                           se7343_defconfig
sh                            shmin_defconfig
xtensa                    smp_lx200_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                ecovec24-romimage_defconfig
arm                             rpc_defconfig
arm                             pxa_defconfig
sh                             espt_defconfig
mips                           ip32_defconfig
microblaze                      mmu_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                     magicpanelr2_defconfig
mips                    maltaup_xpa_defconfig
openrisc                 simple_smp_defconfig
powerpc                     rainier_defconfig
nios2                         10m50_defconfig
ia64                         bigsur_defconfig
um                                  defconfig
arm                         nhk8815_defconfig
arm                  randconfig-c002-20220202
arm                  randconfig-c002-20220130
arm                  randconfig-c002-20220131
ia64                                defconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
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
x86_64               randconfig-a004-20220131
x86_64               randconfig-a003-20220131
x86_64               randconfig-a001-20220131
x86_64               randconfig-a006-20220131
x86_64               randconfig-a005-20220131
x86_64               randconfig-a002-20220131
i386                 randconfig-a006-20220131
i386                 randconfig-a005-20220131
i386                 randconfig-a003-20220131
i386                 randconfig-a002-20220131
i386                 randconfig-a001-20220131
i386                 randconfig-a004-20220131
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
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
x86_64                           allyesconfig
mips                          ath79_defconfig
powerpc                     ppa8548_defconfig
powerpc                      obs600_defconfig
arm                         socfpga_defconfig
powerpc                 mpc832x_mds_defconfig
arm                          pcm027_defconfig
arm                           spitz_defconfig
mips                        bcm63xx_defconfig
riscv                             allnoconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a013-20220131
x86_64               randconfig-a015-20220131
x86_64               randconfig-a014-20220131
x86_64               randconfig-a016-20220131
x86_64               randconfig-a011-20220131
x86_64               randconfig-a012-20220131
i386                 randconfig-a011-20220131
i386                 randconfig-a013-20220131
i386                 randconfig-a014-20220131
i386                 randconfig-a012-20220131
i386                 randconfig-a015-20220131
i386                 randconfig-a016-20220131
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
riscv                randconfig-r042-20220131
hexagon              randconfig-r045-20220131
hexagon              randconfig-r041-20220131
hexagon              randconfig-r045-20220130
hexagon              randconfig-r041-20220130

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
