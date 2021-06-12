Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7C93A4C98
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Jun 2021 06:10:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EEE840004;
	Sat, 12 Jun 2021 04:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kULW1n9PHLhi; Sat, 12 Jun 2021 04:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D182400C4;
	Sat, 12 Jun 2021 04:09:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFA831BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jun 2021 04:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6A0E60610
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jun 2021 04:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3AsIRGZQujN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Jun 2021 04:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29CA6605B0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jun 2021 04:09:44 +0000 (UTC)
IronPort-SDR: Qxy7ZanLE0vDyC72IoIIjVGiv/u6oCYqlceh0qpvCeYfnGQg3n90kHb17GeT2hhZ88i5mC4mww
 J/dJ6er3YKKA==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="186018000"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="186018000"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 21:09:41 -0700
IronPort-SDR: 0HW0mbwVqynXPJiELiD5g28Z+wzm4EOW/NiCUrOTi7CbJ7ky2g2qv6WatRwTg6v/BEnebqKIqr
 hbWscTNGCo2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="450982761"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 11 Jun 2021 21:09:40 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lruxo-0000p6-Re; Sat, 12 Jun 2021 04:09:40 +0000
Date: Sat, 12 Jun 2021 12:09:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60c43367.nybp/FdKR2ncIhod%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 ea9b847cda647b9849b0b9fa0447e876a1ac62e1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: ea9b847cda647b9849b0b9fa0447e876a1ac62e1  ice: enable transmit timestamps for E810 devices

elapsed time: 724m

configs tested: 113
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          sdk7786_defconfig
m68k                         amcore_defconfig
arm                        mini2440_defconfig
x86_64                            allnoconfig
arm                          collie_defconfig
m68k                        m5307c3_defconfig
powerpc                      acadia_defconfig
sh                     sh7710voipgw_defconfig
mips                  maltasmvp_eva_defconfig
mips                malta_qemu_32r6_defconfig
mips                      loongson3_defconfig
powerpc                     kmeter1_defconfig
mips                           ci20_defconfig
arc                          axs103_defconfig
xtensa                generic_kc705_defconfig
arm                        shmobile_defconfig
arm                       imx_v6_v7_defconfig
ia64                          tiger_defconfig
mips                         tb0226_defconfig
arm                           sunxi_defconfig
sh                                  defconfig
sh                          rsk7203_defconfig
mips                      fuloong2e_defconfig
sh                        edosk7760_defconfig
sh                   rts7751r2dplus_defconfig
xtensa                  nommu_kc705_defconfig
arm                  colibri_pxa300_defconfig
m68k                       m5249evb_defconfig
powerpc                          g5_defconfig
mips                           rs90_defconfig
arm                            mps2_defconfig
powerpc                    ge_imp3a_defconfig
mips                        omega2p_defconfig
mips                        bcm47xx_defconfig
xtensa                       common_defconfig
sh                        dreamcast_defconfig
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
x86_64               randconfig-a002-20210611
x86_64               randconfig-a001-20210611
x86_64               randconfig-a004-20210611
x86_64               randconfig-a003-20210611
x86_64               randconfig-a006-20210611
x86_64               randconfig-a005-20210611
i386                 randconfig-a002-20210611
i386                 randconfig-a006-20210611
i386                 randconfig-a004-20210611
i386                 randconfig-a001-20210611
i386                 randconfig-a005-20210611
i386                 randconfig-a003-20210611
i386                 randconfig-a015-20210611
i386                 randconfig-a013-20210611
i386                 randconfig-a016-20210611
i386                 randconfig-a014-20210611
i386                 randconfig-a012-20210611
i386                 randconfig-a011-20210611
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210611
x86_64               randconfig-a011-20210611
x86_64               randconfig-a012-20210611
x86_64               randconfig-a014-20210611
x86_64               randconfig-a016-20210611
x86_64               randconfig-a013-20210611

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
