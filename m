Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GhGMqXz/2nmAgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2026 04:55:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89223502521
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2026 04:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D561884B01;
	Sun, 10 May 2026 02:55:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voEcjjYyqtp8; Sun, 10 May 2026 02:55:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E41BA84B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778381727;
	bh=dkdT4k5hErRoo4xbD4YueVh/LB2FBynLO7RJB10RyQQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=STSxL+Ka0VHzuCC8+met/cSScQ7AZ1/4oZUwDyP/ZlmZ3sNxAmSe59UPMrD+p282I
	 KMwbwo0hs4CORNO68qRMHXCilIsNGs3oPSsKll/2zdFveSaGaWbenQI1xsNh/Zo+sH
	 lquWd/NEGH4at63SFiCDD2LO4Wj7fwOo0pyUGPuhW1RAG9TPZssUpAAHYkiMBDKeKY
	 YRx+Tu22R1ZvzNY01185yyTHBTf1mplc368LjVHjXkcHXn1FJxHiomD8zBlVUp9mKH
	 4/VRiC5Zg5z8DtjHKOocqQ8GTQl/nvcqhqdNYH3PXP8uKCS5RmQMoShm7AHrrX7OjC
	 zHgfMDGCawL1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E41BA84B83;
	Sun, 10 May 2026 02:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AAFB22F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 02:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DBC341CA5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 02:55:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KmSPWGxDY7sf for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 May 2026 02:55:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65C4F41D09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65C4F41D09
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65C4F41D09
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 02:55:21 +0000 (UTC)
X-CSE-ConnectionGUID: TJV6yhNNQaGKcM3ooQ6mrA==
X-CSE-MsgGUID: XFJ0yZfySpWaKUjPCL/GoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="89898574"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="89898574"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 19:55:21 -0700
X-CSE-ConnectionGUID: zKWV0KyyS2SasK6BXsT8ew==
X-CSE-MsgGUID: AgPytMilRTq4RkAj3wTS+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="267490409"
Received: from lkp-server01.sh.intel.com (HELO 82327192134e) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 09 May 2026 19:55:19 -0700
Received: from kbuild by 82327192134e with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wLuK5-000000001gT-0P0Q;
 Sun, 10 May 2026 02:55:17 +0000
Date: Sun, 10 May 2026 10:55:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605101010.rCAsdKPY-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778381722; x=1809917722;
 h=date:from:to:subject:message-id;
 bh=6xRrNR20bylUTBc4nz9BTe5cSjWJbT+kkHMKZAb50NA=;
 b=aFch7Drmjtr6kYT6w7vm9lA/1h235phuk3WcOeWrzu3/I2Pia15vAAyM
 CgNslKh/EbdBFRc/aeEaBr3/6CQdP/lr+X5avblqfg3R+iehwW4OUDuFs
 Zw1+1K6zfU1Z2x6eH2pbptfHleABfy6TuSO+ldw2+FhcQZcDH4QpkoXQT
 MbNbPaC2fzAyDF+GMVmmqGUqtqnSWccTaRN0pPKDnkAiqNL+MAfDnJ8tN
 bMcxjxZd3cTn1xJe3kb4/MU1dS1xW8K5cI1xwXBadI4ENPnSvXbmKnz5w
 PM4GIbFrB+i8ryCJPT/hSIGg0wZB3AV3iiqZG5aB+cyBJxWp1/I1shC+Y
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aFch7Drm
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 297c032796ab09767fd081767a2dbbed5b905520
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
X-Rspamd-Queue-Id: 89223502521
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
	NEURAL_HAM(-0.00)[-0.988];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 297c032796ab09767fd081767a2dbbed5b905520  igc: add support for forcing link speed without autonegotiation

elapsed time: 1447m

configs tested: 152
configs skipped: 9

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
arc                   randconfig-001-20260510    gcc-8.5.0
arc                   randconfig-002-20260510    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260509    clang-16
arm64                 randconfig-002-20260509    clang-16
arm64                 randconfig-003-20260509    gcc-15.2.0
arm64                 randconfig-004-20260509    clang-17
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260509    gcc-12.5.0
csky                  randconfig-002-20260509    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260509    clang-23
hexagon               randconfig-002-20260509    clang-17
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20260510    clang-20
i386        buildonly-randconfig-002-20260510    gcc-14
i386        buildonly-randconfig-003-20260510    clang-20
i386        buildonly-randconfig-004-20260510    gcc-13
i386        buildonly-randconfig-005-20260510    clang-20
i386        buildonly-randconfig-006-20260510    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260509    clang-20
i386                  randconfig-002-20260509    clang-20
i386                  randconfig-003-20260509    clang-20
i386                  randconfig-004-20260509    clang-20
i386                  randconfig-005-20260509    clang-20
i386                  randconfig-006-20260509    clang-20
i386                  randconfig-007-20260509    gcc-14
i386                           randconfig-011    clang-20
i386                  randconfig-011-20260509    gcc-14
i386                           randconfig-012    clang-20
i386                  randconfig-012-20260509    gcc-14
i386                           randconfig-013    gcc-14
i386                  randconfig-013-20260509    gcc-12
i386                           randconfig-014    clang-20
i386                  randconfig-014-20260509    clang-20
i386                           randconfig-015    gcc-14
i386                  randconfig-015-20260509    clang-20
i386                           randconfig-016    gcc-14
i386                  randconfig-016-20260509    gcc-14
i386                           randconfig-017    gcc-14
i386                  randconfig-017-20260509    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260509    gcc-15.2.0
loongarch             randconfig-002-20260509    clang-18
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
nios2                 randconfig-001-20260509    gcc-11.5.0
nios2                 randconfig-002-20260509    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260510    gcc-13.4.0
parisc                randconfig-002-20260510    gcc-11.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260510    gcc-8.5.0
powerpc               randconfig-002-20260510    gcc-8.5.0
powerpc64             randconfig-001-20260510    clang-23
powerpc64             randconfig-002-20260510    clang-16
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260510    gcc-11.5.0
riscv                 randconfig-002-20260510    clang-23
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260510    gcc-14.3.0
s390                  randconfig-002-20260510    clang-18
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260510    gcc-15.2.0
sh                    randconfig-002-20260510    gcc-15.2.0
sh                             shx3_defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260509    clang-20
x86_64      buildonly-randconfig-002-20260509    clang-20
x86_64      buildonly-randconfig-003-20260509    gcc-14
x86_64      buildonly-randconfig-004-20260509    clang-20
x86_64      buildonly-randconfig-005-20260509    gcc-13
x86_64      buildonly-randconfig-006-20260509    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260510    gcc-14
x86_64                randconfig-002-20260510    clang-20
x86_64                randconfig-003-20260510    clang-20
x86_64                randconfig-004-20260510    clang-20
x86_64                randconfig-005-20260510    clang-20
x86_64                randconfig-006-20260510    gcc-14
x86_64                randconfig-011-20260509    gcc-14
x86_64                randconfig-012-20260509    clang-20
x86_64                randconfig-013-20260509    gcc-14
x86_64                randconfig-014-20260509    clang-20
x86_64                randconfig-015-20260509    clang-20
x86_64                randconfig-016-20260509    gcc-14
x86_64                randconfig-071-20260509    gcc-14
x86_64                randconfig-072-20260509    gcc-14
x86_64                randconfig-073-20260509    clang-20
x86_64                randconfig-074-20260509    clang-20
x86_64                randconfig-075-20260509    clang-20
x86_64                randconfig-076-20260509    clang-20
xtensa                            allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
