Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAIOBKVL3mmwqAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 16:13:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F373FAF2C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 16:13:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E49884C02;
	Tue, 14 Apr 2026 14:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 39JonF4n6qka; Tue, 14 Apr 2026 14:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C793884C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776176027;
	bh=PsiRZn/kd/7/CzenQhyiDRn1OPjBEdfyRnARD42PaGs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a/UnXnT3cvsEIqA2T1zvjhxXR8zOdzbUikbJC2aULiG1IVFtzhV2FgcTQye59RkpH
	 FOywVWwianm8ySi6knyjpifI+NqlZu7uJm16NLM+9fCv4O2q7rEyo26buVOaVh7Z6r
	 fWqr/dZ3yOIie9/3SdVf/LZjB0tZ34jTItFbOmi7Y6lidpB/5nd3Wvhznx8c4sxl59
	 IBP2/g0rNhXH6yfcH2tN4eQfvp5kCE8VygrToKPiyG0o8MdXoJO+3Dk+GICL+HHF+P
	 bPOLLHUarLvyGAn2d7tHnXtaUGbF1zOOTtN3+FPhdWu6afu9XOE1eeRpy/orK38zBU
	 k9klGV4uStCFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C793884C03;
	Tue, 14 Apr 2026 14:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AF78283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 14:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B92C84C00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 14:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-8ukF_NNodd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 14:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 368D384BFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 368D384BFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 368D384BFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 14:13:44 +0000 (UTC)
X-CSE-ConnectionGUID: w/OY6z0LRKSjKPo2fHEPnw==
X-CSE-MsgGUID: Hk1gLryeT/OyHL1h4cZ6Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77157384"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77157384"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:13:44 -0700
X-CSE-ConnectionGUID: js0rhQfTRka/H4AE5gEOrw==
X-CSE-MsgGUID: K+T0LmXVRqqLFmRTiylsVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="231856565"
Received: from lkp-server01.sh.intel.com (HELO 7b0b59b3a0d4) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 14 Apr 2026 07:13:43 -0700
Received: from kbuild by 7b0b59b3a0d4 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wCeWL-000000001Vh-01Wt;
 Tue, 14 Apr 2026 14:13:41 +0000
Date: Tue, 14 Apr 2026 22:13:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604142217.0qX5hFez-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776176025; x=1807712025;
 h=date:from:to:subject:message-id;
 bh=PJc6kjS7hEzFFkSE09wScl/pKbgla2u0e880EAZQFxI=;
 b=lt06IuznhsShnT1FrsGmO/pEGmKpnZAuVRi5m2lG+2bcJ5nibIuPCI1T
 CO5iKriGzBW538M+yCdeLEW1CDXosoWPUW/YmfnBdrqqW662s3cCgisYP
 wHbTYw9a6OEjnyvVA08MrU5sETid2rDv/1I5Iw0sh1gRAaIAH/OVN8WvI
 mw9ml0fvZSLzHwc6nu96xNjKuvwyW/WIfS9+qarNrIiiCxDXfk3MmV2Fx
 bjGN7JSqiF162tachQ1hPxqPO6oKufccvmhO4nGu2BUiOUN0QS7COTol6
 T7k6pD+mt3FgWAg2FTavm6Bxs31z03jZBi8XqLXFxliXzFexRfOVwlFIY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lt06Iuzn
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 8ec9d2a106fb8ea62ba953e5965752e78b6640d3
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
	NEURAL_HAM(-0.00)[-0.998];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 90F373FAF2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 8ec9d2a106fb8ea62ba953e5965752e78b6640d3  ice: add support for transmitting unreadable frags

elapsed time: 794m

configs tested: 72
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260414    clang-20
i386        buildonly-randconfig-002-20260414    clang-20
i386        buildonly-randconfig-003-20260414    gcc-14
i386        buildonly-randconfig-004-20260414    gcc-14
i386        buildonly-randconfig-005-20260414    gcc-14
i386        buildonly-randconfig-006-20260414    gcc-14
i386                  randconfig-011-20260414    clang-20
i386                  randconfig-014-20260414    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                randconfig-001-20260414    gcc-8.5.0
parisc                randconfig-002-20260414    gcc-14.3.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260414    gcc-8.5.0
powerpc               randconfig-002-20260414    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260414    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                 randconfig-001-20260414    gcc-15.2.0
sparc                 randconfig-002-20260414    gcc-14.3.0
sparc64                          allmodconfig    clang-23
sparc64               randconfig-001-20260414    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                             i386_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
