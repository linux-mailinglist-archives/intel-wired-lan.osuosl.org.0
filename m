Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39500A57F6A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Mar 2025 23:53:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8CCB408DA;
	Sat,  8 Mar 2025 22:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mTTxPkxhPn64; Sat,  8 Mar 2025 22:53:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F3BE40BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741474410;
	bh=G5rX6LRi6g+WbqgBAlWzMl4ObkeIv3AE3Oh3To0NT0g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tsoiwBXwo1ACwIRusG/Qb5cK5H2UpDv7HmMVy6NBDXUSXfrb/uc+DBVIuRr29K+l7
	 HKR1n8fSM/WYFFENcvKv36VTL2xR76+2Go6FLqUGcc718q8zxS853guTJQv88hwKwk
	 7Hmius0wY6dGDfKp5DSA9M7rLSVgO8/UQyAX82RuHjQOTgIwhyaTaNx+bkyVOjvp+3
	 fKbO3hlRzcKCStnQ1DQ2IQpfuewAH/2Ghm2QP4O8Dg3Gz1ogIsPRNmT4S9Lmr3ZyH9
	 qq4xTGdjALfZS/nsqIxh1mct3puCRahcmYf4Fb6/eq52WIGabAWJWsRuQKZhxJnWtS
	 W+hvLJO3niBBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F3BE40BDD;
	Sat,  8 Mar 2025 22:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F37BA1C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 22:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4CEA407FE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 22:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wfQfK8dN32fK for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Mar 2025 22:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5384640BDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5384640BDD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5384640BDD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 22:53:27 +0000 (UTC)
X-CSE-ConnectionGUID: ABlovahWSseg9rFVEGRuaA==
X-CSE-MsgGUID: Dc9F4fTESYiKAktsQa0/Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11367"; a="42695401"
X-IronPort-AV: E=Sophos;i="6.14,233,1736841600"; d="scan'208";a="42695401"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2025 14:53:26 -0800
X-CSE-ConnectionGUID: swMz8gVvRCCsK+tU4ATREw==
X-CSE-MsgGUID: QGkmEmTkSuGEnPARWwSEdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,233,1736841600"; d="scan'208";a="120132273"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 08 Mar 2025 14:53:25 -0800
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tr32p-0002Q0-0v
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Mar 2025 22:53:23 +0000
Date: Sun, 09 Mar 2025 06:53:13 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503090607.8XqrVVjw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741474407; x=1773010407;
 h=date:from:to:subject:message-id;
 bh=1lbVx/9JZg3HS2ZktnMiWNDUKrSotwpXQtWw/F2FJrg=;
 b=ixJBQn1Sm1VRwmvbbdsL8PDrhd7cdoZHwtRZEET5zA02PJM2cDxJUtJu
 6kL3AYdv6ryZ0c34Wbq+lIG3pWFVM95+bDdQJ7mBkUKjIfOsRa8EZlDL/
 JoWNQcGatOR9wARziKXP0nHRYxUa0KQd49RV1AtdIyMwenzq0wFXttfVD
 4gCtq/+3FVJhePQ9yOC36JurBEOgyEVxt614dpdYBQ6TW9VIGqcctorih
 g5DdEum9Ob5mnOYVs4eAJeB+r/kd9KGVrUG4KratxVFM+chrOZvPRa+SF
 OOoyMVQv8xG4jQPPKXDp0WzdaErG7tSCHWV9zwETEiTtsvZDvX+/YoKQj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ixJBQn1S
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 daa2036c311e81ee32f8cccc8257e3dfd4985f79
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
branch HEAD: daa2036c311e81ee32f8cccc8257e3dfd4985f79  igc: Fix XSK queue NAPI ID mapping

elapsed time: 1444m

configs tested: 73
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                   randconfig-001-20250308    gcc-13.2.0
arc                   randconfig-002-20250308    gcc-13.2.0
arm                   randconfig-001-20250308    gcc-14.2.0
arm                   randconfig-002-20250308    gcc-14.2.0
arm                   randconfig-003-20250308    gcc-14.2.0
arm                   randconfig-004-20250308    gcc-14.2.0
arm64                 randconfig-001-20250308    gcc-14.2.0
arm64                 randconfig-002-20250308    gcc-14.2.0
arm64                 randconfig-003-20250308    clang-16
arm64                 randconfig-004-20250308    gcc-14.2.0
csky                  randconfig-001-20250308    gcc-14.2.0
csky                  randconfig-002-20250308    gcc-14.2.0
hexagon               randconfig-001-20250308    clang-19
hexagon               randconfig-002-20250308    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250308    gcc-12
i386        buildonly-randconfig-002-20250308    gcc-11
i386        buildonly-randconfig-003-20250308    clang-19
i386        buildonly-randconfig-004-20250308    clang-19
i386        buildonly-randconfig-005-20250308    clang-19
i386        buildonly-randconfig-006-20250308    gcc-12
loongarch             randconfig-001-20250308    gcc-14.2.0
loongarch             randconfig-002-20250308    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250308    gcc-14.2.0
nios2                 randconfig-002-20250308    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250308    gcc-14.2.0
parisc                randconfig-002-20250308    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250308    clang-18
powerpc               randconfig-002-20250308    gcc-14.2.0
powerpc               randconfig-003-20250308    gcc-14.2.0
powerpc64             randconfig-001-20250308    gcc-14.2.0
powerpc64             randconfig-003-20250308    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250308    clang-21
riscv                 randconfig-002-20250308    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250308    clang-19
s390                  randconfig-002-20250308    clang-17
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250308    gcc-14.2.0
sh                    randconfig-002-20250308    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250308    gcc-14.2.0
sparc                 randconfig-002-20250308    gcc-14.2.0
sparc64               randconfig-001-20250308    gcc-14.2.0
sparc64               randconfig-002-20250308    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20250308    gcc-12
um                    randconfig-002-20250308    gcc-12
x86_64                            allnoconfig    clang-19
x86_64      buildonly-randconfig-001-20250308    gcc-12
x86_64      buildonly-randconfig-002-20250308    clang-19
x86_64      buildonly-randconfig-003-20250308    gcc-12
x86_64      buildonly-randconfig-004-20250308    clang-19
x86_64      buildonly-randconfig-005-20250308    clang-19
x86_64      buildonly-randconfig-006-20250308    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250308    gcc-14.2.0
xtensa                randconfig-002-20250308    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
