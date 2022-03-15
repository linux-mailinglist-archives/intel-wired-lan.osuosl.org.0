Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF934D9B9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Mar 2022 13:50:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7387340286;
	Tue, 15 Mar 2022 12:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vLkR71bHxKzv; Tue, 15 Mar 2022 12:50:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04E9C40180;
	Tue, 15 Mar 2022 12:50:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5ACF81BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 12:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46ACA84190
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 12:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t1RC9TgYAfUE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Mar 2022 12:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 590D18417E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 12:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647348592; x=1678884592;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qChKihQwmZ51Ju1PUhOARp4f6HYUl8Ynz36pA4GDacg=;
 b=LdoovArKbQNWLyuScT5jWqUsLUAtctlPQMjHIXJ45SH+ULt68y6kcCQ4
 hxX67+Vhig6dUK6kWNy6IXQ/MgUnx3v8Hb+NNeoqqRYyEiLSgVZOpmwyN
 U6LuMGsrA3Sj9ChY25t+/Ku6JLRhBADba0TOhowHj7CeM3Pooy5v/A4oh
 Acoq/MUbB/of3ro3VfMpqt4y2fAYwpuW8Gd6ctb+1OQ2vV39CK4HEhfPx
 fQQIGdToLUiM+vJkMJoclGUsnl3z99RM9ncbTUjasiEiv8T9YaIm/8igs
 ZF5xLpTWn4YBvZZCQCXDZi0e1b+I6s0lKyDtapF67JvT/MJ2tb/FriM7w A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236893771"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="236893771"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 05:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="598296746"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 15 Mar 2022 05:49:49 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nU6cX-000AyV-8B; Tue, 15 Mar 2022 12:49:49 +0000
Date: Tue, 15 Mar 2022 20:48:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62308b31.7Jp5EhgpKx8fwvko%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 35d262354e0af95026f495b3e9d5ba0763160b0d
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
branch HEAD: 35d262354e0af95026f495b3e9d5ba0763160b0d  ice: destroy flow director filter mutex after releasing VSIs

elapsed time: 722m

configs tested: 107
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
x86_64                              defconfig
arm                       imx_v6_v7_defconfig
arm                         nhk8815_defconfig
powerpc                      pasemi_defconfig
xtensa                              defconfig
h8300                    h8300h-sim_defconfig
arm                             pxa_defconfig
arc                         haps_hs_defconfig
sh                         ap325rxa_defconfig
m68k                         amcore_defconfig
m68k                       bvme6000_defconfig
sh                          rsk7201_defconfig
xtensa                  nommu_kc705_defconfig
sh                            hp6xx_defconfig
m68k                          atari_defconfig
arm                  randconfig-c002-20220314
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a002-20220314
x86_64               randconfig-a001-20220314
x86_64               randconfig-a003-20220314
x86_64               randconfig-a004-20220314
x86_64               randconfig-a006-20220314
x86_64               randconfig-a005-20220314
i386                 randconfig-a001-20220314
i386                 randconfig-a002-20220314
i386                 randconfig-a004-20220314
i386                 randconfig-a006-20220314
i386                 randconfig-a003-20220314
i386                 randconfig-a005-20220314
arc                  randconfig-r043-20220313
riscv                randconfig-r042-20220313
s390                 randconfig-r044-20220313
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                     tqm8560_defconfig
arm                   milbeaut_m10v_defconfig
mips                           mtx1_defconfig
arm                         shannon_defconfig
mips                            e55_defconfig
arm                        neponset_defconfig
x86_64               randconfig-a013-20220314
x86_64               randconfig-a012-20220314
x86_64               randconfig-a011-20220314
x86_64               randconfig-a014-20220314
x86_64               randconfig-a015-20220314
x86_64               randconfig-a016-20220314
i386                 randconfig-a012-20220314
i386                 randconfig-a011-20220314
i386                 randconfig-a013-20220314
i386                 randconfig-a014-20220314
i386                 randconfig-a015-20220314
i386                 randconfig-a016-20220314
hexagon              randconfig-r045-20220313
hexagon              randconfig-r041-20220313

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
