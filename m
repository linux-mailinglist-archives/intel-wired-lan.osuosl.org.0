Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3340847C075
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Dec 2021 14:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9676409EF;
	Tue, 21 Dec 2021 13:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vobZltyHsWLd; Tue, 21 Dec 2021 13:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB3C74092E;
	Tue, 21 Dec 2021 13:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5751BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Dec 2021 13:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A1774092A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Dec 2021 13:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8WJAV9jKsWw3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Dec 2021 13:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C28840921
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Dec 2021 13:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640092140; x=1671628140;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lE1N+3qtYMEmQQwrZuuD9y+cPrKh0cO/XvwUUJmuDtM=;
 b=EGqRKvQ80+W1X6uKZjzb/lpnmNJ+UIxfawLbMRIPEwiaH0HjFbT/xCaw
 PyMg2lBmbpB6/C4TtJ85rnlgtm1sJSt+nVH6atiElFLWcq8h0hycH7qGY
 YCc8sL+DborEv8N1EgxBsKpRvbHwiwuQ9YANCBk6ZivNjxzudVTziEQq/
 1Bc8whoTcfbLovLjQMBvQq8BMhKq8NSiyIcB7dYC7+8nnhaoXhW8W6eiA
 zknW7sFWI8hXtXxYJeLlZa+1LY0crHPtSyWCCi8tCcvjgYoSSC2GiYhBp
 KTfTCp4/ZdyCoB4SFwv5KxDjlFuktbswPJCu7biBL5zHLyXGr8/8p7Jk2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="326689800"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="326689800"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 05:08:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="508066092"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 21 Dec 2021 05:08:57 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mzesy-00096Z-Of; Tue, 21 Dec 2021 13:08:56 +0000
Date: Tue, 21 Dec 2021 21:08:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c1d1bf.BqsZusYy1xnNGtw2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0b7e67248a6d282217cb10be3d9d197dc4a52e02
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
branch HEAD: 0b7e67248a6d282217cb10be3d9d197dc4a52e02  i40e: Add a stat for tracking busy rx pages

elapsed time: 953m

configs tested: 98
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
arm                       imx_v4_v5_defconfig
arm                        vexpress_defconfig
mips                       bmips_be_defconfig
powerpc                       maple_defconfig
sh                           se7712_defconfig
arc                            hsdk_defconfig
riscv                    nommu_virt_defconfig
arm                         palmz72_defconfig
sh                             shx3_defconfig
mips                       lemote2f_defconfig
arm                            pleb_defconfig
arm                            xcep_defconfig
sh                           se7722_defconfig
mips                            ar7_defconfig
arm64                            alldefconfig
arm                  randconfig-c002-20211220
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a001-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a005-20211220
i386                 randconfig-a006-20211220
x86_64               randconfig-a013-20211221
x86_64               randconfig-a011-20211221
x86_64               randconfig-a012-20211221
x86_64               randconfig-a015-20211221
x86_64               randconfig-a014-20211221
x86_64               randconfig-a016-20211221
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
arc                  randconfig-r043-20211220
riscv                            allyesconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
i386                 randconfig-a012-20211220
i386                 randconfig-a011-20211220
i386                 randconfig-a013-20211220
i386                 randconfig-a014-20211220
i386                 randconfig-a016-20211220
i386                 randconfig-a015-20211220
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
