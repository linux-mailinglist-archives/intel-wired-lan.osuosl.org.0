Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E37A3E302
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 18:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BD04612B6;
	Thu, 20 Feb 2025 17:48:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y6IPp11ldFaE; Thu, 20 Feb 2025 17:48:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4FBE612BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740073710;
	bh=h6vWAFddih4LpKTS1F8RDHwXbuXTBbXfkFta/q02Ptc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TeThJvubvi6XLR2acInj0pUbaeOo7Gaz2gFb9ScsU1/6IK4BqmEkVELudbX2B1n5m
	 8hn4xNm79Y35k8zKQyKsvKnfkMEuWMyyU7y6pJu4STmdwLRASDz0MKLeRFE9jckcpI
	 mlwPBBDCMLfputC7E4X+BZn9cOz4WvhwdGLp7xp1g0UH+mrWeXRmEGIa/USFJQKi/a
	 lBWzmapEG50hwKhzKa6Xe4E5EBvzA5U3iTazMmQF62eeoa+AdHubTh2Q7d14ISyBm5
	 Q/w5U5zZOB7/cyQmT/aqwE5uvJZx2GkN8lSjMpd3/oQI2yuxkKGebEUxvnN9vwuLXh
	 B/sR1b7G+pfiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4FBE612BE;
	Thu, 20 Feb 2025 17:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DEF9ED92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 17:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6FDD4134D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 17:48:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xkO51AF5ceRY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 17:48:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F080411EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F080411EA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F080411EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 17:48:27 +0000 (UTC)
X-CSE-ConnectionGUID: VsG4nezmTt6gPhC6Oh4tFA==
X-CSE-MsgGUID: LjU+MwqMRYa88qS0XkAAmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="41128848"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="41128848"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 09:48:27 -0800
X-CSE-ConnectionGUID: 81Waj4b5RauTMxrMCJZJNQ==
X-CSE-MsgGUID: pr2YZc5jTWStkJ/1xUHvBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114969893"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 20 Feb 2025 09:48:26 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tlAet-0004b7-27
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Feb 2025 17:48:23 +0000
Date: Fri, 21 Feb 2025 01:47:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202502210126.FI5nZqJX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740073707; x=1771609707;
 h=date:from:to:subject:message-id;
 bh=TDGTS3GpbIpumGviqiOASgCogUHDyVuLouru0eXD8Yk=;
 b=ZnuZQtkXyzoeV9LKn3UwC/MgjZ3jFKJv4D8VPfsrMYWSWrtVmCpNOJJI
 SQNZt3BksmDL6LlXKEZKbSplBsPD/dPaiksMfg7AbtagCglc132wUiH4u
 E4Wz+9l4Bg2jW4kMUA6qFJse9qkwwQSy2A5vEjzzKO5zShsE9tLnNiDm5
 aQPEwkBktjxpvkBBnqCmZZQPw0tDCzJSkOYxZQdbqx1/+MQgjZ3pqeS02
 ltMW78A1p6C5YncaaAZ8T50SGqaxddi2loipJeyV9iJqzuRA8ejRJy6Yj
 m74x8v71q+ZVldhmCZdKb3AF5KHE6b2YxNoiN+mH9mHT62kRiQHKcYwpf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZnuZQtkX
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 a92c3228766429fe175ecc815f895043ea505587
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: a92c3228766429fe175ecc815f895043ea505587  Merge branch 'net-fix-race-of-rtnl_net_lock-dev_net-dev'

elapsed time: 2339m

configs tested: 95
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250220    gcc-13.2.0
arc                   randconfig-002-20250220    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250220    gcc-14.2.0
arm                   randconfig-002-20250220    gcc-14.2.0
arm                   randconfig-003-20250220    gcc-14.2.0
arm                   randconfig-004-20250220    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250220    gcc-14.2.0
arm64                 randconfig-002-20250220    gcc-14.2.0
arm64                 randconfig-003-20250220    clang-21
arm64                 randconfig-004-20250220    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250220    gcc-14.2.0
csky                  randconfig-002-20250220    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250220    clang-21
hexagon               randconfig-002-20250220    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250220    gcc-12
i386        buildonly-randconfig-002-20250220    gcc-12
i386        buildonly-randconfig-003-20250220    gcc-12
i386        buildonly-randconfig-004-20250220    clang-19
i386        buildonly-randconfig-005-20250220    clang-19
i386        buildonly-randconfig-006-20250220    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250220    gcc-14.2.0
loongarch             randconfig-002-20250220    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250220    gcc-14.2.0
nios2                 randconfig-002-20250220    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250220    gcc-14.2.0
parisc                randconfig-002-20250220    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250220    gcc-14.2.0
powerpc               randconfig-002-20250220    clang-16
powerpc               randconfig-003-20250220    clang-21
powerpc64             randconfig-001-20250220    clang-16
powerpc64             randconfig-002-20250220    clang-18
powerpc64             randconfig-003-20250220    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250220    gcc-14.2.0
riscv                 randconfig-002-20250220    clang-21
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250220    clang-19
s390                  randconfig-002-20250220    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250220    gcc-14.2.0
sh                    randconfig-002-20250220    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250220    gcc-14.2.0
sparc                 randconfig-002-20250220    gcc-14.2.0
sparc64               randconfig-001-20250220    gcc-14.2.0
sparc64               randconfig-002-20250220    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250220    gcc-12
um                    randconfig-002-20250220    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250220    gcc-12
x86_64      buildonly-randconfig-002-20250220    gcc-12
x86_64      buildonly-randconfig-003-20250220    gcc-12
x86_64      buildonly-randconfig-004-20250220    gcc-12
x86_64      buildonly-randconfig-005-20250220    gcc-12
x86_64      buildonly-randconfig-006-20250220    gcc-12
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250220    gcc-14.2.0
xtensa                randconfig-002-20250220    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
