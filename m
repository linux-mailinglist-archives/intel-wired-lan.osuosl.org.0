Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D84D1B28F5F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 18:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78B4E83C5F;
	Sat, 16 Aug 2025 16:16:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RoRw78Mrd61J; Sat, 16 Aug 2025 16:16:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35AF383C3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755361001;
	bh=7nPA1CbKNyYRLuH4OoG+WYNmTfZ9qLboa9Fw4sTTPLs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=irSa9iY5F7tZHcG03ZlBGMp+LvCOPoI77fXORrsm+HtqfqRqaWnk6XpMGfuDAtZeX
	 kvdbUVTyG6Ap83V6WF4vXkIe23Bhtz9rV8YVDTzekJlp3ByvkeLyrQm1wF7UohGui6
	 8NB/XQQPp5+G6Wdl9JJx+zpdWkqenvPXb2R5EAPgfDYolBNncUDICskxxzsDsTkJlJ
	 iwLcly25GYG5QDw6peei4NW2WK/2/xXHJYLWwumFhKSmBjDQoQp3MADYD2OWPWn3yy
	 qnF84jo++ccs9HEsI7aQOH3bmV+KXPWSJ0b6f6FaupXx5x+/J3RgfywvuXVcBVpI28
	 QXHI5sfBfImAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35AF383C3C;
	Sat, 16 Aug 2025 16:16:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 252A7196
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 16:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B8DC61295
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 16:16:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYzEn3GIP4oz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 16:16:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DDBEC612AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDBEC612AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDBEC612AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 16:16:37 +0000 (UTC)
X-CSE-ConnectionGUID: VZIKQQJrS2emnHowqVb/yA==
X-CSE-MsgGUID: oNPbSsbQRDKXjd7d4fWdkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="68356106"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68356106"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2025 09:16:36 -0700
X-CSE-ConnectionGUID: CcX6QSvqSiG+qfhdg+X3/w==
X-CSE-MsgGUID: rtEdgfUkQNShHiBnMQNCoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="166722510"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 16 Aug 2025 09:16:35 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1unJa5-000Czk-1q
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Aug 2025 16:16:33 +0000
Date: Sun, 17 Aug 2025 00:15:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508170027.ip7klHtb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755360998; x=1786896998;
 h=date:from:to:subject:message-id;
 bh=+Np0uY3knyaTqkjbPt3aSP5CzT5mzK2kudqZY6j3DwU=;
 b=YSjBVThSrWCYwGhqewP8qs155reQFqoEZDD8IYvc1KddfRdvDR5ZZdK+
 8oht3yGF4TsdqRqgBTDQ5HxpSoBRFERwtICylbIFNi3+n4gI4y9EeKDe8
 GurCzzeQoYDDJ4MLJVt8gYUCbAg3XPZwzuafyASbu2l5/lTtSBiGSpRpW
 7dW/2+sQMOg8kxHC8h7l9rQVobY0fgBoSoecJeU6vpNwPNKIPqXcsKCFx
 ZYm6RrpTycjVWT5gvg6ikr/T8aylkVOFfQoBkywCRm5FJnz0fr6xGSXcZ
 hvGBoM+Yu7QR47EjMsztmBIAE8z8s3SKUhHuQuz36jsG9XnEieo5gJM4N
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YSjBVThS
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b404debcff67b3c9fa720c3f17303c0bf05bb747
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: b404debcff67b3c9fa720c3f17303c0bf05bb747  igb: Fix NULL pointer dereference in ethtool loopback test

elapsed time: 1446m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250816    gcc-8.5.0
arc                   randconfig-002-20250816    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                          moxart_defconfig    gcc-15.1.0
arm                   randconfig-001-20250816    gcc-12.5.0
arm                   randconfig-002-20250816    gcc-10.5.0
arm                   randconfig-003-20250816    gcc-10.5.0
arm                   randconfig-004-20250816    gcc-10.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250816    clang-22
arm64                 randconfig-002-20250816    clang-22
arm64                 randconfig-003-20250816    gcc-8.5.0
arm64                 randconfig-004-20250816    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250816    gcc-15.1.0
csky                  randconfig-002-20250816    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250816    clang-19
hexagon               randconfig-002-20250816    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250816    clang-20
i386        buildonly-randconfig-002-20250816    gcc-12
i386        buildonly-randconfig-003-20250816    gcc-12
i386        buildonly-randconfig-004-20250816    gcc-12
i386        buildonly-randconfig-005-20250816    gcc-12
i386        buildonly-randconfig-006-20250816    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250816    gcc-15.1.0
loongarch             randconfig-002-20250816    gcc-14.3.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250816    gcc-10.5.0
nios2                 randconfig-002-20250816    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250816    gcc-10.5.0
parisc                randconfig-002-20250816    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                    amigaone_defconfig    gcc-15.1.0
powerpc                       ebony_defconfig    clang-22
powerpc                     kmeter1_defconfig    gcc-15.1.0
powerpc                  mpc885_ads_defconfig    clang-22
powerpc               randconfig-001-20250816    clang-20
powerpc               randconfig-002-20250816    clang-22
powerpc               randconfig-003-20250816    clang-22
powerpc64             randconfig-001-20250816    gcc-8.5.0
powerpc64             randconfig-002-20250816    clang-22
powerpc64             randconfig-003-20250816    clang-16
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250816    clang-22
riscv                 randconfig-002-20250816    gcc-13.4.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250816    clang-22
s390                  randconfig-002-20250816    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                ecovec24-romimage_defconfig    gcc-15.1.0
sh                        edosk7705_defconfig    gcc-15.1.0
sh                    randconfig-001-20250816    gcc-15.1.0
sh                    randconfig-002-20250816    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250816    gcc-15.1.0
sparc                 randconfig-002-20250816    gcc-15.1.0
sparc64               randconfig-001-20250816    gcc-11.5.0
sparc64               randconfig-002-20250816    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250816    gcc-12
um                    randconfig-002-20250816    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250816    gcc-12
x86_64      buildonly-randconfig-002-20250816    gcc-12
x86_64      buildonly-randconfig-003-20250816    gcc-12
x86_64      buildonly-randconfig-004-20250816    clang-20
x86_64      buildonly-randconfig-005-20250816    clang-20
x86_64      buildonly-randconfig-006-20250816    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250816    gcc-10.5.0
xtensa                randconfig-002-20250816    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
