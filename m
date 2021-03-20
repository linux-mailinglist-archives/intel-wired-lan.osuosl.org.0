Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F3F342B3D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Mar 2021 07:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98C0640355;
	Sat, 20 Mar 2021 06:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yD7lYu_8zP-w; Sat, 20 Mar 2021 06:36:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 432DC4034E;
	Sat, 20 Mar 2021 06:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8BAA1BF476
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Mar 2021 06:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B706183E52
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Mar 2021 06:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0mHqQXWzXdB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Mar 2021 06:36:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54C0A83D78
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Mar 2021 06:36:11 +0000 (UTC)
IronPort-SDR: GPpd/ewi9Zr+EeanFhdbuhI1rq5g1gVhzUp4N/SYcDvUdJ6LNeHtDCOF5OuD+4Er0DSPA2GSNg
 T8jISBPR2Kaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="177146248"
X-IronPort-AV: E=Sophos;i="5.81,264,1610438400"; d="scan'208";a="177146248"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 23:36:10 -0700
IronPort-SDR: 98eGEhlnO+AIETuCVB/Y6GoPELZ/LLxARKCCvvVcUbn270mSLhyNA6jnomVpkQDk5nXLhbwmjF
 EbYNJtnJFB1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,264,1610438400"; d="scan'208";a="606824520"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 19 Mar 2021 23:36:09 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lNVDU-0002Os-IE; Sat, 20 Mar 2021 06:36:08 +0000
Date: Sat, 20 Mar 2021 14:35:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <605597b3.wFJfIk5U82bTkCVD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 f0a03a026857d6c7766eb7d5835edbf5523ca15c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: f0a03a026857d6c7766eb7d5835edbf5523ca15c  igb: check timestamp validity

elapsed time: 799m

configs tested: 142
configs skipped: 2

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
i386                             allyesconfig
riscv                            allyesconfig
mips                         tb0287_defconfig
powerpc                     tqm8541_defconfig
arm                         socfpga_defconfig
arc                              alldefconfig
powerpc                  iss476-smp_defconfig
sh                          lboxre2_defconfig
sh                          rsk7203_defconfig
sh                          kfr2r09_defconfig
arc                            hsdk_defconfig
mips                       rbtx49xx_defconfig
powerpc                     stx_gp3_defconfig
sh                   rts7751r2dplus_defconfig
s390                          debug_defconfig
sh                        sh7763rdp_defconfig
arm                            pleb_defconfig
arm                        vexpress_defconfig
arm                        trizeps4_defconfig
m68k                            q40_defconfig
arm                   milbeaut_m10v_defconfig
arm                        neponset_defconfig
arm                        multi_v7_defconfig
sh                        edosk7705_defconfig
s390                       zfcpdump_defconfig
powerpc                       eiger_defconfig
powerpc                     tqm8548_defconfig
mips                      pistachio_defconfig
riscv                    nommu_k210_defconfig
sh                      rts7751r2d1_defconfig
nios2                         3c120_defconfig
sh                          polaris_defconfig
powerpc                     ksi8560_defconfig
powerpc                     taishan_defconfig
powerpc                        warp_defconfig
arm                        mvebu_v7_defconfig
xtensa                  audio_kc705_defconfig
m68k                        stmark2_defconfig
arm                       aspeed_g4_defconfig
powerpc                       maple_defconfig
arm                       mainstone_defconfig
sparc64                             defconfig
powerpc                      acadia_defconfig
powerpc                      pmac32_defconfig
sh                          landisk_defconfig
parisc                           alldefconfig
arc                      axs103_smp_defconfig
powerpc                   lite5200b_defconfig
mips                          ath25_defconfig
powerpc                        cell_defconfig
powerpc                     tqm8560_defconfig
powerpc                     tqm5200_defconfig
powerpc                 linkstation_defconfig
arm                       versatile_defconfig
mips                        workpad_defconfig
arm                         axm55xx_defconfig
arm64                            alldefconfig
mips                      maltaaprp_defconfig
powerpc                         ps3_defconfig
powerpc                    sam440ep_defconfig
m68k                          atari_defconfig
mips                           xway_defconfig
powerpc                      ppc64e_defconfig
powerpc                     mpc512x_defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210318
i386                 randconfig-a005-20210318
i386                 randconfig-a003-20210318
i386                 randconfig-a002-20210318
i386                 randconfig-a006-20210318
i386                 randconfig-a004-20210318
i386                 randconfig-a001-20210319
i386                 randconfig-a005-20210319
i386                 randconfig-a003-20210319
i386                 randconfig-a002-20210319
i386                 randconfig-a006-20210319
i386                 randconfig-a004-20210319
x86_64               randconfig-a011-20210318
x86_64               randconfig-a016-20210318
x86_64               randconfig-a013-20210318
x86_64               randconfig-a015-20210318
x86_64               randconfig-a014-20210318
x86_64               randconfig-a012-20210318
i386                 randconfig-a013-20210318
i386                 randconfig-a016-20210318
i386                 randconfig-a011-20210318
i386                 randconfig-a014-20210318
i386                 randconfig-a015-20210318
i386                 randconfig-a012-20210318
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210318
x86_64               randconfig-a001-20210318
x86_64               randconfig-a005-20210318
x86_64               randconfig-a002-20210318
x86_64               randconfig-a003-20210318
x86_64               randconfig-a004-20210318

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
