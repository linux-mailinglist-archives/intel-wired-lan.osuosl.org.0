Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id W+jbM/AWlWlJLAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 02:33:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2728B1528A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 02:33:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96A88406C1;
	Wed, 18 Feb 2026 01:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N2ZzK1FIW4y5; Wed, 18 Feb 2026 01:33:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 235CE4069B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771378413;
	bh=8LbQgVzatNVha7qmgyqkTR5ILMiXEEaos+ys+Pq3Vv4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MhmQwMh2yVuU3LTaqnGq3TnvIv9bZjtgoQsT4n1oypAhErp9i+80Lukv2SUcyEKph
	 BS+z8n1ZXkkEn+WKkPL9sH4MIzxQUvcMgn7DKC0Yn4m1ovJYcFEsJMRIyPyZVrWirj
	 028BvDXZ/6lHjLBRan0E96tkEqDY8oVeVy5LO7dQv9JhJVRUxL/nQJfHlqLFginbkf
	 debPWx5Ialqn5dXrtsYfsFHXwn5yCOIf1G/msDGWCc+cZI+LGUTEOlhAMO/sH7D6h7
	 e9HEHfaXhjgufDc/rWlnJU1ylfMWNfBgx04D1wxss5yrx48ZZgGsVORHIBrQYziUBX
	 55bzwRs8h6yXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 235CE4069B;
	Wed, 18 Feb 2026 01:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 112391CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 01:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02228403FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 01:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4aKkqG3g_wb1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 01:33:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF779403F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF779403F3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF779403F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 01:33:29 +0000 (UTC)
X-CSE-ConnectionGUID: le57Zkz7Q7KdVI71R7fwaQ==
X-CSE-MsgGUID: CYLLEvtATN2hScPlJT3IOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="90043663"
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="90043663"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 17:33:28 -0800
X-CSE-ConnectionGUID: 6mjtXsSCR06FRU2RNQLfGg==
X-CSE-MsgGUID: MVVPkx7qQVWGCMPJqWhD9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="213906925"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 17 Feb 2026 17:33:26 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vsWRQ-000000011ut-23GF;
 Wed, 18 Feb 2026 01:33:24 +0000
Date: Wed, 18 Feb 2026 09:33:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602180952.O6gzs2lT-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771378410; x=1802914410;
 h=date:from:to:subject:message-id;
 bh=hU9jCuzJ76D0oIcuv1mkbL30w6iWlZyz99U7IWvH0t4=;
 b=nnw88qBWbi75wryp137UiLwzIkUoMnLEtPZamqNCyM7wxSlFneFBowzu
 q5lmmiv26mUWWp5NjJUXOEkGyyHaeHD9xkN4I/1ECeMYeusHW221iV6wS
 ZqpudN7wrSB5UitHkO3s/k8k8V/SbLPBM0BPl6Z05m2LB5gZoPekn8b5g
 qhRRX+hyZb4gSaM0cJZleBaTYpZaKb7N7IL3HsrTeKadTTFduLBcKUo4m
 O+vyw0Oy/xBZ1r7N7R5rPDg6Rr+NCsW4aMBY08fSxT8TieA133VQ8P0qQ
 ObuuMPqsiYvmcDcZZVHmLjQ/f66p+dhW5xwtda6vfnjFy5aYtYvXTQSl/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nnw88qBW
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 77c5e3fdd2793f478e6fdae55c9ea85b21d06f8f
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: 2728B1528A5
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 77c5e3fdd2793f478e6fdae55c9ea85b21d06f8f  Merge branch 'selftests-forwarding-fix-br_netfilter-related-test-failures'

elapsed time: 751m

configs tested: 332
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                          axs101_defconfig    gcc-15.2.0
arc                      axs103_smp_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                     haps_hs_smp_defconfig    clang-23
arc                   randconfig-001-20260217    gcc-11.5.0
arc                   randconfig-001-20260218    clang-23
arc                   randconfig-001-20260218    gcc-9.5.0
arc                   randconfig-002-20260217    gcc-11.5.0
arc                   randconfig-002-20260218    clang-23
arc                   randconfig-002-20260218    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                         bcm2835_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                          exynos_defconfig    clang-23
arm                      footbridge_defconfig    clang-18
arm                            hisi_defconfig    gcc-15.2.0
arm                      jornada720_defconfig    gcc-15.2.0
arm                        keystone_defconfig    clang-18
arm                        mvebu_v5_defconfig    clang-23
arm                         orion5x_defconfig    clang-23
arm                             pxa_defconfig    gcc-15.2.0
arm                   randconfig-001-20260217    gcc-11.5.0
arm                   randconfig-001-20260218    clang-23
arm                   randconfig-002-20260217    gcc-11.5.0
arm                   randconfig-002-20260218    clang-23
arm                   randconfig-003-20260217    gcc-11.5.0
arm                   randconfig-003-20260218    clang-23
arm                   randconfig-004-20260217    gcc-11.5.0
arm                   randconfig-004-20260218    clang-23
arm                   randconfig-004-20260218    gcc-10.5.0
arm                        realview_defconfig    gcc-15.2.0
arm                         socfpga_defconfig    clang-23
arm                          sp7021_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260217    clang-23
arm64                 randconfig-001-20260218    clang-23
arm64                 randconfig-002-20260217    clang-23
arm64                 randconfig-002-20260218    clang-23
arm64                 randconfig-003-20260217    clang-23
arm64                 randconfig-003-20260218    clang-23
arm64                 randconfig-004-20260217    clang-23
arm64                 randconfig-004-20260218    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260217    clang-23
csky                  randconfig-001-20260218    clang-23
csky                  randconfig-002-20260217    clang-23
csky                  randconfig-002-20260218    clang-23
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260217    clang-23
hexagon               randconfig-001-20260218    clang-16
hexagon               randconfig-002-20260217    clang-23
hexagon               randconfig-002-20260218    clang-16
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260217    clang-20
i386        buildonly-randconfig-001-20260218    clang-20
i386        buildonly-randconfig-002-20260217    clang-20
i386        buildonly-randconfig-002-20260218    clang-20
i386        buildonly-randconfig-003-20260217    clang-20
i386        buildonly-randconfig-003-20260218    clang-20
i386        buildonly-randconfig-004-20260217    clang-20
i386        buildonly-randconfig-004-20260218    clang-20
i386        buildonly-randconfig-005-20260217    clang-20
i386        buildonly-randconfig-005-20260218    clang-20
i386        buildonly-randconfig-006-20260217    clang-20
i386        buildonly-randconfig-006-20260218    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260217    gcc-14
i386                  randconfig-001-20260218    clang-20
i386                  randconfig-002-20260217    gcc-14
i386                  randconfig-002-20260218    clang-20
i386                  randconfig-003-20260217    gcc-14
i386                  randconfig-003-20260218    clang-20
i386                  randconfig-004-20260217    gcc-14
i386                  randconfig-004-20260218    clang-20
i386                  randconfig-005-20260217    gcc-14
i386                  randconfig-005-20260218    clang-20
i386                  randconfig-006-20260217    gcc-14
i386                  randconfig-006-20260218    clang-20
i386                  randconfig-007-20260217    gcc-14
i386                  randconfig-007-20260218    clang-20
i386                  randconfig-011-20260217    clang-20
i386                  randconfig-011-20260218    gcc-14
i386                  randconfig-012-20260217    clang-20
i386                  randconfig-012-20260218    gcc-14
i386                  randconfig-013-20260217    clang-20
i386                  randconfig-013-20260218    gcc-14
i386                  randconfig-014-20260217    clang-20
i386                  randconfig-014-20260218    gcc-14
i386                  randconfig-015-20260217    clang-20
i386                  randconfig-015-20260218    gcc-14
i386                  randconfig-016-20260217    clang-20
i386                  randconfig-016-20260218    gcc-14
i386                  randconfig-017-20260217    clang-20
i386                  randconfig-017-20260218    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260217    clang-23
loongarch             randconfig-001-20260218    clang-16
loongarch             randconfig-002-20260217    clang-23
loongarch             randconfig-002-20260218    clang-16
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                       m5249evb_defconfig    gcc-15.2.0
microblaze                       alldefconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                     cu1830-neo_defconfig    gcc-15.2.0
mips                          eyeq5_defconfig    gcc-15.2.0
mips                            gpr_defconfig    clang-18
mips                           ip22_defconfig    clang-18
mips                           ip22_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260217    clang-23
nios2                 randconfig-001-20260218    clang-16
nios2                 randconfig-002-20260217    clang-23
nios2                 randconfig-002-20260218    clang-16
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260217    clang-19
parisc                randconfig-001-20260218    gcc-8.5.0
parisc                randconfig-002-20260217    clang-19
parisc                randconfig-002-20260218    gcc-8.5.0
parisc                randconfig-002-20260218    gcc-9.5.0
parisc64                            defconfig    clang-19
powerpc                    adder875_defconfig    clang-18
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      chrp32_defconfig    clang-18
powerpc                   currituck_defconfig    gcc-15.2.0
powerpc                      ep88xc_defconfig    clang-23
powerpc                     kmeter1_defconfig    clang-23
powerpc                 linkstation_defconfig    gcc-15.2.0
powerpc                 mpc8313_rdb_defconfig    clang-18
powerpc               randconfig-001-20260217    clang-19
powerpc               randconfig-001-20260218    clang-23
powerpc               randconfig-001-20260218    gcc-8.5.0
powerpc               randconfig-002-20260217    clang-19
powerpc               randconfig-002-20260218    gcc-8.5.0
powerpc                     tqm8540_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260217    clang-19
powerpc64             randconfig-001-20260218    gcc-8.5.0
powerpc64             randconfig-002-20260217    clang-19
powerpc64             randconfig-002-20260218    clang-23
powerpc64             randconfig-002-20260218    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260217    gcc-10.5.0
riscv                 randconfig-001-20260218    clang-23
riscv                 randconfig-002-20260217    gcc-10.5.0
riscv                 randconfig-002-20260218    clang-23
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                          debug_defconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260217    gcc-10.5.0
s390                  randconfig-001-20260218    clang-23
s390                  randconfig-002-20260217    gcc-10.5.0
s390                  randconfig-002-20260218    clang-23
s390                       zfcpdump_defconfig    gcc-15.2.0
sh                               alldefconfig    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                          kfr2r09_defconfig    gcc-15.2.0
sh                          lboxre2_defconfig    gcc-15.2.0
sh                          polaris_defconfig    gcc-15.2.0
sh                    randconfig-001-20260217    gcc-10.5.0
sh                    randconfig-001-20260218    clang-23
sh                    randconfig-001-20260218    gcc-15.2.0
sh                    randconfig-002-20260217    gcc-10.5.0
sh                    randconfig-002-20260218    clang-23
sh                    randconfig-002-20260218    gcc-13.4.0
sh                          urquell_defconfig    clang-18
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260217    gcc-12.5.0
sparc                 randconfig-001-20260218    gcc-10.5.0
sparc                 randconfig-001-20260218    gcc-14.3.0
sparc                 randconfig-002-20260217    gcc-12.5.0
sparc                 randconfig-002-20260218    gcc-10.5.0
sparc                 randconfig-002-20260218    gcc-8.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260217    gcc-12.5.0
sparc64               randconfig-001-20260218    gcc-10.5.0
sparc64               randconfig-001-20260218    gcc-11.5.0
sparc64               randconfig-002-20260217    gcc-12.5.0
sparc64               randconfig-002-20260218    gcc-10.5.0
sparc64               randconfig-002-20260218    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260217    gcc-12.5.0
um                    randconfig-001-20260218    clang-23
um                    randconfig-001-20260218    gcc-10.5.0
um                    randconfig-002-20260217    gcc-12.5.0
um                    randconfig-002-20260218    gcc-10.5.0
um                    randconfig-002-20260218    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260217    gcc-14
x86_64      buildonly-randconfig-001-20260218    gcc-14
x86_64      buildonly-randconfig-002-20260217    gcc-14
x86_64      buildonly-randconfig-002-20260218    gcc-14
x86_64      buildonly-randconfig-003-20260217    gcc-14
x86_64      buildonly-randconfig-003-20260218    gcc-14
x86_64      buildonly-randconfig-004-20260217    gcc-14
x86_64      buildonly-randconfig-004-20260218    gcc-14
x86_64      buildonly-randconfig-005-20260217    gcc-14
x86_64      buildonly-randconfig-005-20260218    gcc-14
x86_64      buildonly-randconfig-006-20260217    gcc-14
x86_64      buildonly-randconfig-006-20260218    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260217    clang-20
x86_64                randconfig-001-20260218    gcc-14
x86_64                randconfig-002-20260217    clang-20
x86_64                randconfig-002-20260218    gcc-14
x86_64                randconfig-003-20260217    clang-20
x86_64                randconfig-003-20260218    gcc-14
x86_64                randconfig-004-20260217    clang-20
x86_64                randconfig-004-20260218    gcc-14
x86_64                randconfig-005-20260217    clang-20
x86_64                randconfig-005-20260218    gcc-14
x86_64                randconfig-006-20260217    clang-20
x86_64                randconfig-006-20260218    gcc-14
x86_64                randconfig-011-20260217    gcc-14
x86_64                randconfig-011-20260218    gcc-13
x86_64                randconfig-012-20260217    gcc-14
x86_64                randconfig-012-20260218    gcc-13
x86_64                randconfig-013-20260217    gcc-14
x86_64                randconfig-013-20260218    gcc-13
x86_64                randconfig-014-20260217    gcc-14
x86_64                randconfig-014-20260218    gcc-13
x86_64                randconfig-015-20260217    gcc-14
x86_64                randconfig-015-20260218    gcc-13
x86_64                randconfig-016-20260217    gcc-14
x86_64                randconfig-016-20260218    gcc-13
x86_64                randconfig-071-20260217    gcc-14
x86_64                randconfig-071-20260218    clang-20
x86_64                randconfig-072-20260217    gcc-14
x86_64                randconfig-072-20260218    clang-20
x86_64                randconfig-073-20260217    gcc-14
x86_64                randconfig-073-20260218    clang-20
x86_64                randconfig-074-20260217    gcc-14
x86_64                randconfig-074-20260218    clang-20
x86_64                randconfig-075-20260217    gcc-14
x86_64                randconfig-075-20260218    clang-20
x86_64                randconfig-076-20260217    gcc-14
x86_64                randconfig-076-20260218    clang-20
x86_64                randconfig-076-20260218    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260217    gcc-12.5.0
xtensa                randconfig-001-20260218    gcc-10.5.0
xtensa                randconfig-001-20260218    gcc-9.5.0
xtensa                randconfig-002-20260217    gcc-12.5.0
xtensa                randconfig-002-20260218    gcc-10.5.0
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
