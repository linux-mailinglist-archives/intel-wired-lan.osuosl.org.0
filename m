Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4873B9CA6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 08:56:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CB5583C34;
	Fri,  2 Jul 2021 06:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DkFiT4V-F08p; Fri,  2 Jul 2021 06:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 431D783CBF;
	Fri,  2 Jul 2021 06:56:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2299A1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 06:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1AD7483C1F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 06:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z318CDr2WYCv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 06:56:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A93D683C30
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 06:56:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="294329471"
X-IronPort-AV: E=Sophos;i="5.83,316,1616482800"; d="scan'208";a="294329471"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 23:56:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,316,1616482800"; d="scan'208";a="644758647"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jul 2021 23:56:29 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lzD6C-000Ax4-TI; Fri, 02 Jul 2021 06:56:28 +0000
Date: Fri, 02 Jul 2021 14:56:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60deb883.EY6vZqqNjof6l9wt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 382a7c20d9253bcd5715789b8179528d0f3de72c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 382a7c20d9253bcd5715789b8179528d0f3de72c  igb: Fix position of assignment to *ring

elapsed time: 725m

configs tested: 124
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                      fuloong2e_defconfig
arm                         vf610m4_defconfig
sh                           se7619_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                           se7780_defconfig
powerpc                    sam440ep_defconfig
powerpc                     powernv_defconfig
powerpc                      acadia_defconfig
um                                  defconfig
nds32                               defconfig
arm                           omap1_defconfig
mips                        nlm_xlr_defconfig
csky                                defconfig
alpha                               defconfig
sh                           se7722_defconfig
sh                         ap325rxa_defconfig
mips                     decstation_defconfig
sh                        edosk7760_defconfig
arm                        magician_defconfig
sh                          kfr2r09_defconfig
mips                      bmips_stb_defconfig
powerpc                          g5_defconfig
mips                       bmips_be_defconfig
arm                          ixp4xx_defconfig
arm                        oxnas_v6_defconfig
sh                          r7780mp_defconfig
arc                        nsim_700_defconfig
arm                            hisi_defconfig
h8300                    h8300h-sim_defconfig
mips                           mtx1_defconfig
powerpc                       ppc64_defconfig
arm                       versatile_defconfig
mips                           ip27_defconfig
mips                         tb0226_defconfig
powerpc                 canyonlands_defconfig
xtensa                              defconfig
sh                          rsk7203_defconfig
sh                           se7724_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                        sh7785lcr_defconfig
arm                              alldefconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210630
x86_64               randconfig-a001-20210630
x86_64               randconfig-a004-20210630
x86_64               randconfig-a005-20210630
x86_64               randconfig-a006-20210630
x86_64               randconfig-a003-20210630
i386                 randconfig-a004-20210630
i386                 randconfig-a001-20210630
i386                 randconfig-a003-20210630
i386                 randconfig-a002-20210630
i386                 randconfig-a005-20210630
i386                 randconfig-a006-20210630
i386                 randconfig-a015-20210701
i386                 randconfig-a016-20210701
i386                 randconfig-a011-20210701
i386                 randconfig-a012-20210701
i386                 randconfig-a013-20210701
i386                 randconfig-a014-20210701
i386                 randconfig-a014-20210630
i386                 randconfig-a011-20210630
i386                 randconfig-a016-20210630
i386                 randconfig-a012-20210630
i386                 randconfig-a013-20210630
i386                 randconfig-a015-20210630
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
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210630
x86_64               randconfig-b001-20210702
x86_64               randconfig-a012-20210630
x86_64               randconfig-a015-20210630
x86_64               randconfig-a016-20210630
x86_64               randconfig-a013-20210630
x86_64               randconfig-a011-20210630
x86_64               randconfig-a014-20210630

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
