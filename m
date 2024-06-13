Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1800A90713A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 14:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6CA06100F;
	Thu, 13 Jun 2024 12:35:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HqlybR92pmQe; Thu, 13 Jun 2024 12:35:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FE8860EFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718282109;
	bh=vcD40R4Y/wHmwLE7Co3Sb6PhH3R94fF5nK4daixChxI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j7fvT/WnUEa8/yCTm9SWO9bICfCoXUP2t/xSZLRsnkdGn7mxY3J1EKyNMRojR2Cc0
	 AwS0ijWYA6oftJF8+6RSdYJIvlkSYkroQ0C9+d+l5R42wFnlK1ZjJKCm+laT0clvoL
	 xib0VvGg1FekGMgrZN71KyCYxRKRueBjFYWYP3s3pNcW7Uk2/XhDB9j+JQzlwNXJ2f
	 GOEQ0hdasKCl9QPns+0n+ckC0fzEI1LUTB9eYRg8JR+2dw21wMZJk4RmX6SIRsNp+p
	 mY1TC5R7GftjIiPuxND+wzuMSN2EdYRg3XcHAFfQyMbxcEFwU13wqlxMi9k6wSPqL7
	 hLJMf8H5lCruA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FE8860EFC;
	Thu, 13 Jun 2024 12:35:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6403C1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 12:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E984413F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 12:35:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Y8sMBMzNJ_t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 12:35:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 972DF401D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 972DF401D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 972DF401D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 12:35:05 +0000 (UTC)
X-CSE-ConnectionGUID: xsczAsqwSbOJsW6FdI1G2Q==
X-CSE-MsgGUID: +ZoVb5EfT6+MTD2KHidlcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15062899"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="15062899"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 05:35:04 -0700
X-CSE-ConnectionGUID: 55MTXgK7QeG1AH0bFUmL4w==
X-CSE-MsgGUID: Z3VdyJZVT42bhyXWwbaAOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40772608"
Received: from lkp-server01.sh.intel.com (HELO 0b1fe898bbad) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 13 Jun 2024 05:35:03 -0700
Received: from kbuild by 0b1fe898bbad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHjfR-00004V-12
 for intel-wired-lan@lists.osuosl.org; Thu, 13 Jun 2024 12:35:01 +0000
Date: Thu, 13 Jun 2024 20:34:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406132046.226FSLVO-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718282105; x=1749818105;
 h=date:from:to:subject:message-id;
 bh=7QqKCuRHyn7t06Otj4cAFF1p81AOnftwhT6G9YudaWs=;
 b=YiImc/mPWCzgZktMmgIOUIRb2NouOEDnkfeB9ZnEepXCK/DbheMiGC2L
 /OXzDdlfD8CBTn4R9/yADtiXWuxhvQk2R5/A5aRO3/2YyALA2WwFundXy
 ME3/dAHZ/cmoWl2zzUL2USjg/HKYPzb5Ek/0HXiBiUo7zHni7it+OG6Zw
 Ov/3gYKObmRxTW/xFb+SVWfpRl0y9H5iogr6cS+UcgEvyfpffmjXdPfV8
 6DtbT4PdyeAM+3w1nrACmOsYPmmPSbuFbNN/p0UWiP9SVeRO2mXeInSgD
 pxIbygVi0Ce59R/m3l5GKtNBijKmfuPqxUe9UE3uzFObxUKBF1tG6QooA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YiImc/mP
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 c96737dd95ba96be2398e4a785177d30f1c9d7b8
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: c96737dd95ba96be2398e4a785177d30f1c9d7b8  Revert "igc: fix a log entry using uninitialized netdev"

elapsed time: 2609m

configs tested: 76
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386                                defconfig   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                             allyesconfig   gcc-13.2.0
nios2                            allmodconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                            allyesconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   clang-19
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                          allmodconfig   gcc-13.2.0
sparc64                          allyesconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
