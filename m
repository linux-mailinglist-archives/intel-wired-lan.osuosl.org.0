Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DA44FF71D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 14:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26CA382D75;
	Wed, 13 Apr 2022 12:51:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AhTXA--vI30R; Wed, 13 Apr 2022 12:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21E6A8291C;
	Wed, 13 Apr 2022 12:51:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE1D1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 12:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1826F401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 12:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aaksrejh_m0z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 12:51:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98A5540B80
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 12:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649854277; x=1681390277;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cWgQskZfBjkg1pvapEOuFsrMulbXp3J8YKgJ6E8x7N0=;
 b=FOpY4ZVBeFmvXl+dcLGV/6tFwwMY3FAij/bONAi2B+2aDWMXVQv4zjNK
 svMKXVV8pjPoiCT/HXM0kLmodie6339qxZALtC/B9UhyYEidUEngPQN05
 sYPebaCBDCaF5rMw2X/zl24Y57wQOORdyUPHNzodfDd0VtoAT6ifvipyW
 oyAEE9y4388Y+CJMBEvem8fn73y70oe04IoT19ipbF0aUI+EToLNyhBpl
 +DFvEN00IrpD0FQl/mf7IfAA75tK/p7bCdwAdY7FQzg/apEc1pf/3lNAf
 hd8cRw71FzHdZOylV9wFrHy2asodA7TFLPkMcwo429ItrEWOoPv7XiCpG g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="349089550"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="349089550"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 05:51:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="526460305"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 13 Apr 2022 05:51:15 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1necSo-0000Ho-Pn;
 Wed, 13 Apr 2022 12:51:14 +0000
Date: Wed, 13 Apr 2022 20:50:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6256c71f.cY6cUs6HM6XUxMpA%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 a941d5ee4c579682e36063dd966e041bd8368ab8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: a941d5ee4c579682e36063dd966e041bd8368ab8  i40e: Add Ethernet Connection X722 for 10GbE SFP+ support

elapsed time: 914m

configs tested: 96
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
mips                           ci20_defconfig
arm                        cerfcube_defconfig
sh                   sh7770_generic_defconfig
powerpc                       maple_defconfig
sh                           se7721_defconfig
arc                            hsdk_defconfig
riscv                            allmodconfig
arc                     nsimosci_hs_defconfig
xtensa                           allyesconfig
sh                        dreamcast_defconfig
ia64                      gensparse_defconfig
sparc                               defconfig
powerpc                   motionpro_defconfig
arc                     haps_hs_smp_defconfig
parisc                           alldefconfig
arm                            zeus_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220413
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
alpha                            allyesconfig
csky                                defconfig
alpha                               defconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
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
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220413
arc                  randconfig-r043-20220413
s390                 randconfig-r044-20220413
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220413
arm                  randconfig-c002-20220413
i386                          randconfig-c001
riscv                randconfig-c006-20220413
mips                 randconfig-c004-20220413
powerpc                        icon_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                      obs600_defconfig
powerpc                      walnut_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
