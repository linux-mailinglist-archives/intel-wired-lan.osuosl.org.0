Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE92A4A09A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7C17849BC;
	Fri, 28 Feb 2025 17:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l75PPpEjIT2M; Fri, 28 Feb 2025 17:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1D7981348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740764323;
	bh=+wvO+oxsxTBOKAQseflW49o4RbIpGr7BrZ4MJPVS5t8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4O6kmbwMmso1uOAfEnpdqumuktpJxVkAbBG74WurlCGEWsL0l1sJZ5vEYRJ9otRVf
	 oC342xXiezBCY+PU0R4xuz0kh0znarAWn8I/5sG8QPAA6TXUGPh3tLIPiF66XMmnCB
	 pG+BJfsurZMKNSmgyZBK/9Xgx2UMuX15KBB8pW2WfT9wgNByseKtaKZTWsjR1EqraK
	 npXYcdsAZ6N2CabXulxEdddhot5MhRJ0scEPiNC6cRZ2OjOjDlAcYNMiDCjU/Npr6T
	 Hn2RAmWDuszpmZn7IqqTwz1vyABnRE1wOTk74BS9r7fkk1THEom5XFnALTLvqi6Edn
	 hXUvtg+kkjkDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1D7981348;
	Fri, 28 Feb 2025 17:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5C3E1DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A578F60702
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:38:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYs4FcY5Aw36 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:38:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A18A860698
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A18A860698
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A18A860698
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:38:40 +0000 (UTC)
X-CSE-ConnectionGUID: /IkXZDpgQ9ey5zTMPp7Yhg==
X-CSE-MsgGUID: zPAfOjOpSGaOg7TX85ASaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="29294440"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="29294440"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 09:38:40 -0800
X-CSE-ConnectionGUID: QQKQYBqjSU2A7R8WBQ0UIg==
X-CSE-MsgGUID: kZCyD8ZJSYGnloCWYcYfLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="122351229"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 28 Feb 2025 09:38:39 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1to4Ib-000FIC-1t
 for intel-wired-lan@lists.osuosl.org; Fri, 28 Feb 2025 17:37:51 +0000
Date: Sat, 01 Mar 2025 01:35:55 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503010149.jCqIfNYA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740764320; x=1772300320;
 h=date:from:to:subject:message-id;
 bh=e2QkF6g6ebLqB5sW318dPD2t8H3KeCvF0sPq1Rwpc88=;
 b=FZOxV1fDvWBGJMeKfMEhuJwCEIaU4vaBcQgHztVFNIhT/eET/bTaC7t8
 9Q8mi6A6Qrq+VAwXUD5PrmvWqlMV+kp+RoIOKSGnkKlp/c94CSWcxFSPi
 YAU78g0gb2Kpu5hUZO5khn+G12iNVJjx2+Nm4I529/1UYDPoh4UEFy78C
 5S4gMXl0rXu6Sry5zuOTtS5p+LcgJabuSoi/u5wZ4zGfndSvZDrWfLmsw
 nlfEQAAMdQxqOAe2irFygUfdL2ZQRL7N/qA6ta3h8OOeTcW7msl8SfQiK
 hemTwkPYC6ncM++tHpzn8rf1YTDKLVnlBFpQkVGn+5hUJE8pAqlE9N4Qh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FZOxV1fD
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 7fe0353606d77a32c4c7f2814833dd1c043ebdd2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 7fe0353606d77a32c4c7f2814833dd1c043ebdd2  net: ethernet: mtk_ppe_offload: Allow QinQ, double ETH_P_8021Q only

elapsed time: 1662m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250228    gcc-13.2.0
arc                   randconfig-002-20250228    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                         orion5x_defconfig    clang-21
arm                   randconfig-001-20250228    clang-21
arm                   randconfig-002-20250228    gcc-14.2.0
arm                   randconfig-003-20250228    gcc-14.2.0
arm                   randconfig-004-20250228    gcc-14.2.0
arm                           sama5_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                 randconfig-001-20250228    gcc-14.2.0
arm64                 randconfig-002-20250228    clang-21
arm64                 randconfig-003-20250228    clang-16
arm64                 randconfig-004-20250228    gcc-14.2.0
csky                  randconfig-001-20250228    gcc-14.2.0
csky                  randconfig-002-20250228    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250228    clang-19
hexagon               randconfig-002-20250228    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250228    clang-19
i386        buildonly-randconfig-002-20250228    clang-19
i386        buildonly-randconfig-003-20250228    gcc-12
i386        buildonly-randconfig-004-20250228    clang-19
i386        buildonly-randconfig-005-20250228    clang-19
i386        buildonly-randconfig-006-20250228    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250228    gcc-14.2.0
loongarch             randconfig-002-20250228    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250228    gcc-14.2.0
nios2                 randconfig-002-20250228    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250228    gcc-14.2.0
parisc                randconfig-002-20250228    gcc-14.2.0
parisc64                         alldefconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc               randconfig-001-20250228    gcc-14.2.0
powerpc               randconfig-002-20250228    clang-16
powerpc               randconfig-003-20250228    clang-18
powerpc64             randconfig-001-20250228    clang-16
powerpc64             randconfig-002-20250228    clang-18
powerpc64             randconfig-003-20250228    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250228    gcc-14.2.0
riscv                 randconfig-002-20250228    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250228    gcc-14.2.0
s390                  randconfig-002-20250228    clang-17
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250228    gcc-14.2.0
sh                    randconfig-002-20250228    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250228    gcc-14.2.0
sparc                 randconfig-002-20250228    gcc-14.2.0
sparc64               randconfig-001-20250228    gcc-14.2.0
sparc64               randconfig-002-20250228    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250228    clang-21
um                    randconfig-002-20250228    clang-21
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250228    clang-19
x86_64      buildonly-randconfig-002-20250228    clang-19
x86_64      buildonly-randconfig-003-20250228    gcc-12
x86_64      buildonly-randconfig-004-20250228    clang-19
x86_64      buildonly-randconfig-005-20250228    gcc-12
x86_64      buildonly-randconfig-006-20250228    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250228    gcc-14.2.0
xtensa                randconfig-002-20250228    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
