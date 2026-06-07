Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xVyFILbQJGpQ/wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 04:00:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C925464EAA1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 07 Jun 2026 04:00:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=soJCoa8k;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAA4C849AD;
	Sun,  7 Jun 2026 02:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 532g8KZqz9B8; Sun,  7 Jun 2026 02:00:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD13B84981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780797615;
	bh=gMa+JLEsHV6BtEZcDwrBQtQDeT4X1vZK8wpzvd8WbsY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=soJCoa8kQDK/PiP02+R1Un1DAO3vHJgp4EejKQSBA8Z7tuYj4CnfMW5WlQENfGQk/
	 T68M6XOIBe5vIUHAvP6w4PP3q6CF0HH3rezxlJCag8GQOfKsj5PUAZThtxOGYkXDRo
	 Hq0JQlyg9SehuYwkolTx+PlTGxycf1p+iff7zaavVxCerM4q56WXiPiXu015YDVkGy
	 2WBQznLdPbD7UB/d/Bc9gQa+arq2TCJcLY+ZyTyMBN0WoRVb45jdny6i8iP9yKjavY
	 uQ2/Zb0Z4Jj6eokeektwFr02y6mLmz7ZQ3kK6wjdQQxEIcFpmNjLjzRrfo29BCpo1S
	 v8dDQtGG+BVZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD13B84981;
	Sun,  7 Jun 2026 02:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 74D0F2EF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 02:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AF18610C7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 02:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oHGRlVH9MaWT for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jun 2026 02:00:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D413D610BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D413D610BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D413D610BD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jun 2026 02:00:11 +0000 (UTC)
X-CSE-ConnectionGUID: hMK+BsfwQ9GRRJF4wYvhVg==
X-CSE-MsgGUID: Sv3IS/xoSDK5SW6ZkBgRRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11809"; a="98992116"
X-IronPort-AV: E=Sophos;i="6.24,191,1774335600"; d="scan'208";a="98992116"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2026 19:00:11 -0700
X-CSE-ConnectionGUID: jn5zpOFCSSyntE6ERbLC9A==
X-CSE-MsgGUID: u1z0UqUCS2abSKKIseNOYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,191,1774335600"; d="scan'208";a="249115735"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 06 Jun 2026 19:00:09 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wW2o2-00000000HWs-1tVU;
 Sun, 07 Jun 2026 02:00:06 +0000
Date: Sun, 07 Jun 2026 09:59:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606070910.6NKTuwN1-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780797612; x=1812333612;
 h=date:from:to:subject:message-id;
 bh=oigk0dzQL5RNLMc44X9a8H4j3vasZdIcyUlg7AhwysU=;
 b=G5rKFxrrUuWhIYIZdyXOS/txXmg0f4ASlQpsIBgGg/8JFjTN+w8l8T7a
 kZ1ye30aTSPYsBKQmSkh/fOev13lK1q4mTcFXKjadcT5RgqtRwGjkJhuH
 VWVBQz0xxOFSksuXro+w7FVM3nHW7fxy+BrbnLs6RXIVXqej45xejr9WF
 P5PumooWMYGWzfpNaety6gSEdNeOq+1HN2N2THx1Vts/cQxAbhRyYR9qk
 tVFn1vr3lhH2Lhj+00HvRNhka1sUqjuvZpEdrkB56hEi4Pq3S4P/ZekWt
 8KBSQn7nxJeLAFHvoNe7SoGkhy1b8yu7mhVWHHu+JALdP6DjSqK7Be5Lr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G5rKFxrr
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 4aacf509e537a711fa71bca9f234e5eb6968850e
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C925464EAA1

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 4aacf509e537a711fa71bca9f234e5eb6968850e  net: mv643xx: fix OF node refcount

elapsed time: 2894m

configs tested: 191
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-17
arc                               allnoconfig    gcc-15.2.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260606    clang-23
arc                   randconfig-002-20260606    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-17
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260606    clang-23
arm                   randconfig-002-20260606    clang-23
arm                   randconfig-003-20260606    clang-23
arm                   randconfig-004-20260606    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-16.1.0
arm64                          randconfig-001    clang-23
arm64                 randconfig-001-20260606    clang-23
arm64                          randconfig-002    clang-23
arm64                 randconfig-002-20260606    clang-23
arm64                          randconfig-003    clang-23
arm64                 randconfig-003-20260606    clang-23
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260606    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-16.1.0
csky                           randconfig-001    clang-23
csky                  randconfig-001-20260606    clang-23
csky                           randconfig-002    clang-23
csky                  randconfig-002-20260606    clang-23
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260606    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260606    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260606    gcc-13
i386        buildonly-randconfig-002-20260606    gcc-13
i386        buildonly-randconfig-003-20260606    gcc-13
i386        buildonly-randconfig-004-20260606    gcc-13
i386        buildonly-randconfig-005-20260606    gcc-13
i386        buildonly-randconfig-006-20260606    gcc-13
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260606    clang-20
i386                  randconfig-002-20260606    clang-20
i386                  randconfig-003-20260606    clang-20
i386                  randconfig-004-20260606    clang-20
i386                  randconfig-005-20260606    clang-20
i386                  randconfig-006-20260606    clang-20
i386                  randconfig-007-20260606    clang-20
i386                           randconfig-011    clang-20
i386                  randconfig-011-20260606    clang-20
i386                           randconfig-012    clang-20
i386                  randconfig-012-20260606    clang-20
i386                           randconfig-013    clang-20
i386                  randconfig-013-20260606    clang-20
i386                           randconfig-014    clang-20
i386                  randconfig-014-20260606    clang-20
i386                           randconfig-015    clang-20
i386                  randconfig-015-20260606    clang-20
i386                           randconfig-016    clang-20
i386                  randconfig-016-20260606    clang-20
i386                           randconfig-017    clang-20
i386                  randconfig-017-20260606    clang-20
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260606    gcc-11.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260606    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-17
m68k                                defconfig    clang-23
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-23
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                      malta_kvm_defconfig    gcc-16.1.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-17
nios2                               defconfig    clang-23
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260606    gcc-11.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260606    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-17
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-17
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260606    gcc-8.5.0
parisc                randconfig-002-20260606    gcc-8.5.0
parisc64                            defconfig    clang-23
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-17
powerpc               randconfig-001-20260606    gcc-8.5.0
powerpc               randconfig-002-20260606    gcc-8.5.0
powerpc64             randconfig-001-20260606    gcc-8.5.0
powerpc64             randconfig-002-20260606    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-17
riscv                            allyesconfig    clang-17
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    gcc-8.5.0
riscv                 randconfig-001-20260606    gcc-8.5.0
riscv                          randconfig-002    gcc-8.5.0
riscv                 randconfig-002-20260606    gcc-8.5.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-17
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    gcc-8.5.0
s390                  randconfig-001-20260606    gcc-8.5.0
s390                           randconfig-002    gcc-8.5.0
s390                  randconfig-002-20260606    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-17
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                             randconfig-001    gcc-8.5.0
sh                    randconfig-001-20260606    gcc-8.5.0
sh                             randconfig-002    gcc-8.5.0
sh                    randconfig-002-20260606    gcc-8.5.0
sparc                             allnoconfig    clang-17
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260606    gcc-11.5.0
sparc                 randconfig-002-20260606    gcc-11.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260606    gcc-11.5.0
sparc64               randconfig-002-20260606    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260606    gcc-11.5.0
um                    randconfig-002-20260606    gcc-11.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-17
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260606    gcc-14
x86_64      buildonly-randconfig-002-20260606    gcc-14
x86_64      buildonly-randconfig-003-20260606    gcc-14
x86_64      buildonly-randconfig-004-20260606    gcc-14
x86_64      buildonly-randconfig-005-20260606    gcc-14
x86_64      buildonly-randconfig-006-20260606    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260606    gcc-14
x86_64                randconfig-002-20260606    gcc-14
x86_64                randconfig-003-20260606    gcc-14
x86_64                randconfig-004-20260606    gcc-14
x86_64                randconfig-005-20260606    gcc-14
x86_64                randconfig-006-20260606    gcc-14
x86_64                randconfig-011-20260606    gcc-14
x86_64                randconfig-012-20260606    gcc-14
x86_64                randconfig-013-20260606    gcc-14
x86_64                randconfig-014-20260606    gcc-14
x86_64                randconfig-015-20260606    gcc-14
x86_64                randconfig-016-20260606    gcc-14
x86_64                randconfig-071-20260607    clang-22
x86_64                randconfig-072-20260607    clang-22
x86_64                randconfig-073-20260607    clang-22
x86_64                randconfig-074-20260607    clang-22
x86_64                randconfig-075-20260607    clang-22
x86_64                randconfig-076-20260607    clang-22
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-17
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260606    gcc-11.5.0
xtensa                randconfig-002-20260606    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
