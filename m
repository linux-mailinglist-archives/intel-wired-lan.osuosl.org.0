Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9A648833E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jan 2022 12:36:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 019BA4012E;
	Sat,  8 Jan 2022 11:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ha5K7W9bzHeo; Sat,  8 Jan 2022 11:36:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46F46400FF;
	Sat,  8 Jan 2022 11:36:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2673B1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 11:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 115B64012E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 11:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sUUZb3ZUfpa for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jan 2022 11:35:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2D2E400FF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 11:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641641754; x=1673177754;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=56WY/GwRFrEL2sZ6SwchhhlxBL/46ErrrcVNzI4bbYs=;
 b=P52QKBmxeikpHaaVP/kFrJfPThe5XdQs67OBs2ygKrM6f/k9mXFJ4FNg
 DL7F1ElRGJozF93pcPqdABqejBtDhL7KRYnolr2OBniEkuOuhenNVPm//
 g23LCbQbn65p7lYH7y4rFUqGJlFh3+Am0z3BEkvctMxwSvUxun3Xa8Ehl
 St20rfRpxYby26cXnYevsQ5jfc78ZzB4A9uFNU3+6av2fCJmuRqJxz5+n
 LIXVZK+akHOpHyFHW4i2pUI6sNQMaWUD/1OSE/Z7vH2bZ6NhVuFgt4wjI
 oYUjqsHxyxtI5/PxK7J/8mrBmm2q+8NtHkpte0Xewc8i5j/zkufl2EfiF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="306369345"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="306369345"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2022 03:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="690079979"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 08 Jan 2022 03:35:53 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n6A0m-0000aV-BQ; Sat, 08 Jan 2022 11:35:52 +0000
Date: Sat, 08 Jan 2022 19:35:16 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61d976f4.ZnSP5A4En2YDWKER%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 c25af830ab2608ef1dd5e4dada702ce1437ea8e7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: c25af830ab2608ef1dd5e4dada702ce1437ea8e7  sch_cake: revise Diffserv docs

elapsed time: 1089m

configs tested: 136
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220107
arm                         cm_x300_defconfig
arm                         lpc18xx_defconfig
sh                          landisk_defconfig
sparc                               defconfig
sh                            shmin_defconfig
m68k                       m5475evb_defconfig
powerpc                 linkstation_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                         assabet_defconfig
sparc                            allyesconfig
h8300                            alldefconfig
arm                          simpad_defconfig
sh                           se7750_defconfig
arm                          iop32x_defconfig
powerpc                 canyonlands_defconfig
h8300                            allyesconfig
powerpc                    sam440ep_defconfig
um                             i386_defconfig
riscv             nommu_k210_sdcard_defconfig
m68k                       m5208evb_defconfig
powerpc                      arches_defconfig
xtensa                              defconfig
sh                              ul2_defconfig
um                                  defconfig
arm                  randconfig-c002-20220107
arm                  randconfig-c002-20220108
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20220107
x86_64               randconfig-a001-20220107
x86_64               randconfig-a004-20220107
x86_64               randconfig-a006-20220107
x86_64               randconfig-a002-20220107
x86_64               randconfig-a003-20220107
i386                 randconfig-a003-20220107
i386                 randconfig-a005-20220107
i386                 randconfig-a004-20220107
i386                 randconfig-a006-20220107
i386                 randconfig-a002-20220107
i386                 randconfig-a001-20220107
x86_64               randconfig-a015-20220108
x86_64               randconfig-a012-20220108
x86_64               randconfig-a014-20220108
x86_64               randconfig-a013-20220108
x86_64               randconfig-a011-20220108
x86_64               randconfig-a016-20220108
s390                 randconfig-r044-20220108
arc                  randconfig-r043-20220108
riscv                randconfig-r042-20220108
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220108
mips                 randconfig-c004-20220108
i386                 randconfig-c001-20220108
riscv                randconfig-c006-20220108
s390                 randconfig-c005-20220108
powerpc              randconfig-c003-20220108
x86_64               randconfig-c007-20220108
mips                 randconfig-c004-20220107
arm                  randconfig-c002-20220107
i386                 randconfig-c001-20220107
riscv                randconfig-c006-20220107
powerpc              randconfig-c003-20220107
s390                 randconfig-c005-20220107
x86_64               randconfig-c007-20220107
mips                           ip28_defconfig
powerpc                      katmai_defconfig
arm                        mvebu_v5_defconfig
powerpc                     tqm8560_defconfig
powerpc                     skiroot_defconfig
x86_64               randconfig-a012-20220107
x86_64               randconfig-a015-20220107
x86_64               randconfig-a014-20220107
x86_64               randconfig-a013-20220107
x86_64               randconfig-a011-20220107
x86_64               randconfig-a016-20220107
i386                 randconfig-a012-20220107
i386                 randconfig-a016-20220107
i386                 randconfig-a014-20220107
i386                 randconfig-a015-20220107
i386                 randconfig-a011-20220107
i386                 randconfig-a013-20220107
x86_64               randconfig-a005-20220108
x86_64               randconfig-a001-20220108
x86_64               randconfig-a004-20220108
x86_64               randconfig-a006-20220108
x86_64               randconfig-a003-20220108
x86_64               randconfig-a002-20220108
hexagon              randconfig-r041-20220107
hexagon              randconfig-r045-20220107
riscv                randconfig-r042-20220107
s390                 randconfig-r044-20220107

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
