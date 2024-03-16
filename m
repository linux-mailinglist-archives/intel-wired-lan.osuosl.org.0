Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B8887DB4A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Mar 2024 20:08:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 045F4408D0;
	Sat, 16 Mar 2024 19:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbfsD9i_pdYD; Sat, 16 Mar 2024 19:08:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B1AC408FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710616087;
	bh=8bBrUgEhXOyx8H/dcVO0lweQ1iyi/fwaHUccaADiWKk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6nAeAuECqapul31JpKGKIvjp9u2ckLt/d43kCfYSjqpz5IW4wYS3cXBE1VQO4+LZU
	 1zyxpqLytX9WKJ1I0bYigFBLpmDVV7p6LTbnVsQU8j2Lwr6pzpE2ApoOYhBJfklxmK
	 7hXIV0pB/6oKq2x68vwqoxLsMLukz9yTDv/MLcqqYlkCghf7DyOFrzGky1cHWJCNWy
	 TtcxIq1VLIruCoTvZdh1hkdHiptqt/cMgobGFayWAJgny5O3fDVyaiF29zujJOw9FB
	 EmPIYoAD9LqIm/Lu3oxIZrbTowRq7tC16Tkq6vMbXCbSg/ytmECMCiVCA2pbEGJJwL
	 p6YXI46Vy25kw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B1AC408FF;
	Sat, 16 Mar 2024 19:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6571E1BF294
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 19:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F44682134
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 19:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2gTJ3ThbAjUv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Mar 2024 19:08:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E4C018212A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4C018212A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4C018212A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 19:08:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11015"; a="5603022"
X-IronPort-AV: E=Sophos;i="6.07,131,1708416000"; 
   d="scan'208";a="5603022"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2024 12:08:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,131,1708416000"; d="scan'208";a="43936217"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 16 Mar 2024 12:07:58 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rlZNr-000FiF-2r
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Mar 2024 19:07:55 +0000
Date: Sun, 17 Mar 2024 03:07:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403170333.YcBGDgO6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710616084; x=1742152084;
 h=date:from:to:subject:message-id;
 bh=ovTy4JCqeqTIuYoeurgik9+4oTpKgSLx1Ztjbfs6EHk=;
 b=fw/0D8ZmZakQWGIhVreLyNr9B3S0oAbLb/4/Gk+vVGebQkElSLy1I3bI
 xOeKA59HF6d6kD49UWKK1DkvBFK1HbphVBtO2kByaJv3K9e0+JGtLO7Jy
 /ta/MVSdqgQuuBpBM34+15cbFVOdtBH7WryOa5ro+xNpGBPloln//pPCQ
 APY0BX55H1+YXSKxHYUDPHMEPDgleOugxDZjXl8lJAKMhetJKF+rHgWKd
 zf9SP4Oq1gnNO0Ig3Ox0znM9N2oIDBV2KerE4HUE64qLf3COQU56KpHxv
 PjZmxUBeiZ6OYX6xiNzjoSq+PAkHmZwzpRF8E5xuGrdEmnO/2NFSjijAT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fw/0D8Zm
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0d17421bc5d8e430617c62ad53fbbb2821a1bd56
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0d17421bc5d8e430617c62ad53fbbb2821a1bd56  i40e: Fix VF MAC filter removal

elapsed time: 1203m

configs tested: 162
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240316   gcc  
arc                   randconfig-002-20240316   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   clang
arm                                 defconfig   clang
arm                          exynos_defconfig   clang
arm                   milbeaut_m10v_defconfig   clang
arm                            mps2_defconfig   clang
arm                   randconfig-001-20240316   gcc  
arm                   randconfig-002-20240316   gcc  
arm                   randconfig-003-20240316   gcc  
arm                   randconfig-004-20240316   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240316   gcc  
arm64                 randconfig-002-20240316   clang
arm64                 randconfig-003-20240316   clang
arm64                 randconfig-004-20240316   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240316   gcc  
csky                  randconfig-002-20240316   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240316   clang
hexagon               randconfig-002-20240316   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240316   clang
i386         buildonly-randconfig-002-20240316   gcc  
i386         buildonly-randconfig-003-20240316   gcc  
i386         buildonly-randconfig-004-20240316   gcc  
i386         buildonly-randconfig-005-20240316   gcc  
i386         buildonly-randconfig-006-20240316   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240316   gcc  
i386                  randconfig-002-20240316   gcc  
i386                  randconfig-003-20240316   gcc  
i386                  randconfig-004-20240316   gcc  
i386                  randconfig-005-20240316   clang
i386                  randconfig-006-20240316   gcc  
i386                  randconfig-011-20240316   clang
i386                  randconfig-012-20240316   clang
i386                  randconfig-013-20240316   clang
i386                  randconfig-014-20240316   clang
i386                  randconfig-015-20240316   clang
i386                  randconfig-016-20240316   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240316   gcc  
loongarch             randconfig-002-20240316   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240316   gcc  
nios2                 randconfig-002-20240316   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240316   gcc  
parisc                randconfig-002-20240316   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     kilauea_defconfig   clang
powerpc                      ppc40x_defconfig   clang
powerpc               randconfig-001-20240316   clang
powerpc               randconfig-002-20240316   clang
powerpc               randconfig-003-20240316   gcc  
powerpc                     tqm8555_defconfig   clang
powerpc64             randconfig-001-20240316   gcc  
powerpc64             randconfig-002-20240316   gcc  
powerpc64             randconfig-003-20240316   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240316   gcc  
riscv                 randconfig-002-20240316   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240316   clang
s390                  randconfig-002-20240316   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240316   gcc  
sh                    randconfig-002-20240316   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240316   gcc  
sparc64               randconfig-002-20240316   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240316   clang
um                    randconfig-002-20240316   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240316   clang
x86_64       buildonly-randconfig-006-20240316   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240316   clang
x86_64                randconfig-003-20240316   clang
x86_64                randconfig-004-20240316   clang
x86_64                randconfig-005-20240316   clang
x86_64                randconfig-011-20240316   clang
x86_64                randconfig-014-20240316   clang
x86_64                randconfig-071-20240316   clang
x86_64                randconfig-075-20240316   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20240316   gcc  
xtensa                randconfig-002-20240316   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
