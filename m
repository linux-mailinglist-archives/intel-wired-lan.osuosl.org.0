Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 600D15358A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 07:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9498F427C1;
	Fri, 27 May 2022 05:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQVPN4W5ooii; Fri, 27 May 2022 05:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36F33427C0;
	Fri, 27 May 2022 05:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A71461BF853
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 05:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 912E0427C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 05:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rQ-DO_-12WGg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 05:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4840E4277D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653628096; x=1685164096;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=43lJKWITpH8i8vDAuVz5+FuvrPIqQtonHEm1DW5nSkM=;
 b=c8urC6gm7Kqz8dwrTVPuPZQ+pTrEnGHGiAHezxikqizathk6x+HfAqxU
 e5JHLcIhVMVHWZIrEvcKGpYfSQgyU+yXoAye2ktY3FfPT57XJHjq/E9Ox
 yfe9+97dRJ2EoL3UMrJe6o/T1p1gHz+hAJLBZsGKmcocDT8rFuy2Xo7e8
 zJOneBgT6GmGfKSOQrlvZW/avDquG2eT62Vx2Nr8xNsnwYPx+RiC+V0Qp
 5d/Yfniv8kzxWVXgZpCVsyApaOMtIxnAH1dWPkApP8KHidevtVtpAtpNg
 yTMb2Y1mmgYCM7tABDd7kri2QgIA7yA6c+vd3MpOsVy/kDAd4Bct08tpm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274107289"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="274107289"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 22:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="704946279"
Received: from lkp-server01.sh.intel.com (HELO db63a1be7222) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 26 May 2022 22:08:14 -0700
Received: from kbuild by db63a1be7222 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nuSCr-0004Rf-Rj;
 Fri, 27 May 2022 05:08:13 +0000
Date: Fri, 27 May 2022 13:08:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62905cb0.5CH5QpIUfP8wFiI2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 6c465408a7709cf180cde7569e141191b67a175c
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
branch HEAD: 6c465408a7709cf180cde7569e141191b67a175c  dt-bindings: net: adin: Fix adi,phy-output-clock description syntax

elapsed time: 1424m

configs tested: 107
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
mips                         db1xxx_defconfig
arm                            mps2_defconfig
arm                         assabet_defconfig
sh                          polaris_defconfig
powerpc                      pcm030_defconfig
arm                           imxrt_defconfig
parisc                           alldefconfig
parisc64                            defconfig
arm                         vf610m4_defconfig
powerpc                      ep88xc_defconfig
arc                           tb10x_defconfig
powerpc                         ps3_defconfig
sh                          sdk7786_defconfig
mips                  maltasmvp_eva_defconfig
m68k                          atari_defconfig
mips                           xway_defconfig
sh                           se7750_defconfig
mips                 decstation_r4k_defconfig
arm                        trizeps4_defconfig
s390                       zfcpdump_defconfig
sh                            hp6xx_defconfig
m68k                        m5407c3_defconfig
powerpc                     ep8248e_defconfig
arc                            hsdk_defconfig
arm                  randconfig-c002-20220524
x86_64                        randconfig-c001
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220526
arc                  randconfig-r043-20220524
s390                 randconfig-r044-20220526
s390                 randconfig-r044-20220524
riscv                randconfig-r042-20220526
riscv                randconfig-r042-20220524
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
powerpc                  mpc885_ads_defconfig
arm                        mvebu_v5_defconfig
arm                     am200epdkit_defconfig
mips                           ip28_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220524
hexagon              randconfig-r041-20220524
x86_64                        randconfig-a005
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
