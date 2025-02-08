Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1E8A2D993
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Feb 2025 00:05:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4A3380E47;
	Sat,  8 Feb 2025 23:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMFHHp_3TR7X; Sat,  8 Feb 2025 23:05:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0CF080E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739055920;
	bh=WdoN23Hy1JsmfDUhcd+PKkbDG40q0G7jAINRHYAY+7I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dXA48rHMQYaaStXlVfMpYrhLiOzKkshAJhtzPCa8fjq/sFDQE8cpOleYHKqjc8k2m
	 +FzbzQ1APu/pEKs4D8HJuAT6xdUnvClGpzbTO0SkUkGfd6VpLsQcR56oysvhx9aBF+
	 XUj/k595MRZHWdDmSGCexdQibQFnsCF9jphAhL1IGzee2b3/F+Tb5Lz2DPpHB5UjIZ
	 rXXz+R/6hu40DID3RDJWLhlNQ9swy0EemQ11x7DPjWfEkfrr3kZ5OZUIomyucnENlE
	 YMS1uFVc+s09uS+Y2Kee9el0OHxF4NFEcvNVeR2Bo6IBipC3i7jBmv5/9284I29EN3
	 XcilVuvtgm3tA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CF080E48;
	Sat,  8 Feb 2025 23:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 45B5F12B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 23:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34D5F414B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 23:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G15Fu87umoRD for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Feb 2025 23:05:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 45203414F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45203414F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 45203414F8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 23:05:15 +0000 (UTC)
X-CSE-ConnectionGUID: 1IDVgFtvS8aMpzuiHU/8CQ==
X-CSE-MsgGUID: zc8nVjGqRhqQbm0byibrmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11339"; a="39561978"
X-IronPort-AV: E=Sophos;i="6.13,271,1732608000"; d="scan'208";a="39561978"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2025 15:05:15 -0800
X-CSE-ConnectionGUID: nGcB1m1PSAawqN1MbkeUgw==
X-CSE-MsgGUID: 0rrt+ZfmQtCB8ALuBVLLZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,271,1732608000"; d="scan'208";a="116889380"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 08 Feb 2025 15:05:15 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tgtsu-0010l1-2V
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Feb 2025 23:05:12 +0000
Date: Sun, 09 Feb 2025 07:04:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502090721.kzsQwMMm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739055916; x=1770591916;
 h=date:from:to:subject:message-id;
 bh=+65i6hWSRg4ntoTuRzUgt6zGTUQ0s5ZKRee2c46ll14=;
 b=KWHmGc9pjcd2MOYIaXizWf9TiIwHs3JNIa9QSsj86DiULLknG9mVNO4t
 QoQjFicflIA3f79m5LHiv4Z3sycchAjNttDCus17OUgKUlbqMKcNeFfTQ
 p9HESOaPb3tTxDJLYDs6SiDGX1+cJWk9MJzFnUy1qzvFK8e5xQ6LAJFZt
 zo92VAJI6OIPuP99wG2lOnWfHUDxfzO7ZnDf2GHhY3U9EGi6DlPeGyhp8
 Loj9384N8Ryaop72Pt/nzAduBQCgj7vdqjhZkrynwK4liMm2pVdkGSGQq
 0ErCvU9LH2u2uitW2YMfmeuqQxIzw8TgfE16Z423VmNr4b8Nbdeglo6aT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KWHmGc9p
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 820e145d30facd90981914efefddb82c9786c963
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
branch HEAD: 820e145d30facd90981914efefddb82c9786c963  ixgbe: add support for thermal sensor event reception

elapsed time: 1447m

configs tested: 98
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250208    gcc-13.2.0
arc                   randconfig-002-20250208    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250208    gcc-14.2.0
arm                   randconfig-002-20250208    clang-17
arm                   randconfig-003-20250208    clang-21
arm                   randconfig-004-20250208    gcc-14.2.0
arm                          sp7021_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250208    clang-21
arm64                 randconfig-002-20250208    clang-21
arm64                 randconfig-003-20250208    clang-21
arm64                 randconfig-004-20250208    clang-15
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250208    gcc-14.2.0
csky                  randconfig-002-20250208    gcc-14.2.0
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250208    clang-21
hexagon               randconfig-002-20250208    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250208    gcc-11
i386        buildonly-randconfig-002-20250208    clang-19
i386        buildonly-randconfig-003-20250208    gcc-12
i386        buildonly-randconfig-004-20250208    clang-19
i386        buildonly-randconfig-005-20250208    clang-19
i386        buildonly-randconfig-006-20250208    gcc-12
i386                                defconfig    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250208    gcc-14.2.0
loongarch             randconfig-002-20250208    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250208    gcc-14.2.0
nios2                 randconfig-002-20250208    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250208    gcc-14.2.0
parisc                randconfig-002-20250208    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250208    clang-19
powerpc               randconfig-002-20250208    clang-17
powerpc               randconfig-003-20250208    gcc-14.2.0
powerpc64             randconfig-001-20250208    clang-21
powerpc64             randconfig-002-20250208    gcc-14.2.0
powerpc64             randconfig-003-20250208    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250208    clang-21
riscv                 randconfig-002-20250208    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250208    gcc-14.2.0
s390                  randconfig-002-20250208    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250208    gcc-14.2.0
sh                    randconfig-002-20250208    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250208    gcc-14.2.0
sparc                 randconfig-002-20250208    gcc-14.2.0
sparc64               randconfig-001-20250208    gcc-14.2.0
sparc64               randconfig-002-20250208    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250208    gcc-12
um                    randconfig-002-20250208    clang-21
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250208    clang-19
x86_64      buildonly-randconfig-002-20250208    gcc-12
x86_64      buildonly-randconfig-003-20250208    gcc-12
x86_64      buildonly-randconfig-004-20250208    clang-19
x86_64      buildonly-randconfig-005-20250208    clang-19
x86_64      buildonly-randconfig-006-20250208    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250208    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
