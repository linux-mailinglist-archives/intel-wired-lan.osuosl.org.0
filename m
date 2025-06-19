Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F56EAE0B0D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 18:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0C5060D4B;
	Thu, 19 Jun 2025 16:05:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DX8spH24_nRX; Thu, 19 Jun 2025 16:05:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7B4B60C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750349116;
	bh=I58whvxlq6lW3J34XEWsCYX+2o5/BHFBIflVjflHJDU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0s5Eq9cVX16s5Ort5NE3bi2dVT8amea1zuJfYUK7k4UzT8G5Q2kWXLAPQpURs3MWl
	 9Rf/CgAQ+yJlLVC5gMHDmIu65EUcCU4AL+BEwMFksFJQLLXMCw3mmNYGsGsTdIvhrv
	 l67nthE0BffAFpvF+hyF/5NIjaZkJRPHjny8yIgdGPAcWSPO1MvwCRt2BuaYTWSBl7
	 g51X9JKJZ6iLaQnwVMWf/ywiTXmgJgPMFGO2KN1gdKowq3GtXdEjrjBpEOUk3xgZgc
	 OEevwj8354X6Y6styzEtunThvSAShGSt5SNNioEdoBpiZ8LqyUMf4vGignoS+OzyO8
	 AeGs9nUsRuyQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7B4B60C2E;
	Thu, 19 Jun 2025 16:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 49AE516B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 16:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B20A40287
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 16:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xhAmmGgwRSpV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 16:05:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6474D4012A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6474D4012A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6474D4012A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 16:05:14 +0000 (UTC)
X-CSE-ConnectionGUID: IUuMgI8VTtGduQhdyU2nSg==
X-CSE-MsgGUID: lYT5sddKSSWAfiyEvxpKOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="51716033"
X-IronPort-AV: E=Sophos;i="6.16,249,1744095600"; d="scan'208";a="51716033"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 09:05:13 -0700
X-CSE-ConnectionGUID: fYoxvykfTCW+fXEFPCNlTA==
X-CSE-MsgGUID: 4Gw8OVBpS0+HbiJQ68jZlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,249,1744095600"; d="scan'208";a="150276064"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 19 Jun 2025 09:05:13 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uSHlG-000Kuq-31
 for intel-wired-lan@lists.osuosl.org; Thu, 19 Jun 2025 16:05:10 +0000
Date: Fri, 20 Jun 2025 00:04:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506200022.loAZ8CrA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750349114; x=1781885114;
 h=date:from:to:subject:message-id;
 bh=79mjkHSFtrHjPJBguR4LuX8iGpDV+G46UPoSkXaZxHI=;
 b=mkyMahf/LZK5FPLGZgJcDE4f+9ZQnk3LEa+nu6TOUmPOvXS1roC0lEnt
 hnFk18ym+vHveYS2UkRf5MyG7LocAbBTVJ2UlrnYVE0ucW6B6o1qSvaYT
 P28Dbuc4fO810ifcTqAMZ/ck/kMGdRvsvGzJJUL3FUTMM0OIF7r3f4w/Z
 U6wPEshwDN+G7Zj/7SXaZEH+5glnhPx3LsUfgoP94DPR8rYXbIzLHmhQV
 43V/yNsLoeJG2cKHDWct73xUQuIojWmanhPBfVIDBVxaVc70iWQw5pthH
 Dy4KKtfwUA57F/i7Rt3W//lHHe9yN8jmevfp10ebVAdLqmxToK4F6wIb7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mkyMahf/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d16813402994bde9201030ef877c9d753227e6dd
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
branch HEAD: d16813402994bde9201030ef877c9d753227e6dd  ixgbe: initialize aci lock before it's used

elapsed time: 1455m

configs tested: 93
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                        nsim_700_defconfig    gcc-15.1.0
arc                   randconfig-001-20250619    gcc-15.1.0
arc                   randconfig-002-20250619    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                       aspeed_g4_defconfig    clang-21
arm                   randconfig-001-20250619    clang-21
arm                   randconfig-002-20250619    gcc-8.5.0
arm                   randconfig-003-20250619    gcc-8.5.0
arm                   randconfig-004-20250619    gcc-10.5.0
arm                        spear3xx_defconfig    clang-17
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250619    gcc-8.5.0
arm64                 randconfig-002-20250619    gcc-9.5.0
arm64                 randconfig-003-20250619    gcc-10.5.0
arm64                 randconfig-004-20250619    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250619    gcc-11.5.0
csky                  randconfig-002-20250619    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250619    clang-21
hexagon               randconfig-002-20250619    clang-21
i386        buildonly-randconfig-001-20250619    gcc-12
i386        buildonly-randconfig-002-20250619    gcc-12
i386        buildonly-randconfig-003-20250619    clang-20
i386        buildonly-randconfig-004-20250619    clang-20
i386        buildonly-randconfig-005-20250619    clang-20
i386        buildonly-randconfig-006-20250619    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250619    gcc-15.1.0
loongarch             randconfig-002-20250619    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm63xx_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250619    gcc-8.5.0
nios2                 randconfig-002-20250619    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250619    gcc-11.5.0
parisc                randconfig-002-20250619    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                 linkstation_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250619    gcc-9.3.0
powerpc               randconfig-002-20250619    clang-21
powerpc               randconfig-003-20250619    gcc-10.5.0
powerpc                    sam440ep_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250619    gcc-11.5.0
powerpc64             randconfig-002-20250619    clang-21
powerpc64             randconfig-003-20250619    gcc-10.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250619    gcc-11.5.0
riscv                 randconfig-002-20250619    clang-16
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250619    clang-19
s390                  randconfig-002-20250619    gcc-13.2.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250619    gcc-9.3.0
sh                    randconfig-002-20250619    gcc-9.3.0
sh                           se7750_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250619    gcc-14.3.0
sparc                 randconfig-002-20250619    gcc-10.3.0
sparc64               randconfig-001-20250619    gcc-13.3.0
sparc64               randconfig-002-20250619    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250619    clang-19
um                    randconfig-002-20250619    clang-21
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20250619    clang-20
x86_64      buildonly-randconfig-002-20250619    gcc-12
x86_64      buildonly-randconfig-003-20250619    clang-20
x86_64      buildonly-randconfig-004-20250619    gcc-12
x86_64      buildonly-randconfig-005-20250619    clang-20
x86_64      buildonly-randconfig-006-20250619    gcc-12
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250619    gcc-9.3.0
xtensa                randconfig-002-20250619    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
