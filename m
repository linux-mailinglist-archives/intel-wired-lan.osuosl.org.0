Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C694CA96A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 16:47:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0507410C0;
	Wed,  2 Mar 2022 15:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5t5sQgtHxrs; Wed,  2 Mar 2022 15:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B38AB410BE;
	Wed,  2 Mar 2022 15:47:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0DCD1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 15:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC49660BA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 15:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2I8Z7LYgFeHy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 15:47:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A620460EE8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 15:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646236033; x=1677772033;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pWiTcxLbwNDT1nhEVMRnAWKWt4rP7gLBvtiBLRA5Xe0=;
 b=PL042nxYPXcs7MftLc8lrpOPt8IBWFlRCBfT6QVCAJojQ1p3ujxW4kOM
 bFYhuRejf7gItg8da9rdFDGYQqd9iqcoaKw0XjRZHzHy5UEXexlNAXwVi
 fXaWHnxwfvq4Mucgj48oohthpnmtrsUbINxaMzPKfGmSnqHskba+QhzeS
 zE4xOT3mF618GUaMBgXCTpitGiZfi7oFwnejKL7pvgdeHc4y4nXWOT1w7
 1NI6LEj7gEkgULZE0EZUiQWMg0bSRqMtTbJvMu0H0J+1+igbH1Ov3bSxf
 FoIO6E26vlBsv1DRrBAzGBm4Y9H9Jc2nhOKDTJ5eHlAp+XBUhMXnkyiNJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253356297"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="253356297"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 07:47:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="535432926"
Received: from lkp-server02.sh.intel.com (HELO e9605edfa585) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 02 Mar 2022 07:47:11 -0800
Received: from kbuild by e9605edfa585 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nPRC3-0001Wo-3S; Wed, 02 Mar 2022 15:47:11 +0000
Date: Wed, 02 Mar 2022 23:46:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <621f916d.bBm7LTZUwqUIdA77%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 5862d8e032585a3e3841c020c2cae61f7f302e89
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
branch HEAD: 5862d8e032585a3e3841c020c2cae61f7f302e89  ice: Fix re-enablement of FW logging after reset

elapsed time: 721m

configs tested: 143
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc              randconfig-c003-20220302
i386                          randconfig-c001
mips                 randconfig-c004-20220302
mips                           xway_defconfig
mips                       capcella_defconfig
ia64                          tiger_defconfig
sh                           se7206_defconfig
arm                           corgi_defconfig
parisc                generic-64bit_defconfig
powerpc64                        alldefconfig
arm                        multi_v7_defconfig
sh                           se7705_defconfig
sh                          r7780mp_defconfig
sh                           sh2007_defconfig
mips                         bigsur_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
sh                          sdk7780_defconfig
m68k                          amiga_defconfig
arc                              alldefconfig
sh                          r7785rp_defconfig
sh                             espt_defconfig
mips                           ip32_defconfig
m68k                          atari_defconfig
sh                   secureedge5410_defconfig
arm                          iop32x_defconfig
arc                     nsimosci_hs_defconfig
xtensa                  nommu_kc705_defconfig
sparc                            allyesconfig
sh                        sh7785lcr_defconfig
arm                        trizeps4_defconfig
arm                      jornada720_defconfig
powerpc                      mgcoge_defconfig
powerpc                     taishan_defconfig
sparc64                          alldefconfig
powerpc                     tqm8541_defconfig
sh                          sdk7786_defconfig
arm                        shmobile_defconfig
sh                               j2_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     pq2fads_defconfig
parisc64                         alldefconfig
powerpc                   motionpro_defconfig
arm                            qcom_defconfig
ia64                             alldefconfig
arm                        oxnas_v6_defconfig
m68k                        stmark2_defconfig
m68k                        m5307c3_defconfig
arc                      axs103_smp_defconfig
mips                     loongson1b_defconfig
arm                  randconfig-c002-20220302
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
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220302
riscv                randconfig-r042-20220302
s390                 randconfig-r044-20220302
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc              randconfig-c003-20220302
riscv                randconfig-c006-20220302
i386                          randconfig-c001
arm                  randconfig-c002-20220302
mips                 randconfig-c004-20220302
powerpc                 mpc8313_rdb_defconfig
arm                                 defconfig
arm                         bcm2835_defconfig
mips                     loongson2k_defconfig
arm                     davinci_all_defconfig
arm                       netwinder_defconfig
arm                        neponset_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220302
hexagon              randconfig-r041-20220302

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
