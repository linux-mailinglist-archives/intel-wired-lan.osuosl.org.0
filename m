Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCpJOBbUcGkOaAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 14:26:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B6357827
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 14:26:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B84784A99;
	Wed, 21 Jan 2026 13:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ju25HgrGibWJ; Wed, 21 Jan 2026 13:26:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BCB784A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769002002;
	bh=rN9u0/0nyaqOtNbC6fWp2AhsSFo3C5uIqQEnS4wh2e0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ir1sBuywhTtU9SEy7EYBYfRk2KX6jHENjp5LPx6J5Y7OzazGeX2QO86XMVNRGs4+t
	 m0tIRSHyxMXK1xVm06bgENTTouFcEpbpBT2OhhimbsoYKGT/LVPzQH5B2tr146nYYc
	 tKaOZl5XljuRhTSZgqwRJNdXMK4tjJCBKX/zDJclsZiaGdvU7hfwty++DUfhYFP/Xz
	 z0WiL0iQfXGkDwMsrBlKxP8jbY6+DUzS42oIX2vgmVASC273pkeeNnoGUxXKqEGAV3
	 K3WOE2njg89KkcnXnOCABI8arNPlajPrtFUFmT4MFwlZLovTWni6rioeCvoF9qmQDD
	 cPkHov7KjnJLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BCB784A95;
	Wed, 21 Jan 2026 13:26:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 07A66169
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 13:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD40F40BA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 13:26:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JAC9Skxjhovt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 13:26:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A7F9409F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A7F9409F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A7F9409F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 13:26:39 +0000 (UTC)
X-CSE-ConnectionGUID: URFwlTZRTw6nD7caJgifrw==
X-CSE-MsgGUID: WUihQSWDScWifzK1o26EIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81672023"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81672023"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 05:26:39 -0800
X-CSE-ConnectionGUID: O06nGDGTQIqvgzAxlcfMWQ==
X-CSE-MsgGUID: iX9aElFfSqW18WenOBIKjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206687262"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 21 Jan 2026 05:26:38 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1viYEF-00000000RFz-3Sdo;
 Wed, 21 Jan 2026 13:26:35 +0000
Date: Wed, 21 Jan 2026 21:25:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601212146.2iMwIe3D-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769001999; x=1800537999;
 h=date:from:to:subject:message-id;
 bh=M4t8cCKxzjdhdeXALCrQgH2PxGS7+XjbsAc5ZN48exQ=;
 b=Fv+MUcWs7VlCIOiH6l8fhjyn6/9Z98o2jtxnGwZAqyDkAtX1LLBsJMi+
 bK0w28h2cuYmuvAF0P885OO5i1yaKyCSs/oVmDdQl/t+NyQF4mnI1att+
 kYth1Xy+k/wJ4T/dmYQsV+b+Xnjm86OE9ltLdxWVOUeDS7jV/WQYLReYu
 6XRh1z5Sn0LnSpvzLjWvXJCcpZU7ALryOX28zJNykRnvVZmvTgur+HPCP
 jk8pH/d/ixn/sbVqo8/8yzdvVC/eSBlgaIfkCGuYw/+J0AMWYn/8ReuPo
 p1pADlPmOR3g8u3dzT31tE9CSeRRrPUhleoy/Q14TmwX4oF0tXlNXNZSz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fv+MUcWs
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a1bcf196e62a143297e0ae3a333c7b3e6acf9e62
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: 33B6357827
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: a1bcf196e62a143297e0ae3a333c7b3e6acf9e62  ice: fix retry for AQ command 0x06EE

elapsed time: 989m

configs tested: 148
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260121    gcc-8.5.0
arc                   randconfig-002-20260121    gcc-10.5.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.2.0
arm                         mv78xx0_defconfig    clang-19
arm                   randconfig-001-20260121    clang-20
arm                   randconfig-002-20260121    gcc-15.2.0
arm                   randconfig-003-20260121    clang-18
arm                   randconfig-004-20260121    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260121    gcc-15.2.0
arm64                 randconfig-002-20260121    clang-22
arm64                 randconfig-003-20260121    clang-22
arm64                 randconfig-004-20260121    gcc-12.5.0
csky                              allnoconfig    gcc-15.2.0
csky                  randconfig-001-20260121    gcc-9.5.0
csky                  randconfig-002-20260121    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon               randconfig-002-20260121    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260121    clang-20
i386        buildonly-randconfig-002-20260121    gcc-14
i386        buildonly-randconfig-003-20260121    gcc-13
i386        buildonly-randconfig-004-20260121    clang-20
i386        buildonly-randconfig-005-20260121    clang-20
i386        buildonly-randconfig-006-20260121    clang-20
i386                  randconfig-001-20260121    gcc-14
i386                  randconfig-002-20260121    clang-20
i386                  randconfig-003-20260121    clang-20
i386                  randconfig-004-20260121    clang-20
i386                  randconfig-005-20260121    gcc-14
i386                  randconfig-006-20260121    clang-20
i386                  randconfig-007-20260121    clang-20
i386                  randconfig-011-20260121    gcc-14
i386                  randconfig-012-20260121    gcc-14
i386                  randconfig-013-20260121    clang-20
i386                  randconfig-014-20260121    gcc-12
i386                  randconfig-015-20260121    gcc-14
i386                  randconfig-016-20260121    gcc-14
i386                  randconfig-017-20260121    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260121    gcc-15.2.0
loongarch             randconfig-002-20260121    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
m68k                        mvme16x_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260121    gcc-11.5.0
nios2                 randconfig-002-20260121    gcc-10.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260121    gcc-9.5.0
parisc                randconfig-002-20260121    gcc-13.4.0
parisc64                            defconfig    gcc-15.2.0
powerpc                    adder875_defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                 linkstation_defconfig    clang-20
powerpc               randconfig-001-20260121    clang-22
powerpc               randconfig-002-20260121    clang-22
powerpc64             randconfig-001-20260121    clang-22
powerpc64             randconfig-002-20260121    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20260121    clang-16
riscv                 randconfig-002-20260121    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                  randconfig-001-20260121    gcc-9.5.0
s390                  randconfig-002-20260121    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                         apsh4a3a_defconfig    gcc-15.2.0
sh                    randconfig-001-20260121    gcc-14.3.0
sh                    randconfig-002-20260121    gcc-9.5.0
sh                           se7343_defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260121    gcc-8.5.0
sparc                 randconfig-002-20260121    gcc-8.5.0
sparc                       sparc64_defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-22
sparc64               randconfig-001-20260121    gcc-13.4.0
sparc64               randconfig-002-20260121    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20260121    gcc-14
um                    randconfig-002-20260121    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260121    clang-20
x86_64      buildonly-randconfig-002-20260121    gcc-14
x86_64      buildonly-randconfig-003-20260121    clang-20
x86_64      buildonly-randconfig-004-20260121    clang-20
x86_64      buildonly-randconfig-005-20260121    gcc-13
x86_64      buildonly-randconfig-006-20260121    clang-20
x86_64                randconfig-002-20260121    gcc-14
x86_64                randconfig-011-20260121    gcc-14
x86_64                randconfig-012-20260121    clang-20
x86_64                randconfig-013-20260121    gcc-14
x86_64                randconfig-014-20260121    gcc-14
x86_64                randconfig-015-20260121    clang-20
x86_64                randconfig-016-20260121    gcc-14
x86_64                randconfig-071-20260121    clang-20
x86_64                randconfig-072-20260121    clang-20
x86_64                randconfig-073-20260121    clang-20
x86_64                randconfig-074-20260121    clang-20
x86_64                randconfig-075-20260121    clang-20
x86_64                randconfig-076-20260121    gcc-13
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260121    gcc-14.3.0
xtensa                randconfig-002-20260121    gcc-8.5.0
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
