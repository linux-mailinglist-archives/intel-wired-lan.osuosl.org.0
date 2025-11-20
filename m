Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAD4C71A56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 02:05:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7F7D807C7;
	Thu, 20 Nov 2025 01:05:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtltsGJoaUL7; Thu, 20 Nov 2025 01:05:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5DD3807C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763600704;
	bh=qIX2AL64k3ssDq/wuGzx+wmogItGKphB3Sd3YwNcxnA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G0f7IY9eFyRR9kum9/bV/swCi1ci01CfpsF4cyQPzvSNBE0+CxOBrVQSakdU+QPah
	 RH0pXHMpM93YkrtAgXbtKfefQVg+l9UevAMClpSFYgxwRDAZA5t0QORJmU4bFc3f0r
	 AG0n71mkQu5hyJAIXrI6MBgvS61kBgPqekF9jGbXqeKhUEC5+CcvIb98opO1xdq1Er
	 vIcDQXQ26ud4H1H475RNbe6a7fRsvSaTSsW+Nw6QRRq11LHFWa0m/gnXt5/JPXWsGZ
	 gW4EUs+wswLfLdA6vnBRCEDx/TcJuEAndLpJQyrdozZ3v2PGZR3//W2V3DQ/FTqo3j
	 bK/4RsRHUsfzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5DD3807C2;
	Thu, 20 Nov 2025 01:05:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CDD012A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 01:05:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C988841164
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 01:05:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JVGV8YoXpCT0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 01:05:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AE29F41148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE29F41148
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE29F41148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 01:05:02 +0000 (UTC)
X-CSE-ConnectionGUID: +swCco5GSz+WoskUv25yrA==
X-CSE-MsgGUID: 0ijcjZFJThW0B3XUFnROBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="64853079"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="64853079"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 17:05:01 -0800
X-CSE-ConnectionGUID: jO0lteaKTpeKhRKLMR23IA==
X-CSE-MsgGUID: SdJmP9RdSQC6nhMGBmDPDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="221860193"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 19 Nov 2025 17:05:00 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vLt6X-0003TX-2j
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Nov 2025 01:04:57 +0000
Date: Thu, 20 Nov 2025 09:04:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511200900.Bxv9cVWd-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763600702; x=1795136702;
 h=date:from:to:subject:message-id;
 bh=+RxABDIAC2HkzbOwu0qVeMTw09dJ0wY6yD3bTVC5D5I=;
 b=gx4g+bPIjpmJi3u9SFsUDQE9cd6KNm97awwqrE8tL1Y9ohx2WJztLFQD
 G6N6ZR4Wjf9uqBtMWFUtYNYoM4VCSY2bHDuPm6JNUeaQQV9+Og8iK7W/c
 7r1lot4Hn7iQ927neP4MMQ3TIkBth2GbFnRIIMgCT3VVujCo8s4QblzBx
 5m5X1PEnaX7+2DBZuD7FLyC1eI4ZD1xCMsyJ3r5DrPILa5HLlSBTprJRP
 6J+oAIXs6ygWps8eWG9ykvjKUxlmc4Pr9AIUS6vUtiuiJqKXj5dFs3B4L
 9HsMCbCMmrHBIhDch6/tSrSv4G4bLIC3ZBm7vBSxsRGUNYx4O1Cq10k+n
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gx4g+bPI
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 23a5b9b12de9dcd15ebae4f1abc8814ec1c51ab0
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
branch HEAD: 23a5b9b12de9dcd15ebae4f1abc8814ec1c51ab0  ice: fix PTP cleanup on driver removal in error path

elapsed time: 1494m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20251119    gcc-10.5.0
arc                   randconfig-002-20251119    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                          pxa3xx_defconfig    clang-22
arm                   randconfig-001-20251119    gcc-8.5.0
arm                   randconfig-002-20251119    clang-16
arm                   randconfig-003-20251119    clang-22
arm                   randconfig-004-20251119    gcc-13.4.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251119    clang-22
arm64                 randconfig-002-20251119    gcc-8.5.0
arm64                 randconfig-003-20251119    clang-22
arm64                 randconfig-004-20251119    clang-22
csky                             alldefconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251119    gcc-15.1.0
csky                  randconfig-002-20251119    gcc-10.5.0
hexagon                           allnoconfig    clang-22
i386                              allnoconfig    gcc-14
i386                  randconfig-001-20251120    gcc-14
i386                  randconfig-002-20251120    gcc-14
i386                  randconfig-003-20251120    clang-20
i386                  randconfig-004-20251120    clang-20
i386                  randconfig-005-20251120    clang-20
i386                  randconfig-006-20251120    clang-20
i386                  randconfig-007-20251120    gcc-14
i386                  randconfig-011-20251119    clang-20
i386                  randconfig-012-20251119    clang-20
i386                  randconfig-013-20251119    clang-20
i386                  randconfig-014-20251119    gcc-14
i386                  randconfig-015-20251119    gcc-14
i386                  randconfig-016-20251119    clang-20
i386                  randconfig-017-20251119    clang-20
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
m68k                              allnoconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip28_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251119    gcc-8.5.0
parisc                randconfig-002-20251119    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                   lite5200b_defconfig    clang-22
powerpc               randconfig-001-20251119    clang-16
powerpc               randconfig-002-20251119    clang-22
powerpc64             randconfig-001-20251119    clang-19
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251119    gcc-15.1.0
riscv                 randconfig-002-20251119    gcc-10.5.0
s390                              allnoconfig    clang-22
s390                          debug_defconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251119    gcc-8.5.0
s390                  randconfig-002-20251119    clang-22
sh                                allnoconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                    randconfig-001-20251119    gcc-11.5.0
sh                    randconfig-002-20251119    gcc-9.5.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251120    gcc-8.5.0
sparc                 randconfig-002-20251120    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251120    clang-20
sparc64               randconfig-002-20251120    clang-22
um                                allnoconfig    clang-22
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251120    gcc-14
um                    randconfig-002-20251120    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251119    gcc-14
x86_64      buildonly-randconfig-002-20251119    gcc-14
x86_64      buildonly-randconfig-003-20251119    clang-20
x86_64      buildonly-randconfig-004-20251119    clang-20
x86_64      buildonly-randconfig-005-20251119    gcc-14
x86_64      buildonly-randconfig-006-20251119    gcc-12
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251120    gcc-14
x86_64                randconfig-002-20251120    clang-20
x86_64                randconfig-003-20251120    clang-20
x86_64                randconfig-004-20251120    gcc-14
x86_64                randconfig-005-20251120    gcc-12
x86_64                randconfig-006-20251120    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251120    gcc-15.1.0
xtensa                randconfig-002-20251120    gcc-8.5.0
xtensa                    xip_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
