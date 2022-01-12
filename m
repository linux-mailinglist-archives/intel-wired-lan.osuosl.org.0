Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1571C48C70A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 16:20:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07E20403C8;
	Wed, 12 Jan 2022 15:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHQvS2Du7D-p; Wed, 12 Jan 2022 15:20:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C26ED400B5;
	Wed, 12 Jan 2022 15:20:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46CC21BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 15:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 310EB400B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 15:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nDrRbjToU7hn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 15:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0132F40017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 15:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642000797; x=1673536797;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=S+rJdW5jzfzFGPppaZpsdiZ23qurFAcU4sSdu9DhNyw=;
 b=H/Ca4GhvOhpSrq1uPMYa1MImCjOq0J7HUnXWJwptv5NbH2fp/9BfXcMn
 0E5iBXz374dRN/6/3V4JXx61aZnBVxMOuQi28+nevSQuMt7TdYVJvAY29
 1pAjpI0YRx4eO5RtTDj108jJb/NPiVu8gI1SeJIaUebUo74mX+gEj14FK
 FYvbKB0w6Nz5dw5+vNbdFGYv0m7u17jbQkKDQDt0xyY3T7yCYlmKnMB/F
 TLWvkSaxEMs/Jr/FIjmI7IqEynkLFT3HgRoOw1cklWOpBF/H4UiN52C91
 ZLdQ3Tq6QYzEzDDDSQ5/x6+q2QaDQV6pWYiCL7aPxlrmpr5UQr2GJuC2Y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223736431"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223736431"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 07:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="670178459"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2022 07:19:55 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n7fPm-00060D-PT; Wed, 12 Jan 2022 15:19:54 +0000
Date: Wed, 12 Jan 2022 23:19:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61def18c.+igfjUUHr1jkeBdH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 61a0b1ca2485ddfe549cde9eccd93b06b53188e8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 61a0b1ca2485ddfe549cde9eccd93b06b53188e8  iavf: Add support for 50G/100G in AIM algorithm

elapsed time: 805m

configs tested: 141
configs skipped: 3

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
mips                 randconfig-c004-20220112
arc                                 defconfig
s390                             allmodconfig
arm                         cm_x300_defconfig
csky                             alldefconfig
powerpc                      ppc6xx_defconfig
powerpc                         wii_defconfig
arm                           u8500_defconfig
h8300                     edosk2674_defconfig
sh                           se7724_defconfig
m68k                           sun3_defconfig
arc                     haps_hs_smp_defconfig
sh                         microdev_defconfig
powerpc                     rainier_defconfig
sparc                            alldefconfig
sh                          rsk7203_defconfig
m68k                       m5275evb_defconfig
sh                        edosk7705_defconfig
arm                        realview_defconfig
powerpc                       holly_defconfig
powerpc                  storcenter_defconfig
arm                         assabet_defconfig
arm                            pleb_defconfig
sh                            hp6xx_defconfig
sh                            shmin_defconfig
h8300                       h8s-sim_defconfig
sh                           se7751_defconfig
microblaze                          defconfig
powerpc                    adder875_defconfig
sh                             shx3_defconfig
m68k                        stmark2_defconfig
arm                        trizeps4_defconfig
powerpc                 mpc834x_itx_defconfig
microblaze                      mmu_defconfig
sh                           se7721_defconfig
sh                          polaris_defconfig
arm                        mini2440_defconfig
m68k                            q40_defconfig
sh                          sdk7780_defconfig
sh                        edosk7760_defconfig
mips                        jmr3927_defconfig
xtensa                           alldefconfig
h8300                            alldefconfig
arm                  randconfig-c002-20220111
arm                  randconfig-c002-20220112
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
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220111
arc                  randconfig-r043-20220112
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
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220111
x86_64                        randconfig-c007
riscv                randconfig-c006-20220111
powerpc              randconfig-c003-20220111
i386                          randconfig-c001
mips                 randconfig-c004-20220111
arm                  randconfig-c002-20220112
riscv                randconfig-c006-20220112
powerpc              randconfig-c003-20220112
mips                 randconfig-c004-20220112
arm                      tct_hammer_defconfig
arm                    vt8500_v6_v7_defconfig
arm                       cns3420vb_defconfig
arm                     davinci_all_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                 mpc836x_mds_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220112
riscv                randconfig-r042-20220112
s390                 randconfig-r044-20220112
hexagon              randconfig-r041-20220112
hexagon              randconfig-r045-20220111
hexagon              randconfig-r041-20220111

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
