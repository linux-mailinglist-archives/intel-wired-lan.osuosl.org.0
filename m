Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B5E377172
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 May 2021 13:36:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7ED240281;
	Sat,  8 May 2021 11:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9RuppwmCZCW; Sat,  8 May 2021 11:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C26DF4012B;
	Sat,  8 May 2021 11:35:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3589E1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 May 2021 11:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2354640132
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 May 2021 11:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1SvBU69UkgBk for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 May 2021 11:35:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D8EE40003
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 May 2021 11:35:51 +0000 (UTC)
IronPort-SDR: u0ZlyM/i3xDx/E/jR7C5mQLMMCVQdy+89yw2XVUBZkkhem0yp7mNs74PWfGo8ST0mk12j961Kq
 bfOMjAwE6H/g==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="186354143"
X-IronPort-AV: E=Sophos;i="5.82,283,1613462400"; d="scan'208";a="186354143"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2021 04:35:49 -0700
IronPort-SDR: acmQliWiR6zZdQ0EhxSX8PRvnZk+ZTavcRILrJKQafQFuqrhSwVNGWjIIdc6fJOVYcGcGCTotA
 8valw6hwmQVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,283,1613462400"; d="scan'208";a="540642734"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 08 May 2021 04:35:48 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lfLFL-000BfB-M7; Sat, 08 May 2021 11:35:47 +0000
Date: Sat, 08 May 2021 19:35:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6096778e.ldhZWS1pdtRka5nw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e16c2a5f3d1dcd99ae72e1a4e8d579f8cb2422d3
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
branch HEAD: e16c2a5f3d1dcd99ae72e1a4e8d579f8cb2422d3  igb: fix netpoll exit with traffic

elapsed time: 727m

configs tested: 115
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
powerpc                     mpc5200_defconfig
m68k                       m5249evb_defconfig
m68k                             allmodconfig
arc                            hsdk_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                         shannon_defconfig
parisc                           alldefconfig
m68k                        m5307c3_defconfig
xtensa                    smp_lx200_defconfig
sh                           se7619_defconfig
arm                           sunxi_defconfig
powerpc                      chrp32_defconfig
sh                           se7712_defconfig
sparc                       sparc32_defconfig
arm                         s3c2410_defconfig
mips                        nlm_xlp_defconfig
powerpc                  mpc866_ads_defconfig
sh                          rsk7269_defconfig
mips                         bigsur_defconfig
powerpc                      bamboo_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     taishan_defconfig
arc                          axs101_defconfig
arm                           u8500_defconfig
arm                          pxa168_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210508
i386                 randconfig-a006-20210508
i386                 randconfig-a001-20210508
i386                 randconfig-a005-20210508
i386                 randconfig-a004-20210508
i386                 randconfig-a002-20210508
x86_64               randconfig-a014-20210508
x86_64               randconfig-a015-20210508
x86_64               randconfig-a011-20210508
x86_64               randconfig-a013-20210508
x86_64               randconfig-a012-20210508
x86_64               randconfig-a016-20210508
i386                 randconfig-a015-20210507
i386                 randconfig-a013-20210507
i386                 randconfig-a016-20210507
i386                 randconfig-a014-20210507
i386                 randconfig-a012-20210507
i386                 randconfig-a011-20210507
i386                 randconfig-a013-20210508
i386                 randconfig-a015-20210508
i386                 randconfig-a014-20210508
i386                 randconfig-a016-20210508
i386                 randconfig-a011-20210508
i386                 randconfig-a012-20210508
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20210508
x86_64               randconfig-a003-20210508
x86_64               randconfig-a001-20210508
x86_64               randconfig-a002-20210508
x86_64               randconfig-a006-20210508
x86_64               randconfig-a004-20210508
x86_64               randconfig-a014-20210507
x86_64               randconfig-a015-20210507
x86_64               randconfig-a012-20210507
x86_64               randconfig-a013-20210507
x86_64               randconfig-a011-20210507
x86_64               randconfig-a016-20210507

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
