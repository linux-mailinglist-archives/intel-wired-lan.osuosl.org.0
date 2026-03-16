Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHkNDqx7uGlVewEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 22:52:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAF02A12B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 22:52:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E804740CCF;
	Mon, 16 Mar 2026 21:52:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id op5e6Q1QKBws; Mon, 16 Mar 2026 21:52:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 419044110D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773697960;
	bh=+AwlgqEZANuuVow1Uz+HCGMShgol2Hrii9yBozigPIk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dcTBk7wXHslVEp9i7fcD4MHzAs4biKvmbSxYp4UmHwg6QjmpAOQqf1MEA1wSGwdSK
	 /WwCjs/Yiqf2VjaDJJWRzWHGy0eFJ41cpxB9wzbqxOKmoOEF+59whdJHBrs0pbR6dw
	 eypzqVjV+UKo7w0gMJ4b1Wnd8Eu2XOU/rw4o/HZ9d0WLx/nzxmeumO8SiZf5CT+F/p
	 xRhkN9EHRfisZ+CrNKBAO5qCbhLpkr60CUPKU4HWsZ40M3Df+CWrYrgLonV4XfsIxa
	 +fHQwqrwwim+OW0zd/hm4wy3RY6TsescNp6u/XRzDoQmASHqxLye6qkJNXQ3b9Z92w
	 2AYqsDlKZURUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 419044110D;
	Mon, 16 Mar 2026 21:52:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B0E29D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 21:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95E8561279
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 21:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYbL7--J-XZk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 21:52:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DA9961271
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DA9961271
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DA9961271
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 21:52:36 +0000 (UTC)
X-CSE-ConnectionGUID: aW6XPa9wRo+phq42MEeYeA==
X-CSE-MsgGUID: ZqpQOrqVRxWK4dzRVfvABA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="92109641"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="92109641"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 14:52:36 -0700
X-CSE-ConnectionGUID: oEoJANHuQImja4pJgiRRVA==
X-CSE-MsgGUID: GRT256JrQAO3qTITg9hA0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="226738902"
Received: from lkp-server01.sh.intel.com (HELO 892944969b78) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 16 Mar 2026 14:52:35 -0700
Received: from kbuild by 892944969b78 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w2FrU-000000001MA-3Wjr;
 Mon, 16 Mar 2026 21:52:32 +0000
Date: Tue, 17 Mar 2026 05:52:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603170556.PYa13Fo3-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773697957; x=1805233957;
 h=date:from:to:subject:message-id;
 bh=Xp5K4+8fn1W206mZKQUosHolTzsI9+H/SLluPMv3uaY=;
 b=IUiP8aYCS6rdRmjRUTRvV/fh1N5JEiSK7a4QbVSIKamFdU72cUk495xR
 uJ6l72tHS/rBcMlPc0+0oi4q+pRxnaAghuvfCwFO5lzh2LX6oU9YqO8rM
 RsHma6cnh47p+Kuh2M5hBE1aDOIL4HFaYdTffw0muHhBTSyVbPAwbB/cC
 p2vXUNLvHZvnbIqzqjPQv2j2Fte/F327L2Fz9k+ar+8rWdTRZVUnIlhLz
 d6U5mSg3WSS70jwe5e79XUbVcRfdPNmt6OWp7h9ZuQoKYKSoYttYCOvN6
 f3FsWAVlIRnFvNayuK0VaD44LcxEQVVrO7XOr2iQLTgijsd4Iy4RxuhR5
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IUiP8aYC
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 85e2937d03d30c966933cb4d0348fc97c670c449
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
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1DAF02A12B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 85e2937d03d30c966933cb4d0348fc97c670c449  idpf: only assign num refillqs if allocation was successful

elapsed time: 1597m

configs tested: 77
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                   allnoconfig    gcc-15.2.0
alpha                  allyesconfig    gcc-15.2.0
arc                    allmodconfig    gcc-15.2.0
arc                     allnoconfig    gcc-15.2.0
arc                    allyesconfig    gcc-15.2.0
arm                     allnoconfig    clang-23
arm                    allyesconfig    gcc-15.2.0
arm64                  allmodconfig    clang-19
arm64                   allnoconfig    gcc-15.2.0
arm64       randconfig-003-20260317    clang-23
csky                   allmodconfig    gcc-15.2.0
csky                    allnoconfig    gcc-15.2.0
hexagon                allmodconfig    clang-17
hexagon                 allnoconfig    clang-23
i386                   allmodconfig    gcc-14
i386                    allnoconfig    gcc-14
i386                   allyesconfig    gcc-14
i386        randconfig-001-20260317    gcc-14
i386        randconfig-002-20260317    clang-20
i386        randconfig-003-20260317    gcc-14
i386        randconfig-004-20260317    gcc-14
i386        randconfig-005-20260317    gcc-14
i386        randconfig-006-20260317    gcc-14
i386        randconfig-007-20260317    clang-20
loongarch              allmodconfig    clang-19
loongarch               allnoconfig    clang-23
loongarch   randconfig-001-20260317    clang-23
m68k                   allmodconfig    gcc-15.2.0
m68k                    allnoconfig    gcc-15.2.0
m68k                   allyesconfig    gcc-15.2.0
microblaze              allnoconfig    gcc-15.2.0
microblaze             allyesconfig    gcc-15.2.0
mips                   allmodconfig    gcc-15.2.0
mips                    allnoconfig    gcc-15.2.0
mips                   allyesconfig    gcc-15.2.0
nios2                  allmodconfig    gcc-11.5.0
nios2                   allnoconfig    gcc-11.5.0
openrisc               allmodconfig    gcc-15.2.0
openrisc                allnoconfig    gcc-15.2.0
parisc                 allmodconfig    gcc-15.2.0
parisc                  allnoconfig    gcc-15.2.0
parisc                 allyesconfig    gcc-15.2.0
parisc      randconfig-001-20260317    gcc-11.5.0
parisc      randconfig-002-20260317    gcc-14.3.0
powerpc                 allnoconfig    gcc-15.2.0
powerpc     randconfig-001-20260317    gcc-8.5.0
powerpc     randconfig-002-20260317    clang-23
powerpc64   randconfig-001-20260317    gcc-8.5.0
powerpc64   randconfig-002-20260317    clang-23
riscv                  allmodconfig    clang-23
riscv                   allnoconfig    gcc-15.2.0
riscv                  allyesconfig    clang-16
s390                   allmodconfig    clang-18
s390                    allnoconfig    clang-23
s390                   allyesconfig    gcc-15.2.0
s390        randconfig-001-20260317    gcc-15.2.0
sh                     allmodconfig    gcc-15.2.0
sh                      allnoconfig    gcc-15.2.0
sh                     allyesconfig    gcc-15.2.0
sparc                   allnoconfig    gcc-15.2.0
sparc       randconfig-001-20260316    gcc-8.5.0
sparc       randconfig-002-20260316    gcc-12.5.0
sparc64                allmodconfig    clang-23
sparc64     randconfig-001-20260316    gcc-8.5.0
sparc64     randconfig-002-20260316    gcc-15.2.0
um                     allmodconfig    clang-19
um                      allnoconfig    clang-23
um                     allyesconfig    gcc-14
um          randconfig-001-20260316    gcc-14
um          randconfig-002-20260316    clang-23
x86_64                 allmodconfig    clang-20
x86_64                  allnoconfig    clang-20
x86_64                 allyesconfig    clang-20
x86_64                rhel-9.4-rust    clang-20
xtensa                  allnoconfig    gcc-15.2.0
xtensa      randconfig-001-20260316    gcc-15.2.0
xtensa      randconfig-002-20260316    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
