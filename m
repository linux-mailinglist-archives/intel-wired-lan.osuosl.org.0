Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB362511E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 08:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 64F98226F5;
	Tue, 25 Aug 2020 06:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lfJuWRzvLHBb; Tue, 25 Aug 2020 06:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0DF3122718;
	Tue, 25 Aug 2020 06:12:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FF2C1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 06:12:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D46C226F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 06:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vqs4U4tf03TC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 06:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id C1C1F1FEAE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 06:12:52 +0000 (UTC)
IronPort-SDR: PdyunxSylSpeWEqZ/+k2hAk045B1zoK0DII5+EpURFLHGpLZZxVpr18MR7pZ+MvLj3j9NquLo2
 5Hj6qHb6GSGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="240870350"
X-IronPort-AV: E=Sophos;i="5.76,351,1592895600"; d="scan'208";a="240870350"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 23:12:51 -0700
IronPort-SDR: DsQzD/S78V9zUY0dnEolcUm4ErAkcVqI2vUOzkOY4er2pl09HPAABR7xvbGqz0Vj1+RG0QtbzP
 1SWO37OeRCWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,351,1592895600"; d="scan'208";a="294873884"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 24 Aug 2020 23:12:50 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kASCQ-0000Al-2F; Tue, 25 Aug 2020 06:12:50 +0000
Date: Tue, 25 Aug 2020 14:12:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f44abc2.1OV7lWH8vyycefSh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 92c229309b21e403ddc121c38a1a2f4e984a2483
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 92c229309b21e403ddc121c38a1a2f4e984a2483  igb: read PBA number from flash

Error/Warning in current branch:

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2269:15: error: redefinition of 'truesize'
ld.lld: error: n_tty.c:(.text.fixup+0x4): relocation R_ARM_JUMP24 out of range: 35756372 is not in [-33554432, 33554431]
ld.lld: error: n_tty.c:(.text.fixup+0xC): relocation R_ARM_JUMP24 out of range: 35762304 is not in [-33554432, 33554431]
ld.lld: error: tty_ioctl.c:(.text.fixup+0x4): relocation R_ARM_JUMP24 out of range: 35829788 is not in [-33554432, 33554431]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- arc-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
`-- powerpc-defconfig
    `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize

clang_recent_errors
`-- arm-randconfig-r025-20200824
    |-- ld.lld:error:n_tty.c:(.text.fixup):relocation-R_ARM_JUMP24-out-of-range:is-not-in
    |-- ld.lld:error:n_tty.c:(.text.fixupC):relocation-R_ARM_JUMP24-out-of-range:is-not-in
    `-- ld.lld:error:tty_ioctl.c:(.text.fixup):relocation-R_ARM_JUMP24-out-of-range:is-not-in

elapsed time: 723m

configs tested: 83
configs skipped: 3

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
xtensa                generic_kc705_defconfig
powerpc                      ppc64e_defconfig
arm                            xcep_defconfig
mips                      pistachio_defconfig
mips                        vocore2_defconfig
arm                            zeus_defconfig
arm                              zx_defconfig
arc                              alldefconfig
arm                          badge4_defconfig
sh                          sdk7780_defconfig
sh                          r7785rp_defconfig
arm                             rpc_defconfig
h8300                    h8300h-sim_defconfig
powerpc64                        alldefconfig
arm                            mps2_defconfig
sh                           se7721_defconfig
arm                         nhk8815_defconfig
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
i386                 randconfig-a002-20200824
i386                 randconfig-a004-20200824
i386                 randconfig-a005-20200824
i386                 randconfig-a003-20200824
i386                 randconfig-a006-20200824
i386                 randconfig-a001-20200824
x86_64               randconfig-a015-20200824
x86_64               randconfig-a016-20200824
x86_64               randconfig-a012-20200824
x86_64               randconfig-a014-20200824
x86_64               randconfig-a011-20200824
x86_64               randconfig-a013-20200824
i386                 randconfig-a013-20200824
i386                 randconfig-a012-20200824
i386                 randconfig-a011-20200824
i386                 randconfig-a016-20200824
i386                 randconfig-a015-20200824
i386                 randconfig-a014-20200824
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
