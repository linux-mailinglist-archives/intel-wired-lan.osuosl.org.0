Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B45233A338
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Mar 2021 07:09:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7784C83E78;
	Sun, 14 Mar 2021 06:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqAaQsQ3m5x3; Sun, 14 Mar 2021 06:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6381783DB0;
	Sun, 14 Mar 2021 06:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4F7F1BF409
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 06:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DC90606E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 06:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OhpvxRMjE2NL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Mar 2021 06:09:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B79BE606E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 06:09:39 +0000 (UTC)
IronPort-SDR: gDexTfliCoknSwxte6L78yRBxpjv5RrJ8fnYG09ERg9S5PhphrDRQW1H3DrkjpO8mmeAS6yQ9T
 oi8ojjI8/muA==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="188335316"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="188335316"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2021 22:09:38 -0800
IronPort-SDR: SAU6kZm6k39F4PTgMrTEG93fmH6gF8QkyjVG86UQUz8OX23H8WncpneL6LST2dHB84i7rrAgPP
 fbBSSVLiOcPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="604458522"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 13 Mar 2021 22:09:37 -0800
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lLJwW-00004X-Oy; Sun, 14 Mar 2021 06:09:36 +0000
Date: Sun, 14 Mar 2021 14:09:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <604da899.MgSnFjFqq7dp5v48%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9f096678c93bdde938d8293f111033657d61b8e8
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
branch HEAD: 9f096678c93bdde938d8293f111033657d61b8e8  ixgbe: Fix NULL pointer dereference in ethtool loopback test

elapsed time: 723m

configs tested: 102
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                       maple_defconfig
powerpc                    socrates_defconfig
arm                         s3c6400_defconfig
mips                         db1xxx_defconfig
mips                     loongson1c_defconfig
powerpc                        cell_defconfig
powerpc                     akebono_defconfig
sh                            migor_defconfig
powerpc64                        alldefconfig
sh                        sh7785lcr_defconfig
powerpc                 mpc837x_rdb_defconfig
arc                          axs101_defconfig
openrisc                         alldefconfig
sh                        edosk7760_defconfig
powerpc                         wii_defconfig
mips                         tb0226_defconfig
mips                           ip32_defconfig
arc                              allyesconfig
riscv                    nommu_virt_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     taishan_defconfig
powerpc                     kmeter1_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                      acadia_defconfig
arm                         assabet_defconfig
arm                  colibri_pxa300_defconfig
parisc                           alldefconfig
m68k                          atari_defconfig
powerpc                     ppa8548_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
i386                               tinyconfig
i386                                defconfig
nios2                               defconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210314
i386                 randconfig-a005-20210314
i386                 randconfig-a003-20210314
i386                 randconfig-a002-20210314
i386                 randconfig-a004-20210314
i386                 randconfig-a006-20210314
x86_64               randconfig-a011-20210314
x86_64               randconfig-a016-20210314
x86_64               randconfig-a013-20210314
x86_64               randconfig-a015-20210314
x86_64               randconfig-a014-20210314
x86_64               randconfig-a012-20210314
i386                 randconfig-a013-20210314
i386                 randconfig-a016-20210314
i386                 randconfig-a011-20210314
i386                 randconfig-a012-20210314
i386                 randconfig-a014-20210314
i386                 randconfig-a015-20210314
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210314
x86_64               randconfig-a001-20210314
x86_64               randconfig-a005-20210314
x86_64               randconfig-a004-20210314
x86_64               randconfig-a002-20210314
x86_64               randconfig-a003-20210314

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
