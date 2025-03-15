Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E995A6312F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Mar 2025 19:00:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6919781EF9;
	Sat, 15 Mar 2025 18:00:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HyVndkHwn4E0; Sat, 15 Mar 2025 18:00:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 216D182127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742061631;
	bh=szcR/3cTplpNFFMhAOFpWMxZzlTjvISpHzm+gffFYZw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e9PcWM3epkSBotjCBcQ3PZ1r2R0V8mlmqUFdiNk4wfcy6R0CQhsv6IENYI5XiWxuv
	 NkWIRO458x8PNbDH1kyPS0ML1bYeofhppqJDtsztUXaMCGWtxEHTJhNHCVijsCJP3z
	 Cb0ic6C0XSMQYwQQV7pk+EkYJq9fx7nzXoK5/GEMLfkzly19tN8tmyAoJvGLqhIxTO
	 7U7x0cZeIietq3irnJz/qTmAvHI2RgqfwaKyEd98qmuVSOacdX4QFFkQth5MbZGttr
	 zwa4DZ5RE6JGZhFQs+DEwGIQ4C8RQdIUOCvj9Pmge/w91YsrND3sZQq/U7Pkvcmvbm
	 PjI7jEQs9cvZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 216D182127;
	Sat, 15 Mar 2025 18:00:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 85AC2EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Mar 2025 18:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74D3D40CCA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Mar 2025 18:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RL9vDTpF2oAP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Mar 2025 18:00:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 37CF240CBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37CF240CBA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37CF240CBA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Mar 2025 18:00:27 +0000 (UTC)
X-CSE-ConnectionGUID: CxVo2DR/R2isgafGfMyt+A==
X-CSE-MsgGUID: GsRwBffNRBS6M9HGgLhddw==
X-IronPort-AV: E=McAfee;i="6700,10204,11374"; a="43376409"
X-IronPort-AV: E=Sophos;i="6.14,250,1736841600"; d="scan'208";a="43376409"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2025 11:00:27 -0700
X-CSE-ConnectionGUID: o5gpzOW9Q2K8tpHaMgrGMw==
X-CSE-MsgGUID: dlHhK8JxR6uiq1U7R/PaPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,250,1736841600"; d="scan'208";a="158713366"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 15 Mar 2025 11:00:26 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ttVo7-000BYL-2U
 for intel-wired-lan@lists.osuosl.org; Sat, 15 Mar 2025 18:00:23 +0000
Date: Sun, 16 Mar 2025 01:59:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503160125.on5qQvtn-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742061628; x=1773597628;
 h=date:from:to:subject:message-id;
 bh=9mrpEcmrvCYpF2ZJ4AHCYMx9oe3VuyvJsSu0Z5TBYe8=;
 b=XBHkVtlK74bxhRpXOVz8jEGrvBL2Wo7VX5SfbMJ5DsnxuRuZXeTyKoa8
 V8XEUoDYSCRBE4GsMHgLF9ev9I8VZRx9W+Ad4KfcKsvEBVF8OCUgMlDVE
 +gNFFmj4r4XltjNkQsfLQem+CII4BhQrdwdeJ5peehN92YVup/p38YDCU
 GKgO35l0PkWR49N0ebSmVQuFVNX7JOpA2nYgt81IL2UcniPkjU6JJz1mQ
 SxZtS0p+SnOH8EEIluXcoPhLdZK8xZZgonabk2PNiYD8L5rZq8XDbaicP
 SJAFrJUoGBpOur6EcskmaMMFCwEE2C4HaJnQfE8EApO/7sS6pFHVnR2VC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XBHkVtlK
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 297bc0d2c7b690753b42cc863516b3a8211d6c37
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
branch HEAD: 297bc0d2c7b690753b42cc863516b3a8211d6c37  ice: fix reservation of resources for RDMA when disabled

elapsed time: 1444m

configs tested: 89
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250315    gcc-13.2.0
arc                   randconfig-002-20250315    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250315    gcc-14.2.0
arm                   randconfig-002-20250315    clang-21
arm                   randconfig-003-20250315    clang-21
arm                   randconfig-004-20250315    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                 randconfig-001-20250315    gcc-14.2.0
arm64                 randconfig-002-20250315    gcc-14.2.0
arm64                 randconfig-003-20250315    clang-16
arm64                 randconfig-004-20250315    gcc-14.2.0
csky                  randconfig-001-20250315    gcc-14.2.0
csky                  randconfig-002-20250315    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250315    clang-21
hexagon               randconfig-002-20250315    clang-17
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250315    gcc-12
i386        buildonly-randconfig-002-20250315    clang-19
i386        buildonly-randconfig-003-20250315    clang-19
i386        buildonly-randconfig-004-20250315    clang-19
i386        buildonly-randconfig-005-20250315    gcc-11
i386        buildonly-randconfig-006-20250315    gcc-12
i386                                defconfig    clang-19
loongarch             randconfig-001-20250315    gcc-14.2.0
loongarch             randconfig-002-20250315    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250315    gcc-14.2.0
nios2                 randconfig-002-20250315    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250315    gcc-14.2.0
parisc                randconfig-002-20250315    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250315    clang-21
powerpc               randconfig-002-20250315    gcc-14.2.0
powerpc               randconfig-003-20250315    clang-18
powerpc64             randconfig-001-20250315    gcc-14.2.0
powerpc64             randconfig-002-20250315    clang-18
powerpc64             randconfig-003-20250315    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250315    gcc-14.2.0
riscv                 randconfig-002-20250315    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250315    clang-19
s390                  randconfig-002-20250315    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250315    gcc-14.2.0
sh                    randconfig-002-20250315    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250315    gcc-14.2.0
sparc                 randconfig-002-20250315    gcc-14.2.0
sparc64               randconfig-001-20250315    gcc-14.2.0
sparc64               randconfig-002-20250315    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250315    gcc-12
um                    randconfig-002-20250315    clang-18
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250315    gcc-12
x86_64      buildonly-randconfig-002-20250315    clang-19
x86_64      buildonly-randconfig-003-20250315    clang-19
x86_64      buildonly-randconfig-004-20250315    clang-19
x86_64      buildonly-randconfig-005-20250315    clang-19
x86_64      buildonly-randconfig-006-20250315    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250315    gcc-14.2.0
xtensa                randconfig-002-20250315    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
