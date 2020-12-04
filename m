Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A21D92CF40B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 19:29:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 510782E23B;
	Fri,  4 Dec 2020 18:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YMrC3N14o-QK; Fri,  4 Dec 2020 18:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 836782E2F2;
	Fri,  4 Dec 2020 18:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52C831BF573
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 18:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BAEA87B23
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 18:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-Mjr4h9l+DR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 18:29:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7108686DBB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 18:29:21 +0000 (UTC)
IronPort-SDR: UPVkevIKyIlsVE9S7myMRmkgGe1lg/F5GGlIsFM94M70frUlKI4tYU3xINZSohbCM7685D/0Y4
 XmywXLUIGRqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="169913766"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="169913766"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 10:29:16 -0800
IronPort-SDR: Y3I0Qmj9bSk86x4r/i4NxDrcBSPi2gE+d06hxTO0vpQTDJvfjeerCpxiHfrczPJMebxf5i+6Ab
 cBHpOgIMRqEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="538901165"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 04 Dec 2020 10:29:15 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1klFpS-0000Jf-DD; Fri, 04 Dec 2020 18:29:14 +0000
Date: Sat, 05 Dec 2020 02:28:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fca7fdd.tZH1sFi45fV9gcwH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f3662c3af5b7450ee0d9bfdbcf5ca6dea1a2b6e3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  dev-queue
branch HEAD: f3662c3af5b7450ee0d9bfdbcf5ca6dea1a2b6e3  ice: optimize for XDP_REDIRECT in xsk path

elapsed time: 726m

configs tested: 125
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                 xes_mpc85xx_defconfig
sh                           se7724_defconfig
powerpc                     tqm8548_defconfig
arc                        nsimosci_defconfig
powerpc                  mpc866_ads_defconfig
m68k                          atari_defconfig
mips                      bmips_stb_defconfig
powerpc                     skiroot_defconfig
mips                         tb0219_defconfig
m68k                       m5475evb_defconfig
powerpc                     ep8248e_defconfig
powerpc                     mpc512x_defconfig
arm                         orion5x_defconfig
powerpc                    socrates_defconfig
um                             i386_defconfig
ia64                          tiger_defconfig
powerpc                      ppc64e_defconfig
powerpc                       eiger_defconfig
arm                         axm55xx_defconfig
mips                     loongson1c_defconfig
arm                     am200epdkit_defconfig
powerpc                   currituck_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      chrp32_defconfig
sh                          urquell_defconfig
arm                       netwinder_defconfig
mips                            gpr_defconfig
sh                          rsk7264_defconfig
arm                         bcm2835_defconfig
arm                            pleb_defconfig
powerpc                     kilauea_defconfig
arc                          axs103_defconfig
arm                            zeus_defconfig
arm                             pxa_defconfig
mips                        workpad_defconfig
mips                          ath25_defconfig
arm                           sunxi_defconfig
arm                    vt8500_v6_v7_defconfig
arm                        keystone_defconfig
sh                           se7343_defconfig
powerpc                     tqm8540_defconfig
arm                           corgi_defconfig
arm                           omap1_defconfig
arm                        vexpress_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                    adder875_defconfig
m68k                       m5249evb_defconfig
arm                         mv78xx0_defconfig
powerpc                     mpc83xx_defconfig
sh                           se7619_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20201204
x86_64               randconfig-a006-20201204
x86_64               randconfig-a002-20201204
x86_64               randconfig-a001-20201204
x86_64               randconfig-a005-20201204
x86_64               randconfig-a003-20201204
i386                 randconfig-a005-20201204
i386                 randconfig-a004-20201204
i386                 randconfig-a001-20201204
i386                 randconfig-a002-20201204
i386                 randconfig-a006-20201204
i386                 randconfig-a003-20201204
i386                 randconfig-a014-20201204
i386                 randconfig-a013-20201204
i386                 randconfig-a011-20201204
i386                 randconfig-a015-20201204
i386                 randconfig-a012-20201204
i386                 randconfig-a016-20201204
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a016-20201204
x86_64               randconfig-a012-20201204
x86_64               randconfig-a014-20201204
x86_64               randconfig-a013-20201204
x86_64               randconfig-a015-20201204
x86_64               randconfig-a011-20201204

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
