Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE31225D5B2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 12:09:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 436D386DF1;
	Fri,  4 Sep 2020 10:09:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ltHsBLTMtNe; Fri,  4 Sep 2020 10:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 623CA86CC5;
	Fri,  4 Sep 2020 10:09:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9D01BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 10:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 193D787518
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 10:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmQOaAu9CnxX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 10:09:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B1B9870BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 10:09:03 +0000 (UTC)
IronPort-SDR: QXMmD/Dwi7kxpuC1QBdYHTY/vCK/LSCcC+27U8jvR79yfU3fF/YgB0GLCfU60fbHvtB2z33CXC
 Zj6Ce3noGpSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="221930755"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="221930755"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 03:08:48 -0700
IronPort-SDR: qyE71pnwsOKQ3OSylOV4twiN9wylIBJBLJCL/1JKwrJOdjN3oi66soHpb/3ozRuH4YSRs5UtdG
 DF06bCgNO7Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="503452722"
Received: from lkp-server02.sh.intel.com (HELO c089623da072) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 04 Sep 2020 03:08:47 -0700
Received: from kbuild by c089623da072 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kE8eE-00003J-Dw; Fri, 04 Sep 2020 10:08:46 +0000
Date: Fri, 04 Sep 2020 18:07:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f5211fc.XCH9mSiyCkZOWlOg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 e20782119081ef4d1f5ce800f7ba8a890204cf7e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: e20782119081ef4d1f5ce800f7ba8a890204cf7e  ixgbe: clean up W=1 warnings in ixgbe

elapsed time: 720m

configs tested: 97
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          rsk7203_defconfig
m68k                            q40_defconfig
arm                           sama5_defconfig
mips                     cu1000-neo_defconfig
sh                   sh7770_generic_defconfig
powerpc                mpc7448_hpc2_defconfig
xtensa                generic_kc705_defconfig
mips                      fuloong2e_defconfig
mips                            ar7_defconfig
arm                         lpc32xx_defconfig
powerpc                        cell_defconfig
openrisc                         alldefconfig
powerpc                      ep88xc_defconfig
arm                           viper_defconfig
um                            kunit_defconfig
powerpc                         ps3_defconfig
powerpc                    mvme5100_defconfig
sh                           se7780_defconfig
ia64                             allmodconfig
mips                         bigsur_defconfig
arm                         lubbock_defconfig
arm                            hisi_defconfig
arm                    vt8500_v6_v7_defconfig
arm                  colibri_pxa300_defconfig
mips                        workpad_defconfig
alpha                            alldefconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a004-20200904
i386                 randconfig-a005-20200904
i386                 randconfig-a006-20200904
i386                 randconfig-a002-20200904
i386                 randconfig-a003-20200904
i386                 randconfig-a001-20200904
i386                 randconfig-a016-20200903
i386                 randconfig-a015-20200903
i386                 randconfig-a011-20200903
i386                 randconfig-a013-20200903
i386                 randconfig-a014-20200903
i386                 randconfig-a012-20200903
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20200902
x86_64               randconfig-a006-20200902
x86_64               randconfig-a003-20200902
x86_64               randconfig-a005-20200902
x86_64               randconfig-a001-20200902
x86_64               randconfig-a002-20200902
x86_64               randconfig-a013-20200903
x86_64               randconfig-a016-20200903
x86_64               randconfig-a011-20200903
x86_64               randconfig-a012-20200903
x86_64               randconfig-a015-20200903
x86_64               randconfig-a014-20200903

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
