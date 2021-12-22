Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 220B647CD2B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 07:56:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B38F960F8A;
	Wed, 22 Dec 2021 06:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id roXOH75J9zpu; Wed, 22 Dec 2021 06:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A620A60EE0;
	Wed, 22 Dec 2021 06:56:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B7631BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 06:56:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0497B60EE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 06:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8qwEWzQrwLOy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 06:56:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A2346058D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 06:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640156202; x=1671692202;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kMKVN5qwNa+2suc6RM6O5u4k2pAE6aodGVNv6KGitrc=;
 b=MIvxmU6hnBfFBdzNQMgupStDhVkCIj4A1jssCn9eD6rGtDuxjbtKUM75
 9cMtymOyBx9HgB2cqckrIr1AJR4auOzfLJbfYSuS6zCoP2J7d7rNiDh47
 BkysQ1LX+69FSZj8hUbXIcNm1O8K96aBoltDNQYr3HpZ/m77vO8d2pvhU
 fyQgTadTV4hpYJ2DO9aBR3FEJRAwH9WM+1y8I/pfkGPPWKe+msxXkEenA
 zlukV8RbgTqN4LoSW/FxxB+Mgaeq3p+sf6ZVehrQzDWpuRjIb/p0uxHwO
 EIdbUkP7kFDYWiuM7Bpzu0ReEPluGX9E8SiUD3xDi7kfejL4TN4SY1Av0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326862320"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="326862320"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 22:56:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="484662201"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 21 Dec 2021 22:56:39 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mzvYC-0000En-OM; Wed, 22 Dec 2021 06:56:36 +0000
Date: Wed, 22 Dec 2021 14:55:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c2cbe4.hkBGtff42owGhowM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 ac8c58f5b535d6272324e2b8b4a0454781c9147e
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
branch HEAD: ac8c58f5b535d6272324e2b8b4a0454781c9147e  igb: fix deadlock caused by taking RTNL in RPM resume path

elapsed time: 1654m

configs tested: 153
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                             espt_defconfig
mips                     loongson1c_defconfig
arm                        realview_defconfig
powerpc                  storcenter_defconfig
sh                        edosk7705_defconfig
arm                         cm_x300_defconfig
mips                malta_qemu_32r6_defconfig
sh                           se7712_defconfig
m68k                       m5275evb_defconfig
powerpc                      ppc44x_defconfig
arm                              alldefconfig
xtensa                generic_kc705_defconfig
sh                          sdk7780_defconfig
mips                        omega2p_defconfig
m68k                          sun3x_defconfig
powerpc                         wii_defconfig
mips                            e55_defconfig
mips                         rt305x_defconfig
mips                           gcw0_defconfig
mips                       bmips_be_defconfig
powerpc                     skiroot_defconfig
mips                      maltaaprp_defconfig
powerpc                     tqm8541_defconfig
m68k                             alldefconfig
sh                          urquell_defconfig
sh                             shx3_defconfig
powerpc                 mpc85xx_cds_defconfig
nds32                             allnoconfig
mips                      bmips_stb_defconfig
sh                            shmin_defconfig
um                               alldefconfig
arm                          ixp4xx_defconfig
powerpc                       ebony_defconfig
arm                            pleb_defconfig
xtensa                          iss_defconfig
mips                           ip32_defconfig
m68k                             allyesconfig
sh                           se7206_defconfig
mips                        jmr3927_defconfig
mips                       capcella_defconfig
powerpc                 canyonlands_defconfig
sh                        dreamcast_defconfig
mips                           ci20_defconfig
arm                        clps711x_defconfig
m68k                         apollo_defconfig
parisc                generic-64bit_defconfig
arm                          pcm027_defconfig
mips                 decstation_r4k_defconfig
arm                         nhk8815_defconfig
arm                             pxa_defconfig
powerpc                     pseries_defconfig
sparc64                             defconfig
powerpc                     tqm8540_defconfig
um                                  defconfig
sh                         microdev_defconfig
arm                            mps2_defconfig
sh                         ecovec24_defconfig
arm                      jornada720_defconfig
arm                            zeus_defconfig
powerpc                    amigaone_defconfig
s390                             alldefconfig
powerpc                     mpc83xx_defconfig
openrisc                    or1ksim_defconfig
sh                           se7721_defconfig
arm                  randconfig-c002-20211220
arm                  randconfig-c002-20211222
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
s390                             allyesconfig
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
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
i386                 randconfig-a006-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a005-20211220
i386                 randconfig-a001-20211220
arc                  randconfig-r043-20211220
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
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20211221
x86_64               randconfig-a003-20211221
x86_64               randconfig-a005-20211221
x86_64               randconfig-a004-20211221
x86_64               randconfig-a002-20211221
x86_64               randconfig-a006-20211221
x86_64               randconfig-a013-20211220
x86_64               randconfig-a015-20211220
x86_64               randconfig-a014-20211220
x86_64               randconfig-a012-20211220
x86_64               randconfig-a011-20211220
x86_64               randconfig-a016-20211220
i386                 randconfig-a012-20211220
i386                 randconfig-a011-20211220
i386                 randconfig-a014-20211220
i386                 randconfig-a016-20211220
i386                 randconfig-a015-20211220
i386                 randconfig-a013-20211220
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
