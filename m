Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EFE933E21
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jul 2024 16:02:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E34140E56;
	Wed, 17 Jul 2024 14:02:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CBRvZLar0Pv8; Wed, 17 Jul 2024 14:02:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1720340E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721224939;
	bh=YeGhDw1xM68hrWstaYl/SLEsAPXylNPWQrlInSvcFN4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YyIpGP/DJr1O0Sq/gp+BpSxRCvjQCTvFpefEsxP+0dBkoR544jFq2v8Q2GlOn900N
	 lqkLAE4yAnnkGBcUL9PydmmG6qd0CHk8gFt/C5IFuXcI3U8BYf6bShgxG48pCXcri5
	 tBtqEhXqRifWqPI7DUAIBQFpppkJjtbksniEhi1as1taNzYjGrU3jlfSGPTtNYRjnn
	 z9zhTMcWnjXWniB/NEnl5Vwc1Sc3Ojbf/7tNtvf6wn8y5IeP+ecjq3yC3hO/J0rW2q
	 IxPg/7GoDPp/s11W6SMHWySojmYL3ec0CTMCXmFNsI/SL0MjJzLURnVY4Ay0Dzc10D
	 TbvUcDofWSGjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1720340E74;
	Wed, 17 Jul 2024 14:02:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC3421BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 14:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0BC040997
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 14:02:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id enkyc65nUZFt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2024 14:02:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11DDA40990
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11DDA40990
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11DDA40990
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 14:02:14 +0000 (UTC)
X-CSE-ConnectionGUID: zbTWOQJQTVCpYfUMOZbJ9A==
X-CSE-MsgGUID: v3HjbbLnQ3K3swEj1h7hgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18918029"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18918029"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 07:02:14 -0700
X-CSE-ConnectionGUID: 1XZvJKT9SJyyDc2sqxkz3A==
X-CSE-MsgGUID: WCdAo3gMTJqjdEPbQfPhIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="54921063"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 17 Jul 2024 07:02:13 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sU5ER-000gMx-1g
 for intel-wired-lan@lists.osuosl.org; Wed, 17 Jul 2024 14:02:11 +0000
Date: Wed, 17 Jul 2024 22:01:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407172235.PEb4yXwS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721224935; x=1752760935;
 h=date:from:to:subject:message-id;
 bh=u1zRs7yoAIVNWIX1VT92zKNGdkznFmDOYsaCmwHeNXc=;
 b=G/wE+W9BUC0D1WVqEAD/vwdnRRZl5kz3Mc0L/y7qa0UX3WEGN6VNklqb
 OQpEaVRc0b0U7qJ7bB20oiEwnqU9Xz3MbGZwUAEBm6Tue59N+Oy7JR+3N
 QehiGkMWvfCkofnTxZ0/mHlTxi820M0ZIf2/uu8hTX7fLmRmgj09y1Yo2
 ZGXK3XhDbfX/4Rha3GBSWt0esJd0dOWOYfDirutvUIMaJzrRujstNCp3N
 Fso4ePREijxOxmaclbbdFDtpJ8zz68pSJjjQNnvVulQ+zmtwDvb7Yfnoa
 x6ilMcd9HsLXUQS6TM1y01VFMjhxaka9h+3FCU8RJ0TVa6UJjK/pvxIP6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G/wE+W9B
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9feb64e6916eaccce5a694850262baea9f948572
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 9feb64e6916eaccce5a694850262baea9f948572  ice: Fix recipe read procedure

elapsed time: 1205m

configs tested: 207
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              alldefconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                          axs101_defconfig   gcc-13.2.0
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                     haps_hs_smp_defconfig   gcc-13.2.0
arc                            hsdk_defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                    vdk_hs38_smp_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                       aspeed_g5_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                        keystone_defconfig   gcc-14.1.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                        mvebu_v7_defconfig   gcc-13.2.0
arm                        neponset_defconfig   gcc-13.2.0
arm                           omap1_defconfig   gcc-13.2.0
arm                       omap2plus_defconfig   gcc-13.2.0
arm                             pxa_defconfig   gcc-13.2.0
arm                           sama7_defconfig   gcc-13.2.0
arm                         vf610m4_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
csky                             alldefconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240717   clang-18
i386         buildonly-randconfig-002-20240717   clang-18
i386         buildonly-randconfig-002-20240717   gcc-13
i386         buildonly-randconfig-003-20240717   clang-18
i386         buildonly-randconfig-003-20240717   gcc-13
i386         buildonly-randconfig-004-20240717   clang-18
i386         buildonly-randconfig-004-20240717   gcc-13
i386         buildonly-randconfig-005-20240717   clang-18
i386         buildonly-randconfig-005-20240717   gcc-10
i386         buildonly-randconfig-006-20240717   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240717   clang-18
i386                  randconfig-001-20240717   gcc-8
i386                  randconfig-002-20240717   clang-18
i386                  randconfig-003-20240717   clang-18
i386                  randconfig-004-20240717   clang-18
i386                  randconfig-004-20240717   gcc-8
i386                  randconfig-005-20240717   clang-18
i386                  randconfig-005-20240717   gcc-10
i386                  randconfig-006-20240717   clang-18
i386                  randconfig-006-20240717   gcc-13
i386                  randconfig-011-20240717   clang-18
i386                  randconfig-011-20240717   gcc-9
i386                  randconfig-012-20240717   clang-18
i386                  randconfig-012-20240717   gcc-13
i386                  randconfig-013-20240717   clang-18
i386                  randconfig-014-20240717   clang-18
i386                  randconfig-015-20240717   clang-18
i386                  randconfig-016-20240717   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5208evb_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm47xx_defconfig   gcc-13.2.0
mips                      bmips_stb_defconfig   gcc-13.2.0
mips                     decstation_defconfig   gcc-14.1.0
mips                       lemote2f_defconfig   gcc-14.1.0
mips                           mtx1_defconfig   gcc-14.1.0
nios2                         10m50_defconfig   gcc-13.2.0
nios2                            allmodconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                            allyesconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
openrisc                         allmodconfig   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      bamboo_defconfig   gcc-13.2.0
powerpc                        cell_defconfig   gcc-14.1.0
powerpc                   currituck_defconfig   gcc-13.2.0
powerpc                       ebony_defconfig   gcc-13.2.0
powerpc                    ge_imp3a_defconfig   gcc-13.2.0
powerpc                    ge_imp3a_defconfig   gcc-14.1.0
powerpc                     ksi8560_defconfig   gcc-13.2.0
powerpc                   lite5200b_defconfig   gcc-13.2.0
powerpc                     mpc512x_defconfig   gcc-13.2.0
powerpc                 mpc834x_itx_defconfig   gcc-13.2.0
powerpc               mpc834x_itxgp_defconfig   gcc-13.2.0
powerpc                      pmac32_defconfig   gcc-14.1.0
powerpc                     skiroot_defconfig   gcc-14.1.0
powerpc                     stx_gp3_defconfig   gcc-14.1.0
powerpc                 xes_mpc85xx_defconfig   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                    nommu_k210_defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-13.2.0
riscv             nommu_k210_sdcard_defconfig   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                 kfr2r09-romimage_defconfig   gcc-13.2.0
sh                          polaris_defconfig   gcc-13.2.0
sh                      rts7751r2d1_defconfig   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc                            allyesconfig   gcc-14.1.0
sparc64                          allmodconfig   gcc-14.1.0
sparc64                          allyesconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240717   gcc-13
x86_64       buildonly-randconfig-002-20240717   gcc-13
x86_64       buildonly-randconfig-003-20240717   gcc-13
x86_64       buildonly-randconfig-004-20240717   gcc-13
x86_64       buildonly-randconfig-005-20240717   gcc-13
x86_64       buildonly-randconfig-006-20240717   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                                  kexec   clang-18
x86_64                randconfig-001-20240717   gcc-13
x86_64                randconfig-002-20240717   gcc-13
x86_64                randconfig-003-20240717   gcc-13
x86_64                randconfig-004-20240717   gcc-13
x86_64                randconfig-005-20240717   gcc-13
x86_64                randconfig-006-20240717   gcc-13
x86_64                randconfig-011-20240717   gcc-13
x86_64                randconfig-012-20240717   gcc-13
x86_64                randconfig-013-20240717   gcc-13
x86_64                randconfig-014-20240717   gcc-13
x86_64                randconfig-015-20240717   gcc-13
x86_64                randconfig-016-20240717   gcc-13
x86_64                randconfig-071-20240717   gcc-13
x86_64                randconfig-072-20240717   gcc-13
x86_64                randconfig-073-20240717   gcc-13
x86_64                randconfig-074-20240717   gcc-13
x86_64                randconfig-075-20240717   gcc-13
x86_64                randconfig-076-20240717   gcc-13
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                           allyesconfig   gcc-14.1.0
xtensa                       common_defconfig   gcc-13.2.0
xtensa                    smp_lx200_defconfig   gcc-14.1.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
