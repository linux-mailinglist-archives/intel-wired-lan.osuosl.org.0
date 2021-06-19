Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED6C3AD9CB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jun 2021 13:26:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB1864046A;
	Sat, 19 Jun 2021 11:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZLMmxOeiRfpf; Sat, 19 Jun 2021 11:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CE024049C;
	Sat, 19 Jun 2021 11:26:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CD1D1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jun 2021 11:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AFAF607E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jun 2021 11:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYNK9JeD033T for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jun 2021 11:26:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3358607C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jun 2021 11:26:08 +0000 (UTC)
IronPort-SDR: 8Vrvt+chSP8O2jLmoRXzcaqxL9QIDQq3QwnNGCkFfRtGmXLdX4X238F1WzAL0KBNRFWpjiqD/J
 1SdE7kQBHKsw==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="292294549"
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; d="scan'208";a="292294549"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2021 04:26:06 -0700
IronPort-SDR: NIOh5nCunBKxjW9EKCatTMklhkldf4AMV6S6nVLizVbZRZ0daMziU9d4BWupyw0zXFeaSRT4F8
 29WLGTYXE1Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; d="scan'208";a="555813844"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2021 04:26:05 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1luZ6z-0003Wc-6V; Sat, 19 Jun 2021 11:26:05 +0000
Date: Sat, 19 Jun 2021 19:25:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60cdd439.UXP02lNl2pZE64HF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c69215a1c8f608d4fc969d412bc0ea09d68e782a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: c69215a1c8f608d4fc969d412bc0ea09d68e782a  i40e: Fix log TC creation failure when max num of queues is exceeded

elapsed time: 726m

configs tested: 118
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                      tct_hammer_defconfig
powerpc                       eiger_defconfig
sh                          rsk7269_defconfig
powerpc                     asp8347_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     skiroot_defconfig
nios2                         3c120_defconfig
nds32                             allnoconfig
powerpc64                           defconfig
arm                      pxa255-idp_defconfig
sh                           se7722_defconfig
mips                  maltasmvp_eva_defconfig
m68k                       m5249evb_defconfig
arm                          pxa168_defconfig
mips                         cobalt_defconfig
m68k                        stmark2_defconfig
um                           x86_64_defconfig
powerpc                        fsp2_defconfig
arm                          badge4_defconfig
sh                           se7619_defconfig
powerpc                      pmac32_defconfig
mips                malta_qemu_32r6_defconfig
sh                             espt_defconfig
powerpc                  storcenter_defconfig
s390                             alldefconfig
sh                     magicpanelr2_defconfig
s390                          debug_defconfig
powerpc                     tqm5200_defconfig
arm                       netwinder_defconfig
arc                           tb10x_defconfig
arm                             ezx_defconfig
powerpc                     kmeter1_defconfig
powerpc                       maple_defconfig
powerpc                      ep88xc_defconfig
sparc                            alldefconfig
sh                           sh2007_defconfig
arm                       mainstone_defconfig
m68k                       m5475evb_defconfig
powerpc                         wii_defconfig
xtensa                              defconfig
sh                            migor_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                 randconfig-a002-20210618
i386                 randconfig-a006-20210618
i386                 randconfig-a004-20210618
i386                 randconfig-a001-20210618
i386                 randconfig-a005-20210618
i386                 randconfig-a003-20210618
x86_64               randconfig-a015-20210618
x86_64               randconfig-a011-20210618
x86_64               randconfig-a012-20210618
x86_64               randconfig-a014-20210618
x86_64               randconfig-a016-20210618
x86_64               randconfig-a013-20210618
i386                 randconfig-a015-20210618
i386                 randconfig-a016-20210618
i386                 randconfig-a013-20210618
i386                 randconfig-a014-20210618
i386                 randconfig-a012-20210618
i386                 randconfig-a011-20210618
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210618
x86_64               randconfig-a002-20210618
x86_64               randconfig-a001-20210618
x86_64               randconfig-a004-20210618
x86_64               randconfig-a003-20210618
x86_64               randconfig-a006-20210618
x86_64               randconfig-a005-20210618

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
