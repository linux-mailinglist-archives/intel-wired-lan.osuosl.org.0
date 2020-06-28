Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C152720C54A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Jun 2020 03:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 786C688072;
	Sun, 28 Jun 2020 01:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YacDuATmkJNG; Sun, 28 Jun 2020 01:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AED2E8815B;
	Sun, 28 Jun 2020 01:56:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 927B11BF40F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jun 2020 01:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72221204B5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jun 2020 01:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QnbVZcAGTqQg for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Jun 2020 01:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 245C3204B3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jun 2020 01:56:27 +0000 (UTC)
IronPort-SDR: TMVlbXpmmTYklBUEy/6mb2SdqUUQ9aWhRFWj7E72hbkQh4mlzffI2QeyMK9vmz4GgSa8sR7eKg
 GhFMw6EHdw9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9665"; a="210836029"
X-IronPort-AV: E=Sophos;i="5.75,289,1589266800"; d="scan'208";a="210836029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2020 18:56:26 -0700
IronPort-SDR: jffnGACmIfza+krBWPFB+XAKaLxovSTEpBtmUQ9ngbyeeClpldl7lnH6ljchQ4APTO3p/qbft3
 g3ROe1rJQXWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,289,1589266800"; d="scan'208";a="280515341"
Received: from lkp-server01.sh.intel.com (HELO 538b5e3c8319) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 27 Jun 2020 18:56:25 -0700
Received: from kbuild by 538b5e3c8319 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jpMYT-00033b-6d; Sun, 28 Jun 2020 01:56:25 +0000
Date: Sun, 28 Jun 2020 09:56:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ef7f8bd.QhumbmwXYP9ClWzS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 1a363920811df08c82373993c3df461dae60b10c
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
branch HEAD: 1a363920811df08c82373993c3df461dae60b10c  ice: Fix a couple off by one bugs

elapsed time: 1614m

configs tested: 135
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
powerpc                      chrp32_defconfig
arc                 nsimosci_hs_smp_defconfig
arm64                            alldefconfig
sh                          sdk7786_defconfig
m68k                          sun3x_defconfig
arc                     haps_hs_smp_defconfig
powerpc                          g5_defconfig
mips                        jmr3927_defconfig
s390                             allyesconfig
sh                           se7751_defconfig
arm                       imx_v6_v7_defconfig
arm                            xcep_defconfig
arm                      pxa255-idp_defconfig
arm                          tango4_defconfig
nios2                               defconfig
m68k                       m5475evb_defconfig
arc                         haps_hs_defconfig
h8300                               defconfig
arm                         cm_x300_defconfig
sh                         microdev_defconfig
m68k                             allmodconfig
powerpc                       ppc64_defconfig
h8300                            allyesconfig
arm                            lart_defconfig
m68k                          atari_defconfig
arm                        mini2440_defconfig
arm                          pxa168_defconfig
arc                                 defconfig
arm                             pxa_defconfig
arm                         lpc18xx_defconfig
mips                           ip27_defconfig
arm                     eseries_pxa_defconfig
mips                      loongson3_defconfig
m68k                             alldefconfig
nios2                         10m50_defconfig
mips                     decstation_defconfig
arm                       versatile_defconfig
mips                          ath25_defconfig
mips                        nlm_xlp_defconfig
sparc                            allyesconfig
arm                       netwinder_defconfig
mips                    maltaup_xpa_defconfig
powerpc                    gamecube_defconfig
ia64                                defconfig
h8300                       h8s-sim_defconfig
sh                          landisk_defconfig
sh                          kfr2r09_defconfig
mips                  maltasmvp_eva_defconfig
sh                         apsh4a3a_defconfig
openrisc                    or1ksim_defconfig
arm                         axm55xx_defconfig
ia64                              allnoconfig
mips                      pistachio_defconfig
arm                          ixp4xx_defconfig
arm                       spear13xx_defconfig
parisc                            allnoconfig
mips                           jazz_defconfig
x86_64                           alldefconfig
arm                         s3c2410_defconfig
powerpc                     mpc512x_defconfig
openrisc                 simple_smp_defconfig
sh                           cayman_defconfig
arm                         bcm2835_defconfig
sh                  sh7785lcr_32bit_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                             allyesconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
