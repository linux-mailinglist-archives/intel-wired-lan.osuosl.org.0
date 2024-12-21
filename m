Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F7A9FA1B0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 18:06:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFC5B70761;
	Sat, 21 Dec 2024 17:06:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7eHpI_RY5RhA; Sat, 21 Dec 2024 17:06:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0041570596
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734800770;
	bh=p0qgw62pARxqAZNiVKjAgZxbB5ZFQHhsKmTdLlLi4lI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qFQiHuLz/maToBWGUITmnhGLTFNjgO698z3NvF3FUzQu0zfTzhEFhWAZmmBEz4ed1
	 0qCIgaiEmzRdBXsu1sIPTAmuyVqvmc6/S3B7/ECopaS+FDoCkOl32rsBc+tBLu0cRV
	 8bhdxI5xGnzXBmZrKrjYA43hnFlFHj6pY9sX92SlUSOsZN6eFWeFc76f4521x3iuFV
	 0kmJxlqM+sawCTNZ/KkKesYBGcatj/rI7yg+UyNEHfsKCw8MUgVcdFNzBVsYrdyy0g
	 Gc+5SKCPpbp2JQFb/+bUa3ywbEYC87lChfANjxxuIbuKXkUdYRVceCAYC6Qkz2qj8W
	 jQZ5T+b65t09Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0041570596;
	Sat, 21 Dec 2024 17:06:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F73A757
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 17:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 515BF4315B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 17:06:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOCpoEB_Xmdm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 17:06:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 13C1B43158
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13C1B43158
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13C1B43158
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 17:06:05 +0000 (UTC)
X-CSE-ConnectionGUID: y6BKxJ3nTWeuhTgz0v4++g==
X-CSE-MsgGUID: xdiV7mSwTTC/ra2klLGb5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11293"; a="45931510"
X-IronPort-AV: E=Sophos;i="6.12,253,1728975600"; d="scan'208";a="45931510"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2024 09:06:05 -0800
X-CSE-ConnectionGUID: dhoiRkxNSDu6hmi5PkTUnQ==
X-CSE-MsgGUID: fb/4QyjXRmOxge89C5qF/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="99658988"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 21 Dec 2024 09:06:04 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tP2vS-0002Km-13
 for intel-wired-lan@lists.osuosl.org; Sat, 21 Dec 2024 17:06:02 +0000
Date: Sun, 22 Dec 2024 01:05:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412220156.0roxHT9v-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734800766; x=1766336766;
 h=date:from:to:subject:message-id;
 bh=igjYKj4Jq+fRoQoDyk0TpdQ9/r+VlWuj08Cg9UjT51k=;
 b=jBpT5Y2U0xPJoI4I9WyHi3SxPJgvONMAQBVaPIha1YkzOF/TtIhnP0Jk
 RHZHTH2scAjpDcoah5N9aDWtPvG77aFuwA3vjtWFrCr03Yrc1N/uxNni/
 ri7mxk3TJ8acAQGApsdnXzNTd6va2J3XtO5mQlK8h4QEzzXujnxPZbIOw
 4eKEAG17OOT2G6nUO3JspOJx9nxjLwaSKa0zMlyNuYdDpvc/duXbqLmik
 MYKvWuSQb/B4U6WTxv++sfjpONEx0QhBxrirD3bKpm4YpgW854xKV12iI
 YGLiHU5uUANpIXIj1qSeKtv8KdzuzxdhpV16lHet/wqBYlaZLCMUM6J6V
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jBpT5Y2U
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 22f50c8bcd20dba0cad17ca8b530584bd9263c9b
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
branch HEAD: 22f50c8bcd20dba0cad17ca8b530584bd9263c9b  ice: Add E830 checksum offload support

elapsed time: 1443m

configs tested: 101
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241221    gcc-13.2.0
arc                   randconfig-002-20241221    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20241221    gcc-14.2.0
arm                   randconfig-002-20241221    gcc-14.2.0
arm                   randconfig-003-20241221    gcc-14.2.0
arm                   randconfig-004-20241221    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241221    clang-18
arm64                 randconfig-002-20241221    clang-16
arm64                 randconfig-003-20241221    clang-20
arm64                 randconfig-004-20241221    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241221    gcc-14.2.0
csky                  randconfig-002-20241221    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20241221    clang-17
hexagon               randconfig-002-20241221    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241221    gcc-12
i386        buildonly-randconfig-002-20241221    gcc-12
i386        buildonly-randconfig-003-20241221    clang-19
i386        buildonly-randconfig-004-20241221    clang-19
i386        buildonly-randconfig-005-20241221    clang-19
i386        buildonly-randconfig-006-20241221    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241221    gcc-14.2.0
loongarch             randconfig-002-20241221    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           jazz_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241221    gcc-14.2.0
nios2                 randconfig-002-20241221    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241221    gcc-14.2.0
parisc                randconfig-002-20241221    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc                     mpc83xx_defconfig    clang-20
powerpc               randconfig-001-20241221    gcc-14.2.0
powerpc               randconfig-002-20241221    gcc-14.2.0
powerpc               randconfig-003-20241221    gcc-14.2.0
powerpc                     tqm8548_defconfig    clang-19
powerpc64             randconfig-001-20241221    gcc-14.2.0
powerpc64             randconfig-002-20241221    gcc-14.2.0
powerpc64             randconfig-003-20241221    clang-18
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20241221    gcc-14.2.0
riscv                 randconfig-002-20241221    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241221    gcc-14.2.0
s390                  randconfig-002-20241221    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    gcc-14.2.0
sh                    randconfig-001-20241221    gcc-14.2.0
sh                    randconfig-002-20241221    gcc-14.2.0
sh                          rsk7201_defconfig    gcc-14.2.0
sh                             sh03_defconfig    gcc-14.2.0
sh                           sh2007_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241221    gcc-14.2.0
sparc                 randconfig-002-20241221    gcc-14.2.0
sparc64               randconfig-001-20241221    gcc-14.2.0
sparc64               randconfig-002-20241221    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20241221    clang-18
um                    randconfig-002-20241221    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241221    gcc-12
x86_64      buildonly-randconfig-002-20241221    gcc-12
x86_64      buildonly-randconfig-003-20241221    gcc-12
x86_64      buildonly-randconfig-004-20241221    gcc-12
x86_64      buildonly-randconfig-005-20241221    gcc-11
x86_64      buildonly-randconfig-006-20241221    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241221    gcc-14.2.0
xtensa                randconfig-002-20241221    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
