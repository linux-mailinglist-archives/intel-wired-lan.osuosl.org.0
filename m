Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CB69C2BF6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 11:42:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 605EB60641;
	Sat,  9 Nov 2024 10:42:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHUbvdPqD47D; Sat,  9 Nov 2024 10:42:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 056806062F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731148968;
	bh=QN4jdFD7Tc3xLl4dpLeANoEZSLndNad5XP8RcBSLoJM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3j3HEzajg42HMGPp6aVj6Sfv/ppZ+c5fEx9nep2spDaYA2p9Tob4KMi3wnObgOCbj
	 qQeGytWMlHQ0o/VeBD0P+phJ4MhSNa3ChHk9RT/JkZNo3UP8Ci/X6m7Xg6EKaF4+rf
	 7aM+RN7jrAOme1I+Egb3bM+QTy605aL53wTbCa0UXNK9KDDZTE6d4DgUrzRfWE/xdT
	 5jPAL5cdloGwXPQnHZpA0++TLAW1MR64sWt/9SPMTUE2p8P6OOwNgAR0wA17TcPs/M
	 xp9bRnAbFbEaNYpj4iXpGZ7Z7a5Oa8a4/dz+NK/JqSBCnY1HpXC+HLbmeNsRkzYR+i
	 /PrPhk8k5Pknw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 056806062F;
	Sat,  9 Nov 2024 10:42:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D3BF8D8F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 10:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4EA060621
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 10:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DpxobXsBYKE3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 10:42:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8DBC16060C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DBC16060C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DBC16060C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 10:42:43 +0000 (UTC)
X-CSE-ConnectionGUID: rpTEjY8ISe+0aZDq9Sam4g==
X-CSE-MsgGUID: k/BbwP2ARQ+oeS75fXyrPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="31129056"
X-IronPort-AV: E=Sophos;i="6.12,140,1728975600"; d="scan'208";a="31129056"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2024 02:42:42 -0800
X-CSE-ConnectionGUID: 4o9O0uXWTs2f3w22qbGwTw==
X-CSE-MsgGUID: XdyX1ghwQdS+0a5XkkDeSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,140,1728975600"; d="scan'208";a="86115613"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 09 Nov 2024 02:42:41 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t9ivP-000sI2-1B
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Nov 2024 10:42:39 +0000
Date: Sat, 09 Nov 2024 18:42:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411091830.AAwjHO5T-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731148964; x=1762684964;
 h=date:from:to:subject:message-id;
 bh=qEthXtLzmbEvcenuJDicR8Xae/EtIrAFyW7vTEfnDiE=;
 b=bGOue8pb5ll8tF63bIoaTq/pqBonmr3x+SRrKXtJvqsSiGv0UU7T/rgh
 QwKfK6+JfjJxylI0o7MbD5KuDLfCwkqQeHpAa56z8Ca6tgJj25Smfcla/
 ThiDCnDToj542dN+m6yVTHBVc4en8VOyQQuoAYYEQhj2tbAaFKIjAmkWn
 4bgO7SS2W8OXr/wq3WBO+ci9SPAghdW0T8Mnt7ZlhvehCK+Spc7Dq6wGF
 UntKwLOlDoppReS0aJSGvdlPBCbU0ptR65Gyl4JYfpEXmE67N50xn2rEL
 +C9isb6QQVQmS/Y/kVhQE0U6D28zGpE87HX+aY2cTxVGF1a9MHZzyV2/D
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bGOue8pb
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 46d4a2fa5ef28208ebc19d12088e4a36696a8081
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
branch HEAD: 46d4a2fa5ef28208ebc19d12088e4a36696a8081  ice: Fix VLAN pruning in switchdev mode

elapsed time: 790m

configs tested: 159
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                         haps_hs_defconfig    clang-14
arc                   randconfig-001-20241109    gcc-13.2.0
arc                   randconfig-002-20241109    gcc-13.2.0
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                        neponset_defconfig    clang-14
arm                   randconfig-001-20241109    gcc-14.2.0
arm                   randconfig-002-20241109    clang-16
arm                   randconfig-003-20241109    clang-20
arm                   randconfig-004-20241109    gcc-14.2.0
arm                           u8500_defconfig    clang-14
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241109    clang-14
arm64                 randconfig-002-20241109    gcc-14.2.0
arm64                 randconfig-003-20241109    clang-20
arm64                 randconfig-004-20241109    clang-14
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241109    gcc-14.2.0
csky                  randconfig-002-20241109    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon               randconfig-002-20241109    clang-20
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241109    clang-19
i386        buildonly-randconfig-001-20241109    gcc-12
i386        buildonly-randconfig-002-20241109    clang-19
i386        buildonly-randconfig-003-20241109    clang-19
i386        buildonly-randconfig-003-20241109    gcc-12
i386        buildonly-randconfig-004-20241109    clang-19
i386        buildonly-randconfig-004-20241109    gcc-12
i386        buildonly-randconfig-005-20241109    clang-19
i386        buildonly-randconfig-006-20241109    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241109    clang-19
i386                  randconfig-002-20241109    clang-19
i386                  randconfig-003-20241109    clang-19
i386                  randconfig-003-20241109    gcc-12
i386                  randconfig-004-20241109    clang-19
i386                  randconfig-005-20241109    clang-19
i386                  randconfig-006-20241109    clang-19
i386                  randconfig-011-20241109    clang-19
i386                  randconfig-011-20241109    gcc-12
i386                  randconfig-012-20241109    clang-19
i386                  randconfig-013-20241109    clang-19
i386                  randconfig-014-20241109    clang-19
i386                  randconfig-015-20241109    clang-19
i386                  randconfig-015-20241109    gcc-11
i386                  randconfig-016-20241109    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241109    gcc-14.2.0
loongarch             randconfig-002-20241109    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    clang-14
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                      maltaaprp_defconfig    clang-14
mips                          rb532_defconfig    clang-14
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241109    gcc-14.2.0
nios2                 randconfig-002-20241109    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           alldefconfig    clang-14
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241109    gcc-14.2.0
parisc                randconfig-002-20241109    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                      arches_defconfig    clang-14
powerpc                     ep8248e_defconfig    clang-14
powerpc                        fsp2_defconfig    clang-14
powerpc                  iss476-smp_defconfig    clang-14
powerpc                 mpc8313_rdb_defconfig    clang-14
powerpc                 mpc836x_rdk_defconfig    clang-14
powerpc                  mpc885_ads_defconfig    clang-14
powerpc               randconfig-001-20241109    gcc-14.2.0
powerpc               randconfig-002-20241109    clang-16
powerpc               randconfig-003-20241109    clang-20
powerpc                     redwood_defconfig    clang-14
powerpc64             randconfig-001-20241109    clang-20
powerpc64             randconfig-002-20241109    gcc-14.2.0
powerpc64             randconfig-003-20241109    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241109    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241109    gcc-12
x86_64      buildonly-randconfig-002-20241109    clang-19
x86_64      buildonly-randconfig-003-20241109    clang-19
x86_64      buildonly-randconfig-004-20241109    clang-19
x86_64      buildonly-randconfig-005-20241109    gcc-12
x86_64      buildonly-randconfig-006-20241109    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241109    clang-19
x86_64                randconfig-002-20241109    clang-19
x86_64                randconfig-003-20241109    gcc-12
x86_64                randconfig-004-20241109    gcc-12
x86_64                randconfig-005-20241109    clang-19
x86_64                randconfig-006-20241109    gcc-12
x86_64                randconfig-011-20241109    clang-19
x86_64                randconfig-012-20241109    gcc-12
x86_64                randconfig-013-20241109    clang-19
x86_64                randconfig-014-20241109    gcc-12
x86_64                randconfig-015-20241109    clang-19
x86_64                randconfig-016-20241109    gcc-12
x86_64                randconfig-071-20241109    clang-19
x86_64                randconfig-072-20241109    clang-19
x86_64                randconfig-073-20241109    clang-19
x86_64                randconfig-074-20241109    clang-19
x86_64                randconfig-075-20241109    clang-19
x86_64                randconfig-076-20241109    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
