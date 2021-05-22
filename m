Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB3538D54A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 May 2021 12:48:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7091760793;
	Sat, 22 May 2021 10:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sfXpd8HdYUZJ; Sat, 22 May 2021 10:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 652E86065F;
	Sat, 22 May 2021 10:47:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2DC1BF873
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 May 2021 10:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CE6283C74
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 May 2021 10:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7YmfiOb9Tdp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 May 2021 10:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BF8883C73
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 May 2021 10:47:53 +0000 (UTC)
IronPort-SDR: G3cR6VFjnJLr7sLRiepAxoMfpW6jB9SCoWr2IguXAqACoV+8dA7W2cGGvjLjQQ5dnsLOZK1T3c
 zj5H9mKhnjnw==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="201368642"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="201368642"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2021 03:47:52 -0700
IronPort-SDR: RQlKhS8ZJsvZB2TgJUTVsV5zEpbcaf3ddYMc3OSL2K86D+1Mrz9eRGm3c5hd8A0PuNT0eGyXxB
 cBd1/FnNYliw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="395658884"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2021 03:47:51 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lkPAc-00001O-Bv; Sat, 22 May 2021 10:47:50 +0000
Date: Sat, 22 May 2021 18:47:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60a8e148.HGgFCs7Hoc1fg5c3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 195d5c0af7c74d6d60ae57ad2ff53f50c8216302
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
branch HEAD: 195d5c0af7c74d6d60ae57ad2ff53f50c8216302  i40e: Fix failed opcode appearing if handling messages from VF

elapsed time: 2127m

configs tested: 133
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
arm                            qcom_defconfig
powerpc                    klondike_defconfig
arm                        realview_defconfig
mips                        qi_lb60_defconfig
mips                           rs90_defconfig
sh                           se7721_defconfig
arm                  colibri_pxa300_defconfig
mips                malta_qemu_32r6_defconfig
arc                            hsdk_defconfig
mips                            e55_defconfig
xtensa                  nommu_kc705_defconfig
arm                         shannon_defconfig
powerpc                       maple_defconfig
mips                        jmr3927_defconfig
mips                       capcella_defconfig
powerpc                     tqm8560_defconfig
ia64                             allmodconfig
powerpc                     tqm8541_defconfig
powerpc                      pcm030_defconfig
m68k                       m5475evb_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                    mvme5100_defconfig
mips                         rt305x_defconfig
mips                        workpad_defconfig
m68k                            q40_defconfig
arm                       netwinder_defconfig
arm                            hisi_defconfig
arm                            zeus_defconfig
arm                       aspeed_g5_defconfig
parisc                generic-64bit_defconfig
arm                           viper_defconfig
arc                        nsimosci_defconfig
mips                         tb0287_defconfig
arm                       aspeed_g4_defconfig
mips                      malta_kvm_defconfig
arm                         palmz72_defconfig
arm                        vexpress_defconfig
powerpc                      walnut_defconfig
arc                    vdk_hs38_smp_defconfig
openrisc                 simple_smp_defconfig
mips                        vocore2_defconfig
powerpc                      makalu_defconfig
x86_64                            allnoconfig
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
i386                 randconfig-a001-20210521
i386                 randconfig-a005-20210521
i386                 randconfig-a002-20210521
i386                 randconfig-a006-20210521
i386                 randconfig-a003-20210521
i386                 randconfig-a004-20210521
x86_64               randconfig-a013-20210521
x86_64               randconfig-a014-20210521
x86_64               randconfig-a012-20210521
x86_64               randconfig-a016-20210521
x86_64               randconfig-a015-20210521
x86_64               randconfig-a011-20210521
i386                 randconfig-a016-20210520
i386                 randconfig-a011-20210520
i386                 randconfig-a015-20210520
i386                 randconfig-a012-20210520
i386                 randconfig-a014-20210520
i386                 randconfig-a013-20210520
i386                 randconfig-a016-20210521
i386                 randconfig-a011-20210521
i386                 randconfig-a015-20210521
i386                 randconfig-a012-20210521
i386                 randconfig-a014-20210521
i386                 randconfig-a013-20210521
x86_64               randconfig-a001-20210520
x86_64               randconfig-a006-20210520
x86_64               randconfig-a005-20210520
x86_64               randconfig-a003-20210520
x86_64               randconfig-a004-20210520
x86_64               randconfig-a002-20210520
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210521
x86_64               randconfig-a013-20210520
x86_64               randconfig-a014-20210520
x86_64               randconfig-a012-20210520
x86_64               randconfig-a016-20210520
x86_64               randconfig-a015-20210520
x86_64               randconfig-a011-20210520

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
