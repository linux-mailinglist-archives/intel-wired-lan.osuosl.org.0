Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPM8MUBKrGn+oQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 16:54:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F281F22C8FB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 16:54:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 313BA8419E;
	Sat,  7 Mar 2026 15:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d3WJd39oWOVF; Sat,  7 Mar 2026 15:54:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 661D58419C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772898876;
	bh=Oo0dybX0cuqc9UIb5UF1Oeg8Nmeu3d/yTl5eh4qsI84=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1scKnTMrMnrsQfaR68Xti1JIDRQ8tnY3Yj5Oz7+HosCrUnZkxRprjQp1LJj6L0oCa
	 mIE7nZXXxQOCUTlIvJA7K36/P20HfdoEoQTAdfDEDn41knlZ/3KmIXMAvmgzB+wf+o
	 6sjo4euIPZm7tkngm/MFcLkFOPoK0NojJHMd20gVqqPnHaRSKyhg4UgZiq99u75kCM
	 JNjgcA33P08VRYNiuhZ4L6eR+dc+bEE4dJFdUP68oAeFFJ4UDCCiTgCMnOYC9vc9k7
	 USwdlTQXUXwOGzcvnWwlur4AaS4FEGDeg/C5CLw/IduzG0mB4Pd3CsV+zod5jzsxrF
	 1JqYN2I8CREdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 661D58419C;
	Sat,  7 Mar 2026 15:54:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AC66169
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 15:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4825941D7C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 15:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bjv0wdIcVF7t for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2026 15:54:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E79B41D7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E79B41D7B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E79B41D7B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 15:54:30 +0000 (UTC)
X-CSE-ConnectionGUID: yyJPKZlfR7+qFnz7lcck/w==
X-CSE-MsgGUID: 8Duz+vF7SlSqeog83+6swA==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="99455075"
X-IronPort-AV: E=Sophos;i="6.23,107,1770624000"; d="scan'208";a="99455075"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2026 07:54:29 -0800
X-CSE-ConnectionGUID: 3eZgd8kwSQGIN0vyCJvdYA==
X-CSE-MsgGUID: XmeAJAJhR9+naiWMAl4ksA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,107,1770624000"; d="scan'208";a="242316665"
Received: from lkp-server01.sh.intel.com (HELO 058beb05654c) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 07 Mar 2026 07:54:28 -0800
Received: from kbuild by 058beb05654c with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vytz0-0000000028H-1Qr5;
 Sat, 07 Mar 2026 15:54:26 +0000
Date: Sat, 07 Mar 2026 23:53:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603072346.QvOGtb5S-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772898872; x=1804434872;
 h=date:from:to:subject:message-id;
 bh=p4Dfba/ruYXO+GP2YDsHkNVTI7fX57gq7B/VVJ9I3fE=;
 b=bstq29kQOBNAcZ8wzPJkUu4oO04tXo+dHRjdUll03hSKBsSOcxYpCyKw
 wYpgcePrLSXQcxPR7KnsY7sm+Qc5OjePdTuG0fCMwyE/PvTdA9i3Q+Sob
 10WGZJIh49qIFn6RLr2h8BEC2N7cltwTlA0m0iAWYPzedpYXZIlJ2Kpdv
 wyHLQ19dUywt5wHQ3r1uHewOcWnnS6mi4J62oLHtb5LjlZbIz9WsMt1Gw
 4Cc7UOrEpB119OojWrlmipNEu1WSpJ7yaqB+V7eWjFKtOzbPKLQ3Z1gsx
 D+9/roeEUR7yVRjgq04Fg5+Fw573f5ZmWNboHGuR6UE7bxiuc+Em9gGLf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bstq29kQ
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 5dec0c89c5ca699ba55e8427a5ae5b108592f3b2
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
X-Rspamd-Queue-Id: F281F22C8FB
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 5dec0c89c5ca699ba55e8427a5ae5b108592f3b2  ice: add support for transmitting unreadable frags

elapsed time: 1002m

configs tested: 118
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                   randconfig-001-20260307    gcc-14.3.0
arc                   randconfig-002-20260307    gcc-14.3.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260307    gcc-8.5.0
arm64                 randconfig-002-20260307    gcc-11.5.0
arm64                 randconfig-003-20260307    gcc-15.2.0
arm64                 randconfig-004-20260307    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                  randconfig-001-20260307    gcc-15.2.0
csky                  randconfig-002-20260307    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon               randconfig-001-20260307    clang-23
hexagon               randconfig-002-20260307    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    gcc-14
i386                  randconfig-011-20260307    clang-20
i386                  randconfig-012-20260307    clang-20
i386                  randconfig-013-20260307    clang-20
i386                  randconfig-014-20260307    clang-20
i386                  randconfig-015-20260307    gcc-14
i386                  randconfig-016-20260307    gcc-14
i386                  randconfig-017-20260307    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch             randconfig-001-20260307    gcc-15.2.0
loongarch             randconfig-002-20260307    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20260307    gcc-10.5.0
nios2                 randconfig-002-20260307    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                randconfig-001-20260307    gcc-12.5.0
parisc                randconfig-002-20260307    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260307    gcc-8.5.0
powerpc               randconfig-002-20260307    gcc-11.5.0
powerpc64             randconfig-001-20260307    gcc-8.5.0
powerpc64             randconfig-002-20260307    gcc-12.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20260307    clang-17
riscv                 randconfig-002-20260307    clang-23
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260307    clang-23
s390                  randconfig-002-20260307    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                    randconfig-001-20260307    gcc-15.2.0
sh                    randconfig-002-20260307    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                 randconfig-001-20260307    gcc-15.2.0
sparc                 randconfig-002-20260307    gcc-11.5.0
sparc64                          allmodconfig    clang-23
sparc64               randconfig-001-20260307    clang-23
sparc64               randconfig-002-20260307    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                    randconfig-001-20260307    gcc-14
um                    randconfig-002-20260307    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260307    gcc-14
x86_64      buildonly-randconfig-002-20260307    gcc-14
x86_64      buildonly-randconfig-003-20260307    gcc-14
x86_64      buildonly-randconfig-004-20260307    clang-20
x86_64      buildonly-randconfig-005-20260307    clang-20
x86_64      buildonly-randconfig-006-20260307    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260307    gcc-8.5.0
xtensa                randconfig-002-20260307    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
