Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D3647830D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 03:17:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05B9283EE6;
	Fri, 17 Dec 2021 02:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-9cnRFMdb6X; Fri, 17 Dec 2021 02:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D84AB83E9D;
	Fri, 17 Dec 2021 02:17:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 410121BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 02:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2556761068
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 02:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MXvn3tjatOFN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 02:17:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E3A361063
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 02:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639707456; x=1671243456;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yQeLXhH9PfD1SH63pFSmoHwfmpbxklQ0nnBrgW9Icpg=;
 b=kuR1tvlZVXqxaCqXJvnOZ37kHLW3dMHgpSpS4q1PneSV5xJdu7iFgY4E
 jyP27NyQ4GjsN9X2jOU7MepOcQnmGwnLbMDKVHawMTtRGfzJ9YQAwHUOY
 IfFWALYibd0MnlSfEeyJhhrxs8dzCYrSx3JtfKRhvapGjOOp9aYw1ZzxD
 ocKYQ4jd5UpzyZby5utI04AO0U3sepohpgUQADzHV0BWSuHBnSfh3p31i
 poRspK8Df7pvllXnDtGUmqvaFCTQMcmlY375Lqa7tOfIVojCg443Z9Mag
 Qp5MgzXkTunBH8NOWcIml9/T9hexbuSt2ETh1qsCwYPRTyhTXjN6mgwyF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="263830718"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="263830718"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 18:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="483067862"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2021 18:17:34 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1my2oP-00046G-Db; Fri, 17 Dec 2021 02:17:33 +0000
Date: Fri, 17 Dec 2021 10:16:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61bbf305.jSXZEKD3v5u6l7bF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 9c99d099f7e7860b39d9bf605ba1f3c6d7ae1319
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 9c99d099f7e7860b39d9bf605ba1f3c6d7ae1319  ice: use modern kernel API for kick

elapsed time: 1551m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211216
m68k                          hp300_defconfig
arm                        clps711x_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                     tqm8540_defconfig
arm                      tct_hammer_defconfig
powerpc                      katmai_defconfig
sh                            migor_defconfig
arm                       imx_v4_v5_defconfig
sh                         ap325rxa_defconfig
mips                        jmr3927_defconfig
sh                        sh7785lcr_defconfig
arm                       cns3420vb_defconfig
arm                            dove_defconfig
arm                        trizeps4_defconfig
arc                          axs103_defconfig
sh                           se7724_defconfig
m68k                       m5208evb_defconfig
mips                        vocore2_defconfig
sh                   rts7751r2dplus_defconfig
sparc                               defconfig
mips                     loongson1b_defconfig
powerpc                     rainier_defconfig
powerpc                      pmac32_defconfig
powerpc                      walnut_defconfig
sh                            hp6xx_defconfig
arm                         axm55xx_defconfig
powerpc                   bluestone_defconfig
arc                     haps_hs_smp_defconfig
mips                malta_qemu_32r6_defconfig
arm                         nhk8815_defconfig
powerpc                         ps3_defconfig
arm                             mxs_defconfig
mips                       capcella_defconfig
powerpc                     taishan_defconfig
arm                          imote2_defconfig
h8300                       h8s-sim_defconfig
arm                           h3600_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                               j2_defconfig
arm                        keystone_defconfig
sh                        edosk7705_defconfig
mips                         tb0287_defconfig
powerpc                     powernv_defconfig
arc                      axs103_smp_defconfig
arm                         orion5x_defconfig
sh                          lboxre2_defconfig
nios2                               defconfig
sh                                  defconfig
m68k                       m5275evb_defconfig
microblaze                          defconfig
arm                  randconfig-c002-20211216
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a006-20211216
x86_64               randconfig-a005-20211216
x86_64               randconfig-a001-20211216
x86_64               randconfig-a002-20211216
x86_64               randconfig-a003-20211216
x86_64               randconfig-a004-20211216
i386                 randconfig-a001-20211216
i386                 randconfig-a002-20211216
i386                 randconfig-a005-20211216
i386                 randconfig-a003-20211216
i386                 randconfig-a006-20211216
i386                 randconfig-a004-20211216
arc                  randconfig-r043-20211216
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
x86_64               randconfig-a011-20211216
x86_64               randconfig-a014-20211216
x86_64               randconfig-a012-20211216
x86_64               randconfig-a013-20211216
x86_64               randconfig-a016-20211216
x86_64               randconfig-a015-20211216
i386                 randconfig-a011-20211216
i386                 randconfig-a014-20211216
i386                 randconfig-a012-20211216
i386                 randconfig-a013-20211216
i386                 randconfig-a015-20211216
i386                 randconfig-a016-20211216
hexagon              randconfig-r045-20211216
s390                 randconfig-r044-20211216
riscv                randconfig-r042-20211216
hexagon              randconfig-r041-20211216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
