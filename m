Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SF1hIXkksGnYgQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 15:02:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FF825137A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 15:02:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAFAF608AF;
	Tue, 10 Mar 2026 14:02:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XzYGhGuLX_t0; Tue, 10 Mar 2026 14:02:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D9FC60ADB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773151339;
	bh=CHlzQh7/TpJFCrOZLC2sW9pEZRERCR8lAindhTbl7Lk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nyahZC5qjYYYuIc21lI2aPXvy4Lfs/8p1uoDz/I9VgObIhmh8ZACDW2/KoJxNUxeE
	 NAS4qK0vME5NoWZIhqVQHvHfm11D8IQjZhOALTDb3kFRa9EN8sA2EiFB62tegNt07G
	 o1HYh+ZOekh4lm7MairvISg4hI1AkBtR9PkJ7hmUhyO89thKPOFRYa3wK4tAxG9AOq
	 7IJjdfVGNlIl+nXUvzzO8/155pZGLrIza+b6dxaoOPf6p/mjkbfmHhxxBDpgkcuBsA
	 KhT2Kc9U5fcVc4AV6t2B1xkLJj61o6+d+N99kT4rTWfh2zZaHD8rg0YXHfKL6gohFf
	 Uw7lL6gRPerKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D9FC60ADB;
	Tue, 10 Mar 2026 14:02:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D6544B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAA2680BFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:02:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VC7Z4e4Q_vIe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 14:02:16 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EF2F8826B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF2F8826B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF2F8826B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:01:54 +0000 (UTC)
X-CSE-ConnectionGUID: JjlCz0NRRMy3OHHfnVZvng==
X-CSE-MsgGUID: ad0nfZ4hS0StJPzYTlpieg==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74115493"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="74115493"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 07:01:52 -0700
X-CSE-ConnectionGUID: loNXMAZbTVqhoZyuGXncyQ==
X-CSE-MsgGUID: ps3BIYSATb2pDVh4iWwaEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="219364250"
Received: from lkp-server01.sh.intel.com (HELO 434e41ea3c86) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 10 Mar 2026 07:01:51 -0700
Received: from kbuild by 434e41ea3c86 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vzxee-0000000021x-2JwA;
 Tue, 10 Mar 2026 14:01:48 +0000
Date: Tue, 10 Mar 2026 22:01:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603102221.o6ItUMDD-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773151335; x=1804687335;
 h=date:from:to:subject:message-id;
 bh=+M+ShUijy52CNWXRXRN/bKcfJf9CNZOQoU/SBXTP1lA=;
 b=nrxscMBMB15RsHuhCxwU4R2up6bG22Tb0lMPGZOsPXUNYj7jFcEOx622
 NaKkaB8Xl+dsIcChvniPEVGOONAOktJjUvSfbe9PENC4QrIH2S2CTIWt+
 fMf1UsaQaKwhC1Z5JkCdqu33tfmSy1QaDt/76m+byU3LoLxUm24u2yWSx
 ZxklEOQ9A5ZI+EG7Q8t3I4QdTn5VWnQus0jZxcxOO7UIS6YIqnNrqCyO6
 oL+oTvw8Mqw3WKXxpuDCE/UvfPUWqNnd74L7k/jZF6LedkjUvPS/sWfFV
 yAv2pgLvLtp7h+TEcpZsnM8py808V4PRkDHe7j16Sso552uJ/sYCrIIBa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nrxscMBM
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 c899a72257c23010c6a068de16934841e42c36af
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
X-Rspamd-Queue-Id: 92FF825137A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN_FAIL(0.00)[6.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	RSPAMD_URIBL_FAIL(0.00)[osuosl.org:query timed out];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: c899a72257c23010c6a068de16934841e42c36af  igc: fix typos in comments

elapsed time: 872m

configs tested: 159
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260310    gcc-9.5.0
arc                   randconfig-002-20260310    gcc-15.2.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260310    clang-23
arm                   randconfig-002-20260310    gcc-12.5.0
arm                   randconfig-003-20260310    gcc-10.5.0
arm                   randconfig-004-20260310    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260310    clang-16
arm64                 randconfig-002-20260310    gcc-13.4.0
arm64                 randconfig-003-20260310    gcc-11.5.0
arm64                 randconfig-004-20260310    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260310    gcc-15.2.0
csky                  randconfig-002-20260310    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260310    clang-23
hexagon               randconfig-002-20260310    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260310    gcc-14
i386        buildonly-randconfig-002-20260310    clang-20
i386        buildonly-randconfig-003-20260310    gcc-14
i386        buildonly-randconfig-004-20260310    gcc-14
i386        buildonly-randconfig-005-20260310    gcc-14
i386        buildonly-randconfig-006-20260310    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20260310    gcc-14
i386                  randconfig-002-20260310    gcc-14
i386                  randconfig-003-20260310    clang-20
i386                  randconfig-004-20260310    clang-20
i386                  randconfig-005-20260310    gcc-14
i386                  randconfig-006-20260310    gcc-14
i386                  randconfig-007-20260310    gcc-12
i386                  randconfig-011-20260310    gcc-14
i386                  randconfig-012-20260310    clang-20
i386                  randconfig-013-20260310    gcc-14
i386                  randconfig-014-20260310    clang-20
i386                  randconfig-015-20260310    clang-20
i386                  randconfig-016-20260310    gcc-14
i386                  randconfig-017-20260310    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260310    gcc-13.4.0
loongarch             randconfig-002-20260310    clang-18
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                           mtx1_defconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260310    gcc-11.5.0
nios2                 randconfig-002-20260310    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260310    gcc-14.3.0
parisc                randconfig-002-20260310    gcc-13.4.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260310    gcc-9.5.0
powerpc               randconfig-002-20260310    clang-23
powerpc64             randconfig-001-20260310    gcc-15.2.0
powerpc64             randconfig-002-20260310    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260310    clang-19
riscv                 randconfig-002-20260310    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260310    gcc-9.5.0
s390                  randconfig-002-20260310    clang-19
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260310    gcc-15.2.0
sh                    randconfig-002-20260310    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260310    gcc-15.2.0
sparc                 randconfig-002-20260310    gcc-12.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260310    clang-20
sparc64               randconfig-002-20260310    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260310    gcc-14
um                    randconfig-002-20260310    clang-23
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260310    gcc-14
x86_64      buildonly-randconfig-002-20260310    gcc-14
x86_64      buildonly-randconfig-003-20260310    gcc-12
x86_64      buildonly-randconfig-004-20260310    gcc-12
x86_64      buildonly-randconfig-005-20260310    gcc-14
x86_64      buildonly-randconfig-006-20260310    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260310    gcc-14
x86_64                randconfig-002-20260310    clang-20
x86_64                randconfig-003-20260310    clang-20
x86_64                randconfig-004-20260310    clang-20
x86_64                randconfig-005-20260310    clang-20
x86_64                randconfig-006-20260310    gcc-14
x86_64                randconfig-011-20260310    gcc-14
x86_64                randconfig-012-20260310    clang-20
x86_64                randconfig-013-20260310    gcc-14
x86_64                randconfig-014-20260310    clang-20
x86_64                randconfig-015-20260310    gcc-14
x86_64                randconfig-016-20260310    clang-20
x86_64                randconfig-071-20260310    clang-20
x86_64                randconfig-072-20260310    clang-20
x86_64                randconfig-073-20260310    clang-20
x86_64                randconfig-074-20260310    gcc-14
x86_64                randconfig-075-20260310    gcc-14
x86_64                randconfig-076-20260310    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260310    gcc-15.2.0
xtensa                randconfig-002-20260310    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
