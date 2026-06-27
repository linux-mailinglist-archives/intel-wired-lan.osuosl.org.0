Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mymKMVm0P2q+XQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 13:30:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 693626D1D6A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 13:30:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=c7DVetJa;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4B046066F;
	Sat, 27 Jun 2026 11:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eWAcqI_Kb7rW; Sat, 27 Jun 2026 11:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62D07607D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782559829;
	bh=yyc2NX+kAutg8V8dkwTfs5S+6mMeCXZap/GiJ3tgVxA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c7DVetJaC3t1kpqmTRvW8ugOL5Czv+xlo/hYjyhzxhaT9YGvy9iEwjUlkfUwvLMIk
	 TQK6HZljVrVs9aTJk5CdP0BGq3neeVPBCtrVR6FmZ3xb9f6bRX8/ru38M04tO4Xp9x
	 QxBRUozohzQHMoHa8//e603JP3EF0Y8a84ctTTd55dTGaaPBfY9GoN5bBHtY4Qca4/
	 LFpDCW+6BxY8hpPSbakXzEcj4L8iWBbpzhqtzuhCYvaFCszmuBz8UIpBunTQgdazIv
	 NR+zflN+rcsrghxYT4Ed66c6PN7zQU6usIdTp3TQAJEcp6rIKqB7wfSxqyuqNxhq37
	 B9nO8it4YW4cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62D07607D1;
	Sat, 27 Jun 2026 11:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CA252F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 11:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04FFD4056C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 11:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_odJq-G5Io5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jun 2026 11:30:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A107E4053C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A107E4053C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A107E4053C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 11:30:24 +0000 (UTC)
X-CSE-ConnectionGUID: 4icg/XgESl2Yxvf8m8fCDg==
X-CSE-MsgGUID: qQTmc3OmR0qAqQy88oYibw==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="83206623"
X-IronPort-AV: E=Sophos;i="6.24,228,1774335600"; d="scan'208";a="83206623"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2026 04:30:24 -0700
X-CSE-ConnectionGUID: /qbjGdcbQAydw9ebLzsX0Q==
X-CSE-MsgGUID: toj2xPYsTQunt6Eo9okmTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,228,1774335600"; d="scan'208";a="255139917"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2026 04:30:23 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wdREq-000000005pF-1AVF;
 Sat, 27 Jun 2026 11:30:20 +0000
Date: Sat, 27 Jun 2026 19:30:06 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606271957.Re3hxgTg-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782559825; x=1814095825;
 h=date:from:to:subject:message-id;
 bh=VZPM1zACiC4I23O7uOgsijopDjVO687or253rBeJao8=;
 b=AXMjFB8kirUT5HYfFO4fcHRKVPUlc2047wi0oZZwEc3X1ALnfszYLPQa
 rm29Wmj6+s+2TIBoiUSzB02IFL8sBHkS4BYVbrRSaSQYAVlx4rxoGP0uP
 8ILZauRJmR5+KsSiOrAlB+0GPrNrJvj+fdrtFuVlDFFdlaZMKP+aBAWLv
 dCuQVwYKi0tSo095pl34GgHIUqCF47BkLxSA0aK2PFWfUpcoXnKSP+OY0
 8eAe5WtnWJ3k2nQcSXKHiqbc8ztBilH3yeaDp6rlqwYcTP3mmc5XVIhZo
 NxMZVlkLTfaTuNgNP5mJpfpPCxV785UpCcc49ipl85BfDDgk0BYMIngv3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AXMjFB8k
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7ea021dae36c8a9e5778137ba72a46bfb5a2860b
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
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
X-Rspamd-Queue-Id: 693626D1D6A

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 7ea021dae36c8a9e5778137ba72a46bfb5a2860b  ice: refactor ice_sched_cfg_agg to take agg_info pointer

elapsed time: 751m

configs tested: 168
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260627    gcc-8.5.0
arc                   randconfig-002-20260627    gcc-8.5.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260627    gcc-16.1.0
arm                   randconfig-002-20260627    clang-23
arm                   randconfig-003-20260627    gcc-16.1.0
arm                   randconfig-004-20260627    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260627    gcc-10.5.0
arm64                 randconfig-002-20260627    clang-23
arm64                 randconfig-003-20260627    gcc-10.5.0
arm64                 randconfig-004-20260627    gcc-16.1.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260627    gcc-16.1.0
csky                  randconfig-002-20260627    gcc-14.3.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260627    clang-23
hexagon               randconfig-002-20260627    clang-18
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260627    clang-22
i386        buildonly-randconfig-002-20260627    clang-22
i386        buildonly-randconfig-003-20260627    clang-22
i386        buildonly-randconfig-004-20260627    clang-22
i386        buildonly-randconfig-005-20260627    gcc-13
i386        buildonly-randconfig-006-20260627    clang-22
i386                                defconfig    clang-22
i386                  randconfig-001-20260627    clang-22
i386                  randconfig-002-20260627    clang-22
i386                  randconfig-003-20260627    gcc-13
i386                  randconfig-004-20260627    clang-22
i386                  randconfig-005-20260627    clang-22
i386                  randconfig-006-20260627    gcc-14
i386                  randconfig-007-20260627    clang-22
i386                  randconfig-011-20260627    clang-22
i386                  randconfig-012-20260627    clang-22
i386                  randconfig-013-20260627    gcc-14
i386                  randconfig-014-20260627    clang-22
i386                  randconfig-015-20260627    gcc-14
i386                  randconfig-016-20260627    clang-22
i386                  randconfig-017-20260627    gcc-14
loongarch                         allnoconfig    clang-20
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260627    clang-23
loongarch             randconfig-002-20260627    gcc-16.1.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260627    gcc-11.5.0
nios2                 randconfig-002-20260627    gcc-11.5.0
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260627    gcc-8.5.0
parisc                randconfig-002-20260627    gcc-8.5.0
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    gcc-16.1.0
powerpc               mpc834x_itxgp_defconfig    clang-23
powerpc               randconfig-001-20260627    clang-23
powerpc               randconfig-002-20260627    clang-17
powerpc64             randconfig-001-20260627    clang-20
powerpc64             randconfig-002-20260627    clang-17
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260627    clang-22
riscv                 randconfig-002-20260627    clang-23
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                  randconfig-001-20260627    clang-17
s390                  randconfig-002-20260627    clang-23
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260627    gcc-16.1.0
sh                    randconfig-002-20260627    gcc-10.5.0
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-16.1.0
sparc                 randconfig-001-20260627    gcc-13.4.0
sparc                          randconfig-002    gcc-11.5.0
sparc                 randconfig-002-20260627    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                        randconfig-001    gcc-12.5.0
sparc64               randconfig-001-20260627    gcc-13.4.0
sparc64                        randconfig-002    clang-20
sparc64               randconfig-002-20260627    gcc-15.2.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                             randconfig-001    clang-23
um                    randconfig-001-20260627    clang-22
um                             randconfig-002    clang-23
um                    randconfig-002-20260627    clang-23
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-22
x86_64               buildonly-randconfig-001    gcc-12
x86_64      buildonly-randconfig-001-20260627    gcc-13
x86_64               buildonly-randconfig-002    clang-22
x86_64      buildonly-randconfig-002-20260627    clang-22
x86_64               buildonly-randconfig-003    gcc-14
x86_64      buildonly-randconfig-003-20260627    clang-22
x86_64               buildonly-randconfig-004    gcc-14
x86_64      buildonly-randconfig-004-20260627    gcc-14
x86_64               buildonly-randconfig-005    gcc-14
x86_64      buildonly-randconfig-005-20260627    clang-22
x86_64               buildonly-randconfig-006    clang-22
x86_64      buildonly-randconfig-006-20260627    clang-22
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260627    clang-22
x86_64                randconfig-002-20260627    gcc-12
x86_64                randconfig-003-20260627    clang-22
x86_64                randconfig-004-20260627    gcc-14
x86_64                randconfig-005-20260627    gcc-14
x86_64                randconfig-006-20260627    clang-22
x86_64                randconfig-011-20260627    clang-22
x86_64                randconfig-012-20260627    clang-22
x86_64                randconfig-013-20260627    gcc-14
x86_64                randconfig-014-20260627    gcc-14
x86_64                randconfig-015-20260627    gcc-14
x86_64                randconfig-016-20260627    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    gcc-16.1.0
xtensa                         randconfig-001    gcc-8.5.0
xtensa                randconfig-001-20260627    gcc-8.5.0
xtensa                         randconfig-002    gcc-13.4.0
xtensa                randconfig-002-20260627    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
