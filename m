Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3BD202342
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jun 2020 12:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5B04241A8;
	Sat, 20 Jun 2020 10:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aDyIhitn9QWp; Sat, 20 Jun 2020 10:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 86826231F2;
	Sat, 20 Jun 2020 10:49:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F44E1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jun 2020 10:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B1E486DE1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jun 2020 10:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2SB7_9q29D-x for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jun 2020 10:49:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 820F786DD6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jun 2020 10:49:04 +0000 (UTC)
IronPort-SDR: cM1w++bH6QxQbxJcICHh2ChzIE/Up++Nmi02+dx4iK8fJjnrR8G8CHxHD+I7lax1sxCm0npb5L
 R+sw67zidV+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9657"; a="227995523"
X-IronPort-AV: E=Sophos;i="5.75,258,1589266800"; d="scan'208";a="227995523"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2020 03:49:03 -0700
IronPort-SDR: bmbvaxN2OOOWarKahHzJfdHB8NHQKQmAv0vBmzprwTqJpKGbx4r++o2mEXSRRVIDwE2yDyz5wm
 ahfRvD52mdjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,258,1589266800"; d="scan'208";a="384065493"
Received: from lkp-server02.sh.intel.com (HELO 3aa54c81372e) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2020 03:49:02 -0700
Received: from kbuild by 3aa54c81372e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jmb3W-00019v-C4; Sat, 20 Jun 2020 10:49:02 +0000
Date: Sat, 20 Jun 2020 18:48:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5eede994.YAO7croJcp7mxmGM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 d63e9a63378527636fa91fda1edfa4da8ca98b22
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
branch HEAD: d63e9a63378527636fa91fda1edfa4da8ca98b22  ice: Fix a couple off by one bugs

elapsed time: 721m

configs tested: 118
configs skipped: 12

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
arm                         s3c6400_defconfig
m68k                       bvme6000_defconfig
arm                         mv78xx0_defconfig
i386                             alldefconfig
powerpc64                           defconfig
arm                  colibri_pxa270_defconfig
arc                        vdk_hs38_defconfig
arm                        spear6xx_defconfig
csky                             allyesconfig
mips                         tb0226_defconfig
sh                          r7780mp_defconfig
s390                             allyesconfig
csky                                defconfig
powerpc                     mpc5200_defconfig
mips                         rt305x_defconfig
riscv                    nommu_virt_defconfig
arm                         s5pv210_defconfig
arm                        mini2440_defconfig
sh                                  defconfig
arm                       mainstone_defconfig
m68k                       m5475evb_defconfig
powerpc                          g5_defconfig
mips                      pistachio_defconfig
arm                        trizeps4_defconfig
microblaze                        allnoconfig
s390                             allmodconfig
m68k                        mvme16x_defconfig
mips                        qi_lb60_defconfig
x86_64                              defconfig
arc                              alldefconfig
s390                              allnoconfig
arc                        nsimosci_defconfig
mips                     cu1000-neo_defconfig
sh                   secureedge5410_defconfig
arm                           u8500_defconfig
sh                        edosk7705_defconfig
arm                        spear3xx_defconfig
h8300                            allmodconfig
sh                               j2_defconfig
arm                           h5000_defconfig
powerpc                      chrp32_defconfig
arm                        clps711x_defconfig
powerpc                  storcenter_defconfig
xtensa                           alldefconfig
powerpc                      pmac32_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
