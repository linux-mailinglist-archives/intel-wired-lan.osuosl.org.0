Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 640E5974E75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 11:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14A16412F3;
	Wed, 11 Sep 2024 09:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pqc2xO4oRovT; Wed, 11 Sep 2024 09:26:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFCF841309
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726046808;
	bh=eG63P6jscDe1orlID9DeoovQ1p4XLutS9C4voxJVaKo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bT/NjF2yLsDhxTaxcVBzP3w6gz2V66Oa2Gj1+W1LX/dlhaPUmbSVaq2YVZB8p27o+
	 X5ER3bsAfeU8Z1HMcLfTYG8K635T33lHn7q4HDN/Dn8CKicsT1mDu2PxYVYZeWaElx
	 siHYaZNNgZByK+4WZLgM9zqMKPRx60BwWD7i1BtDP20ENlaQDpUSQm46ty9MnMtEmB
	 p9pCtLv6LhUyqrRbapwaFf336tYngG7f5aIhJz8Pfso6jLknNBLwSHFdVxicpx0IkP
	 dxTAtvVooGFK1PfOGH99xAs24W3YOUf6ctoBdENBiqgI3ItU6IETNSoY7yZzI6vy++
	 R9T5W8pHwuGGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFCF841309;
	Wed, 11 Sep 2024 09:26:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7DF01BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 09:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A212C40C56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 09:26:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YPAv1zbfeF2g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 09:26:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EBBD140DC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBBD140DC0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBBD140DC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 09:26:44 +0000 (UTC)
X-CSE-ConnectionGUID: yK5HPemeQKqCvEOQrTyvjQ==
X-CSE-MsgGUID: X97kVTf+QTKxHd6nfIE3Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24710957"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24710957"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 02:26:44 -0700
X-CSE-ConnectionGUID: VBWIja7bTU+iXZFB2NimEg==
X-CSE-MsgGUID: Lju+cpDVQ16ll1UixMOikA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="98137025"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 11 Sep 2024 02:26:43 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1soJcX-0003Je-0K
 for intel-wired-lan@lists.osuosl.org; Wed, 11 Sep 2024 09:26:41 +0000
Date: Wed, 11 Sep 2024 17:26:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409111723.x0GUoRWL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726046805; x=1757582805;
 h=date:from:to:subject:message-id;
 bh=mjlY70UxvyhZNX4l5auDeZrMHYQe6yNh6s0IN1TUtLw=;
 b=lH2KODisni7KZwtMT56Iczfx3MKVDm7rR1I7OIzeV0KEuD/MSOfrD8+1
 H2AqYI/TYKj0Km1CjfIYVk0bVNwvumkjQ3Jf2G/jp/RL2p0c/hA2jhErs
 GEXqTde6hbr6gCW8LIbylTuRpsVXDfrVxzfQPa4LpYpV30Re3CHjLurMD
 Cn8Ee6Ndy5C7dxjGj44N6a+/9oIR3inmj5CiqChv0iG/rVni1p9GgBJLm
 UmvUKh3UmFwRRvIZyhLZ6dQTncp8/FRYhodKekjQMHRvgDiTxuQzrGsxZ
 imTEghnTXFCyusFmXpeiKT7z2MbbH46gvpmHOudk0Px1M5MjN4jveN5sg
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lH2KODis
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 525034e2e2ee60d31519af0919e374b0032a70de
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 525034e2e2ee60d31519af0919e374b0032a70de  net: mdiobus: Debug print fwnode handle instead of raw pointer

elapsed time: 1362m

configs tested: 207
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              alldefconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                          axs101_defconfig   gcc-14.1.0
arc                                 defconfig   gcc-14.1.0
arc                   randconfig-001-20240911   gcc-13.2.0
arc                   randconfig-002-20240911   gcc-13.2.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                       aspeed_g4_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-14.1.0
arm                      footbridge_defconfig   gcc-14.1.0
arm                            hisi_defconfig   gcc-14.1.0
arm                           imxrt_defconfig   gcc-14.1.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                       netwinder_defconfig   gcc-14.1.0
arm                   randconfig-001-20240911   gcc-13.2.0
arm                   randconfig-002-20240911   gcc-13.2.0
arm                   randconfig-003-20240911   gcc-13.2.0
arm                   randconfig-004-20240911   gcc-13.2.0
arm                        realview_defconfig   gcc-14.1.0
arm                         s5pv210_defconfig   gcc-14.1.0
arm                         socfpga_defconfig   gcc-14.1.0
arm                       spear13xx_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                            allyesconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240911   gcc-13.2.0
arm64                 randconfig-002-20240911   gcc-13.2.0
arm64                 randconfig-003-20240911   gcc-13.2.0
arm64                 randconfig-004-20240911   gcc-13.2.0
csky                             allmodconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                             allyesconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240911   gcc-13.2.0
csky                  randconfig-002-20240911   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
hexagon               randconfig-001-20240911   gcc-13.2.0
hexagon               randconfig-002-20240911   gcc-13.2.0
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240911   clang-18
i386         buildonly-randconfig-001-20240911   gcc-12
i386         buildonly-randconfig-002-20240911   gcc-12
i386         buildonly-randconfig-003-20240911   clang-18
i386         buildonly-randconfig-003-20240911   gcc-12
i386         buildonly-randconfig-004-20240911   gcc-12
i386         buildonly-randconfig-005-20240911   gcc-12
i386         buildonly-randconfig-006-20240911   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240911   gcc-12
i386                  randconfig-002-20240911   clang-18
i386                  randconfig-002-20240911   gcc-12
i386                  randconfig-003-20240911   clang-18
i386                  randconfig-003-20240911   gcc-12
i386                  randconfig-004-20240911   gcc-12
i386                  randconfig-005-20240911   gcc-12
i386                  randconfig-006-20240911   clang-18
i386                  randconfig-006-20240911   gcc-12
i386                  randconfig-011-20240911   gcc-12
i386                  randconfig-012-20240911   gcc-12
i386                  randconfig-013-20240911   clang-18
i386                  randconfig-013-20240911   gcc-12
i386                  randconfig-014-20240911   clang-18
i386                  randconfig-014-20240911   gcc-12
i386                  randconfig-015-20240911   gcc-12
i386                  randconfig-016-20240911   clang-18
i386                  randconfig-016-20240911   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                        allyesconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240911   gcc-13.2.0
loongarch             randconfig-002-20240911   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                          atari_defconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                          sun3x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                             allmodconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                             allyesconfig   gcc-14.1.0
mips                  cavium_octeon_defconfig   gcc-14.1.0
mips                           ip32_defconfig   gcc-14.1.0
mips                      loongson3_defconfig   gcc-14.1.0
mips                malta_qemu_32r6_defconfig   gcc-14.1.0
mips                          rb532_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240911   gcc-13.2.0
nios2                 randconfig-002-20240911   gcc-13.2.0
openrisc                          allnoconfig   clang-20
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc                randconfig-001-20240911   gcc-13.2.0
parisc                randconfig-002-20240911   gcc-13.2.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                   currituck_defconfig   gcc-14.1.0
powerpc                       maple_defconfig   gcc-14.1.0
powerpc                     mpc512x_defconfig   gcc-14.1.0
powerpc                 mpc834x_itx_defconfig   gcc-14.1.0
powerpc                     rainier_defconfig   gcc-14.1.0
powerpc               randconfig-003-20240911   gcc-13.2.0
powerpc64             randconfig-001-20240911   gcc-13.2.0
powerpc64             randconfig-002-20240911   gcc-13.2.0
powerpc64             randconfig-003-20240911   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240911   gcc-13.2.0
riscv                 randconfig-002-20240911   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                  randconfig-001-20240911   gcc-13.2.0
s390                  randconfig-002-20240911   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                    randconfig-001-20240911   gcc-13.2.0
sh                    randconfig-002-20240911   gcc-13.2.0
sh                          sdk7780_defconfig   gcc-14.1.0
sh                           se7206_defconfig   gcc-14.1.0
sh                           se7619_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
sparc64               randconfig-001-20240911   gcc-13.2.0
sparc64               randconfig-002-20240911   gcc-13.2.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240911   gcc-13.2.0
um                    randconfig-002-20240911   gcc-13.2.0
um                           x86_64_defconfig   gcc-12
x86_64                           alldefconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240911   clang-18
x86_64       buildonly-randconfig-002-20240911   clang-18
x86_64       buildonly-randconfig-003-20240911   clang-18
x86_64       buildonly-randconfig-004-20240911   clang-18
x86_64       buildonly-randconfig-005-20240911   clang-18
x86_64       buildonly-randconfig-006-20240911   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240911   clang-18
x86_64                randconfig-002-20240911   clang-18
x86_64                randconfig-003-20240911   clang-18
x86_64                randconfig-004-20240911   clang-18
x86_64                randconfig-005-20240911   clang-18
x86_64                randconfig-006-20240911   clang-18
x86_64                randconfig-011-20240911   clang-18
x86_64                randconfig-012-20240911   clang-18
x86_64                randconfig-013-20240911   clang-18
x86_64                randconfig-014-20240911   clang-18
x86_64                randconfig-015-20240911   clang-18
x86_64                randconfig-016-20240911   clang-18
x86_64                randconfig-071-20240911   clang-18
x86_64                randconfig-072-20240911   clang-18
x86_64                randconfig-073-20240911   clang-18
x86_64                randconfig-074-20240911   clang-18
x86_64                randconfig-075-20240911   clang-18
x86_64                randconfig-076-20240911   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240911   gcc-13.2.0
xtensa                randconfig-002-20240911   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
