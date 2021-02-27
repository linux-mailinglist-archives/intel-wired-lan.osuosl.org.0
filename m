Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B43AF326D78
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Feb 2021 16:06:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D74E4AE87;
	Sat, 27 Feb 2021 15:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gBQqxTz_QSb; Sat, 27 Feb 2021 15:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8574E4F067;
	Sat, 27 Feb 2021 15:06:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2071BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Feb 2021 15:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7A24605E2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Feb 2021 15:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Ks6TqS6n0Q9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Feb 2021 15:06:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 456386F549
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Feb 2021 15:06:22 +0000 (UTC)
IronPort-SDR: aTn35k3rju0QZD6/uVKdxcPDcIPslYy9xfL5Er5BCQ+28ZDRwTrJCwfpNgXVgRunVUzH1MtciY
 3Rq/2GtElB9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="182705350"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; d="scan'208";a="182705350"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2021 07:06:21 -0800
IronPort-SDR: xYxGPiTY97cYDyG28WJ9aEhSzMJHSx311+8jihQRNChVpiM8v7YMXlCoIgR+om0Y8B/H97VqGa
 suPaqVUV7IsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; d="scan'208";a="443531437"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 27 Feb 2021 07:06:20 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lG1Ah-0003kO-TS; Sat, 27 Feb 2021 15:06:19 +0000
Date: Sat, 27 Feb 2021 23:05:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <603a5fbd.oYtwqLJcusfzVIEG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 94c839566603f723f6914a6b23014a6110636ec8
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
branch HEAD: 94c839566603f723f6914a6b23014a6110636ec8  igb: unbreak I2C bit-banging on i350

elapsed time: 723m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7724_defconfig
powerpc                      arches_defconfig
mips                      bmips_stb_defconfig
arm                          simpad_defconfig
sh                     magicpanelr2_defconfig
arm                             pxa_defconfig
arm                        shmobile_defconfig
m68k                            mac_defconfig
riscv                            allmodconfig
powerpc                        icon_defconfig
parisc                generic-32bit_defconfig
powerpc                     sequoia_defconfig
xtensa                       common_defconfig
mips                   sb1250_swarm_defconfig
powerpc                  mpc885_ads_defconfig
arm                        spear6xx_defconfig
m68k                        m5407c3_defconfig
arc                         haps_hs_defconfig
mips                          malta_defconfig
powerpc                    gamecube_defconfig
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
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                 randconfig-a005-20210227
i386                 randconfig-a006-20210227
i386                 randconfig-a004-20210227
i386                 randconfig-a001-20210227
i386                 randconfig-a003-20210227
i386                 randconfig-a002-20210227
x86_64               randconfig-a015-20210227
x86_64               randconfig-a011-20210227
x86_64               randconfig-a012-20210227
x86_64               randconfig-a016-20210227
x86_64               randconfig-a013-20210227
x86_64               randconfig-a014-20210227
i386                 randconfig-a013-20210227
i386                 randconfig-a012-20210227
i386                 randconfig-a011-20210227
i386                 randconfig-a014-20210227
i386                 randconfig-a016-20210227
i386                 randconfig-a015-20210227
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

clang tested configs:
x86_64               randconfig-a001-20210227
x86_64               randconfig-a002-20210227
x86_64               randconfig-a003-20210227
x86_64               randconfig-a005-20210227
x86_64               randconfig-a004-20210227
x86_64               randconfig-a006-20210227

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
