Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ABB8CADF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 14:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAAFB402BB;
	Tue, 21 May 2024 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b3bmzQEZJVot; Tue, 21 May 2024 12:14:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 784CD40232
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716293694;
	bh=wcgpTEdlFxV+NFGcrXgIWcSH5mhhIDEJoy+pGVW8qlU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vyesnqyTUwa+JePTGNsWKG+HRh2VWYJO80pEGbJSfkDEEO1h1IFOPyH/ksBN59bRI
	 psSWV07jOQzde1AA9uk+mUzQo73STRlqTEjv4F/8zC00ZXbAMBbYeaPm6n5BU4iPbb
	 NFwsjBamPnomjMAgrFePB5UYssHsYZ+nnDOiOr3uaByW0oTq7wpuz+baw4vAWAi7Xo
	 LxoWDUETBDEigdGgUUdN12C8yAX+6ccTL83XRtAUdng81CpY3q0ljxzxjFAHn0pgk2
	 tbPlRO6ZJvCqrByMvOJrK2f6/3u+rck1N98+1M+7+wbuhSSLjD2V/L0m1NSPBluMI8
	 6Me9y6odKNuOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 784CD40232;
	Tue, 21 May 2024 12:14:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 442D71C5236
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 12:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D6724152C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 12:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h2-nCD5_y4RL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2024 12:14:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B1D24152B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B1D24152B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B1D24152B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 12:14:50 +0000 (UTC)
X-CSE-ConnectionGUID: fIiOFRydRgqrW8xfUxeaQA==
X-CSE-MsgGUID: MKdmHoHgRA+eUB9QzKrhHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12348961"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12348961"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 05:14:50 -0700
X-CSE-ConnectionGUID: beEMJRHUQ6ifhLuOtPX4bw==
X-CSE-MsgGUID: czEuuhFaRWGldv0ufLhgKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37285468"
Received: from unknown (HELO 108735ec233b) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 21 May 2024 05:14:49 -0700
Received: from kbuild by 108735ec233b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s9OOE-0006M2-2F
 for intel-wired-lan@lists.osuosl.org; Tue, 21 May 2024 12:14:46 +0000
Date: Tue, 21 May 2024 20:13:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405212024.9uLL4MI4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716293691; x=1747829691;
 h=date:from:to:subject:message-id;
 bh=f+cdEOqV6GkxSli+dZTYFAfkIQbCRQLg2kq4JHrq2wQ=;
 b=cFg9yD6EU8kYExosWll35DtZUMYItEbJMCiVFOQWgZhyma9CcvMqBTeW
 YjBPpm6QloQSl6ekWZdtVnwpFBvoAxhR0JapCTT4W9E6PBr5bLQro197j
 unka+ipZU6nPRFkYbzbWxJMZCUoWkXrkIkqweIXOv6yEP0/PbTjgAvrFW
 0XXr5vbJoJoNeKWYbmeoREOTm7csas/R5hfP+IBEpYFE3Ugv2Dgif+joo
 j1zW8qmaIPUaFzYGxUWIgZ99sbzCESGLhMyXBSQ/OvjO+k94Vu1k0IAoq
 OoMCGHOk4PrqvxEW+XOYcgwzPDh0X+M47cfuXEi3IucC6WBwKshRo5+64
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cFg9yD6E
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 61d48005db1f3c1c05cb887b58f9a84991230162
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 61d48005db1f3c1c05cb887b58f9a84991230162  i40e: Fully suspend and resume IO operations in EEH case

elapsed time: 727m

configs tested: 145
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240521   gcc  
arc                   randconfig-002-20240521   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240521   gcc  
arm                   randconfig-002-20240521   gcc  
arm                   randconfig-003-20240521   clang
arm                   randconfig-004-20240521   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240521   clang
arm64                 randconfig-002-20240521   gcc  
arm64                 randconfig-003-20240521   clang
arm64                 randconfig-004-20240521   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240521   gcc  
csky                  randconfig-002-20240521   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240521   clang
hexagon               randconfig-002-20240521   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240521   clang
i386         buildonly-randconfig-002-20240521   clang
i386         buildonly-randconfig-003-20240521   gcc  
i386         buildonly-randconfig-004-20240521   clang
i386         buildonly-randconfig-005-20240521   gcc  
i386         buildonly-randconfig-006-20240521   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240521   gcc  
i386                  randconfig-002-20240521   clang
i386                  randconfig-003-20240521   gcc  
i386                  randconfig-004-20240521   gcc  
i386                  randconfig-005-20240521   gcc  
i386                  randconfig-006-20240521   clang
i386                  randconfig-011-20240521   gcc  
i386                  randconfig-012-20240521   clang
i386                  randconfig-013-20240521   clang
i386                  randconfig-014-20240521   clang
i386                  randconfig-015-20240521   clang
i386                  randconfig-016-20240521   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240521   gcc  
loongarch             randconfig-002-20240521   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240521   gcc  
nios2                 randconfig-002-20240521   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240521   gcc  
parisc                randconfig-002-20240521   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240521   clang
powerpc               randconfig-002-20240521   gcc  
powerpc               randconfig-003-20240521   clang
powerpc64             randconfig-001-20240521   clang
powerpc64             randconfig-002-20240521   gcc  
powerpc64             randconfig-003-20240521   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240521   clang
riscv                 randconfig-002-20240521   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240521   clang
s390                  randconfig-002-20240521   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240521   gcc  
sh                    randconfig-002-20240521   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240521   gcc  
sparc64               randconfig-002-20240521   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240521   gcc  
um                    randconfig-002-20240521   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240521   clang
x86_64       buildonly-randconfig-002-20240521   clang
x86_64       buildonly-randconfig-003-20240521   gcc  
x86_64       buildonly-randconfig-004-20240521   clang
x86_64       buildonly-randconfig-005-20240521   gcc  
x86_64       buildonly-randconfig-006-20240521   gcc  
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240521   gcc  
xtensa                randconfig-002-20240521   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
