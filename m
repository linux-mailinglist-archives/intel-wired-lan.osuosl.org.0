Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4vdOBq0EvmkiFgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 03:38:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B186C2E2EDF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 03:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D99D61066;
	Sat, 21 Mar 2026 02:38:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4uMdNnP3gBb; Sat, 21 Mar 2026 02:38:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1D5B610A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774060712;
	bh=L0fUgLlVbyRpNK++elkql4ALT5eS3EWQu8vSsXwGw4c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0ncIiTPqjcTHKTe6cK3cj4O/CLDWRrkjCqBGvy9SUTve7oIlqDRxFwtDibfCJWu6q
	 RPQWJDKYPuogneCUQoNAzr/f+Tqu9COZV9Ia0e5hbxXyydfiBkqmHn5ZOAAGb2jKfc
	 mnFET8EuRMH5WsVeIYz2eHVLoRs4jScj32uofD+V/zGDUyG6jCF6ujF+l/3u3xvlzN
	 BritlEeCRNG+5ZcqU9C61aqIAW1CfNN0oltDVPesMDxexNFctEckTXqaucKhXS1R3I
	 YQFOBnaIcncdGES8YRjlOJ4KvABLULMR/OWhkJobr4o4eurx+HuUqkNN3CKCjvr4p+
	 XByLpytoeFbUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1D5B610A1;
	Sat, 21 Mar 2026 02:38:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CF14265
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 02:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3EC0C843C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 02:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34xEDVL2Wcl1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 02:38:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 366AF843B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 366AF843B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 366AF843B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 02:38:29 +0000 (UTC)
X-CSE-ConnectionGUID: ZYFhdYbhT7y6wsKLfiVmXA==
X-CSE-MsgGUID: eoKLLoBOQL67p1RrioLLlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="77756270"
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="77756270"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 19:38:29 -0700
X-CSE-ConnectionGUID: PRsExFobS9K+Gbv3xM6tCg==
X-CSE-MsgGUID: nft7uheIRGe5VLPbMkEcLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="223499739"
Received: from lkp-server02.sh.intel.com (HELO d7fefbca0d04) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 20 Mar 2026 19:38:27 -0700
Received: from kbuild by d7fefbca0d04 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w3mDy-000000000Cj-3SSi;
 Sat, 21 Mar 2026 02:38:18 +0000
Date: Sat, 21 Mar 2026 10:37:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603211033.r8Kxoeoo-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774060710; x=1805596710;
 h=date:from:to:subject:message-id;
 bh=4HtyKlzEKRtF0GOEycwf+FlfcKOqt9cyfgJ/QYbZKok=;
 b=j64ow5Apcjtuur/XFdVYXkZwCfR6z4/Der/H8I+CcwxZrYexxL88QbKW
 kPseH51pxu6ABEEuZortqhu9e5NUN1QVIEN7ZmELFEVGW4ead0UqPhI6w
 yeUeKPSXJ6N7ltYJZZcqc5RAxxOYvITt0nuRXTY6VwRgOpTXBYWJz69uW
 jk6vdAp2u7kMbhqLbhF+w9EK3Y8ghn8Jc7Pwy9nggoE5iwuyOQ1MEwioz
 XnYnySyY3+Bm2wTgTjiLIBRGW+jn+1GinXGqTF1fV0O52a3ANoMsfHM6I
 dGBnPrvAtCiZP5oE8gsp2g6RmruR9ALG0OguHFIV8lOaWR+Y1iJ/R3iF9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j64ow5Ap
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5730ca54674bac5588ff5c08ff115c64568dcabb
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: B186C2E2EDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5730ca54674bac5588ff5c08ff115c64568dcabb  ice: add ethtool reset support to safe mode ops

elapsed time: 1683m

configs tested: 147
configs skipped: 5

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
arc                   randconfig-001-20260321    gcc-14.3.0
arc                   randconfig-002-20260321    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260321    gcc-12.5.0
arm                   randconfig-002-20260321    clang-23
arm                   randconfig-003-20260321    clang-23
arm                   randconfig-004-20260321    clang-23
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260321    clang-23
arm64                 randconfig-002-20260321    clang-23
arm64                 randconfig-003-20260321    gcc-9.5.0
arm64                 randconfig-004-20260321    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260321    gcc-15.2.0
csky                  randconfig-002-20260321    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260321    clang-23
hexagon               randconfig-002-20260321    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260321    clang-20
i386        buildonly-randconfig-002-20260321    gcc-14
i386        buildonly-randconfig-003-20260321    gcc-14
i386        buildonly-randconfig-004-20260321    clang-20
i386        buildonly-randconfig-005-20260321    clang-20
i386        buildonly-randconfig-006-20260321    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260321    gcc-14
i386                  randconfig-002-20260321    gcc-14
i386                  randconfig-003-20260321    clang-20
i386                  randconfig-004-20260321    gcc-13
i386                  randconfig-005-20260321    clang-20
i386                  randconfig-006-20260321    gcc-14
i386                  randconfig-007-20260321    gcc-14
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260321    gcc-15.2.0
loongarch             randconfig-002-20260321    clang-20
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
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260321    gcc-8.5.0
nios2                 randconfig-002-20260321    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                randconfig-001-20260321    gcc-8.5.0
parisc                randconfig-002-20260321    gcc-9.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260321    clang-23
powerpc               randconfig-002-20260321    clang-23
powerpc64             randconfig-001-20260321    clang-23
powerpc64             randconfig-002-20260321    clang-23
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20260321    gcc-15.2.0
riscv                 randconfig-002-20260321    clang-18
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260321    gcc-15.2.0
s390                  randconfig-002-20260321    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260321    gcc-15.2.0
sh                    randconfig-002-20260321    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                 randconfig-001-20260321    gcc-15.2.0
sparc                 randconfig-002-20260321    gcc-14.3.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260321    clang-23
sparc64               randconfig-002-20260321    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260321    gcc-14
um                    randconfig-002-20260321    clang-23
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260321    clang-20
x86_64      buildonly-randconfig-002-20260321    gcc-13
x86_64      buildonly-randconfig-003-20260321    clang-20
x86_64      buildonly-randconfig-004-20260321    clang-20
x86_64      buildonly-randconfig-005-20260321    clang-20
x86_64      buildonly-randconfig-006-20260321    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260321    clang-20
x86_64                randconfig-002-20260321    gcc-14
x86_64                randconfig-003-20260321    clang-20
x86_64                randconfig-004-20260321    gcc-14
x86_64                randconfig-005-20260321    gcc-14
x86_64                randconfig-006-20260321    clang-20
x86_64                randconfig-011-20260321    gcc-13
x86_64                randconfig-012-20260321    gcc-14
x86_64                randconfig-013-20260321    clang-20
x86_64                randconfig-014-20260321    gcc-14
x86_64                randconfig-015-20260321    clang-20
x86_64                randconfig-016-20260321    clang-20
x86_64                randconfig-071-20260321    gcc-14
x86_64                randconfig-072-20260321    clang-20
x86_64                randconfig-073-20260321    gcc-13
x86_64                randconfig-074-20260321    gcc-14
x86_64                randconfig-075-20260321    clang-20
x86_64                randconfig-076-20260321    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260321    gcc-8.5.0
xtensa                randconfig-002-20260321    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
