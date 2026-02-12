Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GJvGK1GjWlj0gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 04:19:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD9212A084
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 04:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01488611EF;
	Thu, 12 Feb 2026 03:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JaZOQqsyC-Fg; Thu, 12 Feb 2026 03:19:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 092E5611F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770866346;
	bh=GY8e8enWXGSfHl5dAe/7uMcd8ONj6cM0Rgs/LHjBKI4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Cvv2nhRIDmmiKFMRzsU8ToS9VvRtt50htoDhs0e7GZ1KLOHEiNpsYVCxni72q1DiA
	 oIH2H46ey/5opmHmuLHNz9FRKewKEKUjqLQVqU0ZtFLQsdWA/DM3AC7yie4OThr8b6
	 8B0y77PzRncfCm54YvN34AsmyTRD0PLWadHdRck6Vtm4aG2/cdunF4nBdfVxocPXXa
	 4ImeDJbwR9i8njS2cb03WmxuOZxWz8iB7g58aJAEHuKk55cu7QmECmT8mkazmQdIKx
	 bf5Iz1badGVYkiMo6bkaTqnU24jTZS/QJwq2sHxWH4DQQuTKCGg9/bX6EkVzWvFT3m
	 QLR5qu7B10o1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 092E5611F2;
	Thu, 12 Feb 2026 03:19:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 582441F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 03:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45DC241A4A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 03:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ke3PNMENYITv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 03:19:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 391C741969
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 391C741969
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 391C741969
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 03:19:02 +0000 (UTC)
X-CSE-ConnectionGUID: KVHOH5eMT0S58i7bk9SxmQ==
X-CSE-MsgGUID: V9uNbkPiQmek9F58Q5RDKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="83395871"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="83395871"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 19:19:02 -0800
X-CSE-ConnectionGUID: FSdtcPuCTN+CudP3G47t/A==
X-CSE-MsgGUID: LkxPJLS8TMCXmwQ6Ajisrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="211744885"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 11 Feb 2026 19:19:01 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vqNEI-00000000qb5-3cm7;
 Thu, 12 Feb 2026 03:18:58 +0000
Date: Thu, 12 Feb 2026 11:18:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602121121.U9j9H2Hd-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770866343; x=1802402343;
 h=date:from:to:subject:message-id;
 bh=c6bD3TbKf6bPhfeM3RR+3iiFbrtbqnkCP1Oz3mTGeoU=;
 b=PemlWcP19URZvhs/1zwq3Pb/8NunJcyc+jYz2NGSa5pDBD0tgZTGEv05
 pts42+vTSsbb3d2deHBVY/lr2tCrXqlCA3opAoJK39KSGoWD4rC43ETLm
 UcK1ot4l4YrpIaiAm6NC3XVa5AXnkTzleFqeG/P82iXt+KlEwcGX5hQpA
 /TMcoc+OLbkCBWORakQjez8FLJKfOmloNNVv4CC+kPbJCY/amIBMigx27
 2sJkIBKQpATMLo6tIvWfFBOvtjDGp+KUA2vVurxwbo48O70/WiAjb7zIj
 0ACqUxlTW1OFax8b1LTGppDxJtNITEeFk6K6lG8tgtwpp3ihcAEwOq8Gl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PemlWcP1
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 83310d613382f74070fc8b402f3f6c2af8439ead
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5BD9212A084
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 83310d613382f74070fc8b402f3f6c2af8439ead  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 734m

configs tested: 210
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
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                   randconfig-001-20260212    gcc-10.5.0
arc                   randconfig-001-20260212    gcc-9.5.0
arc                   randconfig-002-20260212    gcc-10.5.0
arc                   randconfig-002-20260212    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                           omap1_defconfig    gcc-15.2.0
arm                       omap2plus_defconfig    gcc-15.2.0
arm                   randconfig-001-20260212    gcc-10.5.0
arm                   randconfig-001-20260212    gcc-8.5.0
arm                   randconfig-002-20260212    gcc-10.5.0
arm                   randconfig-003-20260212    clang-22
arm                   randconfig-003-20260212    gcc-10.5.0
arm                   randconfig-004-20260212    gcc-10.5.0
arm                   randconfig-004-20260212    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260212    gcc-10.5.0
arm64                 randconfig-002-20260212    gcc-10.5.0
arm64                 randconfig-003-20260212    gcc-10.5.0
arm64                 randconfig-004-20260212    gcc-10.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                  randconfig-001-20260212    gcc-10.5.0
csky                  randconfig-002-20260212    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon               randconfig-001-20260212    clang-18
hexagon               randconfig-002-20260212    clang-18
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260212    gcc-14
i386        buildonly-randconfig-002-20260212    gcc-14
i386        buildonly-randconfig-003-20260212    gcc-14
i386        buildonly-randconfig-004-20260212    gcc-14
i386        buildonly-randconfig-005-20260212    gcc-14
i386        buildonly-randconfig-006-20260212    gcc-14
i386                  randconfig-001-20260212    clang-20
i386                  randconfig-002-20260212    clang-20
i386                  randconfig-003-20260212    clang-20
i386                  randconfig-004-20260212    clang-20
i386                  randconfig-005-20260212    clang-20
i386                  randconfig-006-20260212    clang-20
i386                  randconfig-007-20260212    clang-20
i386                  randconfig-011-20260212    gcc-12
i386                  randconfig-011-20260212    gcc-14
i386                  randconfig-012-20260212    gcc-12
i386                  randconfig-013-20260212    clang-20
i386                  randconfig-013-20260212    gcc-12
i386                  randconfig-014-20260212    clang-20
i386                  randconfig-014-20260212    gcc-12
i386                  randconfig-015-20260212    clang-20
i386                  randconfig-015-20260212    gcc-12
i386                  randconfig-016-20260212    gcc-12
i386                  randconfig-016-20260212    gcc-14
i386                  randconfig-017-20260212    clang-20
i386                  randconfig-017-20260212    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260212    clang-18
loongarch             randconfig-002-20260212    clang-18
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
mips                          ath79_defconfig    gcc-15.2.0
mips                       bmips_be_defconfig    gcc-15.2.0
mips                 decstation_r4k_defconfig    gcc-15.2.0
mips                      fuloong2e_defconfig    gcc-15.2.0
mips                           ip30_defconfig    gcc-15.2.0
mips                        omega2p_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260212    clang-18
nios2                 randconfig-002-20260212    clang-18
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260212    gcc-10.5.0
parisc                randconfig-002-20260212    gcc-10.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                 mpc8315_rdb_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260212    gcc-10.5.0
powerpc               randconfig-002-20260212    gcc-10.5.0
powerpc                    sam440ep_defconfig    gcc-15.2.0
powerpc                      tqm8xx_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260212    gcc-10.5.0
powerpc64             randconfig-002-20260212    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260212    gcc-9.5.0
riscv                 randconfig-002-20260212    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260212    gcc-9.5.0
s390                  randconfig-002-20260212    gcc-9.5.0
s390                       zfcpdump_defconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260212    gcc-9.5.0
sh                    randconfig-002-20260212    gcc-9.5.0
sh                          sdk7786_defconfig    gcc-15.2.0
sh                           se7751_defconfig    gcc-15.2.0
sh                     sh7710voipgw_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260212    gcc-13.4.0
sparc                 randconfig-002-20260212    gcc-13.4.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260212    gcc-13.4.0
sparc64               randconfig-002-20260212    gcc-13.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260212    gcc-13.4.0
um                    randconfig-002-20260212    gcc-13.4.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260212    clang-20
x86_64      buildonly-randconfig-002-20260212    clang-20
x86_64      buildonly-randconfig-003-20260212    clang-20
x86_64      buildonly-randconfig-004-20260212    clang-20
x86_64      buildonly-randconfig-005-20260212    clang-20
x86_64      buildonly-randconfig-006-20260212    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260212    clang-20
x86_64                randconfig-002-20260212    clang-20
x86_64                randconfig-003-20260212    clang-20
x86_64                randconfig-004-20260212    clang-20
x86_64                randconfig-005-20260212    clang-20
x86_64                randconfig-006-20260212    clang-20
x86_64                randconfig-071-20260212    gcc-14
x86_64                randconfig-072-20260212    gcc-14
x86_64                randconfig-073-20260212    gcc-14
x86_64                randconfig-074-20260212    gcc-14
x86_64                randconfig-075-20260212    gcc-14
x86_64                randconfig-076-20260212    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260212    gcc-13.4.0
xtensa                randconfig-002-20260212    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
