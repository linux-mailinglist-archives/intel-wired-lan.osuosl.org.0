Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C124AD867
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Feb 2022 13:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A558C60ECB;
	Tue,  8 Feb 2022 12:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RRQ4cayMETQR; Tue,  8 Feb 2022 12:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F514606EC;
	Tue,  8 Feb 2022 12:38:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B305C1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A19A560773
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUFZOlLtzZC2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Feb 2022 12:38:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64251606EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 12:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644323909; x=1675859909;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4fczg6w8S4IcwG2aS1TmJ1ADoezovP0CLciC0olyOMA=;
 b=JE8LOL8fl1Xx9Zk2BDeFmHY4or3dUP0fVCM80YV5QnaIwdLZrUARG2UA
 tElHi1QSPxkV0btz9Hriqix6TbeXxY5zHtenC5tcXFGt4t1P6jkzwocaC
 R7/NgEHryT78ZSvt05DC3xFa9lvKLWrmrS9vCAF78R3E6Ok7MWLC0Fir5
 Yt/+31s1akeqXZhrIv94euZ7nFGeOmGvQ1P0bsq9PZpbIchpZYbCNA4Z8
 G4LEmL5hb86kExIu8YDNrYxtuIIai3FjswqDlYmmRvfpFtxafMOX5uZZB
 KnuIsH6FXkOWaHyhUBxrh408ouc3HGV6yw90NLba9SB/7wzFJJAP35VQp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="248701887"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="248701887"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 04:38:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="484797250"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Feb 2022 04:38:27 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nHPlK-0000BI-CR; Tue, 08 Feb 2022 12:38:26 +0000
Date: Tue, 08 Feb 2022 20:38:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62026437.3U8+bbzfE64bajmS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 813d4b9de3b79e60cb9f25b5f60de6ddd24f2d0b
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
branch HEAD: 813d4b9de3b79e60cb9f25b5f60de6ddd24f2d0b  ice: fix concurrent reset and removal of VFs

possible Warning in current branch (please contact us if interested):

include/net/gro.h:58:1: sparse: sparse: directive in macro's argument list

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- h8300-randconfig-s032-20220208
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- nios2-randconfig-s031-20220207
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
|-- s390-randconfig-s031-20220208
|   `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list
`-- x86_64-randconfig-s031-20220207
    `-- include-net-gro.h:sparse:sparse:directive-in-macro-s-argument-list

elapsed time: 721m

configs tested: 124
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
powerpc                    sam440ep_defconfig
m68k                       m5249evb_defconfig
mips                         mpc30x_defconfig
mips                         cobalt_defconfig
powerpc                    adder875_defconfig
m68k                         amcore_defconfig
mips                          rb532_defconfig
mips                     decstation_defconfig
sh                ecovec24-romimage_defconfig
powerpc                       maple_defconfig
arm                            qcom_defconfig
arc                     haps_hs_smp_defconfig
mips                            gpr_defconfig
arm                       omap2plus_defconfig
powerpc                     rainier_defconfig
powerpc                  iss476-smp_defconfig
arm                     eseries_pxa_defconfig
powerpc                 mpc8540_ads_defconfig
sh                           se7724_defconfig
powerpc                      pcm030_defconfig
arm                           corgi_defconfig
arc                         haps_hs_defconfig
xtensa                    xip_kc705_defconfig
arm                  randconfig-c002-20220207
ia64                                defconfig
ia64                             allmodconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a013-20220207
x86_64               randconfig-a016-20220207
x86_64               randconfig-a015-20220207
x86_64               randconfig-a012-20220207
x86_64               randconfig-a014-20220207
x86_64               randconfig-a011-20220207
i386                 randconfig-a013-20220207
i386                 randconfig-a014-20220207
i386                 randconfig-a011-20220207
i386                 randconfig-a016-20220207
i386                 randconfig-a012-20220207
i386                 randconfig-a015-20220207
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig

clang tested configs:
arm                   milbeaut_m10v_defconfig
mips                           ip27_defconfig
arm                  colibri_pxa270_defconfig
mips                           mtx1_defconfig
arm                            dove_defconfig
arm                         hackkit_defconfig
powerpc                     tqm8560_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                 randconfig-a004-20220207
i386                 randconfig-a003-20220207
i386                 randconfig-a001-20220207
i386                 randconfig-a002-20220207
i386                 randconfig-a005-20220207
i386                 randconfig-a006-20220207
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220208
riscv                randconfig-r042-20220208
hexagon              randconfig-r045-20220207
hexagon              randconfig-r041-20220207

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
