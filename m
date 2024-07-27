Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3E393DE36
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jul 2024 11:41:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EB8A81EA1;
	Sat, 27 Jul 2024 09:41:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XH92G3OJ4pU8; Sat, 27 Jul 2024 09:41:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BBA181F34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722073287;
	bh=2WKvEJGJhyiZgeRAluTZCRTIx0rhK6oJdHmckQHwHZM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YnsW65mDEfvP+6WDZ7ZBrncdteKdVwXpPgZVol3RE3UQ0l9GjSStBRKhlcOXEM0gj
	 uvnLCcwBJU+Si1WR8w+h1j1rDVnp5ce5ziXFSsBXqRMa5NcKzXTghV610dYl12Sr4H
	 qBZNJg3QAfbIJWfKiNL0YFvGeIWpw47ON1gK2KwFW85zwtJfH0gfK+10jt6YR0MfVV
	 0ru/77gzgRtYSRsUVFdtOafrEKDeuAbyX/BxodgvrmpdLRzyoxVnQR65Lm8YTC3pln
	 Gt+McExupoXdN/kb/AjY9/Z3aSqcEdAxZhfRnWHhoJLWl19oMC1Bp30iTZ5pad9y7I
	 sL9bJIHcnciMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BBA181F34;
	Sat, 27 Jul 2024 09:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 555D01BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jul 2024 09:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 421FB40474
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jul 2024 09:41:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r80sOnO8y2ob for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jul 2024 09:41:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC696403D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC696403D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC696403D2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jul 2024 09:41:23 +0000 (UTC)
X-CSE-ConnectionGUID: mRsKj2YsQgqhiMCF1DUwww==
X-CSE-MsgGUID: r7D73+HcSiO0EWg2lYtEVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11145"; a="19995737"
X-IronPort-AV: E=Sophos;i="6.09,241,1716274800"; d="scan'208";a="19995737"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2024 02:41:23 -0700
X-CSE-ConnectionGUID: yLAgvRh1R1yuh8QVCm2Cgw==
X-CSE-MsgGUID: temuO+paQR+6MNImjYnI4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,241,1716274800"; d="scan'208";a="53409522"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 27 Jul 2024 02:41:22 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sXdvU-000pp2-0l
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Jul 2024 09:41:20 +0000
Date: Sat, 27 Jul 2024 17:40:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407271719.skLvrBAI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722073284; x=1753609284;
 h=date:from:to:subject:message-id;
 bh=RWat1Ko0TEMC+CrSnld7SKYGiMU15VPED2zBMEq5Srg=;
 b=NRiWJx3ytpd4croJ67Dc5lK+JEYhlPOucZfu1Jes1iV+C+u3da7rHkPi
 XM5RYfDgOX1vW6cSKGiMIOsd/e9M/ik8pFSvJ/5eCs9PRZ5I5gSl3EyuO
 EpRNN7r6VrhzotvuhzDhxQRpvIaKs44PdRXUtM6A4aejyplAQMYxG3qth
 CBmrzlzA3xv7/766xIShc2GE2YEqxCl1ezkpYBjGQuWhaHE1IPirkl1Sf
 6AcnKt1uxdE35kxnTeHdW84ORPPgrJgwPLIsmlMyUCntXCvKnpJlXUl5L
 CeNi4/4VXOHfrVb+L+FGDQqgykvyV6It/aPMMRtyYlQLl/AHLgipycUDl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NRiWJx3y
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9e36cf8c8f4eee458dbc0fb9629a40159c704961
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 9e36cf8c8f4eee458dbc0fb9629a40159c704961  igb: add AF_XDP zero-copy Tx support

elapsed time: 768m

configs tested: 89
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240727   gcc-13.2.0
arc                   randconfig-002-20240727   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                         assabet_defconfig   clang-15
arm                         axm55xx_defconfig   clang-20
arm                          collie_defconfig   gcc-14.1.0
arm                         mv78xx0_defconfig   clang-20
arm                   randconfig-001-20240727   gcc-14.1.0
arm                   randconfig-002-20240727   gcc-14.1.0
arm                   randconfig-003-20240727   clang-17
arm                   randconfig-004-20240727   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240727   clang-20
arm64                 randconfig-002-20240727   gcc-14.1.0
arm64                 randconfig-003-20240727   gcc-14.1.0
arm64                 randconfig-004-20240727   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240727   gcc-14.1.0
csky                  randconfig-002-20240727   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240727   clang-20
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240727   gcc-13
i386         buildonly-randconfig-002-20240727   clang-18
i386         buildonly-randconfig-003-20240727   gcc-8
i386         buildonly-randconfig-004-20240727   gcc-10
i386         buildonly-randconfig-005-20240727   clang-18
i386         buildonly-randconfig-006-20240727   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240727   clang-18
i386                  randconfig-002-20240727   gcc-8
i386                  randconfig-003-20240727   clang-18
i386                  randconfig-004-20240727   clang-18
i386                  randconfig-005-20240727   clang-18
i386                  randconfig-006-20240727   gcc-13
i386                  randconfig-011-20240727   gcc-13
i386                  randconfig-012-20240727   gcc-13
i386                  randconfig-013-20240727   gcc-11
i386                  randconfig-014-20240727   gcc-13
i386                  randconfig-015-20240727   clang-18
i386                  randconfig-016-20240727   gcc-7
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
