Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B783E4947CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jan 2022 08:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E84A60BF2;
	Thu, 20 Jan 2022 07:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cdDWW-tkUitf; Thu, 20 Jan 2022 07:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33F0860BD5;
	Thu, 20 Jan 2022 07:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F91A1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 07:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 376B7408F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 07:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXADJjf1HsOA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jan 2022 07:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EBD4408F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jan 2022 07:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642662355; x=1674198355;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tu1lS6GYfRSaRX4JIop5urwB5yFV+KhxeJLYITOUGaI=;
 b=Q1S1lQ8pam78vDwFaRzGOmlfv87SFPm032J8tfgR77sIf4KaDyqCtOW2
 5U3uNyMM90MY3MpM2tjBI2XaRodrchdwKde6JabcNne0gQ88DZ9uAC2V5
 W6B2jVKIhX0cCdkvUrox/JGXSoEwfXx0s86KPcfYH6OwHBMwLdedsC1gf
 EsxDxm+NUHqdBs1xTF0svhMidqnHKKWyCbe35GNUOiiQz2XMCz0cz3wrk
 +nG5f3/XFSrMKyIPX+LNbwSsSiT3mbq5cIUMp+yP+zoHQYvHe265C1v36
 xoqTZ0pMqzN7myQjA8UgRDahJRvadPzVvbUggR9STq03uzTbYqD83NqTK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245485145"
X-IronPort-AV: E=Sophos;i="5.88,301,1635231600"; d="scan'208";a="245485145"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 23:05:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,301,1635231600"; d="scan'208";a="477690384"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 19 Jan 2022 23:05:52 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nARW4-000E5z-9T; Thu, 20 Jan 2022 07:05:52 +0000
Date: Thu, 20 Jan 2022 15:04:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61e9099b.kdvRn5xFhKekS6dI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 ff9fc0a31d85fcf0011eb4bc4ecaf47d3cc9e21c
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
branch HEAD: ff9fc0a31d85fcf0011eb4bc4ecaf47d3cc9e21c  Merge branch 'ipv4-avoid-pathological-hash-tables'

elapsed time: 798m

configs tested: 164
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                        vdk_hs38_defconfig
m68k                            q40_defconfig
sh                ecovec24-romimage_defconfig
mips                             allmodconfig
arc                         haps_hs_defconfig
sh                             espt_defconfig
nios2                            alldefconfig
sh                         ap325rxa_defconfig
sh                          urquell_defconfig
arc                           tb10x_defconfig
mips                         mpc30x_defconfig
sh                         ecovec24_defconfig
arm                         cm_x300_defconfig
arm                         lpc18xx_defconfig
arc                      axs103_smp_defconfig
powerpc                     asp8347_defconfig
xtensa                       common_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                   currituck_defconfig
riscv                            allmodconfig
sh                          rsk7201_defconfig
sh                          sdk7780_defconfig
powerpc                     sequoia_defconfig
xtensa                  nommu_kc705_defconfig
arm                            lart_defconfig
sh                          r7780mp_defconfig
xtensa                           allyesconfig
mips                           ip32_defconfig
arm                      integrator_defconfig
openrisc                 simple_smp_defconfig
sh                             sh03_defconfig
csky                             alldefconfig
m68k                          atari_defconfig
sh                           se7619_defconfig
xtensa                generic_kc705_defconfig
sh                          r7785rp_defconfig
x86_64                           alldefconfig
arc                     haps_hs_smp_defconfig
sh                          lboxre2_defconfig
powerpc                      pcm030_defconfig
h8300                            allyesconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220119
arm                  randconfig-c002-20220120
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
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
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a016-20220117
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                 randconfig-a012-20220117
i386                 randconfig-a016-20220117
i386                 randconfig-a014-20220117
i386                 randconfig-a015-20220117
i386                 randconfig-a011-20220117
i386                 randconfig-a013-20220117
riscv                randconfig-r042-20220119
riscv                randconfig-r042-20220117
arc                  randconfig-r043-20220116
arc                  randconfig-r043-20220117
s390                 randconfig-r044-20220119
s390                 randconfig-r044-20220117
arc                  randconfig-r043-20220118
arc                  randconfig-r043-20220119
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc                 mpc836x_rdk_defconfig
arm                         shannon_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                     cu1000-neo_defconfig
powerpc                     ksi8560_defconfig
powerpc                  mpc885_ads_defconfig
arm                         s5pv210_defconfig
arm                     am200epdkit_defconfig
powerpc                     ppa8548_defconfig
mips                     loongson2k_defconfig
mips                malta_qemu_32r6_defconfig
mips                           ip22_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20220118
hexagon              randconfig-r045-20220116
hexagon              randconfig-r045-20220117
hexagon              randconfig-r045-20220118
hexagon              randconfig-r045-20220119
riscv                randconfig-r042-20220116
hexagon              randconfig-r041-20220118
hexagon              randconfig-r041-20220119
s390                 randconfig-r044-20220118
s390                 randconfig-r044-20220116
hexagon              randconfig-r041-20220116
hexagon              randconfig-r041-20220117
riscv                randconfig-r042-20220120
hexagon              randconfig-r045-20220120
hexagon              randconfig-r041-20220120

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
