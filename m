Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FAB426387
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 06:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A51B86080F;
	Fri,  8 Oct 2021 04:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0WK_VrJj6mMa; Fri,  8 Oct 2021 04:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79AAB6080B;
	Fri,  8 Oct 2021 04:04:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 128B21BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 04:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA11240414
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 04:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EeXKFQIMlda2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Oct 2021 04:04:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EF7640405
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Oct 2021 04:04:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226380531"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="226380531"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 21:04:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="489295668"
Received: from lkp-server01.sh.intel.com (HELO 72c3bd3cf19c) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2021 21:04:27 -0700
Received: from kbuild by 72c3bd3cf19c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mYh7S-00081D-Jp; Fri, 08 Oct 2021 04:04:26 +0000
Date: Fri, 08 Oct 2021 12:04:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <615fc344.iVUIXSVwdO3RjvIe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 8d6c414cd2fb74aa6812e9bfec6178f8246c4f3a
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
branch HEAD: 8d6c414cd2fb74aa6812e9bfec6178f8246c4f3a  net: prefer socket bound to interface when not in VRF

elapsed time: 798m

configs tested: 124
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allmodconfig
arm                              allyesconfig
powerpc                   motionpro_defconfig
arc                 nsimosci_hs_smp_defconfig
m68k                          atari_defconfig
powerpc                      ppc40x_defconfig
powerpc                     stx_gp3_defconfig
m68k                          multi_defconfig
sh                           se7722_defconfig
sparc                            allyesconfig
sh                           sh2007_defconfig
arm                         orion5x_defconfig
sh                          landisk_defconfig
sh                         microdev_defconfig
powerpc                       ppc64_defconfig
mips                          ath25_defconfig
arm                          collie_defconfig
s390                       zfcpdump_defconfig
m68k                       m5475evb_defconfig
sparc                            alldefconfig
sparc                       sparc64_defconfig
sh                        sh7757lcr_defconfig
arc                          axs101_defconfig
sh                          kfr2r09_defconfig
mips                        maltaup_defconfig
mips                      loongson3_defconfig
powerpc                         ps3_defconfig
h8300                            allyesconfig
powerpc                      pcm030_defconfig
powerpc                      pasemi_defconfig
powerpc64                           defconfig
mips                       capcella_defconfig
arm                          moxart_defconfig
arm                           sama5_defconfig
arc                     nsimosci_hs_defconfig
m68k                        stmark2_defconfig
arm                     davinci_all_defconfig
sh                          polaris_defconfig
xtensa                          iss_defconfig
arm                       multi_v4t_defconfig
powerpc                     ksi8560_defconfig
mips                        bcm63xx_defconfig
x86_64               randconfig-c001-20211003
i386                 randconfig-c001-20211003
arm                  randconfig-c002-20211003
x86_64               randconfig-c001-20211004
i386                 randconfig-c001-20211004
arm                  randconfig-c002-20211004
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
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
x86_64               randconfig-a015-20211004
x86_64               randconfig-a012-20211004
x86_64               randconfig-a016-20211004
x86_64               randconfig-a014-20211004
x86_64               randconfig-a013-20211004
x86_64               randconfig-a011-20211004
i386                 randconfig-a013-20211004
i386                 randconfig-a016-20211004
i386                 randconfig-a014-20211004
i386                 randconfig-a011-20211004
i386                 randconfig-a012-20211004
i386                 randconfig-a015-20211004
arc                  randconfig-r043-20211007
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20211004
x86_64               randconfig-a005-20211004
x86_64               randconfig-a001-20211004
x86_64               randconfig-a002-20211004
x86_64               randconfig-a004-20211004
x86_64               randconfig-a006-20211004
i386                 randconfig-a001-20211004
i386                 randconfig-a003-20211004
i386                 randconfig-a005-20211004
i386                 randconfig-a002-20211004
i386                 randconfig-a004-20211004
i386                 randconfig-a006-20211004
hexagon              randconfig-r045-20211007
hexagon              randconfig-r041-20211007
s390                 randconfig-r044-20211007
riscv                randconfig-r042-20211007

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
