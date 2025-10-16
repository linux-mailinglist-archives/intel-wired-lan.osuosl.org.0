Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCADBE5445
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 21:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B749380D97;
	Thu, 16 Oct 2025 19:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtfE2GAjIam1; Thu, 16 Oct 2025 19:45:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E248C80D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760643936;
	bh=2G+bLIfhGz7QEYgX9/SBMbBnZ9renPi5Q5MWyePJALY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lEteLvxl16kZ2NxrB5wMXrkEKwoGVXbcHbpnDqh5JVoMudpvIpouYCRGuEsBTWqjU
	 eqIYeh9Vg+Z11mR+m8ZtSnKHuFfpWzwFKheN4u5kzYEKE4AoDYev9I3HHKqOwRVe+A
	 qEqcGILMlTPx6DKEWUtCHHbehZOE1A1H/n0MF1dBLibXSKTkMcPtWCk90/nhjJmXVF
	 xCfk/4V2VnOte6c4fIgqWRwDWcRYqSEnqdyUnxa8Vbqfi614Io7i/FPyLJR2dJ1GhO
	 CI5s+dF2dMVd9G1xzEgepsltJ79NQqxHom//JYXr7xNp96UwolFwk75iUHWHuciWm7
	 L6PlP35sUr9Sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E248C80D95;
	Thu, 16 Oct 2025 19:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD22D968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 19:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BEEA2405D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 19:45:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ew7FADN37Nuy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 19:45:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 70FF3405D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70FF3405D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70FF3405D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 19:45:34 +0000 (UTC)
X-CSE-ConnectionGUID: ypBPJIsqQHWqNIY+OSc8Mw==
X-CSE-MsgGUID: X30uA9qeTwOe1xuiDgXnzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62898550"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62898550"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 12:45:34 -0700
X-CSE-ConnectionGUID: Z83NiFe/TeySPvfXQrFryA==
X-CSE-MsgGUID: 0UeAMsWfSRuZmnzH0fPt3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182951029"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 16 Oct 2025 12:45:32 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v9Tug-0005C1-2L
 for intel-wired-lan@lists.osuosl.org; Thu, 16 Oct 2025 19:45:27 +0000
Date: Fri, 17 Oct 2025 03:44:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510170355.wPdGv3La-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760643935; x=1792179935;
 h=date:from:to:subject:message-id;
 bh=veAWQAdHw7RleGKDPvQtHwRb25zj58uoEonwzZbJY0g=;
 b=ggpnghkFM+CDSNmTZ+po4h9oiFfwzxNq32+kbADT/WAzBcKJx09GJvBq
 KXTorQY64q/dF5nLiie1Lah4JV3sd/n6Ig3hkwihgOaHKJjYthfaLGzFE
 98dZOeThDXBHr1oYbi10kAC6DB7A5WTfLQ7/xCQ5gs9miBoUpEVRPsuVZ
 ubd79/7BLw09tYvV5l6gznL6bOtTy4j9CwqdWwPol3oi2QwbKfmtYuyQa
 eXYIEtav07CenGDWj2sKIbz31WbfKT/MhjmR5IekB4j0CbkM7FmjYIWW3
 CYyYiQLAduQbNzSUDkU8wG2NoDEzRFi4YT8NIflGwHwZcTITlthT2dEJM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ggpnghkF
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE_Live_Migration] BUILD
 SUCCESS c63ff8a7c3f5260ca5f03a038d767ffcc1c41d61
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE_Live_Migration
branch HEAD: c63ff8a7c3f5260ca5f03a038d767ffcc1c41d61  ice-vfio-pci: implement PCI .reset_done handling

elapsed time: 1452m

configs tested: 111
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                        nsimosci_defconfig    gcc-15.1.0
arc                   randconfig-001-20251016    gcc-13.4.0
arc                   randconfig-002-20251016    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20251016    clang-22
arm                   randconfig-002-20251016    gcc-10.5.0
arm                   randconfig-003-20251016    clang-22
arm                   randconfig-004-20251016    gcc-14.3.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251016    clang-22
arm64                 randconfig-002-20251016    gcc-13.4.0
arm64                 randconfig-003-20251016    gcc-10.5.0
arm64                 randconfig-004-20251016    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251016    gcc-11.5.0
csky                  randconfig-002-20251016    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251016    clang-22
hexagon               randconfig-002-20251016    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251016    clang-20
i386        buildonly-randconfig-002-20251016    gcc-14
i386        buildonly-randconfig-003-20251016    clang-20
i386        buildonly-randconfig-004-20251016    clang-20
i386        buildonly-randconfig-005-20251016    clang-20
i386        buildonly-randconfig-006-20251016    gcc-14
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251016    gcc-15.1.0
loongarch             randconfig-002-20251016    gcc-13.4.0
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
nios2                 randconfig-001-20251016    gcc-8.5.0
nios2                 randconfig-002-20251016    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251016    gcc-9.5.0
parisc                randconfig-002-20251016    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                   bluestone_defconfig    clang-22
powerpc                        cell_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251016    clang-16
powerpc               randconfig-002-20251016    gcc-8.5.0
powerpc               randconfig-003-20251016    clang-22
powerpc                    sam440ep_defconfig    gcc-15.1.0
powerpc                     tqm8560_defconfig    gcc-15.1.0
powerpc64             randconfig-002-20251016    clang-22
powerpc64             randconfig-003-20251016    gcc-13.4.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251016    gcc-9.5.0
riscv                 randconfig-002-20251016    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251016    clang-18
s390                  randconfig-002-20251016    gcc-13.4.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                            migor_defconfig    gcc-15.1.0
sh                    randconfig-001-20251016    gcc-14.3.0
sh                    randconfig-002-20251016    gcc-14.3.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251016    gcc-15.1.0
sparc                 randconfig-002-20251016    gcc-8.5.0
sparc64               randconfig-001-20251016    gcc-13.4.0
sparc64               randconfig-002-20251016    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251016    gcc-12
um                    randconfig-002-20251016    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251016    clang-20
x86_64      buildonly-randconfig-002-20251016    gcc-14
x86_64      buildonly-randconfig-003-20251016    gcc-14
x86_64      buildonly-randconfig-004-20251016    gcc-12
x86_64      buildonly-randconfig-005-20251016    gcc-14
x86_64      buildonly-randconfig-006-20251016    gcc-12
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251016    gcc-10.5.0
xtensa                randconfig-002-20251016    gcc-9.5.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
