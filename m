Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D294D40E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 17:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A199D8436B;
	Fri,  9 Aug 2024 15:58:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id swsSkLAe-yYW; Fri,  9 Aug 2024 15:58:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01DA684330
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723219123;
	bh=fEn3klUBR+cCPCppM1Ii3Ls26CHQB0gCP3qerA5uG5c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JBkAqHwMBJhA1xXeEnc1KVCWlEXKQ4QrPpUyG/mkbtIqmjwV7x+4aCjh8a+di75cw
	 8gyAm/wGwS1BcRMPq0or86mH2V2MXV7nYhY02esu2GycofRrlaO5ZottibcY/Ix/Ol
	 8T2/PxyPjQJcIOlOkyZ0v85z7vYo5JJp1gufHDmGVqA3H5frg3SuDAhXHfcRFQSS8+
	 cildqvxglESm3GdrqR7m0CjFGzgjnByHgSGEvhY831+FWcoNIEldEvcDZbrs9MbvRU
	 PyjMYnP2UmHo5Xm9szbv09PEMz15havXbsFWCvImPAcuPAdthJVPZnO4qVPiZpcrGj
	 8WV7cAV2pNPUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01DA684330;
	Fri,  9 Aug 2024 15:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3962A1BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 15:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3296E6132F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 15:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eKLJqE5XJDdb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 15:58:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 11A7961318
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11A7961318
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11A7961318
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 15:58:39 +0000 (UTC)
X-CSE-ConnectionGUID: HFq7EKvkRe+4PQsDBq1lnw==
X-CSE-MsgGUID: vmZsATY1QjG8nq7VwJsTrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="21056617"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="21056617"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 08:58:39 -0700
X-CSE-ConnectionGUID: WJF7ujLxRuWqqXBRsEsBVQ==
X-CSE-MsgGUID: GGWufH2CT06Dy9MG/D2H/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57494795"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 09 Aug 2024 08:58:38 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1scS0h-0008Ud-31
 for intel-wired-lan@lists.osuosl.org; Fri, 09 Aug 2024 15:58:35 +0000
Date: Fri, 09 Aug 2024 23:57:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408092335.jCNcJDj1-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723219120; x=1754755120;
 h=date:from:to:subject:message-id;
 bh=2G2dTDoUepCpo9kZLvE2pI/eLkQ48w/ft1d3QviC8q8=;
 b=hnS0tE7cH+IHqYT/D+pqkvY3DZHwCnZ+was7+dd9rVWKLjbyLOKhxrmo
 nR+6p1gKP+yeS+hYyae5MLWxyGnjqgITqqe+pylVv/S5Q2wKdFmJx2rMJ
 q/vZ0w1xYIjyBAe7nDGRK/5xNzjWjB5xE4myc0vwRpYd16KOSk7XCCTsM
 IOqPtTIyymypYntrI/MVvadvc4SV5JHzDQ1NC2ihfNrC6nqYsZbnfBuVW
 o11BNk1YCetAxMCmoraGXNWtrw365LV6vWA7mTNZWrQzEY4efoc0ofzpt
 rB7O0bCgLSlF0zlv+lq3644bGQyoSzdUKckbvetn637E+zczaVzmdNVGc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hnS0tE7c
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 b014c38b53cd384394afe470f07b3136e426db57
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: b014c38b53cd384394afe470f07b3136e426db57  igb: add AF_XDP zero-copy Tx support

elapsed time: 1309m

configs tested: 180
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240809   gcc-13.2.0
arc                   randconfig-002-20240809   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                         assabet_defconfig   clang-15
arm                          collie_defconfig   clang-15
arm                                 defconfig   gcc-13.2.0
arm                           h3600_defconfig   gcc-14.1.0
arm                       imx_v6_v7_defconfig   gcc-14.1.0
arm                            mmp2_defconfig   clang-15
arm                          moxart_defconfig   clang-15
arm                        mvebu_v7_defconfig   gcc-14.1.0
arm                   randconfig-001-20240809   gcc-13.2.0
arm                   randconfig-002-20240809   gcc-13.2.0
arm                   randconfig-003-20240809   gcc-13.2.0
arm                   randconfig-004-20240809   gcc-13.2.0
arm                         s3c6400_defconfig   clang-15
arm                       spear13xx_defconfig   clang-15
arm                        spear6xx_defconfig   clang-15
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240809   gcc-13.2.0
arm64                 randconfig-002-20240809   gcc-13.2.0
arm64                 randconfig-003-20240809   gcc-13.2.0
arm64                 randconfig-004-20240809   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240809   gcc-13.2.0
csky                  randconfig-002-20240809   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240809   gcc-12
i386         buildonly-randconfig-002-20240809   gcc-12
i386         buildonly-randconfig-003-20240809   gcc-12
i386         buildonly-randconfig-004-20240809   gcc-12
i386         buildonly-randconfig-005-20240809   gcc-12
i386         buildonly-randconfig-006-20240809   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240809   gcc-12
i386                  randconfig-002-20240809   gcc-12
i386                  randconfig-003-20240809   gcc-12
i386                  randconfig-004-20240809   gcc-12
i386                  randconfig-005-20240809   gcc-12
i386                  randconfig-006-20240809   gcc-12
i386                  randconfig-011-20240809   gcc-12
i386                  randconfig-012-20240809   gcc-12
i386                  randconfig-013-20240809   gcc-12
i386                  randconfig-014-20240809   gcc-12
i386                  randconfig-015-20240809   gcc-12
i386                  randconfig-016-20240809   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240809   gcc-13.2.0
loongarch             randconfig-002-20240809   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                     cu1830-neo_defconfig   gcc-14.1.0
mips                          eyeq5_defconfig   gcc-14.1.0
mips                      fuloong2e_defconfig   gcc-14.1.0
mips                           gcw0_defconfig   gcc-14.1.0
mips                           ip32_defconfig   clang-15
mips                     loongson1b_defconfig   gcc-14.1.0
mips                        maltaup_defconfig   gcc-14.1.0
mips                          rm200_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240809   gcc-13.2.0
nios2                 randconfig-002-20240809   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240809   gcc-13.2.0
parisc                randconfig-002-20240809   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                   bluestone_defconfig   clang-15
powerpc               randconfig-001-20240809   gcc-13.2.0
powerpc64                        alldefconfig   clang-15
powerpc64             randconfig-001-20240809   gcc-13.2.0
powerpc64             randconfig-002-20240809   gcc-13.2.0
powerpc64             randconfig-003-20240809   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   clang-15
riscv             nommu_k210_sdcard_defconfig   gcc-14.1.0
riscv                 randconfig-001-20240809   gcc-13.2.0
riscv                 randconfig-002-20240809   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240809   gcc-13.2.0
s390                  randconfig-002-20240809   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                         apsh4a3a_defconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240809   gcc-13.2.0
sh                    randconfig-002-20240809   gcc-13.2.0
sh                           se7705_defconfig   gcc-14.1.0
sh                   secureedge5410_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240809   gcc-13.2.0
sparc64               randconfig-002-20240809   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240809   gcc-13.2.0
um                    randconfig-002-20240809   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                           alldefconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240809   clang-18
x86_64       buildonly-randconfig-002-20240809   clang-18
x86_64       buildonly-randconfig-003-20240809   clang-18
x86_64       buildonly-randconfig-004-20240809   clang-18
x86_64       buildonly-randconfig-005-20240809   clang-18
x86_64       buildonly-randconfig-006-20240809   clang-18
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240809   clang-18
x86_64                randconfig-002-20240809   clang-18
x86_64                randconfig-003-20240809   clang-18
x86_64                randconfig-004-20240809   clang-18
x86_64                randconfig-005-20240809   clang-18
x86_64                randconfig-006-20240809   clang-18
x86_64                randconfig-011-20240809   clang-18
x86_64                randconfig-012-20240809   clang-18
x86_64                randconfig-013-20240809   clang-18
x86_64                randconfig-014-20240809   clang-18
x86_64                randconfig-015-20240809   clang-18
x86_64                randconfig-016-20240809   clang-18
x86_64                randconfig-071-20240809   clang-18
x86_64                randconfig-072-20240809   clang-18
x86_64                randconfig-073-20240809   clang-18
x86_64                randconfig-074-20240809   clang-18
x86_64                randconfig-075-20240809   clang-18
x86_64                randconfig-076-20240809   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240809   gcc-13.2.0
xtensa                randconfig-002-20240809   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
