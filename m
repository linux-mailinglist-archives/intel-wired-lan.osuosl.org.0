Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YOadEZzTOGrRigcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 08:18:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7876ACECA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 08:18:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=0ekl0BWd;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EDEE6F72F;
	Mon, 22 Jun 2026 06:08:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgBMAHe7J1_O; Mon, 22 Jun 2026 06:08:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8583F6F736
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782108534;
	bh=z6Qy7NHeqLtglgQE9We9W3Msq/t+Lb/X+pyMy3qbPsw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0ekl0BWdf6c0pEyEsCuwBLLceXuUtTEiI+OGbw+4DZomBuYqS9Do9miUeZiwwIfej
	 5TQofus81SjcfHUMzykvfv1YJC+L8u0piV9NXEmvaoeZNnDr7HTrIVwo4gP02asHCn
	 0L8g2alITLLdmKiO+G6uPSpvDM9nVjasTOcbjw6XABfSpq1AUsBm42178oizoEfOrr
	 OXyst/5i6pR96YSMaPpDJQwTrMisWAS+pJ4qvnTlpOj+owYvHqdG2CgFkn1F9khk2T
	 cI9vMgr3DArL0XcZDNZ1oRQOALUs9pNWcD6/vocTTU/1fiJKuS7eknRkBzz9NrqUtG
	 yJtLc34ZTG10w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8583F6F736;
	Mon, 22 Jun 2026 06:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 62A76F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 06:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48E428649E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 06:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i5Xx7iWBsadD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 06:08:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2BFB8649D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2BFB8649D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2BFB8649D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 06:08:51 +0000 (UTC)
X-CSE-ConnectionGUID: fhcOQAUyQtWmXjwUiI6dzA==
X-CSE-MsgGUID: bqppyKsHSlir1ESuXmzN9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="93198488"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="93198488"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2026 23:08:52 -0700
X-CSE-ConnectionGUID: GvdJNwgjQS6Amrr5P5MZMg==
X-CSE-MsgGUID: Kc2HkvbRR26yEMAm/SDZOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="248988902"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 21 Jun 2026 23:08:50 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wbXpf-000000000aB-3IGg;
 Mon, 22 Jun 2026 06:08:36 +0000
Date: Mon, 22 Jun 2026 14:00:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606221424.5BIRLS7u-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782108533; x=1813644533;
 h=date:from:to:subject:message-id;
 bh=i+K7YTwAcF4YO/gDXj5iBeNRwQY/SgaRRsQovb+w4Nw=;
 b=aZhDxUhtX4x9zHaZcueErX6b+cqZ2gED7HoQoD9AXQQZGiVSP4Z/H92J
 1GsMwzRXrWHjP57UG2hWZQVJcCzF5180RsP+9lXrgGutT6JV16GvNj2l5
 XkDkIbZSVLenMOriRfci/KWseXHI9lArF1UF6F0yQPUJ2u7MHdk6itp9e
 3q6w38wf8TPfntTPdwrb7Q2EpxWf7WYwqEzfJmcQ9Z0whmPxYR4DYXrlw
 D3cW5fnJVA/Ca2aoOnOHMXAEullCxvf2UrUgzX2+8N/EozQsAfWl5mh/l
 XoL/tnr6qKdwdmNh7QwynpltQIdIeqar6ugNPNRASBssNqocDXtHYVMRU
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aZhDxUht
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 d4952c8da4cd593a8a4747ddb40091793d5f495e
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [8.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:from_smtp];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	R_SPF_ALLOW(0.00)[+ip6:2605:bc80:3010::/48];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7B7876ACECA
X-Spam: Yes

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: d4952c8da4cd593a8a4747ddb40091793d5f495e  e1000: fix memory leak in e1000_probe()

elapsed time: 6586m

configs tested: 160
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260618    gcc-15.2.0
arc                   randconfig-002-20260618    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260618    gcc-10.5.0
arm                   randconfig-002-20260618    clang-23
arm                   randconfig-003-20260618    gcc-13.4.0
arm                   randconfig-004-20260618    gcc-15.2.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260618    gcc-11.5.0
arm64                 randconfig-002-20260618    clang-23
arm64                 randconfig-003-20260618    gcc-11.5.0
arm64                 randconfig-004-20260618    gcc-8.5.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260618    gcc-16.1.0
csky                  randconfig-002-20260618    gcc-15.2.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260618    clang-23
hexagon               randconfig-002-20260618    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260618    clang-22
i386        buildonly-randconfig-002-20260618    gcc-14
i386        buildonly-randconfig-003-20260618    gcc-14
i386        buildonly-randconfig-004-20260618    gcc-14
i386        buildonly-randconfig-005-20260618    gcc-14
i386        buildonly-randconfig-006-20260618    gcc-14
i386                                defconfig    clang-22
i386                  randconfig-001-20260618    gcc-14
i386                  randconfig-002-20260618    clang-22
i386                  randconfig-003-20260618    gcc-14
i386                  randconfig-004-20260618    clang-22
i386                  randconfig-005-20260618    gcc-14
i386                  randconfig-006-20260618    gcc-12
i386                  randconfig-007-20260618    gcc-14
i386                  randconfig-011-20260618    clang-22
i386                  randconfig-012-20260618    clang-22
i386                  randconfig-013-20260618    clang-22
i386                  randconfig-014-20260618    gcc-14
i386                  randconfig-015-20260618    clang-22
i386                  randconfig-016-20260618    clang-22
i386                  randconfig-017-20260618    clang-22
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-20
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260618    clang-23
loongarch             randconfig-002-20260618    gcc-16.1.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260618    gcc-8.5.0
nios2                 randconfig-002-20260618    gcc-11.5.0
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260618    gcc-14.3.0
parisc                randconfig-002-20260618    gcc-16.1.0
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    gcc-16.1.0
powerpc                 linkstation_defconfig    clang-23
powerpc               randconfig-001-20260618    gcc-8.5.0
powerpc               randconfig-002-20260618    gcc-11.5.0
powerpc64             randconfig-001-20260618    gcc-8.5.0
powerpc64             randconfig-002-20260618    clang-23
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260618    gcc-11.5.0
riscv                 randconfig-002-20260618    clang-20
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                  randconfig-001-20260618    clang-23
s390                  randconfig-002-20260618    clang-23
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260618    gcc-13.4.0
sh                    randconfig-002-20260618    gcc-16.1.0
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-16.1.0
sparc                 randconfig-001-20260618    gcc-16.1.0
sparc                          randconfig-002    gcc-11.5.0
sparc                 randconfig-002-20260618    gcc-14.3.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                        randconfig-001    gcc-12.5.0
sparc64               randconfig-001-20260618    clang-22
sparc64                        randconfig-002    clang-20
sparc64               randconfig-002-20260618    gcc-10.5.0
um                               allmodconfig    clang-23
um                                allnoconfig    clang-16
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                             randconfig-001    clang-23
um                    randconfig-001-20260618    gcc-14
um                             randconfig-002    clang-23
um                    randconfig-002-20260618    gcc-14
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260618    clang-22
x86_64      buildonly-randconfig-002-20260618    clang-22
x86_64      buildonly-randconfig-003-20260618    clang-22
x86_64      buildonly-randconfig-004-20260618    gcc-14
x86_64      buildonly-randconfig-005-20260618    clang-22
x86_64      buildonly-randconfig-006-20260618    clang-22
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20260618    clang-22
x86_64                randconfig-012-20260618    gcc-14
x86_64                randconfig-013-20260618    gcc-14
x86_64                randconfig-014-20260618    gcc-14
x86_64                randconfig-015-20260618    clang-22
x86_64                randconfig-016-20260618    gcc-14
x86_64                randconfig-073-20260618    gcc-14
x86_64                randconfig-075-20260618    gcc-14
x86_64                randconfig-076-20260618    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    gcc-16.1.0
xtensa                         randconfig-001    gcc-8.5.0
xtensa                randconfig-001-20260618    gcc-16.1.0
xtensa                         randconfig-002    gcc-13.4.0
xtensa                randconfig-002-20260618    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
