Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zWyFFwgK0WlBEAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Apr 2026 14:54:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE44939B1C6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Apr 2026 14:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADA6640C92;
	Sat,  4 Apr 2026 12:54:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O4bKLcgM-LDU; Sat,  4 Apr 2026 12:54:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF67B40CB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775307266;
	bh=7GXHMNPVfdzLsJl9sVsXOsIp1BXUqdP3RSTlih4psPk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UrNfyLIFVP1f5K1bwjlaIVtOTQS/D8cBFyw1gm60ATtaeD4b6Na/hhZY5yU/S5daP
	 7JFhUmmTVyNpgJ9+l4GZqOJc8aRTTVirPmXztkzIlmeS9NQABhKvwqI864zrWJoJLH
	 jndRBGwoH9l1oa3gFKCSkvv/3y78AwoCofaLLN1vEvIuDu4eD25QVIqo7HOdN1vz5J
	 VDgth7aSw1rQDDpXYpyqE4lif3wGw7lG4Q5aASApQjaclwkZYmc8q7DTE54w9L/FJs
	 86Xvg4k+FIKF8Zprk3Zwbe70cs5WdlyHoTuAT8ziQ//Z1NNjwp7N4cpoTXxQPcEFtz
	 5XrdJAGBelHkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF67B40CB0;
	Sat,  4 Apr 2026 12:54:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E749F2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2026 12:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6019B8145A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2026 12:54:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 17LkJVzClGBA for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Apr 2026 12:54:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3F0E881459
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F0E881459
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F0E881459
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Apr 2026 12:54:23 +0000 (UTC)
X-CSE-ConnectionGUID: fiHQ9pByS0urJZFJyxZcvg==
X-CSE-MsgGUID: bEcCbEfqTneUbFts/DvtJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11748"; a="98959397"
X-IronPort-AV: E=Sophos;i="6.23,159,1770624000"; d="scan'208";a="98959397"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2026 05:54:24 -0700
X-CSE-ConnectionGUID: 9fW5Co98QWOAzKVRvux86g==
X-CSE-MsgGUID: kxAEGPUpSXi+W2bzbT9CVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,159,1770624000"; d="scan'208";a="231508271"
Received: from lkp-server01.sh.intel.com (HELO 3afb7d003cac) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 04 Apr 2026 05:54:22 -0700
Received: from kbuild by 3afb7d003cac with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w90W3-000000000gn-1zjg;
 Sat, 04 Apr 2026 12:54:19 +0000
Date: Sat, 04 Apr 2026 20:53:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604042034.IeH8J9ld-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775307265; x=1806843265;
 h=date:from:to:subject:message-id;
 bh=J2UvC+2XK4uZhvoXFe3hX2E+QntU4wXGmUW0yvFz3bU=;
 b=NKXnqjYqyDoC3BBZ7wC4Nm4zO/EeVcsxBNWneLdBhrAGt6/SHTzDURac
 0ARnPZwNEJALwlo/uWdUVWFwTA/lYQH5ebnCq6brWs2fh8fFRlZHydMWH
 Ze6PZvmcuJIPKDXdPqkVk1VMy9y1CEBKvZ7B9Me6+XyYv2+8C31rrkb//
 Nxi/9zlJM88GQKpYFTLFm9GYwZ8TUBC2pLxOGBpHTDtgwu5kB2hTKS0WA
 Kf2joZR2xJU8KVSuIDSxmwmSInknmb8nKMLqG8Kh6wO9sYGPQ9gsHnEOX
 UE/CySOkfcXc+1+sQjbEiuenCbczwmbVcl8WIT35KqnMhIPYnKglGoOjH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NKXnqjYq
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5a955ba394ed281fafa523522a7d5f9f47ba9c55
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
X-Rspamd-Queue-Id: DE44939B1C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5a955ba394ed281fafa523522a7d5f9f47ba9c55  ixgbe: use int instead of u32 for error code variables

elapsed time: 902m

configs tested: 158
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
arc                   randconfig-001-20260404    gcc-8.5.0
arc                   randconfig-002-20260404    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260404    gcc-14.3.0
arm                   randconfig-002-20260404    gcc-15.2.0
arm                   randconfig-003-20260404    gcc-10.5.0
arm                   randconfig-004-20260404    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260404    gcc-8.5.0
arm64                 randconfig-002-20260404    gcc-8.5.0
arm64                 randconfig-003-20260404    clang-23
arm64                 randconfig-004-20260404    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260404    gcc-9.5.0
csky                  randconfig-002-20260404    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260404    clang-23
hexagon               randconfig-002-20260404    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260404    gcc-14
i386        buildonly-randconfig-002-20260404    clang-20
i386        buildonly-randconfig-003-20260404    gcc-14
i386        buildonly-randconfig-004-20260404    clang-20
i386        buildonly-randconfig-005-20260404    clang-20
i386        buildonly-randconfig-006-20260404    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260404    clang-20
i386                  randconfig-002-20260404    clang-20
i386                  randconfig-003-20260404    clang-20
i386                  randconfig-004-20260404    clang-20
i386                  randconfig-005-20260404    gcc-14
i386                  randconfig-006-20260404    clang-20
i386                  randconfig-007-20260404    clang-20
i386                  randconfig-011-20260404    clang-20
i386                  randconfig-012-20260404    clang-20
i386                  randconfig-013-20260404    clang-20
i386                  randconfig-014-20260404    clang-20
i386                  randconfig-015-20260404    gcc-14
i386                  randconfig-016-20260404    clang-20
i386                  randconfig-017-20260404    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260404    gcc-15.2.0
loongarch             randconfig-002-20260404    gcc-15.2.0
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
mips                        omega2p_defconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260404    gcc-11.5.0
nios2                 randconfig-002-20260404    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260404    gcc-13.4.0
parisc                randconfig-002-20260404    gcc-15.2.0
parisc64                            defconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260404    gcc-8.5.0
powerpc               randconfig-002-20260404    clang-23
powerpc64             randconfig-001-20260404    clang-23
powerpc64             randconfig-002-20260404    gcc-10.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260404    clang-19
riscv                 randconfig-002-20260404    clang-23
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260404    clang-20
s390                  randconfig-002-20260404    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260404    gcc-15.2.0
sh                    randconfig-002-20260404    gcc-9.5.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260404    gcc-15.2.0
sparc                 randconfig-002-20260404    gcc-8.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260404    gcc-14.3.0
sparc64               randconfig-002-20260404    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260404    clang-20
um                    randconfig-002-20260404    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260404    clang-20
x86_64      buildonly-randconfig-002-20260404    gcc-14
x86_64      buildonly-randconfig-003-20260404    gcc-13
x86_64      buildonly-randconfig-004-20260404    clang-20
x86_64      buildonly-randconfig-005-20260404    clang-20
x86_64      buildonly-randconfig-006-20260404    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260404    gcc-14
x86_64                randconfig-002-20260404    clang-20
x86_64                randconfig-003-20260404    clang-20
x86_64                randconfig-004-20260404    clang-20
x86_64                randconfig-005-20260404    clang-20
x86_64                randconfig-006-20260404    gcc-14
x86_64                randconfig-011-20260404    clang-20
x86_64                randconfig-012-20260404    gcc-14
x86_64                randconfig-013-20260404    clang-20
x86_64                randconfig-014-20260404    clang-20
x86_64                randconfig-015-20260404    clang-20
x86_64                randconfig-016-20260404    clang-20
x86_64                randconfig-071-20260404    gcc-13
x86_64                randconfig-072-20260404    clang-20
x86_64                randconfig-073-20260404    clang-20
x86_64                randconfig-074-20260404    gcc-14
x86_64                randconfig-075-20260404    clang-20
x86_64                randconfig-076-20260404    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260404    gcc-11.5.0
xtensa                randconfig-002-20260404    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
