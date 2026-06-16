Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NNICI54AMWolaQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 09:51:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC5168CF49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 09:51:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2pAd+607;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAD13852D3;
	Tue, 16 Jun 2026 07:51:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ercjcfm_01T6; Tue, 16 Jun 2026 07:51:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C111E852D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781596314;
	bh=JcEcyY8Ww32wjSr3e1wlrMrRm1L+qsoL3oWACHNpbT0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2pAd+607b610VYMIFvW+G4GAjngP//1iayH9cnxQ21UYSIXqRtDNldB+DQuF5747G
	 lnd89kTdXYDIzQvuYACSiMmZztJdj+uRyuuwBH03Os6r6fdwLrfijx9i43fGw+gj0f
	 1SiwyU879Dbrbc42HpHNiGvD2yI1W8OSatoUa33HzTYcb75zL3FWwFFe4n276YWAh+
	 GAxPm82Ukvd5TuwwKlVuoaRTgtRt6YDXSZZCG3u0s2yP3mDNqPW7NFfz5pPWoJt0Az
	 8ybKTqYYEMVrcffn/3EKOjiXObxcHwems1m/EQQX1vhvUQCuUCiLL9EJogG6eAoQMa
	 OrnZeeQ0d42cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C111E852D4;
	Tue, 16 Jun 2026 07:51:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F13FD169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 07:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E338E6E966
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 07:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qb6Su1YGFub9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 07:51:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E48216E937
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E48216E937
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E48216E937
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 07:51:51 +0000 (UTC)
X-CSE-ConnectionGUID: WQmxkGoWTl2K27sJp/TSew==
X-CSE-MsgGUID: NPY+VNt1TlKivm3DuevgGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="105021384"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="105021384"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 00:51:52 -0700
X-CSE-ConnectionGUID: N4pe+9DeRTyy+Bx4HtrdeA==
X-CSE-MsgGUID: Ev0fK9oUQDy+Gvy8K0DukA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="271418075"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 16 Jun 2026 00:51:50 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wZOaJ-00000000SsA-2rcs;
 Tue, 16 Jun 2026 07:51:47 +0000
Date: Tue, 16 Jun 2026 15:51:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606161553.N8QreE0F-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781596312; x=1813132312;
 h=date:from:to:subject:message-id;
 bh=7DHOmxO3g6pHNLhSpsUPXOs9Op/yNNPqzdNNT+8wQnM=;
 b=D+45tQZGweF19ewLmW1EyJXCDWvx8piCfqhwRRg3pLi0xCKwkNFiyGnQ
 fX0sm0SCIFjHhJySQz45nQ9OhlkPw/OranErJ+MhwMy6vdUGmEIelUCfq
 1GkTFUC6GEJrQNB7F8E57OXCM6JenLcc8Fff5I8O/EBIV5aEZBX3LmWd4
 sIdy6xg21wH6yxXm17xBurkXdtTuyKnqt7mBq9qm/WOMg0Ncbd48dtndx
 2wwvGoWuIRE3/b7i8xf6i+Lj9PDhX2O5kcZPSCzww2ZP9EBk0n/7sTyzV
 KaL6+LDZ9DgyIWOrjmZgVmQIplaPcYJCg8BCUb71rpbxZ1NhuhAVc8vlM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D+45tQZG
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 f82e428ed709d6a94df1ceff0eacedf583f2f75b
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EC5168CF49

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: f82e428ed709d6a94df1ceff0eacedf583f2f75b  e1000: fix memory leak in e1000_probe()

elapsed time: 824m

configs tested: 270
configs skipped: 11

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
arc                   randconfig-001-20260616    gcc-9.5.0
arc                   randconfig-002-20260616    gcc-8.5.0
arc                   randconfig-002-20260616    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260616    gcc-15.2.0
arm                   randconfig-001-20260616    gcc-9.5.0
arm                   randconfig-002-20260616    clang-23
arm                   randconfig-002-20260616    gcc-9.5.0
arm                   randconfig-003-20260616    gcc-8.5.0
arm                   randconfig-003-20260616    gcc-9.5.0
arm                   randconfig-004-20260616    clang-20
arm                   randconfig-004-20260616    gcc-9.5.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260616    gcc-13.4.0
arm64                 randconfig-001-20260616    gcc-8.5.0
arm64                 randconfig-002-20260616    gcc-13.4.0
arm64                 randconfig-002-20260616    gcc-15.2.0
arm64                 randconfig-003-20260616    gcc-13.4.0
arm64                 randconfig-004-20260616    gcc-11.5.0
arm64                 randconfig-004-20260616    gcc-13.4.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260616    gcc-13.4.0
csky                  randconfig-001-20260616    gcc-15.2.0
csky                  randconfig-002-20260616    gcc-13.4.0
hexagon                          allmodconfig    clang-23
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260616    clang-23
hexagon               randconfig-001-20260616    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260616    clang-23
hexagon               randconfig-002-20260616    gcc-11.5.0
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260616    clang-22
i386        buildonly-randconfig-001-20260616    gcc-14
i386        buildonly-randconfig-002-20260616    clang-22
i386        buildonly-randconfig-003-20260616    clang-22
i386        buildonly-randconfig-003-20260616    gcc-14
i386        buildonly-randconfig-004-20260616    clang-22
i386        buildonly-randconfig-004-20260616    gcc-14
i386        buildonly-randconfig-005-20260616    clang-22
i386        buildonly-randconfig-005-20260616    gcc-14
i386        buildonly-randconfig-006-20260616    clang-22
i386        buildonly-randconfig-006-20260616    gcc-14
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260616    clang-22
i386                  randconfig-001-20260616    gcc-14
i386                  randconfig-002-20260616    gcc-14
i386                  randconfig-003-20260616    clang-22
i386                  randconfig-003-20260616    gcc-14
i386                  randconfig-004-20260616    gcc-14
i386                  randconfig-005-20260616    gcc-14
i386                  randconfig-006-20260616    clang-22
i386                  randconfig-006-20260616    gcc-14
i386                  randconfig-007-20260616    gcc-14
i386                  randconfig-011-20260616    clang-22
i386                  randconfig-011-20260616    gcc-14
i386                  randconfig-012-20260616    clang-22
i386                  randconfig-012-20260616    gcc-14
i386                  randconfig-013-20260616    clang-22
i386                  randconfig-013-20260616    gcc-14
i386                  randconfig-014-20260616    clang-22
i386                  randconfig-014-20260616    gcc-14
i386                  randconfig-015-20260616    clang-22
i386                  randconfig-015-20260616    gcc-14
i386                  randconfig-016-20260616    clang-22
i386                  randconfig-017-20260616    clang-22
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                loongson64_defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260616    gcc-11.5.0
loongarch             randconfig-001-20260616    gcc-13.4.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260616    clang-18
loongarch             randconfig-002-20260616    gcc-11.5.0
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
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260616    gcc-11.5.0
nios2                 randconfig-001-20260616    gcc-9.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260616    gcc-11.5.0
nios2                 randconfig-002-20260616    gcc-8.5.0
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
parisc                randconfig-001-20260616    gcc-12.5.0
parisc                randconfig-001-20260616    gcc-8.5.0
parisc                randconfig-002-20260616    gcc-8.5.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                      ep88xc_defconfig    gcc-16.1.0
powerpc                      pmac32_defconfig    clang-23
powerpc               randconfig-001-20260616    gcc-8.5.0
powerpc               randconfig-002-20260616    clang-20
powerpc               randconfig-002-20260616    gcc-8.5.0
powerpc64             randconfig-001-20260616    gcc-10.5.0
powerpc64             randconfig-001-20260616    gcc-8.5.0
powerpc64             randconfig-002-20260616    gcc-15.2.0
powerpc64             randconfig-002-20260616    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    gcc-16.1.0
riscv                 randconfig-001-20260616    gcc-16.1.0
riscv                 randconfig-001-20260616    gcc-9.5.0
riscv                          randconfig-002    gcc-16.1.0
riscv                 randconfig-002-20260616    clang-23
riscv                 randconfig-002-20260616    gcc-16.1.0
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    gcc-16.1.0
s390                  randconfig-001-20260616    clang-23
s390                  randconfig-001-20260616    gcc-16.1.0
s390                           randconfig-002    gcc-16.1.0
s390                  randconfig-002-20260616    clang-18
s390                  randconfig-002-20260616    gcc-16.1.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                             randconfig-001    gcc-16.1.0
sh                    randconfig-001-20260616    gcc-16.1.0
sh                             randconfig-002    gcc-16.1.0
sh                    randconfig-002-20260616    gcc-13.4.0
sh                    randconfig-002-20260616    gcc-16.1.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260616    gcc-16.1.0
sparc                 randconfig-001-20260616    gcc-8.5.0
sparc                 randconfig-002-20260616    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260616    gcc-8.5.0
sparc64               randconfig-002-20260616    gcc-8.5.0
um                               allmodconfig    clang-17
um                               allmodconfig    clang-23
um                                allnoconfig    clang-16
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260616    gcc-14
um                    randconfig-001-20260616    gcc-8.5.0
um                    randconfig-002-20260616    gcc-12
um                    randconfig-002-20260616    gcc-8.5.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260616    gcc-14
x86_64      buildonly-randconfig-002-20260616    gcc-14
x86_64      buildonly-randconfig-003-20260616    gcc-12
x86_64      buildonly-randconfig-003-20260616    gcc-14
x86_64      buildonly-randconfig-004-20260616    gcc-12
x86_64      buildonly-randconfig-004-20260616    gcc-14
x86_64      buildonly-randconfig-005-20260616    gcc-14
x86_64      buildonly-randconfig-006-20260616    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260616    clang-22
x86_64                randconfig-002-20260616    clang-22
x86_64                randconfig-003-20260616    clang-22
x86_64                randconfig-004-20260616    clang-22
x86_64                randconfig-004-20260616    gcc-14
x86_64                randconfig-005-20260616    clang-22
x86_64                randconfig-006-20260616    clang-22
x86_64                randconfig-011-20260616    clang-22
x86_64                randconfig-011-20260616    gcc-14
x86_64                randconfig-012-20260616    clang-22
x86_64                randconfig-012-20260616    gcc-14
x86_64                randconfig-013-20260616    clang-22
x86_64                randconfig-014-20260616    clang-22
x86_64                randconfig-015-20260616    clang-22
x86_64                randconfig-016-20260616    clang-22
x86_64                randconfig-016-20260616    gcc-14
x86_64                randconfig-071-20260616    gcc-14
x86_64                randconfig-072-20260616    clang-22
x86_64                randconfig-072-20260616    gcc-14
x86_64                randconfig-073-20260616    gcc-14
x86_64                randconfig-074-20260616    gcc-14
x86_64                randconfig-075-20260616    gcc-12
x86_64                randconfig-075-20260616    gcc-14
x86_64                randconfig-076-20260616    gcc-14
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
xtensa                randconfig-001-20260616    gcc-14.3.0
xtensa                randconfig-001-20260616    gcc-8.5.0
xtensa                randconfig-002-20260616    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
