Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A31976688
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 12:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C076A813FA;
	Thu, 12 Sep 2024 10:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cv6vrkj79-hV; Thu, 12 Sep 2024 10:13:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59FC381236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726136027;
	bh=GHfiehiWOVjy7DIkI1Rk5YfDWuNwOiaPSp+Hkd2A8UE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uXoJ7RmeWdpscQRQrAfFwksIlVbAE6fLsyr7Ir+4jLLNMdQ30DVVgFSd/uQQv2dp+
	 4UXCSbnBGDuidTwup9PpMGb4GfZJPdPa5btShUsiY7Xm3e6ENwC4muCl88wg0FB0UJ
	 v/gVAWgjXnnCErPRXPQ7++JWVdbVjEkKkkAPDbzuZWfyjNUS/3V8l4nwLb2ACJzrPo
	 dfLxQ5LY9sRXspRE2lJ6FS6jvFjF8EFchD7GXZDi5tB3NdqfBZlhhpnmRGvLKmYIWy
	 THvhCrFsc7OjWUTiyTKaIKxR3Hs8/bvrH6BhdQQ7tp0sEbjX91uhglkpUPKMIX++Ia
	 nBAMeUXbg8f5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59FC381236;
	Thu, 12 Sep 2024 10:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E61C1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 10:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 594F4605C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 10:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ekNU2BHY1uKr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 10:13:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4365E600B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4365E600B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4365E600B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 10:13:44 +0000 (UTC)
X-CSE-ConnectionGUID: 0DEQIWm8R7WzYcDhnDUooQ==
X-CSE-MsgGUID: zl93CCFNTQiHBza9SiCTOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="28756435"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="28756435"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:13:43 -0700
X-CSE-ConnectionGUID: 6WKRnvxpS4ShxKHPeZSf4A==
X-CSE-MsgGUID: PnFo2oQnT5G3FVbikMOzzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67485843"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 12 Sep 2024 03:13:43 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sogpY-0004oB-1D
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Sep 2024 10:13:40 +0000
Date: Thu, 12 Sep 2024 18:12:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409121857.wk4Ah3Lm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726136024; x=1757672024;
 h=date:from:to:subject:message-id;
 bh=SZXm8vbfcHY094eM5pKOELpGxU4sUoJcmF5SsTuWB7g=;
 b=LvbKS9BJ/BdxP0337MT26QFyGzw0PNQ8anMZOYKK6GrOzZXLh7EwoBxd
 Vw4kfnTBxwhQ9FfJewwhzgwkJCo61kvAsvgPjLG71QciDUvAmJ3VSqLrx
 6+vyR7//8VJkUtIN51mmF3BWmpCEHZksSS6kadeaoabEb+S08UhoLVmUx
 WVchs6tU8XAWRVwaGWS2qWSzHjpdsIAYIDB3kpkjijESTBfWxlIShNJQt
 NSPqaSPVIVoH90D78kd/nJtQtBw8FMY5t02xlRRbsh1XPa0ThwCg8i6Wx
 mBwEYGSqFMm0nty1ZLSZ/R3JP2NSpCsx/8VQKudHRyIvXoNI7Y5zWxvhC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LvbKS9BJ
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 d1aaaa2e0a6742b2bc4d851eb1a2b6390dbde2d9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: d1aaaa2e0a6742b2bc4d851eb1a2b6390dbde2d9  Merge branch '100GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue

elapsed time: 1804m

configs tested: 168
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arc                   randconfig-001-20240912   gcc-13.2.0
arc                   randconfig-002-20240912   gcc-13.2.0
arc                           tb10x_defconfig   clang-20
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                       aspeed_g5_defconfig   gcc-14.1.0
arm                         assabet_defconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                       imx_v4_v5_defconfig   gcc-14.1.0
arm                      jornada720_defconfig   clang-20
arm                         lpc18xx_defconfig   clang-20
arm                          moxart_defconfig   gcc-14.1.0
arm                         mv78xx0_defconfig   clang-20
arm                          pxa910_defconfig   gcc-14.1.0
arm                   randconfig-001-20240912   gcc-13.2.0
arm                   randconfig-002-20240912   gcc-13.2.0
arm                   randconfig-003-20240912   gcc-13.2.0
arm                   randconfig-004-20240912   gcc-13.2.0
arm                             rpc_defconfig   clang-20
arm                           spitz_defconfig   gcc-14.1.0
arm                        vexpress_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240912   gcc-13.2.0
arm64                 randconfig-002-20240912   gcc-13.2.0
arm64                 randconfig-003-20240912   gcc-13.2.0
arm64                 randconfig-004-20240912   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240912   gcc-13.2.0
csky                  randconfig-002-20240912   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
hexagon               randconfig-001-20240912   gcc-13.2.0
hexagon               randconfig-002-20240912   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386                                defconfig   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240912   gcc-13.2.0
loongarch             randconfig-002-20240912   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         apollo_defconfig   clang-20
m68k                          atari_defconfig   clang-20
m68k                                defconfig   gcc-14.1.0
m68k                          hp300_defconfig   gcc-14.1.0
m68k                           sun3_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                       lemote2f_defconfig   gcc-14.1.0
mips                     loongson1c_defconfig   clang-20
mips                    maltaup_xpa_defconfig   clang-20
nios2                            alldefconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240912   gcc-13.2.0
nios2                 randconfig-002-20240912   gcc-13.2.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc                randconfig-001-20240912   gcc-13.2.0
parisc                randconfig-002-20240912   gcc-13.2.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                       eiger_defconfig   gcc-14.1.0
powerpc                 mpc832x_rdb_defconfig   gcc-14.1.0
powerpc               mpc834x_itxgp_defconfig   gcc-14.1.0
powerpc                      pcm030_defconfig   clang-20
powerpc                         ps3_defconfig   gcc-14.1.0
powerpc               randconfig-002-20240912   gcc-13.2.0
powerpc                        warp_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240912   gcc-13.2.0
powerpc64             randconfig-002-20240912   gcc-13.2.0
powerpc64             randconfig-003-20240912   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
riscv                 randconfig-001-20240912   gcc-13.2.0
riscv                 randconfig-002-20240912   gcc-13.2.0
s390                             alldefconfig   clang-20
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                  randconfig-001-20240912   gcc-13.2.0
s390                  randconfig-002-20240912   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                        edosk7760_defconfig   clang-20
sh                     magicpanelr2_defconfig   clang-20
sh                    randconfig-001-20240912   gcc-13.2.0
sh                    randconfig-002-20240912   gcc-13.2.0
sh                           se7619_defconfig   gcc-14.1.0
sh                   sh7724_generic_defconfig   clang-20
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
sparc64               randconfig-001-20240912   gcc-13.2.0
sparc64               randconfig-002-20240912   gcc-13.2.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240912   gcc-13.2.0
um                    randconfig-002-20240912   gcc-13.2.0
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240912   clang-18
x86_64       buildonly-randconfig-002-20240912   clang-18
x86_64       buildonly-randconfig-003-20240912   clang-18
x86_64       buildonly-randconfig-004-20240912   clang-18
x86_64       buildonly-randconfig-005-20240912   clang-18
x86_64       buildonly-randconfig-006-20240912   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240912   clang-18
x86_64                randconfig-002-20240912   clang-18
x86_64                randconfig-003-20240912   clang-18
x86_64                randconfig-004-20240912   clang-18
x86_64                randconfig-005-20240912   clang-18
x86_64                randconfig-006-20240912   clang-18
x86_64                randconfig-011-20240912   clang-18
x86_64                randconfig-012-20240912   clang-18
x86_64                randconfig-013-20240912   clang-18
x86_64                randconfig-014-20240912   clang-18
x86_64                randconfig-015-20240912   clang-18
x86_64                randconfig-016-20240912   clang-18
x86_64                randconfig-071-20240912   clang-18
x86_64                randconfig-072-20240912   clang-18
x86_64                randconfig-073-20240912   clang-18
x86_64                randconfig-074-20240912   clang-18
x86_64                randconfig-075-20240912   clang-18
x86_64                randconfig-076-20240912   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240912   gcc-13.2.0
xtensa                randconfig-002-20240912   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
