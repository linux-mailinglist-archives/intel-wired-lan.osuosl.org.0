Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 876263E5366
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Aug 2021 08:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B50181D18;
	Tue, 10 Aug 2021 06:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYl0IzzGIUpO; Tue, 10 Aug 2021 06:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B4F283005;
	Tue, 10 Aug 2021 06:21:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1C661BF30D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 06:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD80E82FD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 06:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ni4z4mR4Ke93 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Aug 2021 06:21:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B061581D18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 06:21:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="278591828"
X-IronPort-AV: E=Sophos;i="5.84,309,1620716400"; d="scan'208";a="278591828"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 23:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,309,1620716400"; d="scan'208";a="506017347"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 09 Aug 2021 23:21:13 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mDL8S-000KHh-UO; Tue, 10 Aug 2021 06:21:12 +0000
Date: Tue, 10 Aug 2021 14:20:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61121aae.5dHT0dnsSbf5hMN9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 a7550f8b1c9712894f9e98d6caf5f49451ebd058
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: a7550f8b1c9712894f9e98d6caf5f49451ebd058  iavf: Set RSS LUT and key in reset handle path

elapsed time: 727m

configs tested: 109
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
s390                          debug_defconfig
arm                            xcep_defconfig
arm                        multi_v5_defconfig
arm                          pxa168_defconfig
sh                          polaris_defconfig
alpha                            alldefconfig
xtensa                    smp_lx200_defconfig
parisc                generic-32bit_defconfig
arm                          imote2_defconfig
powerpc                     powernv_defconfig
mips                         bigsur_defconfig
powerpc                     pseries_defconfig
mips                          ath79_defconfig
mips                           ci20_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
x86_64                            allnoconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210809
x86_64               randconfig-a004-20210809
x86_64               randconfig-a006-20210809
x86_64               randconfig-a003-20210809
x86_64               randconfig-a001-20210809
x86_64               randconfig-a005-20210809
i386                 randconfig-a004-20210808
i386                 randconfig-a005-20210808
i386                 randconfig-a006-20210808
i386                 randconfig-a002-20210808
i386                 randconfig-a001-20210808
i386                 randconfig-a003-20210808
i386                 randconfig-a004-20210809
i386                 randconfig-a005-20210809
i386                 randconfig-a006-20210809
i386                 randconfig-a002-20210809
i386                 randconfig-a001-20210809
i386                 randconfig-a003-20210809
x86_64               randconfig-a016-20210808
x86_64               randconfig-a012-20210808
x86_64               randconfig-a013-20210808
x86_64               randconfig-a011-20210808
x86_64               randconfig-a014-20210808
x86_64               randconfig-a015-20210808
i386                 randconfig-a012-20210808
i386                 randconfig-a015-20210808
i386                 randconfig-a011-20210808
i386                 randconfig-a013-20210808
i386                 randconfig-a014-20210808
i386                 randconfig-a016-20210808
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-c001-20210809
x86_64               randconfig-a013-20210810
x86_64               randconfig-a011-20210810
x86_64               randconfig-a012-20210810
x86_64               randconfig-a016-20210810
x86_64               randconfig-a014-20210810
x86_64               randconfig-a015-20210810
x86_64               randconfig-a016-20210809
x86_64               randconfig-a012-20210809
x86_64               randconfig-a013-20210809
x86_64               randconfig-a011-20210809
x86_64               randconfig-a014-20210809
x86_64               randconfig-a015-20210809

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
