Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3282BC433C0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 20:37:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BF416071E;
	Sat,  8 Nov 2025 19:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iLVLvcgvqFms; Sat,  8 Nov 2025 19:37:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5405F60718
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762630663;
	bh=5Gi/bx33xNoTTfOMQ/y/yzYFjCxbWSvr7f1DDIVqBH4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8ePNWFjZPufT73mGSIxeVOt8xBSheDu4Cdz4wp0TomBg5ggFCJS9S2ptokB0ERGDa
	 efLXlFUQl5wqAo0hIFmHjjUNBCNpnoBVRVCn0Wn8Ao3kd578daWAjtc0kzMh3E0lDb
	 eDN7VwvFAv8hcgOc44jQ6+sePrWU4hxRkxULZb5Hvarxd/Wx4pvo++9Cu6xW2zinLh
	 UWp984cj8omQ1QEo4XLN7TCqJJfb9Hxj5g38CLcj+SrMaqBDybhFzWGGe7EyBfU1zk
	 rJwNvqhIZd6PBt+kPeAR5nIn9wE/CC0z685CJEetR0lKyQ7JgDDZ/E8FR0BdAlw/oB
	 2+xjeLWm4XIuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5405F60718;
	Sat,  8 Nov 2025 19:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 88F0A2CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 19:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6DF6F80D5A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 19:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sogGIQXt6lFK for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 19:37:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 792AE80D2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 792AE80D2A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 792AE80D2A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 19:37:39 +0000 (UTC)
X-CSE-ConnectionGUID: FJnytCsfSw20tA3TBtOtjw==
X-CSE-MsgGUID: waaOx10rQhCsk7nIz+DVRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="64779931"
X-IronPort-AV: E=Sophos;i="6.19,290,1754982000"; d="scan'208";a="64779931"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2025 11:37:38 -0800
X-CSE-ConnectionGUID: Nkv6qkUGQF23Cqcu63JzrQ==
X-CSE-MsgGUID: Om9LQ/4CT8WAyYtmBoGe5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,290,1754982000"; d="scan'208";a="188159265"
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 08 Nov 2025 11:37:38 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vHokh-0001NR-2b
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Nov 2025 19:37:35 +0000
Date: Sun, 09 Nov 2025 03:37:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511090319.XAG4ucHV-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762630660; x=1794166660;
 h=date:from:to:subject:message-id;
 bh=N50N7ZhKK45YUU0Et4HDA8Is8YCy1cqlcbH2sD4kAjM=;
 b=N3S/4BqpfBMqgTg4NImZyiAjlj1MeLMCJy6W+CiAJOfE1g0HqQSX1+aU
 w483m/0OBnM045LCpySapDuDFjXceQZAahiz3pWlQmgweMf60h1kQ437s
 h3S2TXWkVvJxw1yA0aAbPfgUAeB2RdYjjXr0Sk/HZ7LecoIJBIsWluJtw
 7NGq6pURtUSokWqRN6yW458vh3tObTt1HsGODld7NbG/ORXQHsY4quLo3
 tPOx8HKmQHxg0hYNAc2eYUnSWu2wcfVAO6+zBjPLYoq6i6palH2zi5E69
 61stKVEq6yd7pVPGOZ3qMCl6qjmw60LKPu4/fylnMymx8LJgHgGW/Isyg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N3S/4Bqp
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 c6934c4e049c8a7f2b7fab620c04bc5dfbd947c1
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
branch HEAD: c6934c4e049c8a7f2b7fab620c04bc5dfbd947c1  netlink: specs: netdev add missing stats to qstat-get

elapsed time: 1622m

configs tested: 95
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                        nsimosci_defconfig    gcc-15.1.0
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20251108    gcc-12.5.0
arc                   randconfig-002-20251108    gcc-8.5.0
arc                           tb10x_defconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                         nhk8815_defconfig    clang-22
arm                   randconfig-001-20251108    gcc-14.3.0
arm                   randconfig-002-20251108    gcc-15.1.0
arm                   randconfig-003-20251108    clang-22
arm                   randconfig-004-20251108    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251108    gcc-8.5.0
arm64                 randconfig-001-20251109    gcc-15.1.0
arm64                 randconfig-002-20251108    clang-22
arm64                 randconfig-002-20251109    gcc-12.5.0
arm64                 randconfig-003-20251108    clang-22
arm64                 randconfig-003-20251109    clang-19
arm64                 randconfig-004-20251108    clang-22
arm64                 randconfig-004-20251109    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251108    gcc-15.1.0
csky                  randconfig-001-20251109    gcc-14.3.0
csky                  randconfig-002-20251108    gcc-15.1.0
csky                  randconfig-002-20251109    gcc-11.5.0
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20251108    clang-22
hexagon               randconfig-002-20251108    clang-22
i386                             alldefconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251109    gcc-14
i386        buildonly-randconfig-002-20251109    gcc-13
i386        buildonly-randconfig-003-20251109    clang-20
i386        buildonly-randconfig-004-20251109    clang-20
i386        buildonly-randconfig-005-20251109    clang-20
i386        buildonly-randconfig-006-20251109    clang-20
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251108    gcc-12.5.0
loongarch             randconfig-002-20251108    gcc-12.5.0
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
m68k                        m5272c3_defconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251108    gcc-8.5.0
nios2                 randconfig-002-20251108    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251108    gcc-8.5.0
parisc                randconfig-002-20251108    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ksi8560_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251108    gcc-8.5.0
powerpc               randconfig-002-20251108    gcc-9.5.0
powerpc                     redwood_defconfig    clang-22
powerpc                     tqm8541_defconfig    clang-22
powerpc                         wii_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251108    gcc-8.5.0
powerpc64             randconfig-002-20251108    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251108    clang-19
riscv                 randconfig-002-20251108    gcc-12.5.0
s390                              allnoconfig    clang-22
s390                  randconfig-001-20251108    clang-22
s390                  randconfig-002-20251108    gcc-8.5.0
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251108    gcc-15.1.0
sh                    randconfig-002-20251108    gcc-13.4.0
sh                           se7712_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251108    gcc-14.3.0
sparc                 randconfig-002-20251108    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251108    clang-20
sparc64               randconfig-002-20251108    clang-20
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251108    gcc-14
um                    randconfig-002-20251108    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                              defconfig    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251108    gcc-8.5.0
xtensa                randconfig-002-20251108    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
