Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL3oD+WsrGn8sgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 23:55:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D360922DF0B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 23:55:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D1D883CC2;
	Sat,  7 Mar 2026 22:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5NQOm_sR5Qqd; Sat,  7 Mar 2026 22:55:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DE5C83CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772924129;
	bh=nZ3ukEeVlZYdB9891OPoNG8+wKT2WXDdjlf/idhUQwg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lbwiDeG/anOrdUg+Q0dqcX8chhbL8GKkz3mLHwwIkBlGUmAMdW3hlY0/s6xDM7DFL
	 fdCQGtfiVluYx90Wf0B410koHH8s2J27rYNzmTrz5k+cRjOrlfrIx1AYUfyDu+fDFk
	 dvkQNNIztIsxOX9NZMyT3EH0ryO52higQa8CmlSvgGmKJ42IF1uIVAXL0RepW/i0NU
	 x8jOnyv8l8uULw4DVMoxDBjwKBiBL1+ShwH/u6ZxPaVfH4fJx5wBFK0nhNXiih/U7z
	 M0brvq57uwI6G9Wpq46Z2G/XNodIgaUgtaa31Mwsq5I0WD2PsRQTDa+z+fO0KgbQQx
	 pXrjfRPy0CyjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DE5C83CD3;
	Sat,  7 Mar 2026 22:55:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D027223
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 22:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7297141C40
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 22:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vvUvBfUNza_k for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2026 22:55:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1BF2741C3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BF2741C3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1BF2741C3E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 22:55:23 +0000 (UTC)
X-CSE-ConnectionGUID: HofL7ZwcQYGcr9rTK86YbQ==
X-CSE-MsgGUID: Wx1nOXRpTIq5kUan3zO7Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="77598415"
X-IronPort-AV: E=Sophos;i="6.23,107,1770624000"; d="scan'208";a="77598415"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2026 14:55:22 -0800
X-CSE-ConnectionGUID: jaONkUBeTo2OD2IjQdzbUA==
X-CSE-MsgGUID: fZUybxKxQDiwbxx8noT0GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,107,1770624000"; d="scan'208";a="223480548"
Received: from lkp-server01.sh.intel.com (HELO 058beb05654c) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 07 Mar 2026 14:55:20 -0800
Received: from kbuild by 058beb05654c with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vz0YH-000000002hJ-3udj;
 Sat, 07 Mar 2026 22:55:17 +0000
Date: Sun, 08 Mar 2026 06:55:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603080657.nnHXB1vl-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772924126; x=1804460126;
 h=date:from:to:subject:message-id;
 bh=W+7TKBOcKZsUdA5baZ/9MRaPBbxK17EUylZmr+VzTiA=;
 b=U/KQO2dVeSf1vmZjWY2uA062dmUSGK+hH2A5sEPjwAmPOCfrLN6aTOc3
 ePzlFkatesjqtsCP+OuN6SXiZX048LDVb3BlFXm5ZYfa6NkI1yJe0XUZW
 p21pzYzSZIYq/l1Wq5TIqsxl7uRpGAAC2hfw4CzRk8xtTQal5zS8bBUdq
 Of01PTIq4WAwzGLrbCk/rDZ+jFW9GoS95tMvOilk/2Is/sAEbpdoyXonT
 OMTYyG88Nv6bpqv1ZDOrmfwk++/CIlbH8YtiAKUpNFjU0tR4Pf58a5Egf
 t3lCZ7r3rOGP56xxIedYgK1sRg5wH75pZNLjqKL3BFGfgMzaRAEPAA9A7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U/KQO2dV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0daccd1b643eb2c1a0eb19ca44179ef9807dd251
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
X-Rspamd-Queue-Id: D360922DF0B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0daccd1b643eb2c1a0eb19ca44179ef9807dd251  igc: fix typos in comments

elapsed time: 1453m

configs tested: 157
configs skipped: 2

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
arc                   randconfig-001-20260307    gcc-14.3.0
arc                   randconfig-002-20260307    gcc-14.3.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260307    clang-23
arm                   randconfig-002-20260307    gcc-15.2.0
arm                   randconfig-003-20260307    gcc-13.4.0
arm                   randconfig-004-20260307    gcc-11.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260307    gcc-8.5.0
arm64                 randconfig-002-20260307    gcc-11.5.0
arm64                 randconfig-003-20260307    gcc-15.2.0
arm64                 randconfig-004-20260307    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260307    gcc-15.2.0
csky                  randconfig-002-20260307    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260307    clang-23
hexagon               randconfig-002-20260307    clang-23
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20260307    gcc-14
i386        buildonly-randconfig-002-20260307    gcc-14
i386        buildonly-randconfig-003-20260307    gcc-12
i386        buildonly-randconfig-004-20260307    clang-20
i386        buildonly-randconfig-005-20260307    gcc-14
i386        buildonly-randconfig-006-20260307    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260308    gcc-13
i386                  randconfig-002-20260308    gcc-14
i386                  randconfig-003-20260308    gcc-14
i386                  randconfig-011-20260307    clang-20
i386                  randconfig-012-20260307    clang-20
i386                  randconfig-013-20260307    clang-20
i386                  randconfig-014-20260307    clang-20
i386                  randconfig-015-20260307    gcc-14
i386                  randconfig-016-20260307    gcc-14
i386                  randconfig-017-20260307    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260307    gcc-15.2.0
loongarch             randconfig-002-20260307    gcc-15.2.0
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
nios2                 randconfig-001-20260307    gcc-10.5.0
nios2                 randconfig-002-20260307    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260307    gcc-12.5.0
parisc                randconfig-002-20260307    gcc-8.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                   currituck_defconfig    clang-23
powerpc               randconfig-001-20260307    gcc-8.5.0
powerpc               randconfig-002-20260307    gcc-11.5.0
powerpc64             randconfig-001-20260307    gcc-8.5.0
powerpc64             randconfig-002-20260307    gcc-12.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260307    clang-17
riscv                 randconfig-002-20260307    clang-23
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260307    clang-23
s390                  randconfig-002-20260307    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260307    gcc-15.2.0
sh                    randconfig-002-20260307    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260307    gcc-15.2.0
sparc                 randconfig-002-20260307    gcc-11.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260307    clang-23
sparc64               randconfig-002-20260307    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260307    gcc-14
um                    randconfig-002-20260307    clang-23
um                           x86_64_defconfig    clang-23
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20260307    gcc-14
x86_64      buildonly-randconfig-002-20260307    gcc-14
x86_64      buildonly-randconfig-003-20260307    gcc-14
x86_64      buildonly-randconfig-004-20260307    clang-20
x86_64      buildonly-randconfig-005-20260307    clang-20
x86_64      buildonly-randconfig-006-20260307    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260308    gcc-14
x86_64                randconfig-002-20260308    gcc-14
x86_64                randconfig-003-20260308    clang-20
x86_64                randconfig-004-20260308    gcc-14
x86_64                randconfig-005-20260308    clang-20
x86_64                randconfig-006-20260308    gcc-14
x86_64                randconfig-011-20260307    gcc-14
x86_64                randconfig-012-20260307    clang-20
x86_64                randconfig-013-20260307    gcc-14
x86_64                randconfig-014-20260307    gcc-14
x86_64                randconfig-015-20260307    gcc-14
x86_64                randconfig-016-20260307    gcc-14
x86_64                randconfig-071-20260307    gcc-14
x86_64                randconfig-071-20260308    clang-20
x86_64                randconfig-072-20260307    clang-20
x86_64                randconfig-072-20260308    clang-20
x86_64                randconfig-073-20260307    gcc-14
x86_64                randconfig-073-20260308    clang-20
x86_64                randconfig-074-20260307    gcc-14
x86_64                randconfig-074-20260308    gcc-14
x86_64                randconfig-075-20260307    gcc-14
x86_64                randconfig-075-20260308    clang-20
x86_64                randconfig-076-20260308    gcc-14
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260307    gcc-8.5.0
xtensa                randconfig-002-20260307    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
