Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9892BA0A2D9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jan 2025 11:35:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB8558397F;
	Sat, 11 Jan 2025 10:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1TPhrjmT9vwY; Sat, 11 Jan 2025 10:35:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9974F8394A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736591738;
	bh=LACZkRabpXfk0hNCtjcWADCRwq8UttGzsTLcCfd2n2U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z+EePMb2DYOxvbptvtNGVcEQHcekEOaig3GAD8YhFVY9ip7Xsm5ksGdGTnzgJyg+B
	 eYIUVhTn0wNJC8Pdw6KjCdl4PlHGZr71e/hXQ+6IBW91G+nR8DcAQhvGQQszt4ZtaY
	 Uf3mmNIezBxR+6beHkOdr/Rcp3WX0NVOYkEbVmEr8/+XBcaGVFcQHWt09A0fugqTGC
	 xD3fGRZEmaXP3mY0g5Y4B/e8qEWqK5Z8Rfc5OrEkYpRexn9I+QUXbggL8w34yXFWTz
	 ZqWj92efa4YDVnLpz/bMimrbi+ARfIIYXd9tNXvrKGzcNC8fJ6IFpm2wBl7QJ9mXUD
	 eBvgxssb8NJqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9974F8394A;
	Sat, 11 Jan 2025 10:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 08BA7950
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 10:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E35ED4049E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 10:35:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ne4J7oSRGY1G for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jan 2025 10:35:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3542A40151
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3542A40151
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3542A40151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jan 2025 10:35:34 +0000 (UTC)
X-CSE-ConnectionGUID: l7M2fOiKT/uhbAcRSSId/Q==
X-CSE-MsgGUID: 9gaUXS1dTnC9P3svDZpjjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="40822687"
X-IronPort-AV: E=Sophos;i="6.12,306,1728975600"; d="scan'208";a="40822687"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2025 02:35:33 -0800
X-CSE-ConnectionGUID: kCgAx89tTrqAMLpOT+zE4Q==
X-CSE-MsgGUID: 8c+heaXYR5W9jeQrcF/R5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,306,1728975600"; d="scan'208";a="104017531"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 11 Jan 2025 02:35:32 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tWYq1-000KUh-2Q
 for intel-wired-lan@lists.osuosl.org; Sat, 11 Jan 2025 10:35:29 +0000
Date: Sat, 11 Jan 2025 18:35:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501111811.N7ySkxtA-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736591735; x=1768127735;
 h=date:from:to:subject:message-id;
 bh=arJAARwSgnus1L1aEnGMF8iXmDX1Xq+oMtlsGwS0xWc=;
 b=Dxv9i9uHEpiKuE//NcXxbVv4EqP5aypMTeS0+ucetwodrWcKpWJR8VJK
 IRf2q7HqGOsmh/ZawrYK+EjsByPLOW00ngOvqiFfIZWT6op97SjnkOyEe
 EEuoKVcu9/7qvkJv80yG0ejMcYvvzfKXq0eOs6R1HqHySL0Wvp7wH8jsK
 XYBTZ5IK8wiI4fnyN/HtN/uMQYErD7iQ9QHnprGK7s3zs37yk/Il0ym0z
 p03yHd5qUIdTX0H8v6bb4OLi1hTxU09XrhHFQVeYRVVpK72MW2cMVsuHc
 /CZYHsoHTHXHQDfdMoCjB6UK3EoM2Zp1H2C6KLxly8UVvdq9PG8tucvTV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dxv9i9uH
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 8c7a6efc017e59f2b773a8a4c0897309dfe1d742
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 8c7a6efc017e59f2b773a8a4c0897309dfe1d742  ipv4: route: fix drop reason being overridden in ip_route_input_slow

elapsed time: 1892m

configs tested: 162
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                   randconfig-001-20250111    clang-18
arc                   randconfig-001-20250111    gcc-13.2.0
arc                   randconfig-002-20250111    clang-18
arc                   randconfig-002-20250111    gcc-13.2.0
arm                               allnoconfig    gcc-14.2.0
arm                            hisi_defconfig    gcc-14.2.0
arm                         lpc18xx_defconfig    clang-20
arm                   milbeaut_m10v_defconfig    clang-20
arm                   randconfig-001-20250111    clang-16
arm                   randconfig-001-20250111    clang-18
arm                   randconfig-002-20250111    clang-18
arm                   randconfig-002-20250111    gcc-14.2.0
arm                   randconfig-003-20250111    clang-18
arm                   randconfig-003-20250111    clang-20
arm                   randconfig-004-20250111    clang-18
arm                   randconfig-004-20250111    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250111    clang-18
arm64                 randconfig-001-20250111    gcc-14.2.0
arm64                 randconfig-002-20250111    clang-18
arm64                 randconfig-002-20250111    clang-20
arm64                 randconfig-003-20250111    clang-18
arm64                 randconfig-004-20250111    clang-16
arm64                 randconfig-004-20250111    clang-18
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250111    gcc-14.2.0
csky                  randconfig-002-20250111    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20250111    clang-20
hexagon               randconfig-002-20250111    clang-15
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20250111    gcc-12
i386        buildonly-randconfig-002-20250111    gcc-11
i386        buildonly-randconfig-003-20250111    gcc-12
i386        buildonly-randconfig-004-20250111    gcc-12
i386        buildonly-randconfig-005-20250111    gcc-12
i386        buildonly-randconfig-006-20250111    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20250111    clang-19
i386                  randconfig-002-20250111    clang-19
i386                  randconfig-003-20250111    clang-19
i386                  randconfig-004-20250111    clang-19
i386                  randconfig-005-20250111    clang-19
i386                  randconfig-006-20250111    clang-19
i386                  randconfig-007-20250111    clang-19
i386                  randconfig-011-20250111    clang-19
i386                  randconfig-012-20250111    clang-19
i386                  randconfig-013-20250111    clang-19
i386                  randconfig-014-20250111    clang-19
i386                  randconfig-015-20250111    clang-19
i386                  randconfig-016-20250111    clang-19
i386                  randconfig-017-20250111    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250111    gcc-14.2.0
loongarch             randconfig-002-20250111    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           ci20_defconfig    gcc-14.2.0
mips                            gpr_defconfig    clang-20
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250111    gcc-14.2.0
nios2                 randconfig-002-20250111    gcc-14.2.0
openrisc                         alldefconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250111    gcc-14.2.0
parisc                randconfig-002-20250111    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                     asp8347_defconfig    gcc-14.2.0
powerpc                     mpc512x_defconfig    clang-20
powerpc               randconfig-001-20250111    gcc-14.2.0
powerpc               randconfig-002-20250111    gcc-14.2.0
powerpc               randconfig-003-20250111    gcc-14.2.0
powerpc64             randconfig-001-20250111    gcc-14.2.0
powerpc64             randconfig-002-20250111    gcc-14.2.0
powerpc64             randconfig-003-20250111    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                 randconfig-001-20250111    clang-18
riscv                 randconfig-001-20250111    gcc-14.2.0
riscv                 randconfig-002-20250111    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250111    clang-20
s390                  randconfig-001-20250111    gcc-14.2.0
s390                  randconfig-002-20250111    clang-19
s390                  randconfig-002-20250111    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                     magicpanelr2_defconfig    gcc-14.2.0
sh                    randconfig-001-20250111    gcc-14.2.0
sh                    randconfig-002-20250111    gcc-14.2.0
sh                          rsk7203_defconfig    clang-20
sh                           sh2007_defconfig    clang-20
sh                              ul2_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250111    gcc-14.2.0
sparc                 randconfig-002-20250111    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
sparc64               randconfig-001-20250111    gcc-14.2.0
sparc64               randconfig-002-20250111    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                    randconfig-001-20250111    clang-18
um                    randconfig-001-20250111    gcc-14.2.0
um                    randconfig-002-20250111    clang-20
um                    randconfig-002-20250111    gcc-14.2.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250111    clang-19
x86_64      buildonly-randconfig-002-20250111    clang-19
x86_64      buildonly-randconfig-002-20250111    gcc-12
x86_64      buildonly-randconfig-003-20250111    clang-19
x86_64      buildonly-randconfig-003-20250111    gcc-12
x86_64      buildonly-randconfig-004-20250111    clang-19
x86_64      buildonly-randconfig-005-20250111    clang-19
x86_64      buildonly-randconfig-005-20250111    gcc-12
x86_64      buildonly-randconfig-006-20250111    clang-19
x86_64      buildonly-randconfig-006-20250111    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250111    clang-19
x86_64                randconfig-002-20250111    clang-19
x86_64                randconfig-003-20250111    clang-19
x86_64                randconfig-004-20250111    clang-19
x86_64                randconfig-005-20250111    clang-19
x86_64                randconfig-006-20250111    clang-19
x86_64                randconfig-007-20250111    clang-19
x86_64                randconfig-008-20250111    clang-19
x86_64                randconfig-071-20250111    gcc-12
x86_64                randconfig-072-20250111    gcc-12
x86_64                randconfig-073-20250111    gcc-12
x86_64                randconfig-074-20250111    gcc-12
x86_64                randconfig-075-20250111    gcc-12
x86_64                randconfig-076-20250111    gcc-12
x86_64                randconfig-077-20250111    gcc-12
x86_64                randconfig-078-20250111    gcc-12
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250111    gcc-14.2.0
xtensa                randconfig-002-20250111    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
