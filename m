Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA03501FF9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 03:10:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 084CA4016B;
	Fri, 15 Apr 2022 01:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 05BqvpJktpJa; Fri, 15 Apr 2022 01:10:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07A26400CB;
	Fri, 15 Apr 2022 01:10:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 869E81BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 01:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7342082C3C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 01:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2VHF5-UT2s8J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 01:10:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80BA782BED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 01:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649985045; x=1681521045;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qHqfzamLteU9zfP/ozEegAJ1sbbl555qkHcDDOXJeq0=;
 b=Sh0BzFBqK8brkNfWUjpGqe3DFQeENqpUUWZVs13oo3V2LZeR6OxjmlcR
 vn6vlAlBL6KuaZv4OS82SA9ajzerXcMtPfVmK6DGFAPaJ7oXQ8U2CCVdu
 ulKgB+4rQd1FoFlUh07I9brrJE9xphxditOtc+eceaYi4w0o62c17xZBP
 Bv79gG2h2snuLIP8b5yDt3lMgVFTnTC3//cD/cjiTqqrkvCdgQ3sBpfif
 dBz0d31WWH9YaVZW0Lfvo+H49RAVmE/5+3ibD/tlhr/OcPee8Y+u4Ul11
 ZOpeuOycQR1PZR4p302YImCl6lPUo0SlesKgNuPRpXRvsyUJXASmb0dpg Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="261913854"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="261913854"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 18:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="527123827"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2022 18:10:43 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nfATy-0001Mg-IW;
 Fri, 15 Apr 2022 01:10:42 +0000
Date: Fri, 15 Apr 2022 09:10:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6258c60f.bX8KUbWZlVkzj9il%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 04ebaa1cfddae5f240cc7404f009133bb0389a47
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
branch HEAD: 04ebaa1cfddae5f240cc7404f009133bb0389a47  e1000e: Fix possible overflow in LTR decoding

elapsed time: 1898m

configs tested: 119
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
sh                             sh03_defconfig
powerpc                 mpc837x_mds_defconfig
arc                        vdk_hs38_defconfig
mips                  decstation_64_defconfig
openrisc                  or1klitex_defconfig
mips                      maltasmvp_defconfig
xtensa                         virt_defconfig
m68k                       m5475evb_defconfig
arm                        shmobile_defconfig
arm                        oxnas_v6_defconfig
arm                        keystone_defconfig
arm                             rpc_defconfig
mips                         mpc30x_defconfig
powerpc                     pq2fads_defconfig
ia64                          tiger_defconfig
parisc64                            defconfig
powerpc                     taishan_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                         assabet_defconfig
parisc                generic-64bit_defconfig
x86_64                           alldefconfig
arm                           sunxi_defconfig
xtensa                           alldefconfig
x86_64                              defconfig
arm                           u8500_defconfig
arm                        spear6xx_defconfig
arm                            mps2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220413
arm                  randconfig-c002-20220414
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220413
arc                  randconfig-r043-20220413
s390                 randconfig-r044-20220413
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                               defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220413
arm                  randconfig-c002-20220413
i386                          randconfig-c001
riscv                randconfig-c006-20220413
mips                 randconfig-c004-20220413
powerpc              randconfig-c003-20220414
arm                  randconfig-c002-20220414
arm                       spear13xx_defconfig
mips                malta_qemu_32r6_defconfig
arm                      tct_hammer_defconfig
powerpc                     tqm5200_defconfig
arm                        multi_v5_defconfig
mips                           mtx1_defconfig
arm                        spear3xx_defconfig
arm                       mainstone_defconfig
arm                       netwinder_defconfig
mips                        workpad_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220414
hexagon              randconfig-r045-20220414
riscv                randconfig-r042-20220414

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
