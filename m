Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C394033DA3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 18:05:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 202294ECB6;
	Tue, 16 Mar 2021 17:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V0n2IfbJqn2K; Tue, 16 Mar 2021 17:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9A2C4ECC8;
	Tue, 16 Mar 2021 17:05:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 764A51BF427
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7251583A7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lUr9a_UdVh57 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 17:05:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8926383D90
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:05:43 +0000 (UTC)
IronPort-SDR: h5RyNq7K5/tsjFghLTVxNBYHcKHbny85yDBNKBAIzhLSE+Ko/6C0b4QDnMnyteLwyjx3uouZcu
 si2XxJ3lV3sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="253314832"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="253314832"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 10:05:42 -0700
IronPort-SDR: IolH5EY1Xx6XakaObhw3qNizlC4DJqvsmbUDvfP95nSZiSGrLyEqo9/Frp/fzpEMiDSF2WiL8u
 mMbFOikdhA9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="378934024"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 16 Mar 2021 10:05:40 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lMD8W-0000EA-7j; Tue, 16 Mar 2021 17:05:40 +0000
Date: Wed, 17 Mar 2021 01:05:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6050e556.nbsgWlvBRo7jsQXp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 6daa42ab1b5274127023d189aa8c17d286f734da
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
branch HEAD: 6daa42ab1b5274127023d189aa8c17d286f734da  i40e: Fix autoneg disabling for non-10GBaseT links

elapsed time: 881m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
riscv                            allmodconfig
powerpc                   motionpro_defconfig
powerpc                  mpc866_ads_defconfig
sh                          urquell_defconfig
powerpc                 mpc832x_rdb_defconfig
m68k                         amcore_defconfig
arm                          imote2_defconfig
openrisc                            defconfig
um                             i386_defconfig
arm                         lpc32xx_defconfig
sh                            shmin_defconfig
arc                          axs103_defconfig
powerpc                      cm5200_defconfig
arm                          badge4_defconfig
powerpc                  iss476-smp_defconfig
arm                      jornada720_defconfig
sh                           se7780_defconfig
sh                     magicpanelr2_defconfig
powerpc                      tqm8xx_defconfig
sh                           se7751_defconfig
h8300                            alldefconfig
sh                   rts7751r2dplus_defconfig
powerpc                      ppc44x_defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210316
i386                 randconfig-a005-20210316
i386                 randconfig-a002-20210316
i386                 randconfig-a003-20210316
i386                 randconfig-a004-20210316
i386                 randconfig-a006-20210316
i386                 randconfig-a001-20210315
i386                 randconfig-a005-20210315
i386                 randconfig-a003-20210315
i386                 randconfig-a002-20210315
i386                 randconfig-a004-20210315
i386                 randconfig-a006-20210315
x86_64               randconfig-a011-20210316
x86_64               randconfig-a016-20210316
x86_64               randconfig-a013-20210316
x86_64               randconfig-a014-20210316
x86_64               randconfig-a015-20210316
x86_64               randconfig-a012-20210316
i386                 randconfig-a013-20210316
i386                 randconfig-a016-20210316
i386                 randconfig-a011-20210316
i386                 randconfig-a012-20210316
i386                 randconfig-a015-20210316
i386                 randconfig-a014-20210316
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
