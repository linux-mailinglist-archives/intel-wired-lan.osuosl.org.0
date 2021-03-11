Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 809C4337506
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 15:06:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC0AD84108;
	Thu, 11 Mar 2021 14:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xis2li90X_AJ; Thu, 11 Mar 2021 14:06:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB1EF833FB;
	Thu, 11 Mar 2021 14:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1B11BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 14:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7A45840C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 14:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TFSPsz-GkWr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 14:05:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7919983143
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 14:05:56 +0000 (UTC)
IronPort-SDR: br2ENCumc0diVJK2qnANqhpdVbBAAAMgJ3GG5fIOZugg47hdswfI2aZmMbnQEV+8esr92NFmst
 YxoUTVwq3few==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188708492"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="188708492"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 06:05:55 -0800
IronPort-SDR: EgDxtjXVn+ZiDC9XbaZWw9ASyncZIABhO/Mca1SV6FoUGG7vFBB9wDMdH9t0pM3z3LXwOiJhZm
 4VQujX2f8GOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="438710703"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Mar 2021 06:05:53 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lKLwn-0000ni-AP; Thu, 11 Mar 2021 14:05:53 +0000
Date: Thu, 11 Mar 2021 22:05:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <604a2394.VBqvVUzGo3CFVE8p%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 75e3560bc704ed78377869fa362223a6b17916f5
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
branch HEAD: 75e3560bc704ed78377869fa362223a6b17916f5  e1000e: Fix error handling in e1000_set_d0_lplu_state_82571

elapsed time: 721m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
powerpc                 mpc836x_rdk_defconfig
sh                           se7724_defconfig
mips                        omega2p_defconfig
arm                        oxnas_v6_defconfig
arm                       versatile_defconfig
sh                           sh2007_defconfig
arm                           viper_defconfig
mips                        vocore2_defconfig
arc                          axs103_defconfig
sh                          lboxre2_defconfig
arm                  colibri_pxa300_defconfig
powerpc                  mpc866_ads_defconfig
m68k                        m5307c3_defconfig
mips                          malta_defconfig
arm                          badge4_defconfig
mips                      pic32mzda_defconfig
powerpc                          allmodconfig
sh                             shx3_defconfig
powerpc                        cell_defconfig
arm                            mps2_defconfig
arm                         hackkit_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                     pseries_defconfig
arm                            xcep_defconfig
sh                              ul2_defconfig
mips                      maltaaprp_defconfig
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
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210311
i386                 randconfig-a005-20210311
i386                 randconfig-a003-20210311
i386                 randconfig-a002-20210311
i386                 randconfig-a004-20210311
i386                 randconfig-a006-20210311
i386                 randconfig-a013-20210311
i386                 randconfig-a016-20210311
i386                 randconfig-a011-20210311
i386                 randconfig-a014-20210311
i386                 randconfig-a015-20210311
i386                 randconfig-a012-20210311
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
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
x86_64               randconfig-a011-20210311
x86_64               randconfig-a016-20210311
x86_64               randconfig-a013-20210311
x86_64               randconfig-a015-20210311
x86_64               randconfig-a014-20210311
x86_64               randconfig-a012-20210311

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
