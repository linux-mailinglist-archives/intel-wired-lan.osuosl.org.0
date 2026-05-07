Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF4UL8eY/GkqRwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 15:51:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 729504E99F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 15:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEB4D40F1B;
	Thu,  7 May 2026 13:51:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3YMA0jPpxGo; Thu,  7 May 2026 13:51:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3929540F74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778161860;
	bh=kzKm03TvTNIh2AWIN8eayHNWnnGG03T9OfrApraf0jE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LDxMGlzJdxHBoditGQYsbgcjYVQZqbAuQfif62HzPAGp4BSowJNc2DCQqOsro3a+Y
	 x6jjfb7de8/jFWNQrwSGTE7mmy3vhVF0N+xgbDkFfaFHisCeYAt5ZOssWyy9acOmbA
	 Mfg+khf9OWAERJif1WobK/XZoOlhoYTxXPaoDacWwuT9t0ft+O9nn9ANQ0OJyeFEBa
	 Nj48UsdmLrqF6CehXRckgyaucnkMiBZn0Ud+2mhh+H7dd9/YasjLjpuzum2vGzOXm2
	 jKLQWzTUss0RpRWdyEWIFNcNqekOuKRVB+lkC+G3Ey+TOFnDZaVQx9QMpOiIe6UE34
	 rlOa5G53z8gXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3929540F74;
	Thu,  7 May 2026 13:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 22B1F317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 13:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B22783BB8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 13:50:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vwwTFSMQPz1D for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 13:50:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD82F83BBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD82F83BBB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD82F83BBB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 13:50:56 +0000 (UTC)
X-CSE-ConnectionGUID: JLaphysOSOGl08psFwnS7A==
X-CSE-MsgGUID: t3OAZEItSV2ki7xVicX9pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79012212"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79012212"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 06:50:56 -0700
X-CSE-ConnectionGUID: Ko9Z6xFzQO+5R0MjO53QHA==
X-CSE-MsgGUID: jphNPj8TR16LdO5W3fw/ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="235635642"
Received: from lkp-server01.sh.intel.com (HELO d6e19f2f5857) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 07 May 2026 06:50:55 -0700
Received: from kbuild by d6e19f2f5857 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wKz7s-0000000007F-0HnD;
 Thu, 07 May 2026 13:50:52 +0000
Date: Thu, 07 May 2026 21:50:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605072118.MKFRlaTx-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778161857; x=1809697857;
 h=date:from:to:subject:message-id;
 bh=A5TTr9YdCl54Fx3CZlFppdaAbHF20T8RU9qQFABZl40=;
 b=IstOvwWyNtI46amp7tHgLO1Gud3LimBon/I+oVJAnhKsZBxH8WAMpCL4
 tGSuf+k8bW9NOVA8l2iG1f/410v/XvMzxrTdE8cNW5eQ/aoL2YYZqGmzV
 l1dv+nKDyB4j1ZHPimgy0Pdcv7wCbRf4ZhQCeVaBZ6Qt/1ziCz25tt2aZ
 g+CekLhdqSB22secdzYmqaqZNPnI8ByHWmIft+YG8uFqsqFau9lEFaRE6
 zO6c/YJ0JL4XF1ZFdM0cwjJYMVEotfc+zw6caMJbYuokefuSFF2O35DFN
 9JXj/nuZj4vKtTgObdERnes0KDXIwu1B23lnqx12ijTbH72fzFc0FwX5j
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IstOvwWy
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 349ceb8eac704c0c1773bf899e7f257b4718280d
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
X-Rspamd-Queue-Id: 729504E99F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 349ceb8eac704c0c1773bf899e7f257b4718280d  ixd: add devlink support

elapsed time: 729m

configs tested: 114
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.2.0
alpha                  allyesconfig    gcc-15.2.0
alpha                     defconfig    gcc-15.2.0
arc                    allmodconfig    gcc-15.2.0
arc                     allnoconfig    gcc-15.2.0
arc                    allyesconfig    gcc-15.2.0
arc                       defconfig    gcc-15.2.0
arc         randconfig-001-20260507    gcc-10.5.0
arc         randconfig-002-20260507    gcc-14.3.0
arm                     allnoconfig    clang-23
arm                    allyesconfig    gcc-15.2.0
arm         randconfig-001-20260507    clang-23
arm         randconfig-002-20260507    gcc-10.5.0
arm         randconfig-003-20260507    clang-23
arm         randconfig-004-20260507    gcc-13.4.0
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
arm64       randconfig-001-20260507    clang-23
arm64       randconfig-002-20260507    gcc-13.4.0
arm64       randconfig-003-20260507    clang-23
arm64       randconfig-004-20260507    gcc-8.5.0
csky                   allmodconfig    gcc-15.2.0
csky                    allnoconfig    gcc-15.2.0
csky                      defconfig    gcc-15.2.0
csky        randconfig-001-20260507    gcc-15.2.0
csky        randconfig-002-20260507    gcc-15.2.0
hexagon                allmodconfig    clang-17
hexagon                 allnoconfig    clang-23
hexagon                   defconfig    clang-23
hexagon     randconfig-001-20260507    clang-23
hexagon     randconfig-002-20260507    clang-23
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                   allyesconfig    gcc-14
i386        randconfig-001-20260507    gcc-13
i386        randconfig-002-20260507    clang-20
i386        randconfig-003-20260507    gcc-14
i386        randconfig-004-20260507    gcc-14
i386        randconfig-005-20260507    gcc-14
i386        randconfig-006-20260507    gcc-14
i386        randconfig-007-20260507    clang-20
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-23
loongarch                 defconfig    clang-19
loongarch   randconfig-001-20260507    clang-23
m68k                   allmodconfig    gcc-15.2.0
m68k                    allnoconfig    gcc-15.2.0
m68k                   allyesconfig    gcc-15.2.0
m68k                      defconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze             allyesconfig    gcc-15.2.0
microblaze                defconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
mips                   allyesconfig    gcc-15.2.0
nios2               10m50_defconfig    gcc-11.5.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
nios2                     defconfig    gcc-11.5.0
nios2       randconfig-001-20260507    gcc-9.5.0
nios2       randconfig-002-20260507    gcc-10.5.0
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    gcc-15.2.0
openrisc                  defconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    gcc-15.2.0
parisc                    defconfig    gcc-15.2.0
parisc      randconfig-001-20260507    gcc-8.5.0
parisc      randconfig-002-20260507    gcc-11.5.0
parisc64                  defconfig    gcc-15.2.0
powerpc                allmodconfig    gcc-15.2.0
powerpc                 allnoconfig    gcc-15.2.0
powerpc     randconfig-001-20260507    clang-16
powerpc     randconfig-002-20260507    clang-23
powerpc64   randconfig-001-20260507    clang-23
powerpc64   randconfig-002-20260507    gcc-15.2.0
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                  allyesconfig    clang-16
riscv                     defconfig    clang-23
s390                   allmodconfig    clang-18
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
s390                      defconfig    clang-23
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    gcc-15.2.0
sh                        defconfig    gcc-15.2.0
sparc                   allnoconfig    gcc-15.2.0
sparc                     defconfig    gcc-15.2.0
sparc       randconfig-001-20260507    gcc-8.5.0
sparc       randconfig-002-20260507    gcc-12.5.0
sparc64                allmodconfig    clang-23
sparc64                   defconfig    clang-20
sparc64     randconfig-001-20260507    clang-23
sparc64     randconfig-002-20260507    gcc-8.5.0
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
um                        defconfig    clang-23
um                   i386_defconfig    gcc-14
um          randconfig-001-20260507    gcc-13
um          randconfig-002-20260507    gcc-14
um                 x86_64_defconfig    clang-23
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                    defconfig    gcc-14
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    gcc-15.2.0
xtensa                 allyesconfig    gcc-15.2.0
xtensa      randconfig-001-20260507    gcc-15.2.0
xtensa      randconfig-002-20260507    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
