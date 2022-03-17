Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7514DCF90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 21:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A767D40412;
	Thu, 17 Mar 2022 20:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rq7T8LfdJPxk; Thu, 17 Mar 2022 20:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51BBF403FF;
	Thu, 17 Mar 2022 20:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 429211BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 20:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30AA684817
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 20:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EugjgqRYSBEu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 20:43:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4897784815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 20:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647549792; x=1679085792;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0P+4+CQd4/Y5G7m7cnLCiNxns+/hyBGksw+wHOLXvcw=;
 b=eNyDFEawUVQeUrY7KABMZgH/ySkDFOdqxpNUpQOKlGQTCTCoXYKkgJH9
 Gp4wvgBpjJTzkILDxRew03ZIuZD8k0ZYgkbPeBBR5vzg+qbvEKwCp5Cho
 ZgEh3PyuKSfuZMvLAnu+HtKuMIdeXU2L5Z/TPmB6naHQNyPHryTaGZj2E
 uAiLcoQBiyREyq4+YP55NtvPfalYJrZ0/7xj0yop+S/8IIMd8JAQTvoZm
 RuQVsPEmiKFw+DUNuVkHcBtjwbpCvAGF/5fRyaRgudiNTTrvrn66flJ8u
 CsjLMtLzJpnjP6U1D8VWk029SGbvP3veure9zrsDdR/o3uPykaKp330au g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343413781"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="343413781"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 13:43:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="498978824"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 17 Mar 2022 13:43:10 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nUwxh-000E42-M5; Thu, 17 Mar 2022 20:43:09 +0000
Date: Fri, 18 Mar 2022 04:42:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62339d33.dn3F/Vz/6Kb4aV24%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 186abea8a80b7699a05bbe6cbd661d64f887e1a0
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
branch HEAD: 186abea8a80b7699a05bbe6cbd661d64f887e1a0  Merge branch 'master' of git://git.kernel.org/pub/scm/linux/kernel/git/klassert/ipsec

elapsed time: 750m

configs tested: 129
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                  maltasmvp_eva_defconfig
x86_64                           alldefconfig
sh                         ecovec24_defconfig
arm                      jornada720_defconfig
mips                  decstation_64_defconfig
mips                      loongson3_defconfig
mips                      maltasmvp_defconfig
sh                      rts7751r2d1_defconfig
mips                        bcm47xx_defconfig
sh                            shmin_defconfig
microblaze                          defconfig
sh                ecovec24-romimage_defconfig
sparc                            alldefconfig
powerpc                       holly_defconfig
mips                       capcella_defconfig
arc                              alldefconfig
mips                           jazz_defconfig
arm                        clps711x_defconfig
m68k                       m5208evb_defconfig
riscv                               defconfig
sh                          rsk7201_defconfig
arc                          axs101_defconfig
m68k                          hp300_defconfig
ia64                                defconfig
sh                   secureedge5410_defconfig
arm                           u8500_defconfig
powerpc                      pasemi_defconfig
powerpc                      mgcoge_defconfig
powerpc                     ep8248e_defconfig
sh                            titan_defconfig
powerpc                     sequoia_defconfig
mips                         tb0226_defconfig
alpha                            alldefconfig
sh                          sdk7780_defconfig
arm                           stm32_defconfig
arm                        cerfcube_defconfig
sh                        dreamcast_defconfig
m68k                            q40_defconfig
mips                     decstation_defconfig
mips                           xway_defconfig
sh                            migor_defconfig
arm                  randconfig-c002-20220317
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nds32                               defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220317
riscv                randconfig-r042-20220317
s390                 randconfig-r044-20220317
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                  randconfig-c002-20220317
x86_64                        randconfig-c007
riscv                randconfig-c006-20220317
powerpc              randconfig-c003-20220317
mips                 randconfig-c004-20220317
i386                          randconfig-c001
mips                         tb0287_defconfig
powerpc                    gamecube_defconfig
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
hexagon              randconfig-r041-20220317
hexagon              randconfig-r045-20220317

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
