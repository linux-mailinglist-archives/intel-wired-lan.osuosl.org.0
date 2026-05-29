Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOx6LwtiGWrDvwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 11:53:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 764AE6003E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 11:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8550742285;
	Fri, 29 May 2026 09:53:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfoMxI1za_Ij; Fri, 29 May 2026 09:53:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3F82422A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780048389;
	bh=3pmUy73Nteko3kGKGjmiY80eSh8p/myVtAVSoE/2cIY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Mx87VDVzdm0H04u/JayQXOaBFO905wVfK1TMZ3EVr4wkRneD01WTsN7Udtmpqc5vc
	 WbrkXitHuXTXWII3xPyFsu3LNqjgQU7fbaE0nJdT1DZ5vbB5N+FjbT9SNUFO/5hOUL
	 GZ32uVOhVaNfKIgqtwJt/pzoWS1J1kzJgsDQMbv9vLyzWp7kd8jlhPl1KxbpIbWy+X
	 jRnWjNUwIpoQ9tD8UR8QxGC+B2bshbbJjXH2SAWwV32BS20KHHfLHOHvwawGf1Bqf+
	 iBqTenBzpGoAGSr0rhVWp/L9CxXiQPQynfSVGjkCKm/Y7A/mcJ1ZDDy8GLJ88XNRhQ
	 gKCgJhpvWc14Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3F82422A1;
	Fri, 29 May 2026 09:53:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 367AFD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 09:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2594B4197A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 09:53:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kdv5eyxiEJVA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 09:53:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F065F41A11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F065F41A11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F065F41A11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 09:53:05 +0000 (UTC)
X-CSE-ConnectionGUID: LShGFMLrS5aKt3FQBRoRAQ==
X-CSE-MsgGUID: 5FtByrmTRJe8dXLeobtI7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92281185"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92281185"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 02:53:04 -0700
X-CSE-ConnectionGUID: KKnBMiqiSk61Wcgq8E2Shg==
X-CSE-MsgGUID: 3XtVb4KQS2Cg9KA6/jdD8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242950282"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 29 May 2026 02:53:03 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wSttk-00000000746-3oog;
 Fri, 29 May 2026 09:53:00 +0000
Date: Fri, 29 May 2026 17:52:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605291757.TOKlCqeg-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780048386; x=1811584386;
 h=date:from:to:subject:message-id;
 bh=NxRFrFfcm9OLmRU5PioE8Mfd+5kld5JbqMsv/nr6qB0=;
 b=k//5PennoXPYEEpa5xqGYSvBq4G1tqS7LHlfTu1MXDNeqB+NomSZslWl
 CxdW3a/H85FkzhUBfsra8qW+BWVFZTksh7JALF7DyHJQZ13VI4YvWTU9s
 bNsN1KMXtPbff15OjjzyTbqjzYgvg7VQQe29Q3XtvaHMYSq7NCWCMBhO8
 a+om1h1Qt+Hu1SJVGhNrxPUt9a+mfVS+UtYyMxa0v3lLCghD/kV9zVfW2
 XnaGZf974Ind1zjjPd9extKC6UaLG+MTD5Jz1PaArn41c2gaHUzgdc9N6
 1YmIPizip+mJNPfjP265Dp1BqZEJaQVoKbi8w25xvrC1P4qTKUI4DNGrv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k//5Penn
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e2444cdebf79eb88e272f3c587f6ac5f143deb2a
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 764AE6003E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: e2444cdebf79eb88e272f3c587f6ac5f143deb2a  ice: use ACL for ntuple rules that conflict with FDir

elapsed time: 2022m

configs tested: 150
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                   randconfig-001-20260529    gcc-14.3.0
arc                   randconfig-002-20260529    gcc-10.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    gcc-15.2.0
arm                   randconfig-001-20260529    gcc-14.3.0
arm                   randconfig-002-20260529    gcc-8.5.0
arm                   randconfig-003-20260529    gcc-13.4.0
arm                   randconfig-004-20260529    clang-23
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon               randconfig-001-20260529    clang-23
hexagon               randconfig-002-20260529    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260529    gcc-12
i386        buildonly-randconfig-002-20260529    clang-20
i386        buildonly-randconfig-003-20260529    gcc-12
i386        buildonly-randconfig-004-20260529    gcc-14
i386        buildonly-randconfig-005-20260529    gcc-14
i386        buildonly-randconfig-006-20260529    gcc-14
i386                  randconfig-001-20260529    gcc-14
i386                  randconfig-002-20260529    gcc-12
i386                  randconfig-003-20260529    clang-20
i386                  randconfig-004-20260529    clang-20
i386                  randconfig-005-20260529    gcc-14
i386                  randconfig-006-20260529    clang-20
i386                  randconfig-007-20260529    gcc-12
i386                  randconfig-011-20260529    clang-20
i386                  randconfig-012-20260529    clang-20
i386                  randconfig-013-20260529    clang-20
i386                  randconfig-014-20260529    clang-20
i386                  randconfig-015-20260529    gcc-14
i386                  randconfig-016-20260529    clang-20
i386                  randconfig-017-20260529    gcc-13
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch             randconfig-001-20260529    gcc-15.2.0
loongarch             randconfig-002-20260529    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            alldefconfig    gcc-11.5.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260529    gcc-8.5.0
nios2                 randconfig-002-20260529    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260529    gcc-8.5.0
parisc                randconfig-002-20260529    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260529    gcc-12.5.0
powerpc               randconfig-002-20260529    clang-19
powerpc64             randconfig-001-20260529    gcc-15.2.0
powerpc64             randconfig-002-20260529    clang-19
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260529    gcc-8.5.0
riscv                 randconfig-002-20260529    gcc-9.5.0
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260529    gcc-8.5.0
s390                  randconfig-002-20260529    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260529    gcc-15.2.0
sh                    randconfig-002-20260529    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260529    gcc-8.5.0
sparc                 randconfig-002-20260529    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260529    gcc-11.5.0
sparc64               randconfig-002-20260529    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260529    gcc-14
um                    randconfig-002-20260529    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64               buildonly-randconfig-001    gcc-12
x86_64               buildonly-randconfig-002    clang-20
x86_64               buildonly-randconfig-003    gcc-14
x86_64               buildonly-randconfig-004    gcc-14
x86_64               buildonly-randconfig-005    gcc-14
x86_64               buildonly-randconfig-006    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260529    gcc-14
x86_64                randconfig-002-20260529    clang-20
x86_64                randconfig-003-20260529    gcc-14
x86_64                randconfig-004-20260529    clang-20
x86_64                randconfig-005-20260529    clang-20
x86_64                randconfig-006-20260529    clang-20
x86_64                randconfig-071-20260529    gcc-14
x86_64                randconfig-072-20260529    clang-20
x86_64                randconfig-073-20260529    clang-20
x86_64                randconfig-074-20260529    gcc-14
x86_64                randconfig-075-20260529    gcc-14
x86_64                randconfig-076-20260529    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260529    gcc-11.5.0
xtensa                randconfig-002-20260529    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
