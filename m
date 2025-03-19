Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF3BA69B85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 22:56:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1625560EAD;
	Wed, 19 Mar 2025 21:56:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sp1xmWyG-LOb; Wed, 19 Mar 2025 21:56:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C3BB6100D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742421363;
	bh=zkYRmvZHkhakDywQ1zQwlaaHJLerDX49RoPEqKyvgns=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9ITZAUCiOD+iGbQyPeUkzJkb/RWibca19JkDm6wNS3PqC0JFJR/UKJfcCXd0iabqc
	 8s0RoDxMShhHMgdeqhP2U2nFt8io6NDbObVFboxG//TgBwwbmQnCYEIVBpDOwWSrgG
	 LH9MbREZS+9+icoo/kgDZq9aa7Dpg7TFuHGUuR9Zhj9WlwZm/EyrNe9OKiwTboFboo
	 rSaA3PYlJTPixUIXz2OYhK5Ql30KC6Pz0H38IEy5r0YnynfZz7OAMDkUqpjjr8Mz50
	 TwBecSj6/y81Yja+N2sH6JkyLTlESgoIK5dLU4hxDIzV68Ud+CWO9x/m5kmRxfxlMi
	 yxMen+Xw1Nj2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C3BB6100D;
	Wed, 19 Mar 2025 21:56:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4232F1A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BA7E4045E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:56:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZcEzLHWCNcRZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 21:55:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C7FC840114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7FC840114
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7FC840114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 21:55:58 +0000 (UTC)
X-CSE-ConnectionGUID: PmljOWocS8i+U6kmIUz7dQ==
X-CSE-MsgGUID: xMVABEyxQcih6wQHbxrHtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="43555816"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43555816"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 14:55:55 -0700
X-CSE-ConnectionGUID: OGZaUqjHSPicJcckSxhbNg==
X-CSE-MsgGUID: 2OQZPzVYTPmxIQ/O5w+mYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="128030446"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 19 Mar 2025 14:55:54 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tv1OC-000FhG-1x
 for intel-wired-lan@lists.osuosl.org; Wed, 19 Mar 2025 21:55:52 +0000
Date: Thu, 20 Mar 2025 05:55:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503200532.XmOGlR8S-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742421359; x=1773957359;
 h=date:from:to:subject:message-id;
 bh=QjNbyyW1xUcL7/JyPuZNtwRi7V5K6/ydJ1F5D2+31WY=;
 b=M9XNlPSwpojJR7B+RAT/sog9OcsQDWp1CFEG6mX8pGijfitgCXzYpjKT
 akoH6Tfqmjms3BYdP0H31ATe0V6IfcHwSF4hx71ZoRecqvJEX/+O/5phT
 K3lRX2/YmXGOYlNKg4AVyBQMrgYlIEtPTGjlLMW48RoXxjLBDqejwTzH/
 mk1sNygYkdFGp4c7YgkHn10TBYZrB3SZE4hGEL+WoZ2aD6cDs3cuMBdn+
 liqTgztdsUwsB/U0kQ1jhQO8hSGthpSqZ5mgFfH8ScTWv1cEXjLY0q42j
 A9XgGbn4q0j/4XLO/lhxX5IrWRzxVJMmdXmflBT6Mk/Vw2PKr0Sgdg3z9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M9XNlPSw
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 410597c085b1ab697bd40cc8cd532eb337a5405e
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
branch HEAD: 410597c085b1ab697bd40cc8cd532eb337a5405e  ice: improve error message for insufficient filter space

elapsed time: 1450m

configs tested: 120
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-6.5.0
alpha                            allyesconfig    gcc-9.3.0
alpha                               defconfig    gcc-7.5.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-8.5.0
arc                              allyesconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250319    gcc-14.2.0
arc                   randconfig-002-20250319    gcc-14.2.0
arm                              allmodconfig    gcc-8.5.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-6.5.0
arm                   randconfig-001-20250319    clang-18
arm                   randconfig-002-20250319    clang-21
arm                   randconfig-003-20250319    clang-20
arm                   randconfig-004-20250319    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-8.5.0
arm64                               defconfig    gcc-6.5.0
arm64                 randconfig-001-20250319    gcc-14.2.0
arm64                 randconfig-002-20250319    gcc-7.5.0
arm64                 randconfig-003-20250319    gcc-12.3.0
arm64                 randconfig-004-20250319    gcc-7.5.0
csky                              allnoconfig    gcc-9.3.0
csky                                defconfig    gcc-12.4.0
csky                  randconfig-001-20250319    gcc-14.2.0
csky                  randconfig-002-20250319    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    clang-21
hexagon               randconfig-001-20250319    clang-21
hexagon               randconfig-002-20250319    clang-16
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250319    gcc-12
i386        buildonly-randconfig-002-20250319    gcc-12
i386        buildonly-randconfig-003-20250319    gcc-12
i386        buildonly-randconfig-004-20250319    clang-20
i386        buildonly-randconfig-005-20250319    gcc-12
i386        buildonly-randconfig-006-20250319    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-12.4.0
loongarch                         allnoconfig    gcc-13.3.0
loongarch             randconfig-001-20250319    gcc-14.2.0
loongarch             randconfig-002-20250319    gcc-14.2.0
m68k                             allmodconfig    gcc-8.5.0
m68k                              allnoconfig    gcc-5.5.0
m68k                             allyesconfig    gcc-6.5.0
m68k                       m5249evb_defconfig    gcc-9.3.0
microblaze                       allmodconfig    gcc-9.3.0
microblaze                        allnoconfig    gcc-11.5.0
microblaze                       allyesconfig    gcc-9.3.0
mips                              allnoconfig    gcc-10.5.0
mips                          ath25_defconfig    clang-21
mips                    maltaup_xpa_defconfig    gcc-6.5.0
mips                        qi_lb60_defconfig    clang-21
nios2                         3c120_defconfig    gcc-7.5.0
nios2                             allnoconfig    gcc-8.5.0
nios2                 randconfig-001-20250319    gcc-14.2.0
nios2                 randconfig-002-20250319    gcc-10.5.0
openrisc                         alldefconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-5.5.0
parisc                           allyesconfig    gcc-9.3.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250319    gcc-10.5.0
parisc                randconfig-002-20250319    gcc-5.5.0
powerpc                          allmodconfig    gcc-10.5.0
powerpc                          allyesconfig    clang-21
powerpc                     powernv_defconfig    gcc-7.5.0
powerpc               randconfig-001-20250319    gcc-9.3.0
powerpc               randconfig-002-20250319    clang-21
powerpc               randconfig-003-20250319    clang-21
powerpc64                        alldefconfig    clang-21
powerpc64             randconfig-001-20250319    clang-20
powerpc64             randconfig-002-20250319    gcc-5.5.0
powerpc64             randconfig-003-20250319    clang-21
riscv                            allmodconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250319    clang-20
riscv                 randconfig-002-20250319    clang-17
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-8.5.0
s390                  randconfig-001-20250319    gcc-11.5.0
s390                  randconfig-002-20250319    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-10.5.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250319    gcc-11.5.0
sh                    randconfig-002-20250319    gcc-14.2.0
sh                  sh7785lcr_32bit_defconfig    gcc-7.5.0
sh                          urquell_defconfig    gcc-10.5.0
sparc                            allmodconfig    gcc-6.5.0
sparc                             allnoconfig    gcc-6.5.0
sparc                 randconfig-001-20250319    gcc-6.5.0
sparc                 randconfig-002-20250319    gcc-13.3.0
sparc64               randconfig-001-20250319    gcc-14.2.0
sparc64               randconfig-002-20250319    gcc-14.2.0
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250319    gcc-12
um                    randconfig-002-20250319    gcc-11
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250319    clang-20
x86_64      buildonly-randconfig-002-20250319    clang-20
x86_64      buildonly-randconfig-003-20250319    gcc-12
x86_64      buildonly-randconfig-004-20250319    gcc-11
x86_64      buildonly-randconfig-005-20250319    clang-20
x86_64      buildonly-randconfig-006-20250319    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    gcc-7.5.0
xtensa                          iss_defconfig    gcc-9.3.0
xtensa                randconfig-001-20250319    gcc-10.5.0
xtensa                randconfig-002-20250319    gcc-14.2.0
xtensa                    smp_lx200_defconfig    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
