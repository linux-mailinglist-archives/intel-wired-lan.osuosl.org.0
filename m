Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CA92C0238
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 10:23:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 850842033D;
	Mon, 23 Nov 2020 09:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Ko547hZC8VY; Mon, 23 Nov 2020 09:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52B8520483;
	Mon, 23 Nov 2020 09:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6576E1BF980
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 09:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 62388870B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 09:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ehq7vyqCWkK2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 09:22:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DA77870B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 09:22:57 +0000 (UTC)
IronPort-SDR: QYsdGWPuBW/d+0jROvNRqb2Pqap8UYfmgax5VV+zelCpLCEkRbjHDjx/STSlkS8RbTgEzuhPEG
 elk9CUq7BfyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="256437958"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="256437958"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 01:22:57 -0800
IronPort-SDR: tELqM+SI6y5OaLTs/8O4RMIZnevIa7Z4zSyOb1FKQlFn5EE23fPE0M+6d75orcjss1V2OVgt15
 oo6kXztPnDzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="534391657"
Received: from lkp-server01.sh.intel.com (HELO 1138cb5768e3) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 23 Nov 2020 01:22:56 -0800
Received: from kbuild by 1138cb5768e3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kh83j-00001W-Mt; Mon, 23 Nov 2020 09:22:55 +0000
Date: Mon, 23 Nov 2020 17:22:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fbb7f3d.SB9abPivNrF09Uud%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 cc8971275fe3eea2c629a5a0edb89b058c9167c8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  1GbE
branch HEAD: cc8971275fe3eea2c629a5a0edb89b058c9167c8  e1000e: fix S0ix flow to allow S0i3.2 subset entry

elapsed time: 721m

configs tested: 117
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          polaris_defconfig
arm                         s3c6400_defconfig
mips                        omega2p_defconfig
arm                          ep93xx_defconfig
xtensa                           allyesconfig
powerpc                 linkstation_defconfig
arm                         s5pv210_defconfig
powerpc                       eiger_defconfig
powerpc                 mpc834x_mds_defconfig
arm                  colibri_pxa300_defconfig
powerpc                     pq2fads_defconfig
arm                         bcm2835_defconfig
arm                         lubbock_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                         axm55xx_defconfig
arm                          moxart_defconfig
arm                            lart_defconfig
m68k                          atari_defconfig
m68k                        stmark2_defconfig
sh                           se7780_defconfig
arm                            qcom_defconfig
c6x                        evmc6678_defconfig
powerpc                       ebony_defconfig
sparc                               defconfig
arc                 nsimosci_hs_smp_defconfig
c6x                        evmc6472_defconfig
powerpc                 mpc8272_ads_defconfig
arm                        mini2440_defconfig
arm                        magician_defconfig
mips                      pic32mzda_defconfig
sh                             espt_defconfig
arm                        realview_defconfig
sparc                       sparc64_defconfig
mips                    maltaup_xpa_defconfig
mips                      maltasmvp_defconfig
mips                  maltasmvp_eva_defconfig
mips                          rm200_defconfig
sh                            shmin_defconfig
h8300                               defconfig
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
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
i386                 randconfig-a004-20201123
i386                 randconfig-a003-20201123
i386                 randconfig-a002-20201123
i386                 randconfig-a005-20201123
i386                 randconfig-a001-20201123
i386                 randconfig-a006-20201123
x86_64               randconfig-a015-20201123
x86_64               randconfig-a011-20201123
x86_64               randconfig-a014-20201123
x86_64               randconfig-a016-20201123
x86_64               randconfig-a012-20201123
x86_64               randconfig-a013-20201123
i386                 randconfig-a012-20201123
i386                 randconfig-a013-20201123
i386                 randconfig-a011-20201123
i386                 randconfig-a016-20201123
i386                 randconfig-a014-20201123
i386                 randconfig-a015-20201123
i386                 randconfig-a012-20201122
i386                 randconfig-a013-20201122
i386                 randconfig-a011-20201122
i386                 randconfig-a016-20201122
i386                 randconfig-a014-20201122
i386                 randconfig-a015-20201122
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                               rhel-8.3
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20201123
x86_64               randconfig-a003-20201123
x86_64               randconfig-a004-20201123
x86_64               randconfig-a005-20201123
x86_64               randconfig-a002-20201123
x86_64               randconfig-a001-20201123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
