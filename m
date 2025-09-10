Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B47B52360
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 23:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A8478300C;
	Wed, 10 Sep 2025 21:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tbQtaLM347a5; Wed, 10 Sep 2025 21:18:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECA188329D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757539089;
	bh=qb48YhmQWWh0tHc1Wtagy/pqkSGKOeqsj3TgNy8rzfo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FWu47Em8Ny80biPNvHHQDmQYlO9dGqpV4f8ZHFAAYyxMU9Qfp86XjBK3cUu1sFkUk
	 Lc/1x0lIBcL6JWbEnikeF3rxkMOtLUXrRWYyOChcnQ3p39JlDLkKB2xhQI+aABSIUT
	 sqf8slXWujoUDPuK+XlFi1EGOSkjBUOZTgEICWnwYEHFfZZJPL3VzX0QIMxBJeSo9P
	 fSNwb6klsnC0ww8PwrXvWqSizfyXiYhFFGzdd7Q4kuy9ZhPXcEerVVtf1JmQdXY2kq
	 ik97nmXbnM1Ar9BnC2cMl9+Iry7ZBV1xs5Ow0uanb6EVLXs9hvYZ4JBviZHBUjU35o
	 PfucuNYMjNlvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECA188329D;
	Wed, 10 Sep 2025 21:18:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 01B8A234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 21:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7F02418B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 21:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ROdLurKNTHl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 21:18:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D68FD418C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D68FD418C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D68FD418C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 21:18:06 +0000 (UTC)
X-CSE-ConnectionGUID: GSabIDYXTUCH2+9D+kfrDA==
X-CSE-MsgGUID: smgbD5VCQbWFKl7jPQVxvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59781912"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59781912"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 14:18:06 -0700
X-CSE-ConnectionGUID: NKsliWoPRWecRFcuirLpGQ==
X-CSE-MsgGUID: aUGJVWrIQkigG/C2sTPBwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,255,1751266800"; d="scan'208";a="204275291"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 10 Sep 2025 14:18:06 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwSCZ-0006I9-0V
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Sep 2025 21:18:03 +0000
Date: Thu, 11 Sep 2025 05:17:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509110511.xfjDQh7d-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757539087; x=1789075087;
 h=date:from:to:subject:message-id;
 bh=SwgJ8XpVnvI4ac409uK7FvH9hjChfojKd8x/r0v7Lx8=;
 b=QShFDWXTUDlosrOhy5PVaw3oV2MKU2KK7R7Y3QKngbJPK0jx0QUjYk1K
 11PXkCrq6Za4W0UPLTv70AVLp5mPtuE4wAVSIhEALll4mmBkEpdR7OEj8
 GRGnjDPYpflkSvcfhBoy1aSOYXzhjpajb3P3lZKvOxybAkjuXBpT/groo
 B6B8cJ7F+5XDrJQy2LXllBahZFmmPlncPs19rkvLyU1nLRP+4fTYX715a
 F7CHLQ4TnMxOsmxASu2yc1eGUxEVSzcsGqMLI1ZLURH1Ad1cFET6DIWmT
 coGq9+QT3SeK7j494J5o8uPrG638AG455cMf8JAruZS7FWId1eQq1h1F3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QShFDWXT
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 503f1c72c31bbee21e669a08cf65c49e96d42755
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: 503f1c72c31bbee21e669a08cf65c49e96d42755  i40e: fix Jumbo Frame support after iPXE boot

elapsed time: 1457m

configs tested: 112
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                 nsimosci_hs_smp_defconfig    gcc-15.1.0
arc                   randconfig-001-20250910    gcc-13.4.0
arc                   randconfig-002-20250910    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250910    gcc-8.5.0
arm                   randconfig-002-20250910    gcc-8.5.0
arm                   randconfig-003-20250910    clang-16
arm                   randconfig-004-20250910    gcc-8.5.0
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250910    clang-22
arm64                 randconfig-002-20250910    clang-22
arm64                 randconfig-003-20250910    gcc-9.5.0
arm64                 randconfig-004-20250910    gcc-13.4.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250910    gcc-12.5.0
csky                  randconfig-002-20250910    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250910    clang-22
hexagon               randconfig-002-20250910    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20250910    gcc-14
i386        buildonly-randconfig-002-20250910    gcc-13
i386        buildonly-randconfig-003-20250910    clang-20
i386        buildonly-randconfig-004-20250910    clang-20
i386        buildonly-randconfig-005-20250910    gcc-14
i386        buildonly-randconfig-006-20250910    clang-20
i386                                defconfig    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250910    clang-18
loongarch             randconfig-002-20250910    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                       bmips_be_defconfig    gcc-15.1.0
mips                           ip27_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250910    gcc-11.5.0
nios2                 randconfig-002-20250910    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250910    gcc-10.5.0
parisc                randconfig-002-20250910    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ksi8560_defconfig    gcc-15.1.0
powerpc                     rainier_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250910    gcc-8.5.0
powerpc               randconfig-002-20250910    gcc-8.5.0
powerpc               randconfig-003-20250910    clang-22
powerpc64             randconfig-002-20250910    gcc-11.5.0
powerpc64             randconfig-003-20250910    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250910    clang-22
riscv                 randconfig-002-20250910    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250910    clang-22
s390                  randconfig-002-20250910    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250910    gcc-15.1.0
sh                    randconfig-002-20250910    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250910    gcc-8.5.0
sparc                 randconfig-002-20250910    gcc-8.5.0
sparc64               randconfig-001-20250910    gcc-8.5.0
sparc64               randconfig-002-20250910    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250910    clang-22
um                    randconfig-002-20250910    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250910    gcc-14
x86_64      buildonly-randconfig-002-20250910    clang-20
x86_64      buildonly-randconfig-003-20250910    gcc-14
x86_64      buildonly-randconfig-004-20250910    clang-20
x86_64      buildonly-randconfig-005-20250910    gcc-14
x86_64      buildonly-randconfig-006-20250910    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                       common_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250910    gcc-8.5.0
xtensa                randconfig-002-20250910    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
