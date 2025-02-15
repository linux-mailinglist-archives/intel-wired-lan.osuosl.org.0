Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C51D3A37088
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 21:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 788E782C98;
	Sat, 15 Feb 2025 20:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fVg6rkePtGq6; Sat, 15 Feb 2025 20:16:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 362E882DE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739650592;
	bh=0srWo0ihzd+ILxzHN5z2LpkmDlBGJL/DaiR0wCaS94U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cBcSD+/PnY8aH2CJGhRmgDZCvL2YylO1hxtqjNdc6IhdHwJnJfy2AyLh4M4VrFcN9
	 Y3OJo6VE4RfgiUWiNczjvii064jvwi4mO4auJDIAVOu/vuujnRxchu8RuC/WRSfxRu
	 zJUL1BO4Ft9c9+u5sl1oiqBQNuqmqAooglTZA3xeDpgRfFTNDuGMOMSSWgK4ZDoOjI
	 X4jvkqmKfLLw8mbPvvVW+YnbwC8sklNgaG/okdnrMiF7AhvkF5yXK2QPs8qU64DCgJ
	 NEht49A6asl5mRB9szdzc+TdizHPKE5GOfDPndYQ+jguMnmMTIPhkbycC2B0QgO70z
	 ACYXBZvm7VMrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 362E882DE6;
	Sat, 15 Feb 2025 20:16:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 369C572
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 20:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 187064012B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 20:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBVJEzM1SqI7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 20:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A86140042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A86140042
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A86140042
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 20:16:28 +0000 (UTC)
X-CSE-ConnectionGUID: 2gwSYivRRfmDUu/V8IN4Rg==
X-CSE-MsgGUID: iFrJGFEURRaUwo+K5OOtpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11346"; a="51002230"
X-IronPort-AV: E=Sophos;i="6.13,289,1732608000"; d="scan'208";a="51002230"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2025 12:16:27 -0800
X-CSE-ConnectionGUID: hFV+3Av0S0aK2iMoZjcrDQ==
X-CSE-MsgGUID: Pkv+5padRFKAbC1OENQw9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113619019"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 15 Feb 2025 12:16:27 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tjOaO-001B9J-1Y
 for intel-wired-lan@lists.osuosl.org; Sat, 15 Feb 2025 20:16:24 +0000
Date: Sun, 16 Feb 2025 04:15:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502160423.pRv5eYvp-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739650588; x=1771186588;
 h=date:from:to:subject:message-id;
 bh=YAUBYVrWXlBCilrwHKVhXL3cCZG+UPCITWOHWqr3kxs=;
 b=CrAe1j42MtNTJnIPazrvzWOLPnaKznua7JW4w5N85Safxh/tp/gC4rVv
 QSqDDsLAXns2yTvRRYBiSQecFtjYo4kAEBgVvwf/DyvGWBCcEcnHpgqcC
 IctLaLX9KzNucJHDZeTrg/LKwuJoALEJCwSkan/U/zeUBGIMrPML/3mPg
 vRvVJEX3P6lzEAd1nmE/ML/ctZNJMsUqLm8Md240CxExT0kuu4lAvWbeu
 0Ks1dB2CUy1WAgzUsEDrIbxSrTa8o+F41Xof1FOAM/WirGCkq3N2OsUUc
 HIKgdiHhh6DdKLgnobVOjLGPPLm6fsrIOy0QdQIfGg0tn5SCP4CYAsZqd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CrAe1j42
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d142eb657bb0367effe3c1a43f170dda379176b2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d142eb657bb0367effe3c1a43f170dda379176b2  ice, irdma: fix an off by one in error handling code

elapsed time: 1449m

configs tested: 86
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250215    gcc-13.2.0
arc                   randconfig-002-20250215    gcc-13.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250215    clang-15
arm                   randconfig-002-20250215    clang-17
arm                   randconfig-003-20250215    gcc-14.2.0
arm                   randconfig-004-20250215    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                 randconfig-001-20250215    clang-21
arm64                 randconfig-002-20250215    gcc-14.2.0
arm64                 randconfig-003-20250215    clang-17
arm64                 randconfig-004-20250215    gcc-14.2.0
csky                  randconfig-001-20250215    gcc-14.2.0
csky                  randconfig-002-20250215    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250215    clang-21
hexagon               randconfig-002-20250215    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250215    gcc-12
i386        buildonly-randconfig-002-20250215    clang-19
i386        buildonly-randconfig-003-20250215    clang-19
i386        buildonly-randconfig-004-20250215    gcc-12
i386        buildonly-randconfig-005-20250215    clang-19
i386        buildonly-randconfig-006-20250215    clang-19
i386                                defconfig    clang-19
loongarch             randconfig-001-20250215    gcc-14.2.0
loongarch             randconfig-002-20250215    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250215    gcc-14.2.0
nios2                 randconfig-002-20250215    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250215    gcc-14.2.0
parisc                randconfig-002-20250215    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250215    gcc-14.2.0
powerpc               randconfig-002-20250215    clang-21
powerpc               randconfig-003-20250215    clang-19
powerpc64             randconfig-001-20250215    gcc-14.2.0
powerpc64             randconfig-002-20250215    clang-21
powerpc64             randconfig-003-20250215    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250215    clang-17
riscv                 randconfig-002-20250215    clang-19
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250215    gcc-14.2.0
s390                  randconfig-002-20250215    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250215    gcc-14.2.0
sh                    randconfig-002-20250215    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250215    gcc-14.2.0
sparc                 randconfig-002-20250215    gcc-14.2.0
sparc64               randconfig-001-20250215    gcc-14.2.0
sparc64               randconfig-002-20250215    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250215    clang-21
um                    randconfig-002-20250215    clang-19
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250215    gcc-12
x86_64      buildonly-randconfig-002-20250215    clang-19
x86_64      buildonly-randconfig-003-20250215    gcc-12
x86_64      buildonly-randconfig-004-20250215    clang-19
x86_64      buildonly-randconfig-005-20250215    clang-19
x86_64      buildonly-randconfig-006-20250215    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250215    gcc-14.2.0
xtensa                randconfig-002-20250215    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
