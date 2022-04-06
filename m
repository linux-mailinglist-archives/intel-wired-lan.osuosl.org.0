Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7874F5682
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 08:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 645AA81A73;
	Wed,  6 Apr 2022 06:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2vXmP8gnqwB8; Wed,  6 Apr 2022 06:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 552AB817AC;
	Wed,  6 Apr 2022 06:31:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7801BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 06:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67ED640338
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 06:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6Lz3P9wXDzo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 06:31:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 101E8402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 06:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649226671; x=1680762671;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qIFtweWT61ncCh+BkECY9dAWw4X+3C6ouk+ku67NAyk=;
 b=XQSpY083aZRPpiASuadp9MvLKHgcMbOINWLmU9GMvU2bgAQxb34XJuo4
 NBeinffFWGEfugHoyoSeUYHRzx7ETB1C/WlWpb86/U7VivG7015wcTC8y
 iNkLL/Bb8wj3DvWEeDt/uV5MZVAyq9ljl5vsfp/k0PXhJhRf0vb/6/1Z6
 J3FEBXSCAyrq2bCDU3H4iVTpIt2Eo35TKM9DriPMhdmNKfb+QjMCKjyKp
 ZD+tWxoDGWD1BfA61JaR6/866FSuZy6Zm7Prnv20fHEsO0TfoLDv64/ye
 flsnK4eeJX7L9kK0Hh6MNflcycPNF2Dz1v+09VtSXXFOw2CYfrC9KrwTv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="243103590"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="243103590"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 23:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="524329083"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 05 Apr 2022 23:30:50 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbzBq-00048P-40;
 Wed, 06 Apr 2022 06:30:50 +0000
Date: Wed, 06 Apr 2022 14:30:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <624d3395.+SX8JdiaAS5CNhzD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 e19778e6c911691856447c3bf9617f00b3e1347f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: e19778e6c911691856447c3bf9617f00b3e1347f  ice: clear cmd_type_offset_bsz for TX rings

elapsed time: 724m

configs tested: 131
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
m68k                        m5407c3_defconfig
powerpc                     pq2fads_defconfig
sparc64                          alldefconfig
m68k                            q40_defconfig
arm                           tegra_defconfig
arc                            hsdk_defconfig
arm                        shmobile_defconfig
m68k                        mvme16x_defconfig
riscv                            allmodconfig
mips                  maltasmvp_eva_defconfig
sparc                       sparc32_defconfig
sh                           se7722_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm8548_defconfig
i386                             alldefconfig
arm                        spear6xx_defconfig
m68k                       bvme6000_defconfig
m68k                       m5249evb_defconfig
ia64                        generic_defconfig
arm                           viper_defconfig
powerpc                     tqm8541_defconfig
xtensa                    smp_lx200_defconfig
arm                          exynos_defconfig
openrisc                            defconfig
sh                            shmin_defconfig
sh                            migor_defconfig
sh                      rts7751r2d1_defconfig
openrisc                  or1klitex_defconfig
arc                          axs101_defconfig
m68k                                defconfig
sh                     magicpanelr2_defconfig
powerpc                 mpc837x_mds_defconfig
sparc                       sparc64_defconfig
arm                          iop32x_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                        mvebu_v7_defconfig
sh                 kfr2r09-romimage_defconfig
mips                           xway_defconfig
xtensa                    xip_kc705_defconfig
mips                          rb532_defconfig
m68k                        m5307c3_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220405
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220405
riscv                randconfig-c006-20220405
mips                 randconfig-c004-20220405
arm                  randconfig-c002-20220405
arm                       mainstone_defconfig
arm                       spear13xx_defconfig
powerpc                        fsp2_defconfig
arm                           sama7_defconfig
powerpc                   microwatt_defconfig
riscv                            alldefconfig
arm                      tct_hammer_defconfig
powerpc                  mpc885_ads_defconfig
arm                         shannon_defconfig
powerpc                       ebony_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220405
riscv                randconfig-r042-20220405
hexagon              randconfig-r041-20220405

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
