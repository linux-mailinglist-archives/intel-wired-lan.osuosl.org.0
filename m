Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA02A93B54
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 18:52:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68C4270692;
	Fri, 18 Apr 2025 16:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kuNPRK2vkN8; Fri, 18 Apr 2025 16:52:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B3506FCD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744995175;
	bh=WwlZDRJAifkiCIucLVdrnwnv/sXj6peTicHkuzIwa1M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1qiiuNPwiB4uRsEWaAh/emk4Gky44/A3J1CqO12vOI6eWSPG2CXmsubmFURlOoyvy
	 5rznuiUeYUho3Le+iYb467KHLDaDpGQcP+Xb7I6SzHerAHi0cNw0DemuirMbybwVmb
	 bM/dJkQxU5udqGUj+M/6NftjzDa8dPCtA7v0JJdDVlEt0GYV9bSuH1Qz4P9Exf7YsQ
	 ZB97oC8HsTtcCNILwXzibFVCeDLeI2FZVqq/v0git44W/ibydKqkKffTjs6JLj1IRe
	 /3tnRiHNo29PaJORYVIxZKci52Q107B0klOR11QtY0CHnxaa6Em+Va8N+boy2a4NLR
	 916dUa9aYE71Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B3506FCD6;
	Fri, 18 Apr 2025 16:52:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0587369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 16:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9DD2605FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 16:52:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LP0CAuAwo4Ii for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 16:52:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B5C0961B17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5C0961B17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5C0961B17
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 16:52:51 +0000 (UTC)
X-CSE-ConnectionGUID: 8pCqBrh+QqmeSRLyFW0s7w==
X-CSE-MsgGUID: L+PGHjdhTWGOpB2x7gAbVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="64161754"
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="64161754"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 09:52:51 -0700
X-CSE-ConnectionGUID: p7O2qrCyStyeBv0mRIuMbw==
X-CSE-MsgGUID: dFMUJEsaS7Kcm7TKYCsUqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="131715233"
Received: from lkp-server01.sh.intel.com (HELO 61e10e65ea0f) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 18 Apr 2025 09:52:50 -0700
Received: from kbuild by 61e10e65ea0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u5oxL-00035X-1K
 for intel-wired-lan@lists.osuosl.org; Fri, 18 Apr 2025 16:52:47 +0000
Date: Sat, 19 Apr 2025 00:51:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504190043.IUjT59OB-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744995172; x=1776531172;
 h=date:from:to:subject:message-id;
 bh=O2u2uQ+DW3EXuglSyRoLbiBn4CqLxNmZeKD6kIEFkhw=;
 b=knmfY1c9GzhXjSrdIvhmV/43no0PQLIfLeUT1VqTKK4UCXd2yxTMD2gq
 YEuz0GEu/HJbzFSRH8ozp25FmpvnAWjwmLZAO+TFUwqNCL/ZMmMd3MB3N
 h8DY9SP9tjd9AKVyjl6qCd80IWtMOd0ZOaW34YgFi1TW9ZQfWnPkhH/1Z
 XI7pzLuaCUhBYsr1C7rzZnRolF02PBzMfTi6urj04F1Iq1qkDYUknRt2a
 qr5bylJxnflGo0jFBbApWqSt3lTfmhFd0IF3K+jqsabsDhA8S6a+5sFDH
 0xErs9YwL7l5Du1aAoDFiTvmzxHPZS+xcNjEPH9RolSOgCLOZMLrZsgCj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=knmfY1c9
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 22ab6b9467c1822291a1175a0eb825b7ec057ef9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 22ab6b9467c1822291a1175a0eb825b7ec057ef9  Merge branch 'net-pktgen-fix-checkpatch-code-style-errors-warnings'

elapsed time: 1771m

configs tested: 115
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250418    gcc-14.2.0
arc                   randconfig-002-20250418    gcc-12.4.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250418    gcc-8.5.0
arm                   randconfig-002-20250418    gcc-7.5.0
arm                   randconfig-003-20250418    gcc-8.5.0
arm                   randconfig-004-20250418    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250418    clang-21
arm64                 randconfig-002-20250418    clang-21
arm64                 randconfig-003-20250418    clang-21
arm64                 randconfig-004-20250418    gcc-6.5.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250418    gcc-14.2.0
csky                  randconfig-002-20250418    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250418    clang-21
hexagon               randconfig-002-20250418    clang-21
i386                             alldefconfig    gcc-12
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250418    clang-20
i386        buildonly-randconfig-002-20250418    gcc-12
i386        buildonly-randconfig-003-20250418    clang-20
i386        buildonly-randconfig-004-20250418    gcc-12
i386        buildonly-randconfig-005-20250418    gcc-11
i386        buildonly-randconfig-006-20250418    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                 loongson3_defconfig    gcc-14.2.0
loongarch             randconfig-001-20250418    gcc-14.2.0
loongarch             randconfig-002-20250418    gcc-12.4.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        maltaup_defconfig    clang-21
nios2                         3c120_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250418    gcc-10.5.0
nios2                 randconfig-002-20250418    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250418    gcc-11.5.0
parisc                randconfig-002-20250418    gcc-13.3.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                     mpc5200_defconfig    clang-21
powerpc               randconfig-001-20250418    gcc-8.5.0
powerpc               randconfig-002-20250418    gcc-6.5.0
powerpc               randconfig-003-20250418    clang-21
powerpc                     tqm8548_defconfig    clang-21
powerpc64             randconfig-001-20250418    clang-21
powerpc64             randconfig-002-20250418    clang-21
powerpc64             randconfig-003-20250418    clang-17
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250418    clang-21
riscv                 randconfig-002-20250418    clang-21
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250418    gcc-7.5.0
s390                  randconfig-002-20250418    gcc-6.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    gcc-14.2.0
sh                    randconfig-001-20250418    gcc-12.4.0
sh                    randconfig-002-20250418    gcc-14.2.0
sh                          rsk7203_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250418    gcc-10.3.0
sparc                 randconfig-002-20250418    gcc-7.5.0
sparc64               randconfig-001-20250418    gcc-9.3.0
sparc64               randconfig-002-20250418    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250418    clang-21
um                    randconfig-002-20250418    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250418    clang-20
x86_64      buildonly-randconfig-002-20250418    clang-20
x86_64      buildonly-randconfig-003-20250418    clang-20
x86_64      buildonly-randconfig-004-20250418    clang-20
x86_64      buildonly-randconfig-005-20250418    clang-20
x86_64      buildonly-randconfig-006-20250418    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250418    gcc-7.5.0
xtensa                randconfig-002-20250418    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
