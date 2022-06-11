Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDCE54767D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jun 2022 18:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70B3441226;
	Sat, 11 Jun 2022 16:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s_UKcseg1PUf; Sat, 11 Jun 2022 16:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 761A140448;
	Sat, 11 Jun 2022 16:37:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D781E1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jun 2022 16:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B49194189C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jun 2022 16:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVFsK9s9jPtI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jun 2022 16:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35CF241846
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jun 2022 16:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654965444; x=1686501444;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tpt7v8ou/x3mbKLYSpLtJTK6ZffIMDpvOn+76OrNJl8=;
 b=AVAxFg67MP/6CixXDeCJdJxRTxpS8DBLSum9Por16cEOjKmWAf7D/wtz
 43O5wI6L8lLKumJ9fOSfCjT9C9Dh2N1nBqzqI8jaRIe2yorR91MkAWdJ0
 P5M1IvzDwnvoXeptzKLxwQ0+bAhbEof/HudLn+NrEivljtbwA8AofE6+T
 cqiJ0QVLBFUHaf9e7bmqYrK9R7u9zhW6U3wTle66upaHCDPoGQUfiQOaa
 GqPX/R8QvdUMQ76DCdA1WBSXKgVPkWyZyj/MQxzMyUqOKrtDuATLdR7Zj
 wihoFd8h86zSc5baJ0Ex4zhMPt5mhXkOro3dFuNTEwCl4lKjcXcjd5Qc7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10375"; a="341936355"
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="341936355"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2022 09:37:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="909528636"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jun 2022 09:37:22 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o046z-000J5Z-Ge;
 Sat, 11 Jun 2022 16:37:21 +0000
Date: Sun, 12 Jun 2022 00:36:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62a4c487.ZehDvM9qRVNX8amj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 7defbc9aed2b1fdf21586b78e085c468fd95a2d1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: 7defbc9aed2b1fdf21586b78e085c468fd95a2d1  Merge branch 'ptp_ocp-set-of-small-cleanups'

elapsed time: 1443m

configs tested: 115
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
ia64                         bigsur_defconfig
m68k                        m5272c3_defconfig
sh                            titan_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         tb0226_defconfig
powerpc64                           defconfig
sh                          rsk7201_defconfig
powerpc                 canyonlands_defconfig
sh                          lboxre2_defconfig
powerpc                      makalu_defconfig
powerpc                        cell_defconfig
s390                          debug_defconfig
powerpc                      tqm8xx_defconfig
h8300                            allyesconfig
arm                           h5000_defconfig
mips                       capcella_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                   secureedge5410_defconfig
powerpc                      ep88xc_defconfig
powerpc                       maple_defconfig
sh                     magicpanelr2_defconfig
arm                          badge4_defconfig
riscv                    nommu_k210_defconfig
powerpc                     ep8248e_defconfig
powerpc                      mgcoge_defconfig
nios2                               defconfig
m68k                          amiga_defconfig
arm                            pleb_defconfig
sh                         microdev_defconfig
um                           x86_64_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
arm                             pxa_defconfig
powerpc                      ppc40x_defconfig
xtensa                           alldefconfig
mips                          rb532_defconfig
sh                            shmin_defconfig
powerpc                     tqm8541_defconfig
sh                                  defconfig
sh                           sh2007_defconfig
sh                        sh7785lcr_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220611
ia64                                defconfig
riscv                             allnoconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220611
arc                  randconfig-r043-20220611
s390                 randconfig-r044-20220611
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
