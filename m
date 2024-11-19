Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7159D2712
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 14:38:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A6576F69C;
	Tue, 19 Nov 2024 13:38:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ss2aD2aj3dMN; Tue, 19 Nov 2024 13:37:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 360AB6F672
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732023478;
	bh=xyCb8O1PimnY+rUcYplm+Yw9r+QabgNi0QAHCmShF4o=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=29n7Zwsa5Eeofaro8+bpcNrD2Et0Hsb3oi3RjjILuVr+qmCNz4hFI4xGQSGGoLfRc
	 XHYWJ+0srgfY7eTQhMzt31k0jRDjU8R1Num4K1PoAG82YASPvE8gXB1NS2TsU7pWAG
	 txBm0D6dEbitFG4rW5lKOoGOFeozgkyXiCrpL/gVDZ45Cj1D7j3gDLJUg2HKZZ7MNQ
	 CWSvcaGrrTYtfGq6xPAAkvUR4gZul78DEf5uE4TOtYTArdLqB4+p/4FxymT5/J11lK
	 sA5JJodmM90vKJyJjELxigzCp9DxIiexb4Q5U6FjH6D3CIC7hDby3yKCClkTvMafPw
	 NTDgoHTh9Acvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 360AB6F672;
	Tue, 19 Nov 2024 13:37:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EEE51DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:37:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC2EA615EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:37:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3DUbUqZ4QMYl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2024 13:37:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ADEFC60AC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADEFC60AC7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADEFC60AC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 13:37:54 +0000 (UTC)
X-CSE-ConnectionGUID: ZOgKINSETEKTeSonjjy/rw==
X-CSE-MsgGUID: oCOwZJ4bRHecol+4rRWzyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43424372"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="43424372"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:37:54 -0800
X-CSE-ConnectionGUID: S+pz81ldTIGsDfQSGTfzQw==
X-CSE-MsgGUID: OXSBIeqKTUufF/hk0qYr1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="94010175"
Received: from lkp-server01.sh.intel.com (HELO 8122d2fc1967) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 19 Nov 2024 05:37:53 -0800
Received: from kbuild by 8122d2fc1967 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tDOQR-00009P-0l
 for intel-wired-lan@lists.osuosl.org; Tue, 19 Nov 2024 13:37:51 +0000
Date: Tue, 19 Nov 2024 20:30:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411192028.6GLv2hpi-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732023475; x=1763559475;
 h=date:from:to:subject:message-id;
 bh=SWLEWJ0/9T1NV24HY45rXRZCRlYwPb7BhxKjyJ5quAM=;
 b=C4WmSMIWeMTohigJeKdc7bpyg/ptCH7MSkCTF3tOAGwUDhPR2sbxTbqF
 uQRRzVpMjPgRjmdrG9LIbh5DOSuFYgLXGbbTsF3JUO8pzzd0p7gZlRGii
 oJLjE/JiOMeSiYFCGJDA+jEicwvZGPkthPLLOGqNwWQW00vPZ7OD2AJzB
 sdFcdXcCDLPKEAfTTgGREdaNnt4BiRIcmkXQB9L4BdyJfRs+670CVhbwl
 HCsLFcC2yABglqeqhn8kGzOVJSVcjCCamfE30WFeyZAtQ/Q98R2DlyY18
 96m4+5tS2QWOS5/qf2YGMJ26MMCmaOx7tyKHjIenI3OKb+mwYfm8YIaKY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C4WmSMIW
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a76d2631397d9331132688105313d8e3da8f4010
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
branch HEAD: a76d2631397d9331132688105313d8e3da8f4010  idpf: add lock class key

elapsed time: 1075m

configs tested: 209
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.2.0
arc                        nsimosci_defconfig    clang-15
arc                   randconfig-001-20241119    gcc-14.2.0
arc                   randconfig-002-20241119    gcc-14.2.0
arc                        vdk_hs38_defconfig    clang-20
arc                    vdk_hs38_smp_defconfig    clang-20
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                        clps711x_defconfig    clang-15
arm                                 defconfig    gcc-14.2.0
arm                        keystone_defconfig    clang-20
arm                         lpc32xx_defconfig    clang-15
arm                   milbeaut_m10v_defconfig    clang-20
arm                         nhk8815_defconfig    clang-20
arm                          pxa910_defconfig    clang-20
arm                             pxa_defconfig    clang-20
arm                   randconfig-001-20241119    gcc-14.2.0
arm                   randconfig-002-20241119    gcc-14.2.0
arm                   randconfig-003-20241119    gcc-14.2.0
arm                   randconfig-004-20241119    gcc-14.2.0
arm                             rpc_defconfig    clang-20
arm                       spear13xx_defconfig    clang-20
arm                        spear3xx_defconfig    clang-15
arm                        spear6xx_defconfig    clang-20
arm                           u8500_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241119    gcc-14.2.0
arm64                 randconfig-002-20241119    gcc-14.2.0
arm64                 randconfig-003-20241119    gcc-14.2.0
arm64                 randconfig-004-20241119    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241119    gcc-14.2.0
csky                  randconfig-002-20241119    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241119    gcc-14.2.0
hexagon               randconfig-002-20241119    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241119    clang-19
i386        buildonly-randconfig-002-20241119    clang-19
i386        buildonly-randconfig-003-20241119    clang-19
i386        buildonly-randconfig-004-20241119    clang-19
i386        buildonly-randconfig-005-20241119    clang-19
i386        buildonly-randconfig-006-20241119    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241119    clang-19
i386                  randconfig-002-20241119    clang-19
i386                  randconfig-003-20241119    clang-19
i386                  randconfig-004-20241119    clang-19
i386                  randconfig-005-20241119    clang-19
i386                  randconfig-006-20241119    clang-19
i386                  randconfig-011-20241119    clang-19
i386                  randconfig-012-20241119    clang-19
i386                  randconfig-013-20241119    clang-19
i386                  randconfig-014-20241119    clang-19
i386                  randconfig-015-20241119    clang-19
i386                  randconfig-016-20241119    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241119    gcc-14.2.0
loongarch             randconfig-002-20241119    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                          hp300_defconfig    clang-15
m68k                       m5208evb_defconfig    clang-20
m68k                       m5249evb_defconfig    clang-20
m68k                       m5275evb_defconfig    clang-15
m68k                        m5307c3_defconfig    clang-20
m68k                            mac_defconfig    clang-20
m68k                            q40_defconfig    clang-20
m68k                          sun3x_defconfig    clang-15
m68k                           virt_defconfig    clang-15
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    clang-20
mips                          eyeq5_defconfig    clang-20
mips                           gcw0_defconfig    clang-15
mips                       rbtx49xx_defconfig    clang-20
mips                        vocore2_defconfig    clang-15
mips                           xway_defconfig    clang-20
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241119    gcc-14.2.0
nios2                 randconfig-002-20241119    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241119    gcc-14.2.0
parisc                randconfig-002-20241119    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                     ep8248e_defconfig    clang-15
powerpc                      mgcoge_defconfig    clang-15
powerpc                 mpc836x_rdk_defconfig    clang-15
powerpc                     ppa8548_defconfig    clang-15
powerpc               randconfig-001-20241119    gcc-14.2.0
powerpc               randconfig-002-20241119    gcc-14.2.0
powerpc               randconfig-003-20241119    gcc-14.2.0
powerpc                     redwood_defconfig    clang-20
powerpc                      tqm8xx_defconfig    clang-20
powerpc64             randconfig-001-20241119    gcc-14.2.0
powerpc64             randconfig-002-20241119    gcc-14.2.0
powerpc64             randconfig-003-20241119    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    clang-20
riscv                 randconfig-001-20241119    gcc-14.2.0
riscv                 randconfig-002-20241119    gcc-14.2.0
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241119    gcc-14.2.0
s390                  randconfig-002-20241119    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                 kfr2r09-romimage_defconfig    clang-20
sh                    randconfig-001-20241119    gcc-14.2.0
sh                    randconfig-002-20241119    gcc-14.2.0
sh                           se7722_defconfig    clang-20
sh                           se7724_defconfig    clang-15
sh                        sh7763rdp_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                       sparc32_defconfig    clang-20
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241119    gcc-14.2.0
sparc64               randconfig-002-20241119    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    clang-15
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241119    gcc-14.2.0
um                    randconfig-002-20241119    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241119    gcc-12
x86_64      buildonly-randconfig-002-20241119    gcc-12
x86_64      buildonly-randconfig-003-20241119    gcc-12
x86_64      buildonly-randconfig-004-20241119    gcc-12
x86_64      buildonly-randconfig-005-20241119    gcc-12
x86_64      buildonly-randconfig-006-20241119    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241119    gcc-12
x86_64                randconfig-002-20241119    gcc-12
x86_64                randconfig-003-20241119    gcc-12
x86_64                randconfig-004-20241119    gcc-12
x86_64                randconfig-005-20241119    gcc-12
x86_64                randconfig-006-20241119    gcc-12
x86_64                randconfig-011-20241119    gcc-12
x86_64                randconfig-012-20241119    gcc-12
x86_64                randconfig-013-20241119    gcc-12
x86_64                randconfig-014-20241119    gcc-12
x86_64                randconfig-015-20241119    gcc-12
x86_64                randconfig-016-20241119    gcc-12
x86_64                randconfig-071-20241119    gcc-12
x86_64                randconfig-072-20241119    gcc-12
x86_64                randconfig-073-20241119    gcc-12
x86_64                randconfig-074-20241119    gcc-12
x86_64                randconfig-075-20241119    gcc-12
x86_64                randconfig-076-20241119    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                               rhel-9.4    gcc-12
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241119    gcc-14.2.0
xtensa                randconfig-002-20241119    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
