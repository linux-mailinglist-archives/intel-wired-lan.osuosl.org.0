Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4F73F57C2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 07:55:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 903EE40534;
	Tue, 24 Aug 2021 05:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXjezw3pGeJW; Tue, 24 Aug 2021 05:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85EFA40523;
	Tue, 24 Aug 2021 05:55:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD8961BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 05:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8207607EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 05:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GKlffnIqym6J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 05:54:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8B8460730
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 05:54:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204438640"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="204438640"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 22:54:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="597464565"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2021 22:54:56 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mIPOh-0000MT-VN; Tue, 24 Aug 2021 05:54:55 +0000
Date: Tue, 24 Aug 2021 13:54:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <612489a2.Gb5NunF2xKtrze64%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 4051f68318ca9f3d3becef3b54e70ad2c146df97
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
branch HEAD: 4051f68318ca9f3d3becef3b54e70ad2c146df97  e1000e: Do not take care about recovery NVM checksum

elapsed time: 5084m

configs tested: 121
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20210821
mips                           ip28_defconfig
arm                            qcom_defconfig
mips                            ar7_defconfig
powerpc                     rainier_defconfig
sh                      rts7751r2d1_defconfig
m68k                             allmodconfig
mips                          rb532_defconfig
arm                         lpc32xx_defconfig
arm                           tegra_defconfig
arm                        multi_v7_defconfig
arm                        clps711x_defconfig
mips                         tb0219_defconfig
powerpc                 mpc8540_ads_defconfig
arm                         palmz72_defconfig
sh                             shx3_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                         socfpga_defconfig
powerpc64                           defconfig
mips                         db1xxx_defconfig
mips                    maltaup_xpa_defconfig
sh                        dreamcast_defconfig
m68k                          multi_defconfig
nios2                            alldefconfig
sh                        sh7763rdp_defconfig
arm                           u8500_defconfig
xtensa                              defconfig
sh                        edosk7705_defconfig
powerpc                     pq2fads_defconfig
arm                            pleb_defconfig
riscv                    nommu_virt_defconfig
arm                          badge4_defconfig
arc                     nsimosci_hs_defconfig
powerpc                      ppc44x_defconfig
sh                             sh03_defconfig
arm                            xcep_defconfig
sh                            migor_defconfig
arm                         orion5x_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
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
i386                 randconfig-a006-20210820
i386                 randconfig-a001-20210820
i386                 randconfig-a002-20210820
i386                 randconfig-a005-20210820
i386                 randconfig-a003-20210820
i386                 randconfig-a004-20210820
x86_64               randconfig-a005-20210820
x86_64               randconfig-a006-20210820
x86_64               randconfig-a001-20210820
x86_64               randconfig-a003-20210820
x86_64               randconfig-a004-20210820
x86_64               randconfig-a002-20210820
x86_64               randconfig-a014-20210821
x86_64               randconfig-a016-20210821
x86_64               randconfig-a015-20210821
x86_64               randconfig-a013-20210821
x86_64               randconfig-a012-20210821
x86_64               randconfig-a011-20210821
arc                  randconfig-r043-20210821
riscv                randconfig-r042-20210821
s390                 randconfig-r044-20210821
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20210821
x86_64               randconfig-a001-20210821
x86_64               randconfig-a006-20210821
x86_64               randconfig-a003-20210821
x86_64               randconfig-a004-20210821
x86_64               randconfig-a002-20210821
i386                 randconfig-a006-20210821
i386                 randconfig-a001-20210821
i386                 randconfig-a002-20210821
i386                 randconfig-a005-20210821
i386                 randconfig-a004-20210821
i386                 randconfig-a003-20210821

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
