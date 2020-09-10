Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5CB2645A6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 14:04:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 360992E19F;
	Thu, 10 Sep 2020 12:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QlTwBoEypje5; Thu, 10 Sep 2020 12:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6A5B2E1AF;
	Thu, 10 Sep 2020 12:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DABB41BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 12:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF46A876B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 12:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 63XjdyAh4TQ6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 12:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17CAC876B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 12:04:09 +0000 (UTC)
IronPort-SDR: Rmp5bBOPpEQ3UW1sWsy+iljPQbOrTvXSur5Ci5/Dt4p4k+wEvMLc0J/S/8l9IiyI0qumeKTbEo
 7iP8lY4AYuZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="159466855"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="159466855"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 05:04:07 -0700
IronPort-SDR: FplRLSrih4+6cT5fNCjg6tEnp0S80PdDhiTSOTRGYz/HfjJdwI8kQYqGVMZ0N/lOoX4q6/lOwL
 aQD8JpYq5vMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="304859935"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 10 Sep 2020 05:04:04 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kGLJ5-0000r6-D5; Thu, 10 Sep 2020 12:04:03 +0000
Date: Thu, 10 Sep 2020 20:03:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f5a15fc.59dFN14r76Fx5BJq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:40GbE] BUILD SUCCESS
 4406e977a4a1e997818b6d77c3218ef8d15b2abf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  40GbE
branch HEAD: 4406e977a4a1e997818b6d77c3218ef8d15b2abf  igc: Fix not considering the TX delay for timestamps

elapsed time: 721m

configs tested: 121
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     powernv_defconfig
powerpc                      mgcoge_defconfig
arm                        neponset_defconfig
m68k                        stmark2_defconfig
mips                           ip27_defconfig
arm                          collie_defconfig
arm                         lpc18xx_defconfig
mips                           jazz_defconfig
m68k                       m5249evb_defconfig
parisc                generic-32bit_defconfig
arm                         assabet_defconfig
arm                            dove_defconfig
arm                         ebsa110_defconfig
arc                        vdk_hs38_defconfig
arm                            lart_defconfig
powerpc                          allmodconfig
arm                         cm_x300_defconfig
sh                ecovec24-romimage_defconfig
csky                                defconfig
i386                                defconfig
sh                          polaris_defconfig
m68k                        mvme16x_defconfig
c6x                              allyesconfig
openrisc                 simple_smp_defconfig
arm                        clps711x_defconfig
openrisc                         alldefconfig
sh                           se7750_defconfig
arm                         hackkit_defconfig
arm                          gemini_defconfig
sh                         microdev_defconfig
arm                          ixp4xx_defconfig
sparc                       sparc32_defconfig
mips                      loongson3_defconfig
mips                  maltasmvp_eva_defconfig
alpha                               defconfig
sh                              ul2_defconfig
powerpc                        cell_defconfig
m68k                          multi_defconfig
arm                         nhk8815_defconfig
sh                           se7206_defconfig
xtensa                    xip_kc705_defconfig
mips                          rb532_defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20200910
x86_64               randconfig-a006-20200910
x86_64               randconfig-a003-20200910
x86_64               randconfig-a002-20200910
x86_64               randconfig-a005-20200910
x86_64               randconfig-a001-20200910
i386                 randconfig-a004-20200909
i386                 randconfig-a005-20200909
i386                 randconfig-a006-20200909
i386                 randconfig-a002-20200909
i386                 randconfig-a001-20200909
i386                 randconfig-a003-20200909
i386                 randconfig-a004-20200910
i386                 randconfig-a006-20200910
i386                 randconfig-a001-20200910
i386                 randconfig-a003-20200910
i386                 randconfig-a002-20200910
i386                 randconfig-a005-20200910
x86_64               randconfig-a004-20200909
x86_64               randconfig-a006-20200909
x86_64               randconfig-a003-20200909
x86_64               randconfig-a001-20200909
x86_64               randconfig-a005-20200909
x86_64               randconfig-a002-20200909
i386                 randconfig-a016-20200909
i386                 randconfig-a015-20200909
i386                 randconfig-a011-20200909
i386                 randconfig-a013-20200909
i386                 randconfig-a014-20200909
i386                 randconfig-a012-20200909
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
x86_64               randconfig-a013-20200909
x86_64               randconfig-a016-20200909
x86_64               randconfig-a011-20200909
x86_64               randconfig-a012-20200909
x86_64               randconfig-a015-20200909
x86_64               randconfig-a014-20200909

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
