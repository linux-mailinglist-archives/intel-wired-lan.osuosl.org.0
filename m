Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6E75503FE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jun 2022 12:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FF1A60B60;
	Sat, 18 Jun 2022 10:25:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FF1A60B60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655547923;
	bh=QHNmVjurnHbegKrv5Nc5xYpC4vPK3yiw+53hBEFlPX0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vZKDuMQBjxfaTjQ+/+vUgefIvf2igY680Vu1vGUqSKiWEMu+5gTRrDnQ2dw0/4Q88
	 b8ohhZyGaGRC2WWgrvMeFMo3YBfMrlTNSFp0iUOu3yFuJqJaO4lnmXUIjSGCyd8Ch+
	 5vZ+A3o0glwTQGK2a1G6v2zUNSZEie+TgtsTZIz8pb/TKdFcs+vQ5Fn06gKQ7+DRTF
	 ljQHSz36veMN8R0v37OgLuDoVWJIATAcenqPdfox+hj0qnZkyr99PLOlcgkcyphBrc
	 Lu4NA3QsWUG82FxRjrj241dMaA30LWWe1Rux3bB4+xh7jJRjzSkTwigXe7H2BMTi+p
	 6Qp4T+e4i526Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKOhoAEylhgi; Sat, 18 Jun 2022 10:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11C1B60B27;
	Sat, 18 Jun 2022 10:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11C1B60B27
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E0A51BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 10:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DACB560B27
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 10:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DACB560B27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPvJGKtG9H14 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jun 2022 10:25:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D768960AAE
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D768960AAE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 10:25:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="260077366"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="260077366"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2022 03:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="832382991"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jun 2022 03:25:14 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o2Vdh-000QFR-No;
 Sat, 18 Jun 2022 10:25:13 +0000
Date: Sat, 18 Jun 2022 18:24:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62ada7d9.A5OU6KsZ1Bd+S0pC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 371e59d265551fff92ab0a29503a6454b99ba22f
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
branch HEAD: 371e59d265551fff92ab0a29503a6454b99ba22f  ice: Remove unnecessary NULL check before dev_put

elapsed time: 727m

configs tested: 131
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
s390                       zfcpdump_defconfig
sh                           se7751_defconfig
sh                            migor_defconfig
mips                            gpr_defconfig
powerpc                    adder875_defconfig
sh                           se7724_defconfig
powerpc                         ps3_defconfig
sh                          r7780mp_defconfig
sh                           sh2007_defconfig
powerpc                 mpc8540_ads_defconfig
arm                        spear6xx_defconfig
m68k                          amiga_defconfig
arm                         at91_dt_defconfig
arc                           tb10x_defconfig
arm                        cerfcube_defconfig
powerpc                        cell_defconfig
sh                          sdk7780_defconfig
mips                    maltaup_xpa_defconfig
sh                            titan_defconfig
mips                           ip32_defconfig
xtensa                              defconfig
um                             i386_defconfig
xtensa                         virt_defconfig
powerpc                     pq2fads_defconfig
m68k                            mac_defconfig
m68k                        mvme147_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                       maple_defconfig
arc                        vdk_hs38_defconfig
powerpc                      ep88xc_defconfig
parisc64                         alldefconfig
xtensa                  audio_kc705_defconfig
arm                            zeus_defconfig
arc                    vdk_hs38_smp_defconfig
sparc64                          alldefconfig
powerpc                       holly_defconfig
powerpc                     tqm8541_defconfig
m68k                          multi_defconfig
m68k                         amcore_defconfig
mips                      maltasmvp_defconfig
arc                        nsimosci_defconfig
sh                             shx3_defconfig
csky                             alldefconfig
mips                         tb0226_defconfig
m68k                       m5208evb_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220617
ia64                                defconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220617
arc                  randconfig-r043-20220617
s390                 randconfig-r044-20220617
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                       spear13xx_defconfig
powerpc                       ebony_defconfig
arm                             mxs_defconfig
arm                         s3c2410_defconfig
arm                            mmp2_defconfig
powerpc                     mpc512x_defconfig
mips                      bmips_stb_defconfig
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
