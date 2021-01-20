Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 991612FD15E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 14:43:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E1CC85F80;
	Wed, 20 Jan 2021 13:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lpLpKSyppRvF; Wed, 20 Jan 2021 13:43:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DB4285F8D;
	Wed, 20 Jan 2021 13:43:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2291BF377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 13:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 58C3085F7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 13:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rj4LTt6P8u3h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 13:43:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66F9985F5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 13:43:16 +0000 (UTC)
IronPort-SDR: wr6nT/T3l9tZBq9DklXL9zScDh86uQ8TGdIKpMH/i/Lxh3bFBV6x6UK+XU7Fn2air2Ehhn0c+X
 PFrvLvi/wCRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="179252466"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="179252466"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 05:43:15 -0800
IronPort-SDR: zRbNB8wJQI891EkaT8+wZBfQB65APhMn1iyrw9x0sRzzEwk9kRRKe5DtRQFz4KnCHrI4YWVbKZ
 dSm59wzQ/4jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="426899560"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2021 05:43:14 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l2DlR-0005om-LU; Wed, 20 Jan 2021 13:43:13 +0000
Date: Wed, 20 Jan 2021 21:42:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60083351.ngYOQ01tuO+RUDp3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 9f23de418f7e999cc48be915c514db9c54166c0e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 9f23de418f7e999cc48be915c514db9c54166c0e  Merge branch 'net-support-sctp-crc-csum-offload-for-tunneling-packets-in-some-drivers'

elapsed time: 841m

configs tested: 155
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                         ap325rxa_defconfig
c6x                        evmc6678_defconfig
arc                 nsimosci_hs_smp_defconfig
mips                          rm200_defconfig
arm                         s5pv210_defconfig
sh                              ul2_defconfig
mips                           gcw0_defconfig
openrisc                            defconfig
sh                        sh7763rdp_defconfig
powerpc                      bamboo_defconfig
sh                           sh2007_defconfig
sh                          polaris_defconfig
powerpc                      pasemi_defconfig
sparc64                             defconfig
arc                           tb10x_defconfig
m68k                        m5272c3_defconfig
c6x                        evmc6474_defconfig
powerpc                      mgcoge_defconfig
powerpc                 mpc8313_rdb_defconfig
riscv                            alldefconfig
m68k                            q40_defconfig
nios2                            allyesconfig
alpha                               defconfig
arm                        neponset_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                       holly_defconfig
h8300                    h8300h-sim_defconfig
mips                malta_kvm_guest_defconfig
m68k                         amcore_defconfig
mips                  decstation_64_defconfig
ia64                            zx1_defconfig
sh                           se7721_defconfig
xtensa                         virt_defconfig
sh                         apsh4a3a_defconfig
m68k                       m5249evb_defconfig
mips                      loongson3_defconfig
powerpc                     sbc8548_defconfig
i386                                defconfig
c6x                        evmc6472_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         cobalt_defconfig
sh                           se7206_defconfig
powerpc                 mpc8540_ads_defconfig
arc                    vdk_hs38_smp_defconfig
mips                        maltaup_defconfig
powerpc                       ppc64_defconfig
powerpc                        cell_defconfig
arm                           corgi_defconfig
m68k                        m5407c3_defconfig
m68k                          amiga_defconfig
powerpc                      cm5200_defconfig
arm                       omap2plus_defconfig
powerpc                     pq2fads_defconfig
powerpc                       eiger_defconfig
arc                              alldefconfig
mips                         tb0287_defconfig
arm                       aspeed_g4_defconfig
powerpc                       maple_defconfig
parisc                generic-64bit_defconfig
arm                            hisi_defconfig
mips                     loongson1b_defconfig
mips                           jazz_defconfig
mips                        omega2p_defconfig
powerpc                 canyonlands_defconfig
powerpc                      tqm8xx_defconfig
arm                            lart_defconfig
mips                     cu1000-neo_defconfig
arm                       cns3420vb_defconfig
um                             i386_defconfig
xtensa                           alldefconfig
riscv                    nommu_k210_defconfig
parisc                generic-32bit_defconfig
arm                             ezx_defconfig
arm                          pxa168_defconfig
riscv                          rv32_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                        spear6xx_defconfig
powerpc                     skiroot_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210120
i386                 randconfig-a002-20210120
i386                 randconfig-a004-20210120
i386                 randconfig-a006-20210120
i386                 randconfig-a005-20210120
i386                 randconfig-a003-20210120
x86_64               randconfig-a012-20210120
x86_64               randconfig-a015-20210120
x86_64               randconfig-a016-20210120
x86_64               randconfig-a011-20210120
x86_64               randconfig-a013-20210120
x86_64               randconfig-a014-20210120
i386                 randconfig-a013-20210120
i386                 randconfig-a011-20210120
i386                 randconfig-a012-20210120
i386                 randconfig-a014-20210120
i386                 randconfig-a015-20210120
i386                 randconfig-a016-20210120
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20210120
x86_64               randconfig-a003-20210120
x86_64               randconfig-a001-20210120
x86_64               randconfig-a005-20210120
x86_64               randconfig-a006-20210120
x86_64               randconfig-a004-20210120
x86_64               randconfig-a015-20210119
x86_64               randconfig-a013-20210119
x86_64               randconfig-a012-20210119
x86_64               randconfig-a016-20210119
x86_64               randconfig-a011-20210119
x86_64               randconfig-a014-20210119

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
