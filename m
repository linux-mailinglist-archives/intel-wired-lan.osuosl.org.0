Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B824833F264
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 15:16:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B9C343264;
	Wed, 17 Mar 2021 14:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s2i6NEhC3Mhw; Wed, 17 Mar 2021 14:16:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEA1F42FDF;
	Wed, 17 Mar 2021 14:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFFBF1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC3116F958
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cr_Rcf6eHnbx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 14:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C49F66F840
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:16:43 +0000 (UTC)
IronPort-SDR: E+lqN38uL+69QGqrR3t/obznPVaQa4MUI2bYJ/Y2xco2I3+XPa5Awc2ZeaN4oKjC0zU9iXcY+F
 K6NNrEjX6XeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="274520394"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="274520394"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 07:16:43 -0700
IronPort-SDR: 88i7ozxACCos4SYxT78BlDlL3lOWIHvOW16BkU8RZPwYuoN0cpNzYRaI12QuKi3JVSHjek0WVu
 1RczwsEK/4Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="511741102"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 17 Mar 2021 07:16:42 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lMWyX-0000j7-IV; Wed, 17 Mar 2021 14:16:41 +0000
Date: Wed, 17 Mar 2021 22:16:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60520f3b.z7wqAwWWwDua/lNL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 1d6c0c9c33e8a72d75b254af8247cdc1cd203345
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
branch HEAD: 1d6c0c9c33e8a72d75b254af8247cdc1cd203345  e1000e: Fix prototype warning

elapsed time: 722m

configs tested: 103
configs skipped: 3

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
i386                             allyesconfig
powerpc                     akebono_defconfig
powerpc                          g5_defconfig
mips                      loongson3_defconfig
microblaze                          defconfig
arm                          pxa910_defconfig
s390                          debug_defconfig
sh                         apsh4a3a_defconfig
m68k                        mvme16x_defconfig
m68k                       bvme6000_defconfig
arm                        neponset_defconfig
sh                          sdk7786_defconfig
mips                         mpc30x_defconfig
powerpc                 mpc836x_mds_defconfig
openrisc                  or1klitex_defconfig
powerpc                     redwood_defconfig
powerpc                      katmai_defconfig
powerpc                      acadia_defconfig
powerpc                    adder875_defconfig
powerpc                      cm5200_defconfig
powerpc                  storcenter_defconfig
sh                   sh7770_generic_defconfig
mips                    maltaup_xpa_defconfig
powerpc                      tqm8xx_defconfig
mips                         tb0287_defconfig
powerpc                     pq2fads_defconfig
powerpc                 mpc8560_ads_defconfig
arm                          pcm027_defconfig
arm                        spear3xx_defconfig
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
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210317
x86_64               randconfig-a001-20210317
x86_64               randconfig-a005-20210317
x86_64               randconfig-a004-20210317
x86_64               randconfig-a003-20210317
x86_64               randconfig-a002-20210317
i386                 randconfig-a001-20210317
i386                 randconfig-a005-20210317
i386                 randconfig-a002-20210317
i386                 randconfig-a003-20210317
i386                 randconfig-a004-20210317
i386                 randconfig-a006-20210317
i386                 randconfig-a013-20210317
i386                 randconfig-a016-20210317
i386                 randconfig-a011-20210317
i386                 randconfig-a012-20210317
i386                 randconfig-a015-20210317
i386                 randconfig-a014-20210317
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20210317
x86_64               randconfig-a016-20210317
x86_64               randconfig-a013-20210317
x86_64               randconfig-a014-20210317
x86_64               randconfig-a015-20210317
x86_64               randconfig-a012-20210317

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
