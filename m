Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB4FB3CC9E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 18:06:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD63C60726;
	Sat, 30 Aug 2025 16:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id puu0xzUA5ubE; Sat, 30 Aug 2025 16:06:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 869076075D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756570016;
	bh=V3/r7l2hIguZUmsP/CGypU1pLBlqrAcsf7/8QDDejyo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Nd2ZIivhQ05wuawfiXogD0ctg8iE9zhBwlUWNV4p9CcvRHPjKpFo74zSI1glxFIm1
	 TixN3bDPdg1Uui/FqDvcnix5NZ64DUKw3SgEwO0kp5dU9+cde5il2DivJ6CLky/psO
	 nyxxI+1YllOsiNNO51I/k/de6wk8N839GsriKkxBr+XPbbcWT99LY/Zno4eUcbbn6A
	 E1zvJ5q4VdGUV6lmtRncXb9yx1JgBc1HYaTbOV+pT3c25B6o/fHWUUuD+Cp0d6Vb3B
	 fZ1mosrNKTkVAcRlTIh9SHV8VJciex9o1ZDxeabqYV29BvvZJs4TCbG6c3aZw9LVtm
	 +PLHNloymdEaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 869076075D;
	Sat, 30 Aug 2025 16:06:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3B5769
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 16:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7830401E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 16:06:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHe1bJUEZ7R5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Aug 2025 16:06:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 574C6401E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 574C6401E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 574C6401E1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 16:06:52 +0000 (UTC)
X-CSE-ConnectionGUID: eM4/r3y7Qc6G2LE/3+1ZNw==
X-CSE-MsgGUID: pLZCpmWpQZWK1Yy4gkyTrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="76428577"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="76428577"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2025 09:06:52 -0700
X-CSE-ConnectionGUID: Enn3H72/T8CGjiWtSAEY0w==
X-CSE-MsgGUID: Do704y+6SMC8YaxHJbZiIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="175919367"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 30 Aug 2025 09:06:52 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1usO6K-000VVH-29
 for intel-wired-lan@lists.osuosl.org; Sat, 30 Aug 2025 16:06:48 +0000
Date: Sun, 31 Aug 2025 00:06:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508310032.0tfWJ3Up-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756570013; x=1788106013;
 h=date:from:to:subject:message-id;
 bh=nAq9A3xu/eMk94l/O/LGAV6/ycHXZlyNZxy+XaFBqKY=;
 b=L+N+sL2+thUHXpVBvUX19m8JefW9cCYSY+hLdoHCfD8giPO/WjGrLjS3
 6DJCMP1Rm1dCb/Peql3QuKdF0Kwo59+mn28/VTRFdx/36D3kr0auZq+ae
 psIB4pln9icit3WWCCMtX3B2ukcKynJfsPU2ABiKg82YipR4mgimr9Z/i
 4hXzh+fZzp7Umi5twwtiILtWARh3Y/CWElWQMWN49ikQ/vfgeWpxmkXGI
 uNdkkKRxqBYr3MjZ2NqKTQ0hHbiuAOZ+JCyy87cwoHeH0ZSv5+qrUOjsb
 WBl5QL4VakuQQ3pSdy0CoxVwk54AfPZx115x3zlKnHVt1VT2d90Tpykjl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L+N+sL2+
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 a1d12118747abf974171295e1a17444739f1948e
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
branch HEAD: a1d12118747abf974171295e1a17444739f1948e  ice: Remove deprecated ice_lag_move_new_vf_nodes() call

Error/Warning (recently discovered and may have been fixed):

    ld.lld: error: undefined symbol: libie_fwlog_deinit
    ld.lld: error: undefined symbol: libie_fwlog_init
    ld.lld: error: undefined symbol: libie_get_fwlog_data

Error/Warning ids grouped by kconfigs:

recent_errors
`-- arm-randconfig-002-20250830
    |-- ld.lld:error:undefined-symbol:libie_fwlog_deinit
    |-- ld.lld:error:undefined-symbol:libie_fwlog_init
    `-- ld.lld:error:undefined-symbol:libie_get_fwlog_data

elapsed time: 1443m

configs tested: 109
configs skipped: 3

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250830    gcc-8.5.0
arc                   randconfig-002-20250830    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                            dove_defconfig    gcc-15.1.0
arm                   randconfig-001-20250830    gcc-11.5.0
arm                   randconfig-002-20250830    clang-22
arm                   randconfig-003-20250830    clang-19
arm                   randconfig-004-20250830    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250830    gcc-10.5.0
arm64                 randconfig-002-20250830    clang-22
arm64                 randconfig-003-20250830    gcc-8.5.0
arm64                 randconfig-004-20250830    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250830    gcc-10.5.0
csky                  randconfig-002-20250830    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250830    clang-22
hexagon               randconfig-002-20250830    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250830    clang-20
i386        buildonly-randconfig-002-20250830    clang-20
i386        buildonly-randconfig-003-20250830    clang-20
i386        buildonly-randconfig-004-20250830    gcc-12
i386        buildonly-randconfig-005-20250830    clang-20
i386        buildonly-randconfig-006-20250830    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250830    clang-22
loongarch             randconfig-002-20250830    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250830    gcc-11.5.0
nios2                 randconfig-002-20250830    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250830    gcc-10.5.0
parisc                randconfig-002-20250830    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250830    gcc-15.1.0
powerpc               randconfig-002-20250830    clang-22
powerpc               randconfig-003-20250830    clang-22
powerpc64             randconfig-001-20250830    clang-17
powerpc64             randconfig-002-20250830    gcc-14.3.0
powerpc64             randconfig-003-20250830    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250830    gcc-8.5.0
riscv                 randconfig-002-20250830    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250830    clang-22
s390                  randconfig-002-20250830    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250830    gcc-11.5.0
sh                    randconfig-002-20250830    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250830    gcc-13.4.0
sparc                 randconfig-002-20250830    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250830    gcc-11.5.0
sparc64               randconfig-002-20250830    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250830    gcc-12
um                    randconfig-002-20250830    gcc-12
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250830    clang-20
x86_64      buildonly-randconfig-002-20250830    gcc-12
x86_64      buildonly-randconfig-003-20250830    clang-20
x86_64      buildonly-randconfig-004-20250830    gcc-12
x86_64      buildonly-randconfig-005-20250830    gcc-12
x86_64      buildonly-randconfig-006-20250830    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250830    gcc-12.5.0
xtensa                randconfig-002-20250830    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
