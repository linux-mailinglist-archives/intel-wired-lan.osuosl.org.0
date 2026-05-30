Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7gYiD699GmpF4wgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 May 2026 08:03:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8226D60B644
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 May 2026 08:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36A9A60D8B;
	Sat, 30 May 2026 06:03:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GjvNpNaeNb6c; Sat, 30 May 2026 06:03:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44F0B60E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780121002;
	bh=pDX1zrA/KGrk5+kabXQe4IeKgDc4nXSBGo3+bw/hAHA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vXVKO12U/iPnL1liu5i/ayQCs52JVgqcntXtYjhaFFXGo6dDR9KrZgwhr5FlbxC5v
	 TotIl6KrvGIgCOWulMUD9QdaqAvrNjLqCVL1QDB/Z9yI8+UiD4n+3qsc1xOkrvOD3r
	 CuBgtxc8hZQQn84OQQ+FUVvJmPHOsohrDrlAjycI9InwwDgif6ijrdi6kgm1Yopu9W
	 9igqwwrPyd1rp89/UVNYtP7JNJq95xAw2iQ4ZktAaKt3o5E3d2YLyY6xkpW9Tb+x2J
	 V4e/mgY9sz3h2dO2jMUlJWJfs1ZvyvWVL+Y8Su71oAGU9dJNQd6QHEKsFyt2hXWyJb
	 Ep4Hr8S7qfDLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44F0B60E6B;
	Sat, 30 May 2026 06:03:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CBA94D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 May 2026 06:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD73942CB8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 May 2026 06:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YlTJLGJqC6kb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 May 2026 06:03:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A5E242C93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A5E242C93
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A5E242C93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 May 2026 06:03:18 +0000 (UTC)
X-CSE-ConnectionGUID: RAUV+LCwSL2cfuYyiLBLhg==
X-CSE-MsgGUID: 1eBzZioxQX2r8cFGae7Qtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="81152404"
X-IronPort-AV: E=Sophos;i="6.24,176,1774335600"; d="scan'208";a="81152404"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 23:03:19 -0700
X-CSE-ConnectionGUID: mQpOTTTwSgKlxla5hK4fCw==
X-CSE-MsgGUID: YZSw2FoyT3qg+JkTbJy5ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,176,1774335600"; d="scan'208";a="243133295"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 29 May 2026 23:03:17 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wTCmw-0000000089c-2OFe;
 Sat, 30 May 2026 06:03:14 +0000
Date: Sat, 30 May 2026 14:02:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605301406.aQffKjDa-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780121000; x=1811657000;
 h=date:from:to:subject:message-id;
 bh=PzcliIlBocnhWGYNmSyFm5R9yb8b8zdHhLZgB2R2HoU=;
 b=RJcoeWt67RD/XR2kK03sNBWngecFc+FjsHcrM7Cx/HTOA2gqzyJuIsHi
 gyzsJN+WqMxig75wXM34kkqaO8fD2lsb2KbkcT78VxhZg8zDkiVVQ5n4V
 jql/l5Tk/7gbXFIJ4W3Sl97UUsxhLG0EzJ3PPi73RMnwoDfJ3idgmoMfa
 nnN+13jR9g7wXvWsBvunJ10enAe+NnQYpHsiAWtkAh9YbWr4Iqbm60vyP
 0CSRrDbh2m6PtMt4jDj9utmOMLatEgNSHl+ohMuLyDLfP2kkubrzHO5sw
 kuTewkEK7Me/aZYn/5oX//LoDP5VtRVDR5p0+GXaBaH602diYM5X2640E
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RJcoeWt6
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 422b5233b607476ac7176bfa2a101b9a103d7653
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 8226D60B644
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 422b5233b607476ac7176bfa2a101b9a103d7653  net: pcs: pcs-mtk-lynxi: fix bpi-r3 serdes configuration

elapsed time: 1726m

configs tested: 287
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
arc                                 defconfig    gcc-15.2.0
arc                            randconfig-001    clang-23
arc                   randconfig-001-20260529    clang-23
arc                   randconfig-001-20260530    gcc-14.3.0
arc                            randconfig-002    clang-23
arc                   randconfig-002-20260529    clang-23
arc                   randconfig-002-20260530    gcc-14.3.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                         lpc32xx_defconfig    clang-17
arm                            randconfig-001    clang-23
arm                   randconfig-001-20260529    clang-23
arm                   randconfig-001-20260530    gcc-14.3.0
arm                            randconfig-002    clang-23
arm                   randconfig-002-20260529    clang-23
arm                   randconfig-002-20260530    gcc-14.3.0
arm                            randconfig-003    clang-23
arm                   randconfig-003-20260529    clang-23
arm                   randconfig-003-20260530    gcc-14.3.0
arm                            randconfig-004    clang-23
arm                   randconfig-004-20260529    clang-23
arm                   randconfig-004-20260530    gcc-14.3.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260529    clang-23
arm64                 randconfig-001-20260530    gcc-8.5.0
arm64                 randconfig-002-20260529    clang-23
arm64                 randconfig-002-20260530    gcc-8.5.0
arm64                 randconfig-003-20260529    clang-23
arm64                 randconfig-003-20260530    gcc-8.5.0
arm64                 randconfig-004-20260529    clang-23
arm64                 randconfig-004-20260530    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260529    clang-23
csky                  randconfig-001-20260530    gcc-8.5.0
csky                  randconfig-002-20260529    clang-23
csky                  randconfig-002-20260530    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260530    clang-23
hexagon               randconfig-002-20260530    clang-23
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260529    gcc-12
i386        buildonly-randconfig-001-20260530    clang-20
i386        buildonly-randconfig-002-20260529    gcc-12
i386        buildonly-randconfig-002-20260530    clang-20
i386        buildonly-randconfig-003-20260529    gcc-12
i386        buildonly-randconfig-003-20260530    clang-20
i386        buildonly-randconfig-004-20260529    gcc-12
i386        buildonly-randconfig-004-20260530    clang-20
i386        buildonly-randconfig-005-20260529    gcc-12
i386        buildonly-randconfig-005-20260530    clang-20
i386        buildonly-randconfig-006-20260529    gcc-12
i386        buildonly-randconfig-006-20260530    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260529    gcc-14
i386                  randconfig-001-20260530    clang-20
i386                  randconfig-002-20260529    gcc-14
i386                  randconfig-002-20260530    clang-20
i386                  randconfig-003-20260529    gcc-14
i386                  randconfig-003-20260530    clang-20
i386                  randconfig-004-20260529    gcc-14
i386                  randconfig-004-20260530    clang-20
i386                  randconfig-005-20260529    gcc-14
i386                  randconfig-005-20260530    clang-20
i386                  randconfig-006-20260529    gcc-14
i386                  randconfig-006-20260530    clang-20
i386                  randconfig-007-20260529    gcc-14
i386                  randconfig-007-20260530    clang-20
i386                  randconfig-011-20260529    gcc-14
i386                  randconfig-011-20260530    clang-20
i386                  randconfig-012-20260529    gcc-14
i386                  randconfig-012-20260530    clang-20
i386                  randconfig-013-20260529    gcc-14
i386                  randconfig-013-20260530    clang-20
i386                  randconfig-014-20260529    gcc-14
i386                  randconfig-014-20260530    clang-20
i386                  randconfig-015-20260529    gcc-14
i386                  randconfig-015-20260530    clang-20
i386                  randconfig-016-20260529    gcc-14
i386                  randconfig-016-20260530    clang-20
i386                  randconfig-017-20260529    gcc-14
i386                  randconfig-017-20260530    clang-20
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260530    clang-23
loongarch             randconfig-002-20260530    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260530    clang-23
nios2                 randconfig-002-20260530    clang-23
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
parisc                         randconfig-001    clang-19
parisc                randconfig-001-20260529    clang-19
parisc                randconfig-001-20260530    gcc-8.5.0
parisc                         randconfig-002    clang-19
parisc                randconfig-002-20260529    clang-19
parisc                randconfig-002-20260530    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                     mpc83xx_defconfig    clang-23
powerpc                        randconfig-001    clang-19
powerpc               randconfig-001-20260529    clang-19
powerpc               randconfig-001-20260530    gcc-8.5.0
powerpc                        randconfig-002    clang-19
powerpc               randconfig-002-20260529    clang-19
powerpc               randconfig-002-20260530    gcc-8.5.0
powerpc                    socrates_defconfig    gcc-15.2.0
powerpc64                      randconfig-001    clang-19
powerpc64             randconfig-001-20260529    clang-19
powerpc64             randconfig-001-20260530    gcc-8.5.0
powerpc64                      randconfig-002    clang-19
powerpc64             randconfig-002-20260529    clang-19
powerpc64             randconfig-002-20260530    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260530    gcc-12.5.0
riscv                 randconfig-002-20260530    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260530    gcc-12.5.0
s390                  randconfig-002-20260530    gcc-12.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260530    gcc-12.5.0
sh                    randconfig-002-20260530    gcc-12.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260529    gcc-11.5.0
sparc                 randconfig-001-20260530    gcc-9.5.0
sparc                 randconfig-002-20260529    gcc-11.5.0
sparc                 randconfig-002-20260530    gcc-9.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260529    gcc-11.5.0
sparc64               randconfig-001-20260530    gcc-9.5.0
sparc64               randconfig-002-20260529    gcc-11.5.0
sparc64               randconfig-002-20260530    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260529    gcc-11.5.0
um                    randconfig-001-20260530    gcc-9.5.0
um                    randconfig-002-20260529    gcc-11.5.0
um                    randconfig-002-20260530    gcc-9.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260529    gcc-14
x86_64      buildonly-randconfig-001-20260530    gcc-14
x86_64      buildonly-randconfig-002-20260529    gcc-14
x86_64      buildonly-randconfig-002-20260530    gcc-14
x86_64      buildonly-randconfig-003-20260529    gcc-14
x86_64      buildonly-randconfig-003-20260530    gcc-14
x86_64      buildonly-randconfig-004-20260529    gcc-14
x86_64      buildonly-randconfig-004-20260530    gcc-14
x86_64      buildonly-randconfig-005-20260529    gcc-14
x86_64      buildonly-randconfig-005-20260530    gcc-14
x86_64      buildonly-randconfig-006-20260529    gcc-14
x86_64      buildonly-randconfig-006-20260530    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                         randconfig-001    clang-20
x86_64                randconfig-001-20260529    clang-20
x86_64                randconfig-001-20260530    gcc-14
x86_64                         randconfig-002    clang-20
x86_64                randconfig-002-20260529    clang-20
x86_64                randconfig-002-20260530    gcc-14
x86_64                         randconfig-003    clang-20
x86_64                randconfig-003-20260529    clang-20
x86_64                randconfig-003-20260530    gcc-14
x86_64                         randconfig-004    clang-20
x86_64                randconfig-004-20260529    clang-20
x86_64                randconfig-004-20260530    gcc-14
x86_64                         randconfig-005    clang-20
x86_64                randconfig-005-20260529    clang-20
x86_64                randconfig-005-20260530    gcc-14
x86_64                         randconfig-006    clang-20
x86_64                randconfig-006-20260529    clang-20
x86_64                randconfig-006-20260530    gcc-14
x86_64                randconfig-011-20260529    clang-20
x86_64                randconfig-011-20260530    gcc-14
x86_64                randconfig-012-20260529    clang-20
x86_64                randconfig-012-20260530    gcc-14
x86_64                randconfig-013-20260529    clang-20
x86_64                randconfig-013-20260530    gcc-14
x86_64                randconfig-014-20260529    clang-20
x86_64                randconfig-014-20260530    gcc-14
x86_64                randconfig-015-20260529    clang-20
x86_64                randconfig-015-20260530    gcc-14
x86_64                randconfig-016-20260529    clang-20
x86_64                randconfig-016-20260530    gcc-14
x86_64                randconfig-071-20260529    clang-20
x86_64                randconfig-071-20260530    gcc-14
x86_64                randconfig-072-20260529    clang-20
x86_64                randconfig-072-20260530    gcc-14
x86_64                randconfig-073-20260529    clang-20
x86_64                randconfig-073-20260530    gcc-14
x86_64                randconfig-074-20260529    clang-20
x86_64                randconfig-074-20260530    gcc-14
x86_64                randconfig-075-20260529    clang-20
x86_64                randconfig-075-20260530    gcc-14
x86_64                randconfig-076-20260529    clang-20
x86_64                randconfig-076-20260530    gcc-14
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
xtensa                randconfig-001-20260529    gcc-11.5.0
xtensa                randconfig-001-20260530    gcc-9.5.0
xtensa                randconfig-002-20260529    gcc-11.5.0
xtensa                randconfig-002-20260530    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
