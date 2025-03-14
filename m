Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A89F9A615AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 17:03:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD33C6060B;
	Fri, 14 Mar 2025 16:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCGtTNqIbAPF; Fri, 14 Mar 2025 16:03:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F98460765
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741968183;
	bh=0iKh59U6k2V2NUl1+E/L/g59GY0PM44MhOv6Z4RnorM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WA+/ta9g8xNPYjlVKrPHDBk4k+ve7RhFiK/g259BXa0U8ON7KJb0KxjbjQy5AomBC
	 646xh22rJlB1NZu7suNtTkBFZujNUTZLjbyDrARhgcQMn+CbaaBZ6zlaWvt6o+dM9Q
	 SNp3be8tKcNzpy4BFBZbieY6dXaWzfN/Jj1ArtnFF0o6aNLjDnkz0mrkD20Q5p0hnq
	 s9pUq0R8zRVtnvwawG1Ta1ZapgQhDDDcaqdbetk/ANxgiJntLrxO2D1PhX2GSQT48O
	 o6fdh5015bY8it02o4pcRJDxe6FSwfNbOkmPLY0eKh74tPbmyNTxJ8hiLSRj6D7IxU
	 QalOJgBoQ31pw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F98460765;
	Fri, 14 Mar 2025 16:03:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C2CA1EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 16:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD0C840944
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 16:03:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tsmdD1P58-qc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 16:03:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 53846402B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53846402B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53846402B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 16:03:00 +0000 (UTC)
X-CSE-ConnectionGUID: 6C8mI+wkSMSSveyU/ECBUw==
X-CSE-MsgGUID: 2PJLM7IWTHKWVdOsDEVjfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="54505742"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="54505742"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 09:02:59 -0700
X-CSE-ConnectionGUID: 3kvloE3sSJyhz5A7KTHJKQ==
X-CSE-MsgGUID: JrmVEKkZTh6Ovqi79nUFSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121359629"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 14 Mar 2025 09:02:52 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tt7Uo-000AcP-10
 for intel-wired-lan@lists.osuosl.org; Fri, 14 Mar 2025 16:02:50 +0000
Date: Sat, 15 Mar 2025 00:02:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503150026.uIoNR2vt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741968180; x=1773504180;
 h=date:from:to:subject:message-id;
 bh=ahefMwwXP6wsmpt3kNnJLm8NjuoREIUJ2g5uuDO+YTc=;
 b=TOySdjT2WF3zm8iHiXSJYDmQo1lzKCiMCzuE0kI7jLTFX/7zHhQZK/Q6
 h7UD90jl8ekV1HjwKEi1PX5Ig/Fiek6CgliFG6qIaCveb6Y6/3Tu3zHBi
 lNZ8R/ajsYe4xxWBs6fe6o2vDTo+i/3+xmW0BJG2Z0UfeEE0k+qFHla9y
 3N5yyoNFXmQZSlL83Fao0PdPkEKpL4iqwk0U2CvPYboorl93tgAZekY/D
 d5eLJukhMPm29BIqvIISJ7Q2p628YBelDmnuSCRneo9t1bF5n2vq2thiV
 4aLb08c99GKRdg0tFFp0t5iGLOM+m2UCV2U57tA5JEVWR+f6T0cMyMPhn
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TOySdjT2
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 89d75c4c67aca1573aff905e72131a10847c5fda
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
branch HEAD: 89d75c4c67aca1573aff905e72131a10847c5fda  Merge branch 'mlx5-next' of git://git.kernel.org/pub/scm/linux/kernel/git/mellanox/linux

elapsed time: 1668m

configs tested: 108
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250314    gcc-13.2.0
arc                   randconfig-002-20250314    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250314    clang-21
arm                   randconfig-002-20250314    gcc-14.2.0
arm                   randconfig-003-20250314    gcc-14.2.0
arm                   randconfig-004-20250314    gcc-14.2.0
arm                    vt8500_v6_v7_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250314    gcc-14.2.0
arm64                 randconfig-002-20250314    clang-21
arm64                 randconfig-003-20250314    clang-15
arm64                 randconfig-004-20250314    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250314    gcc-14.2.0
csky                  randconfig-002-20250314    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250314    clang-21
hexagon               randconfig-002-20250314    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250314    clang-19
i386        buildonly-randconfig-002-20250314    clang-19
i386        buildonly-randconfig-003-20250314    gcc-12
i386        buildonly-randconfig-004-20250314    gcc-12
i386        buildonly-randconfig-005-20250314    gcc-12
i386        buildonly-randconfig-006-20250314    gcc-12
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250314    gcc-14.2.0
loongarch             randconfig-002-20250314    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         bigsur_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250314    gcc-14.2.0
nios2                 randconfig-002-20250314    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250314    gcc-14.2.0
parisc                randconfig-002-20250314    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc               randconfig-001-20250314    clang-21
powerpc               randconfig-002-20250314    gcc-14.2.0
powerpc               randconfig-003-20250314    gcc-14.2.0
powerpc64             randconfig-001-20250314    gcc-14.2.0
powerpc64             randconfig-002-20250314    clang-17
powerpc64             randconfig-003-20250314    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-21
riscv                 randconfig-001-20250314    clang-19
riscv                 randconfig-002-20250314    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250314    gcc-14.2.0
s390                  randconfig-002-20250314    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250314    gcc-14.2.0
sh                    randconfig-002-20250314    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250314    gcc-14.2.0
sparc                 randconfig-002-20250314    gcc-14.2.0
sparc64               randconfig-001-20250314    gcc-14.2.0
sparc64               randconfig-002-20250314    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250314    gcc-12
um                    randconfig-002-20250314    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250314    clang-19
x86_64      buildonly-randconfig-002-20250314    clang-19
x86_64      buildonly-randconfig-003-20250314    gcc-12
x86_64      buildonly-randconfig-004-20250314    clang-19
x86_64      buildonly-randconfig-005-20250314    gcc-12
x86_64      buildonly-randconfig-006-20250314    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250314    gcc-14.2.0
xtensa                randconfig-002-20250314    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
