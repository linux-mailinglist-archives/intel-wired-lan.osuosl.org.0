Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC899F6CF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 19:14:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7833984E31;
	Wed, 18 Dec 2024 18:14:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LlFEHqhGYWfR; Wed, 18 Dec 2024 18:14:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55ABE84AE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734545660;
	bh=8XwI0vqpHWrlkIGAExhfOguU9I0XzG+LD5TL5D1hKio=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F/pysf7WUtsI/Fm6quQJQiscFNlAhe72qN57/9yespR59Y0BtXQZouIdmjd/6ZOvG
	 Jsh90HLwOBLjVjzw6PT+4ocYFUMtKZuqH+e6rRZ35u6DOXeeBTsDXNJKAsebXt93bg
	 DhUN0zc+xaU5m2bL4bMIWodbdHCFIaOz8hRP0Z+R3PjyN5+a9HBaGa6/tW34RF2N74
	 DRWYL4jBFFYex8Za+gBuCXx0n5T589oxlX3PT7+bu6zgfRI87GdQpvtRXOmWtuV54o
	 lvwle6d7360lCsx/+9ynyPDF0zJLGkbYfjodWbNpNymKp1ij9Zi97K8fsRZ8yiMXS1
	 0x9ZBN1gvfzkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55ABE84AE9;
	Wed, 18 Dec 2024 18:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 79536C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 18:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6766F614E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 18:14:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ru2_ai9D4rnR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 18:14:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7EB7C614C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EB7C614C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EB7C614C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 18:14:15 +0000 (UTC)
X-CSE-ConnectionGUID: TI/AvRPmQbyIIcyecLn5aA==
X-CSE-MsgGUID: 8fo7AyUHT36BdT9aMHYzXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35194032"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="35194032"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 10:14:14 -0800
X-CSE-ConnectionGUID: /Bm6mDKwQXCh9MRX+Jnm0Q==
X-CSE-MsgGUID: WbZg5XQEQsGTr9DI1eWrXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98496666"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 18 Dec 2024 10:14:13 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tNyYl-000GXs-0d
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Dec 2024 18:14:11 +0000
Date: Thu, 19 Dec 2024 02:13:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412190218.1jsf1gT5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734545656; x=1766081656;
 h=date:from:to:subject:message-id;
 bh=3glr4jbKeopr0VLcpZi51vi92BFSKihJ2GOr11j+rMw=;
 b=O0kKgciDvBMaBAKHUwAtl/ycLymQ0nExx2UmjSvfkeqxPlsqQfKma3o+
 4BudM96WOteY/KqK7g7QxHRfndbJ+ARjbimfpxOZumz7k8sw9TAZdjjRc
 NNfoHgavTh8jNUSNV89Q+17f374ws2B6kPT4mR03QiXAD+zRhX3W0Qr9d
 bCmVKnvu3TTlwrkXp90Jhm/Pv4mSJDet/z/dEI9VqXiz2Fz2J8zZVWeWX
 XUbcW+aLCPP8zz7DOIx5JOt4Lffwx7/PFstJZW5l6T38K+be0SzC+Jf8R
 DaKYIEGgZyr/BRHjtglkw/kRXzKnMznhp+od87hm0VkCfNx99ca+LJhpU
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O0kKgciD
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 7ed2d91588779f0a2b27fd502ce2aaf1fab9b3ca
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 7ed2d91588779f0a2b27fd502ce2aaf1fab9b3ca  qed: fix possible uninit pointer read in qed_mcp_nvm_info_populate()

elapsed time: 1662m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241218    gcc-13.2.0
arc                   randconfig-002-20241218    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                           h3600_defconfig    gcc-14.2.0
arm                         lpc18xx_defconfig    clang-19
arm                   randconfig-001-20241218    clang-20
arm                   randconfig-002-20241218    clang-19
arm                   randconfig-003-20241218    clang-17
arm                   randconfig-004-20241218    clang-19
arm                          sp7021_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241218    clang-20
arm64                 randconfig-002-20241218    clang-20
arm64                 randconfig-003-20241218    gcc-14.2.0
arm64                 randconfig-004-20241218    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241218    gcc-14.2.0
csky                  randconfig-002-20241218    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20241218    clang-20
hexagon               randconfig-002-20241218    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241218    clang-19
i386        buildonly-randconfig-002-20241218    clang-19
i386        buildonly-randconfig-003-20241218    gcc-12
i386        buildonly-randconfig-004-20241218    gcc-12
i386        buildonly-randconfig-005-20241218    clang-19
i386        buildonly-randconfig-006-20241218    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241218    gcc-14.2.0
loongarch             randconfig-002-20241218    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                         10m50_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241218    gcc-14.2.0
nios2                 randconfig-002-20241218    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241218    gcc-14.2.0
parisc                randconfig-002-20241218    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                      mgcoge_defconfig    clang-20
powerpc               randconfig-001-20241218    gcc-14.2.0
powerpc               randconfig-002-20241218    clang-15
powerpc               randconfig-003-20241218    clang-17
powerpc64             randconfig-001-20241218    gcc-14.2.0
powerpc64             randconfig-002-20241218    clang-20
powerpc64             randconfig-003-20241218    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241218    gcc-14.2.0
riscv                 randconfig-002-20241218    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241218    gcc-14.2.0
s390                  randconfig-002-20241218    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        edosk7705_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                    randconfig-001-20241218    gcc-14.2.0
sh                    randconfig-002-20241218    gcc-14.2.0
sh                     sh7710voipgw_defconfig    gcc-14.2.0
sh                              ul2_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241218    gcc-14.2.0
sparc                 randconfig-002-20241218    gcc-14.2.0
sparc64               randconfig-001-20241218    gcc-14.2.0
sparc64               randconfig-002-20241218    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20241218    gcc-12
um                    randconfig-002-20241218    clang-17
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241218    clang-19
x86_64      buildonly-randconfig-002-20241218    clang-19
x86_64      buildonly-randconfig-003-20241218    gcc-12
x86_64      buildonly-randconfig-004-20241218    gcc-12
x86_64      buildonly-randconfig-005-20241218    gcc-12
x86_64      buildonly-randconfig-006-20241218    gcc-11
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241218    gcc-14.2.0
xtensa                randconfig-002-20241218    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
