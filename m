Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rErbK7c5UWoWBAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 20:28:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ACD73D5D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 20:28:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=YVtPtkv6;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0B326074D;
	Fri, 10 Jul 2026 18:28:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FVz9XgYXEYm4; Fri, 10 Jul 2026 18:28:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6F1760A5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783708083;
	bh=8/SzmBb0pRxkI8dw+WJVnKvzwQURInsF2B8x5mw8nUw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YVtPtkv6i5yl+UZgl5AlrJW5C3KUDEOT1VBlJ2OpPPQrKez2RVqpL+xOlNFLTWt5q
	 cT0VzRyV6AXIFw+0YBXfD+EpU8zTQuwjE+6XxKg6HF+xllxQeGD4GlJpZiUcesfwDs
	 kGMvEYLv7xV6i3pChyZPaCQgmLNyeLgmG8MgZTBotySnCSO0/uurTdtAI1GyYFNuni
	 Oq63WlvbdCsP4Wk38R5h86esc4tlE0ds+EdpzksEIsETB9KJ/xk+mXSx+0aSwjKbII
	 pPR/kfuaouiaYmnfVHzz8ltjkYY04ciauDcSG8Lzo0TsIM8Y3dlYkOZwiujLGi6gMf
	 EXEFAhOVu4Sww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6F1760A5C;
	Fri, 10 Jul 2026 18:28:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 86342372
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 18:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B30D409F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 18:28:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNh8Zslvci_D for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 18:28:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 89771409D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89771409D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89771409D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 18:28:00 +0000 (UTC)
X-CSE-ConnectionGUID: WXzOOCVWTL+Du5Bb55NOdw==
X-CSE-MsgGUID: +g3+2nnnSgyxSBKPQ/Qsew==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95057619"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95057619"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 11:28:00 -0700
X-CSE-ConnectionGUID: 1wD/OZEOQQyB0itRH4zKfQ==
X-CSE-MsgGUID: dmxpa0STTKWmeurfqa8JUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="250529810"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 10 Jul 2026 11:27:59 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wiFx7-00000000JEq-1hrF;
 Fri, 10 Jul 2026 18:27:57 +0000
Date: Sat, 11 Jul 2026 02:27:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607110256.2JTSdui2-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783708082; x=1815244082;
 h=date:from:to:subject:message-id;
 bh=kuiJBmCF4qSAa8CR0aFNY8MCdHZbSgm3cdg6NQuhvVY=;
 b=INcC6c9RqSBhqEB5WXY/rwMVLLo3xNSpO0CPXs/+uJwbBhLQdq0W8gF+
 pHVQdqvpH7HJuzASGukRbXfDC86DnZMlrzTqtEnHHKccDP5ErgKoTC/Ub
 r4GNaHCxy16v+XrgEVJ2cSJpjcA8B9eKCx3FbKuNUywdp+0LdAgJp/IYo
 0Ot2pK0xLghMeGCPTjtlEfWKPxxKqIMfrSLy6jF5OrDt6GdnojvjdhGjx
 9qF6PuVLNDYMbSwL6sjw3IZl/Z27O04TAjGhbJugAuwcq+smKjQhmq6Xd
 zi65bX3sNjcrMZqNaV0tSROpJgsaoakmkA1y/XUe/qQweWDoNIEXQZee2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=INcC6c9R
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 570e378a93d32abe5d2d0b5c252289f2f7a37983
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:from_smtp,osuosl.org:dkim,final.cc:url];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61ACD73D5D1

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 570e378a93d32abe5d2d0b5c252289f2f7a37983  ice: use ACL for ntuple rules that conflict with FDir

Unverified Error/Warning (likely false positive, kindly check if interested):

    drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1206:1: internal compiler error: in final_scan_insn_1, at final.cc:2823
    drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c:438:1: internal compiler error: in final_scan_insn_1, at final.cc:2823

Error/Warning ids grouped by kconfigs:

recent_errors
`-- csky-allmodconfig
    |-- drivers-net-ethernet-intel-idpf-idpf_virtchnl.c:internal-compiler-error:in-final_scan_insn_1-at-final.cc
    `-- drivers-net-ethernet-intel-idpf-idpf_virtchnl_ptp.c:internal-compiler-error:in-final_scan_insn_1-at-final.cc

elapsed time: 744m

configs tested: 208
configs skipped: 10

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260710    gcc-12.5.0
arc                   randconfig-002-20260710    gcc-10.5.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260710    gcc-8.5.0
arm                   randconfig-002-20260710    gcc-16.1.0
arm                   randconfig-003-20260710    clang-23
arm                   randconfig-004-20260710    clang-23
arm                       spear13xx_defconfig    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260710    gcc-8.5.0
arm64                 randconfig-002-20260710    gcc-8.5.0
arm64                 randconfig-003-20260710    gcc-16.1.0
arm64                 randconfig-004-20260710    gcc-8.5.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260710    gcc-10.5.0
csky                  randconfig-002-20260710    gcc-16.1.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260710    clang-23
hexagon               randconfig-001-20260711    gcc-16.1.0
hexagon               randconfig-002-20260710    clang-20
hexagon               randconfig-002-20260711    gcc-16.1.0
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260710    clang-22
i386                 buildonly-randconfig-002    clang-22
i386        buildonly-randconfig-002-20260710    gcc-14
i386                 buildonly-randconfig-003    clang-22
i386        buildonly-randconfig-003-20260710    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260710    clang-22
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260710    clang-22
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260710    clang-22
i386                                defconfig    clang-22
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260710    gcc-14
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260710    clang-22
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260710    gcc-14
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260710    clang-22
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260710    gcc-14
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260710    clang-22
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260710    clang-22
i386                  randconfig-011-20260710    gcc-14
i386                  randconfig-012-20260710    clang-22
i386                  randconfig-013-20260710    gcc-14
i386                  randconfig-014-20260710    gcc-14
i386                  randconfig-015-20260710    clang-22
i386                  randconfig-016-20260710    gcc-14
i386                  randconfig-017-20260710    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260710    gcc-12.5.0
loongarch             randconfig-001-20260711    gcc-16.1.0
loongarch             randconfig-002-20260710    clang-18
loongarch             randconfig-002-20260711    gcc-16.1.0
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
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260710    gcc-8.5.0
nios2                 randconfig-001-20260711    gcc-16.1.0
nios2                 randconfig-002-20260710    gcc-8.5.0
nios2                 randconfig-002-20260711    gcc-16.1.0
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260710    gcc-9.5.0
parisc                randconfig-002-20260710    gcc-11.5.0
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc               randconfig-001-20260710    gcc-14.3.0
powerpc               randconfig-002-20260710    clang-17
powerpc64             randconfig-001-20260710    clang-23
powerpc64             randconfig-002-20260710    clang-17
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    gcc-13.4.0
riscv                 randconfig-001-20260710    clang-17
riscv                          randconfig-002    clang-17
riscv                 randconfig-002-20260710    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    gcc-15.2.0
s390                  randconfig-001-20260710    gcc-9.5.0
s390                           randconfig-002    clang-18
s390                  randconfig-002-20260710    gcc-8.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-16.1.0
sh                             randconfig-001    gcc-14.3.0
sh                    randconfig-001-20260710    gcc-16.1.0
sh                             randconfig-002    gcc-9.5.0
sh                    randconfig-002-20260710    gcc-12.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260710    gcc-15.2.0
sparc                 randconfig-002-20260710    gcc-13.4.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64               randconfig-001-20260710    gcc-15.2.0
sparc64               randconfig-002-20260710    gcc-13.4.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260710    gcc-14
um                    randconfig-002-20260710    clang-23
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260710    gcc-14
x86_64      buildonly-randconfig-002-20260710    clang-22
x86_64      buildonly-randconfig-003-20260710    clang-22
x86_64      buildonly-randconfig-004-20260710    clang-22
x86_64      buildonly-randconfig-005-20260710    clang-22
x86_64      buildonly-randconfig-006-20260710    clang-22
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260710    clang-22
x86_64                randconfig-002-20260710    gcc-14
x86_64                randconfig-003-20260710    gcc-14
x86_64                randconfig-004-20260710    clang-22
x86_64                randconfig-005-20260710    gcc-14
x86_64                randconfig-006-20260710    clang-22
x86_64                randconfig-011-20260710    gcc-14
x86_64                randconfig-012-20260710    gcc-14
x86_64                randconfig-013-20260710    clang-22
x86_64                randconfig-014-20260710    clang-22
x86_64                randconfig-015-20260710    gcc-14
x86_64                randconfig-016-20260710    clang-22
x86_64                randconfig-071-20260710    clang-22
x86_64                randconfig-072-20260710    gcc-14
x86_64                randconfig-073-20260710    gcc-14
x86_64                randconfig-074-20260710    clang-22
x86_64                randconfig-075-20260710    clang-22
x86_64                randconfig-076-20260710    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    gcc-16.1.0
xtensa                randconfig-002-20260710    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
