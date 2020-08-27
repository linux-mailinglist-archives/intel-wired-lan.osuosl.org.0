Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D74254545
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 14:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 787A0203BD;
	Thu, 27 Aug 2020 12:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBTDMtsxSW6x; Thu, 27 Aug 2020 12:48:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4731203D2;
	Thu, 27 Aug 2020 12:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D51061BF48C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 12:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0966860C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 12:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gMhlaWlYZNoK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 12:47:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC8D585A60
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 12:47:55 +0000 (UTC)
IronPort-SDR: x4qfVAKCrnYIDWoV3zLxrjpmDfl0Wd/xTJCHW5/skTDBTb5eY1+NfoTNfp9z57EPVm63JNN4Cx
 UNUYVm1V4ZPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="157497702"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="157497702"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 05:47:55 -0700
IronPort-SDR: 5w1gtDPqdnZoUJkJAWcof7L7fT0GDzc/cCokaBs90JszrcFrBYs+u+5SCjNQp3HrxX6CBuG8Kp
 aEdD9DW5bobA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="299833188"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2020 05:47:54 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kBHJp-00024l-DV; Thu, 27 Aug 2020 12:47:53 +0000
Date: Thu, 27 Aug 2020 20:47:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f47ab5b.ip8ma4rt2gk1E5lf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 e9ee6f30a4688a20adb3ff64acb67f8e51b7c28d
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
branch HEAD: e9ee6f30a4688a20adb3ff64acb67f8e51b7c28d  ice: add additional debug logging for firmware update

elapsed time: 720m

configs tested: 111
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                         ps3_defconfig
arm                             rpc_defconfig
mips                      malta_kvm_defconfig
mips                           jazz_defconfig
arm                        multi_v5_defconfig
sh                           se7724_defconfig
arm                        neponset_defconfig
arc                     nsimosci_hs_defconfig
powerpc                     mpc5200_defconfig
arm                      pxa255-idp_defconfig
mips                           ip22_defconfig
arm                          pxa3xx_defconfig
sh                             sh03_defconfig
mips                 decstation_r4k_defconfig
sh                          polaris_defconfig
arm                             mxs_defconfig
mips                            ar7_defconfig
arm                       multi_v4t_defconfig
mips                  cavium_octeon_defconfig
nios2                         10m50_defconfig
arm                            mmp2_defconfig
m68k                       m5275evb_defconfig
arm                         palmz72_defconfig
m68k                           sun3_defconfig
nios2                            alldefconfig
c6x                        evmc6678_defconfig
sh                             shx3_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20200826
i386                 randconfig-a004-20200826
i386                 randconfig-a003-20200826
i386                 randconfig-a005-20200826
i386                 randconfig-a006-20200826
i386                 randconfig-a001-20200826
i386                 randconfig-a002-20200827
i386                 randconfig-a004-20200827
i386                 randconfig-a003-20200827
i386                 randconfig-a005-20200827
i386                 randconfig-a006-20200827
i386                 randconfig-a001-20200827
x86_64               randconfig-a015-20200826
x86_64               randconfig-a016-20200826
x86_64               randconfig-a012-20200826
x86_64               randconfig-a014-20200826
x86_64               randconfig-a011-20200826
x86_64               randconfig-a013-20200826
i386                 randconfig-a013-20200827
i386                 randconfig-a012-20200827
i386                 randconfig-a011-20200827
i386                 randconfig-a016-20200827
i386                 randconfig-a015-20200827
i386                 randconfig-a014-20200827
i386                 randconfig-a013-20200826
i386                 randconfig-a012-20200826
i386                 randconfig-a011-20200826
i386                 randconfig-a016-20200826
i386                 randconfig-a015-20200826
i386                 randconfig-a014-20200826
x86_64               randconfig-a003-20200827
x86_64               randconfig-a002-20200827
x86_64               randconfig-a001-20200827
x86_64               randconfig-a005-20200827
x86_64               randconfig-a006-20200827
x86_64               randconfig-a004-20200827
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
