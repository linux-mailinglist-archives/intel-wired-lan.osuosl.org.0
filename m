Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CY74FVcgRmquKQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 10:24:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5DA6F4C1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 10:24:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=IMu4PYYZ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0350241385;
	Thu,  2 Jul 2026 08:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdmdDAYS5aqX; Thu,  2 Jul 2026 08:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0439A41381
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782980686;
	bh=+hLUchLBBNAK3pTPtXzIqwXsqqiFksyUAespG8EWIa0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IMu4PYYZ6UE/x9ZRWfKdstjRhPwwqP0zBM0Af2jFvJV4xlkAy4wPO2EfIm4vsLMnW
	 debgKCIJSX0OMeQxICEOinE46ZYtFqCuex9Xixlqr3YX5q6JG8Px/8C+8eleMTKgF9
	 I/i9uLq8rAQpQTYlHvvI3VYFdteHkvJLH02l+tasB11DUUV1V/fqm9qvnMRGxk6MkC
	 cTIa3b/yo4ZwP1SYI6zWuGG2oha7cQ1SKCqIbLTA4cmmZ2+3zcdtvA5mID9YqgjgrQ
	 fRMaSgJCRF9f5ojgAxintxRD1xeTvJbm1ZFTf3HamMiQ2yW2FNa4X6pSeWdp7uF9RA
	 sPfcazMsWNSZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0439A41381;
	Thu,  2 Jul 2026 08:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 86C50CB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 08:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C25D40D5B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 08:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QXIsbGw4kQZC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 08:24:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0AA8040410
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AA8040410
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AA8040410
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 08:24:42 +0000 (UTC)
X-CSE-ConnectionGUID: nZSuLzn4QTStPOZpVei09g==
X-CSE-MsgGUID: j/jSlVn3ReqqanO9c32JXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="109275554"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="109275554"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 01:24:42 -0700
X-CSE-ConnectionGUID: Qc+G9S45TJCGJMscW+Ycqg==
X-CSE-MsgGUID: b6/DGGMuR7OiTONXKLD7BQ==
X-ExtLoop1: 1
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by fmviesa003.fm.intel.com with ESMTP; 02 Jul 2026 01:24:41 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wfCis-00000000AXH-31zW;
 Thu, 02 Jul 2026 08:24:38 +0000
Date: Thu, 02 Jul 2026 16:23:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607021642.NdyRSPX5-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782980683; x=1814516683;
 h=date:from:to:subject:message-id;
 bh=UA51GrMKGDogkpnh4ie9RZsa8AwuDdgfkfvuWz/BuHQ=;
 b=aWTpHobLlx1LeaXpXkLxOlgv9RbhNdoiPcfXxbbFzhapLZ9GrDUR8CuQ
 SjiejV/1ViFv+jz+ebMv3dQl58VvYkFxMVXARcVeeLGfyJatKFjbOPcG9
 Z4QMdNMZK+5zXtPmslj0wl2mzW+U0wdPk+xyjDvZRxtgdVHRNNwoY9rCX
 IZDuFfeHTs79kg4Huj/qR0Ys01qewnFZkOrbg3EG7sVgMvXMM8dAAR2Ms
 t/eC/mP1rvWPH3Aag3coRHwZTeSUuFuleq14JOnWmz/NBEEBSqxjTW7bk
 I+DVQmfdyuZY8yFuxp3Z4uit8afXHska5HkdEO7r9diW2vVtV2u/QQGU9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aWTpHobL
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 0469d460a598d03fc85ebd97f99640e6c579e2a2
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ED5DA6F4C1F

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 0469d460a598d03fc85ebd97f99640e6c579e2a2  Merge tag 'nf-26-06-30' of https://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 740m

configs tested: 271
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260702    gcc-8.5.0
arc                   randconfig-002-20260702    gcc-8.5.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260702    gcc-8.5.0
arm                   randconfig-002-20260702    gcc-8.5.0
arm                   randconfig-003-20260702    gcc-8.5.0
arm                   randconfig-004-20260702    gcc-8.5.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260702    clang-22
arm64                 randconfig-001-20260702    gcc-15.2.0
arm64                 randconfig-002-20260702    gcc-15.2.0
arm64                 randconfig-002-20260702    gcc-8.5.0
arm64                 randconfig-003-20260702    gcc-15.2.0
arm64                 randconfig-004-20260702    clang-17
arm64                 randconfig-004-20260702    gcc-15.2.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260702    gcc-15.2.0
csky                  randconfig-001-20260702    gcc-9.5.0
csky                  randconfig-002-20260702    gcc-15.2.0
hexagon                          allmodconfig    clang-23
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon               randconfig-001-20260702    clang-19
hexagon               randconfig-001-20260702    clang-23
hexagon               randconfig-002-20260702    clang-20
hexagon               randconfig-002-20260702    clang-23
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260702    clang-22
i386        buildonly-randconfig-002-20260702    clang-22
i386        buildonly-randconfig-003-20260702    clang-22
i386        buildonly-randconfig-004-20260702    clang-22
i386        buildonly-randconfig-005-20260702    clang-22
i386        buildonly-randconfig-006-20260702    clang-22
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260702    clang-22
i386                  randconfig-001-20260702    gcc-14
i386                  randconfig-002-20260702    clang-22
i386                  randconfig-002-20260702    gcc-14
i386                  randconfig-003-20260702    gcc-14
i386                  randconfig-004-20260702    clang-22
i386                  randconfig-004-20260702    gcc-14
i386                  randconfig-005-20260702    gcc-14
i386                  randconfig-006-20260702    gcc-14
i386                  randconfig-007-20260702    gcc-14
i386                  randconfig-011-20260702    clang-22
i386                  randconfig-012-20260702    clang-22
i386                  randconfig-012-20260702    gcc-13
i386                  randconfig-013-20260702    clang-22
i386                  randconfig-014-20260702    clang-22
i386                  randconfig-015-20260702    clang-22
i386                  randconfig-016-20260702    clang-22
i386                  randconfig-016-20260702    gcc-14
i386                  randconfig-017-20260702    clang-22
i386                  randconfig-017-20260702    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                loongson32_defconfig    clang-18
loongarch             randconfig-001-20260702    clang-23
loongarch             randconfig-002-20260702    clang-23
loongarch             randconfig-002-20260702    gcc-16.1.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
mips                           ci20_defconfig    clang-23
mips                        omega2p_defconfig    clang-17
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260702    clang-23
nios2                 randconfig-001-20260702    gcc-11.5.0
nios2                 randconfig-002-20260702    clang-23
nios2                 randconfig-002-20260702    gcc-8.5.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260702    clang-17
parisc                randconfig-001-20260702    gcc-10.5.0
parisc                randconfig-002-20260702    clang-17
parisc                randconfig-002-20260702    gcc-12.5.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                    adder875_defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc               randconfig-001-20260702    clang-17
powerpc               randconfig-002-20260702    clang-17
powerpc               randconfig-002-20260702    gcc-8.5.0
powerpc                         wii_defconfig    gcc-16.1.0
powerpc64             randconfig-001-20260702    clang-17
powerpc64             randconfig-001-20260702    gcc-15.2.0
powerpc64             randconfig-002-20260702    clang-17
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    gcc-12.5.0
riscv                 randconfig-001-20260702    gcc-12.5.0
riscv                 randconfig-001-20260702    gcc-15.2.0
riscv                          randconfig-002    gcc-12.5.0
riscv                 randconfig-002-20260702    clang-23
riscv                 randconfig-002-20260702    gcc-12.5.0
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    gcc-12.5.0
s390                  randconfig-001-20260702    clang-23
s390                  randconfig-001-20260702    gcc-12.5.0
s390                           randconfig-002    gcc-12.5.0
s390                  randconfig-002-20260702    gcc-12.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                             randconfig-001    gcc-12.5.0
sh                    randconfig-001-20260702    gcc-12.5.0
sh                    randconfig-001-20260702    gcc-16.1.0
sh                             randconfig-002    gcc-12.5.0
sh                    randconfig-002-20260702    gcc-12.5.0
sh                    randconfig-002-20260702    gcc-15.2.0
sh                           se7619_defconfig    gcc-16.1.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260702    gcc-16.1.0
sparc                 randconfig-002-20260702    gcc-16.1.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260702    clang-23
sparc64               randconfig-001-20260702    gcc-16.1.0
sparc64               randconfig-002-20260702    gcc-10.5.0
sparc64               randconfig-002-20260702    gcc-16.1.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260702    gcc-14
um                    randconfig-001-20260702    gcc-16.1.0
um                    randconfig-002-20260702    gcc-14
um                    randconfig-002-20260702    gcc-16.1.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64               buildonly-randconfig-001    clang-22
x86_64      buildonly-randconfig-001-20260702    clang-22
x86_64               buildonly-randconfig-002    clang-22
x86_64      buildonly-randconfig-002-20260702    clang-22
x86_64      buildonly-randconfig-002-20260702    gcc-14
x86_64               buildonly-randconfig-003    clang-22
x86_64      buildonly-randconfig-003-20260702    clang-22
x86_64               buildonly-randconfig-004    clang-22
x86_64      buildonly-randconfig-004-20260702    clang-22
x86_64               buildonly-randconfig-005    clang-22
x86_64      buildonly-randconfig-005-20260702    clang-22
x86_64      buildonly-randconfig-005-20260702    gcc-14
x86_64               buildonly-randconfig-006    clang-22
x86_64      buildonly-randconfig-006-20260702    clang-22
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                         randconfig-001    clang-22
x86_64                randconfig-001-20260702    clang-22
x86_64                         randconfig-002    clang-22
x86_64                randconfig-002-20260702    clang-22
x86_64                randconfig-002-20260702    gcc-14
x86_64                         randconfig-003    clang-22
x86_64                randconfig-003-20260702    clang-22
x86_64                         randconfig-004    clang-22
x86_64                randconfig-004-20260702    clang-22
x86_64                randconfig-004-20260702    gcc-14
x86_64                         randconfig-005    clang-22
x86_64                randconfig-005-20260702    clang-22
x86_64                         randconfig-006    clang-22
x86_64                randconfig-006-20260702    clang-22
x86_64                randconfig-006-20260702    gcc-14
x86_64                randconfig-011-20260702    clang-22
x86_64                randconfig-012-20260702    clang-22
x86_64                randconfig-013-20260702    clang-22
x86_64                randconfig-014-20260702    clang-22
x86_64                randconfig-015-20260702    clang-22
x86_64                randconfig-016-20260702    clang-22
x86_64                randconfig-071-20260702    clang-22
x86_64                randconfig-071-20260702    gcc-14
x86_64                randconfig-072-20260702    clang-22
x86_64                randconfig-072-20260702    gcc-14
x86_64                randconfig-073-20260702    clang-22
x86_64                randconfig-074-20260702    clang-22
x86_64                randconfig-074-20260702    gcc-12
x86_64                randconfig-075-20260702    clang-22
x86_64                randconfig-076-20260702    clang-22
x86_64                randconfig-076-20260702    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                randconfig-001-20260702    gcc-16.1.0
xtensa                randconfig-002-20260702    gcc-14.3.0
xtensa                randconfig-002-20260702    gcc-16.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
