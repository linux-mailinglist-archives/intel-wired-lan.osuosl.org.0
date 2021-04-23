Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C1F3691AC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 14:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EDE7615C7;
	Fri, 23 Apr 2021 12:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7M5sFtin7VM; Fri, 23 Apr 2021 12:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18C3160DD8;
	Fri, 23 Apr 2021 12:00:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAB6B1BF283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:00:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 985D040F6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtpMTdHQuLEd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 12:00:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55D3C4055D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 12:00:03 +0000 (UTC)
IronPort-SDR: zB+GaRh9RJfl7mY4518eGIY3HIUBN8k+MY0fAz3vozeQWEJMANbhg5ymZQK/ZYPJfm/EtV+SNC
 iJ6UqnzDSSKw==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="176178184"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="176178184"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 05:00:02 -0700
IronPort-SDR: gcw+cLWZkMgfiI0ojQWgslDff6IJeDJ9Mw9CTsTfeI6KvQcjM+mLFRKiwQm+658xSBM+AvA5Tr
 Y7Nc6RB7Qafw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="617960259"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Apr 2021 05:00:01 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lZuTZ-0004eM-83; Fri, 23 Apr 2021 12:00:01 +0000
Date: Fri, 23 Apr 2021 19:59:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6082b689.EdD9eT4xmjpPxfVW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5ee9f22fb30f02076233f8fb105f83ff68fe6dbc
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
branch HEAD: 5ee9f22fb30f02076233f8fb105f83ff68fe6dbc  igb: Check if num of q_vectors is smaller than max before array access

elapsed time: 723m

configs tested: 114
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
riscv                            allyesconfig
um                           x86_64_defconfig
sh                            titan_defconfig
powerpc                  storcenter_defconfig
riscv                             allnoconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      ep88xc_defconfig
arm                     eseries_pxa_defconfig
parisc                           alldefconfig
powerpc                      mgcoge_defconfig
mips                        omega2p_defconfig
arm                          exynos_defconfig
arm                         bcm2835_defconfig
openrisc                            defconfig
sh                          r7785rp_defconfig
m68k                           sun3_defconfig
sh                        sh7785lcr_defconfig
arm                          lpd270_defconfig
xtensa                         virt_defconfig
openrisc                         alldefconfig
sh                          rsk7269_defconfig
powerpc                     powernv_defconfig
powerpc                   currituck_defconfig
ia64                      gensparse_defconfig
sh                           se7750_defconfig
sh                          lboxre2_defconfig
h8300                       h8s-sim_defconfig
sparc                               defconfig
powerpc                     ep8248e_defconfig
mips                          rb532_defconfig
powerpc                     tqm8548_defconfig
powerpc                     mpc512x_defconfig
arm                         at91_dt_defconfig
arm                         palmz72_defconfig
arm                            dove_defconfig
mips                            e55_defconfig
arm                           sunxi_defconfig
powerpc                 mpc8315_rdb_defconfig
sh                           se7722_defconfig
m68k                       m5208evb_defconfig
powerpc                      arches_defconfig
m68k                            mac_defconfig
arm                          pxa910_defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210423
x86_64               randconfig-a004-20210423
x86_64               randconfig-a001-20210423
x86_64               randconfig-a005-20210423
x86_64               randconfig-a006-20210423
x86_64               randconfig-a003-20210423
i386                 randconfig-a005-20210423
i386                 randconfig-a002-20210423
i386                 randconfig-a001-20210423
i386                 randconfig-a006-20210423
i386                 randconfig-a004-20210423
i386                 randconfig-a003-20210423
i386                 randconfig-a014-20210423
i386                 randconfig-a012-20210423
i386                 randconfig-a011-20210423
i386                 randconfig-a013-20210423
i386                 randconfig-a015-20210423
i386                 randconfig-a016-20210423
i386                 randconfig-a012-20210421
i386                 randconfig-a014-20210421
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
