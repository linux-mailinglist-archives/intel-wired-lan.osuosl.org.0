Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BEC443FB7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 11:00:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75F4980D5D;
	Wed,  3 Nov 2021 10:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqKpQ3bPHniC; Wed,  3 Nov 2021 10:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 617E280D0F;
	Wed,  3 Nov 2021 10:00:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CDBD1BF370
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 10:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A8BB40140
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 10:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kVyzR7DsRbU0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Nov 2021 10:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8F6D400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Nov 2021 10:00:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="292300449"
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="292300449"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 03:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,205,1631602800"; d="scan'208";a="599831507"
Received: from lkp-server02.sh.intel.com (HELO c20d8bc80006) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 03 Nov 2021 03:00:18 -0700
Received: from kbuild by c20d8bc80006 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1miD45-0005Sp-CO; Wed, 03 Nov 2021 10:00:17 +0000
Date: Wed, 03 Nov 2021 17:59:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61825d75.cazgj+fNI7N9p8Gf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 11d5a44cb7419a256a18b69c1b64c39e00987d3c
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
branch HEAD: 11d5a44cb7419a256a18b69c1b64c39e00987d3c  igc: Fix typo in i225 LTR functions

elapsed time: 722m

configs tested: 128
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
i386                 randconfig-c001-20211103
arm                         lpc18xx_defconfig
sh                         ecovec24_defconfig
mips                       lemote2f_defconfig
sh                          lboxre2_defconfig
m68k                          hp300_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     kmeter1_defconfig
mips                         rt305x_defconfig
powerpc                     pq2fads_defconfig
sh                          rsk7264_defconfig
m68k                       m5249evb_defconfig
mips                         tb0219_defconfig
h8300                               defconfig
sh                           se7619_defconfig
arm                            mps2_defconfig
arm                            zeus_defconfig
arm                         cm_x300_defconfig
arm                            hisi_defconfig
arm                          collie_defconfig
powerpc                 mpc8540_ads_defconfig
arm                        spear6xx_defconfig
powerpc                         wii_defconfig
mips                        vocore2_defconfig
sh                     magicpanelr2_defconfig
powerpc                    sam440ep_defconfig
arm                     eseries_pxa_defconfig
arm                       imx_v6_v7_defconfig
riscv                    nommu_virt_defconfig
h8300                    h8300h-sim_defconfig
arc                     haps_hs_smp_defconfig
arm                         s3c6400_defconfig
openrisc                 simple_smp_defconfig
mips                      maltaaprp_defconfig
sh                           se7206_defconfig
powerpc                 mpc8313_rdb_defconfig
s390                             alldefconfig
powerpc                 mpc837x_mds_defconfig
ia64                            zx1_defconfig
arm                            xcep_defconfig
x86_64                              defconfig
m68k                            mac_defconfig
arm                  randconfig-c002-20211103
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a012-20211103
x86_64               randconfig-a015-20211103
x86_64               randconfig-a016-20211103
x86_64               randconfig-a011-20211103
x86_64               randconfig-a013-20211103
x86_64               randconfig-a014-20211103
i386                 randconfig-a014-20211103
i386                 randconfig-a016-20211103
i386                 randconfig-a013-20211103
i386                 randconfig-a015-20211103
i386                 randconfig-a011-20211103
i386                 randconfig-a012-20211103
arc                  randconfig-r043-20211103
riscv                randconfig-r042-20211103
s390                 randconfig-r044-20211103
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
mips                 randconfig-c004-20211103
arm                  randconfig-c002-20211103
i386                 randconfig-c001-20211103
s390                 randconfig-c005-20211103
powerpc              randconfig-c003-20211103
riscv                randconfig-c006-20211103
x86_64               randconfig-c007-20211103
x86_64               randconfig-a006-20211103
x86_64               randconfig-a004-20211103
x86_64               randconfig-a001-20211103
x86_64               randconfig-a002-20211103
x86_64               randconfig-a005-20211103
x86_64               randconfig-a003-20211103
i386                 randconfig-a005-20211103
i386                 randconfig-a003-20211103
i386                 randconfig-a001-20211103
i386                 randconfig-a004-20211103
i386                 randconfig-a006-20211103
i386                 randconfig-a002-20211103
hexagon              randconfig-r041-20211103
hexagon              randconfig-r045-20211103

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
