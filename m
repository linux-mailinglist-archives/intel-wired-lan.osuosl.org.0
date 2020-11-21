Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EFC2BC038
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 16:25:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F201F20420;
	Sat, 21 Nov 2020 15:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCpTZeGe90Ze; Sat, 21 Nov 2020 15:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 766C520457;
	Sat, 21 Nov 2020 15:23:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BCC21BF355
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 087AC86A5E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igPAqk69Z+Cd for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 15:23:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95E6786A4C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 15:23:41 +0000 (UTC)
IronPort-SDR: ahLPLNE8OUFTRaeMybhMovGbcdtFnw+ih+rKmKu48o7MAZAaDVveoBr/85HbXH+LRR0hlHozPU
 iz4OMdp3E8GA==
X-IronPort-AV: E=McAfee;i="6000,8403,9812"; a="169028696"
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; d="scan'208";a="169028696"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2020 07:23:35 -0800
IronPort-SDR: jBL597R/s9VNk+4eR1WdopX8NZWEUF9pzOzAydTapbOTTiu2Z439WrVTQ8Z0NzGkOkRx3S7/3A
 I+ik3ioRN/lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; d="scan'208";a="360837858"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 21 Nov 2020 07:23:34 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kgUjd-0000Kv-OA; Sat, 21 Nov 2020 15:23:33 +0000
Date: Sat, 21 Nov 2020 23:22:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fb930c9.Lgzljkd4ah+W7tvw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7c35f45c9543dcb7fcfd36fcd8a486697df34c33
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  dev-queue
branch HEAD: 7c35f45c9543dcb7fcfd36fcd8a486697df34c33  ice: Fix trivial error message

elapsed time: 723m

configs tested: 89
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                        vdk_hs38_defconfig
sh                   sh7724_generic_defconfig
powerpc                 mpc8540_ads_defconfig
riscv                          rv32_defconfig
nds32                               defconfig
arm                         lpc32xx_defconfig
arm                       cns3420vb_defconfig
arm                     am200epdkit_defconfig
alpha                               defconfig
mips                           ip32_defconfig
powerpc                     ppa8548_defconfig
sh                           se7780_defconfig
arm                  colibri_pxa300_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 canyonlands_defconfig
arc                         haps_hs_defconfig
arm                        mini2440_defconfig
powerpc                        cell_defconfig
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
nios2                            allyesconfig
csky                                defconfig
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
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201120
i386                 randconfig-a003-20201120
i386                 randconfig-a002-20201120
i386                 randconfig-a005-20201120
i386                 randconfig-a001-20201120
i386                 randconfig-a006-20201120
x86_64               randconfig-a015-20201121
x86_64               randconfig-a011-20201121
x86_64               randconfig-a014-20201121
x86_64               randconfig-a016-20201121
x86_64               randconfig-a012-20201121
x86_64               randconfig-a013-20201121
i386                 randconfig-a012-20201120
i386                 randconfig-a013-20201120
i386                 randconfig-a011-20201120
i386                 randconfig-a016-20201120
i386                 randconfig-a014-20201120
i386                 randconfig-a015-20201120
x86_64               randconfig-a006-20201120
x86_64               randconfig-a003-20201120
x86_64               randconfig-a004-20201120
x86_64               randconfig-a005-20201120
x86_64               randconfig-a001-20201120
x86_64               randconfig-a002-20201120
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
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
