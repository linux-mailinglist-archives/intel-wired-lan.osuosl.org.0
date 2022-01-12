Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D92C48C41B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 13:37:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EB4B84B3A;
	Wed, 12 Jan 2022 12:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6v2XU2Va80AN; Wed, 12 Jan 2022 12:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0270784B23;
	Wed, 12 Jan 2022 12:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A84611BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 12:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95C8184B2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 12:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWEpbSKlQYLj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 12:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9ED1184B23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 12:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641991064; x=1673527064;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0lTxRLm+OSWnefkEe1DdeqNErtt1Hg6KrByISOxLq3Q=;
 b=GqWcHiQMZz77OtxG8GxEsKzjvwYkuTBb/8V+aiDJ5oiHhbNLCOs98l70
 WNan0LfMNfq96j/SLXU7lC943fy8hMJnjl8oSnGq94eqHNXit3wyHe9Q+
 yENNu/aE71cwS3M87kRfwdRLHIxIowQN4xW9PsTcjYACOpxYDdE00jmBY
 E0TuZhwjTWK8qDI2KqR/aoc/bM1VR/zdo36sGmXW1/RLpjrJ4VhovHhnC
 r/Xfp4v+HJthDoMerp/G6yhRAvXsrZEqJavsN2jWYO8EVspLxJEWOQGPb
 P7Lw0x4ZmfQsw8BnCEP2L7SYAWGrroM/18wwelAU/QGeP+rTim0hvA+Zn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243678935"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243678935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 04:37:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="515472067"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 12 Jan 2022 04:37:43 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n7cso-0005nN-Db; Wed, 12 Jan 2022 12:37:42 +0000
Date: Wed, 12 Jan 2022 20:37:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61decb7f.v4YuhbC1J0xtG1TF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f1f62d37baf6f3ca96f3edb6f888bf90fe57cef2
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
branch HEAD: f1f62d37baf6f3ca96f3edb6f888bf90fe57cef2  ice: fix an error code in ice_cfg_phy_fec()

elapsed time: 2117m

configs tested: 142
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
mips                 randconfig-c004-20220111
sh                               alldefconfig
powerpc                  storcenter_defconfig
xtensa                          iss_defconfig
sh                              ul2_defconfig
m68k                          hp300_defconfig
arm                         axm55xx_defconfig
um                             i386_defconfig
sparc                            alldefconfig
arm                           stm32_defconfig
sh                                  defconfig
powerpc                      ep88xc_defconfig
arm                        mini2440_defconfig
sh                            migor_defconfig
m68k                                defconfig
sh                        edosk7760_defconfig
sparc64                             defconfig
mips                          rb532_defconfig
h8300                     edosk2674_defconfig
arm                     eseries_pxa_defconfig
nds32                             allnoconfig
powerpc                    klondike_defconfig
sh                        edosk7705_defconfig
sh                         microdev_defconfig
arm                          iop32x_defconfig
powerpc                    adder875_defconfig
parisc                           alldefconfig
arm                           viper_defconfig
mips                 decstation_r4k_defconfig
arm                        clps711x_defconfig
powerpc                      arches_defconfig
mips                       bmips_be_defconfig
powerpc                      pcm030_defconfig
arm                         assabet_defconfig
xtensa                       common_defconfig
s390                             allyesconfig
arm                  randconfig-c002-20220111
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
s390                             allmodconfig
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
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220111
arc                  randconfig-r043-20220111
s390                 randconfig-r044-20220111
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func

clang tested configs:
arm                  randconfig-c002-20220111
x86_64                        randconfig-c007
riscv                randconfig-c006-20220111
powerpc              randconfig-c003-20220111
i386                          randconfig-c001
s390                 randconfig-c005-20220111
mips                 randconfig-c004-20220111
arm                     davinci_all_defconfig
powerpc                 mpc836x_mds_defconfig
arm                                 defconfig
arm                          pxa168_defconfig
powerpc                     ksi8560_defconfig
arm                        spear3xx_defconfig
arm                  colibri_pxa300_defconfig
mips                          malta_defconfig
arm                          ep93xx_defconfig
mips                           ip27_defconfig
powerpc                          allmodconfig
powerpc                     kmeter1_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                        fsp2_defconfig
powerpc                    ge_imp3a_defconfig
arm                            mmp2_defconfig
arm                         hackkit_defconfig
powerpc                   lite5200b_defconfig
riscv                             allnoconfig
arm                          ixp4xx_defconfig
riscv                          rv32_defconfig
arm                         bcm2835_defconfig
powerpc                          allyesconfig
powerpc                 mpc8313_rdb_defconfig
arm                      pxa255-idp_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220111
hexagon              randconfig-r041-20220111

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
