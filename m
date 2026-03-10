Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AO1YCrAEsGlAegIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:46:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD11D24B865
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:46:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 134D5407E1;
	Tue, 10 Mar 2026 11:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kpgAYi9Jxy-t; Tue, 10 Mar 2026 11:46:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82AB7405E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773143206;
	bh=IEjVu+mn3TMAENCHo1WiBVHpwPs6PVOWShYkGDt8kDg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P9fI2IfHymT/jLQMf/e5EDxaCk5G45RlGeOuFjDIDwst4ScUmlVyp4Kxll7aWnOAl
	 fxOHn2n5FiFbhKstIkUSm+naLtncFQGycub8lT01B76/+C64Sy2+bSlo0TaJ4OsQVl
	 +DtHB19pYQzCn7aB01pu+Bl5pfr8z+/+HtAkDKUlo3zfkgB/lhN/NZpUxI+5oyge3G
	 5RUI3ivBDARQCJJdpXHbGVqjj1zltdIaR/euo/wlP8WfpoNyIJhBA+lpc7j3vsG1Ew
	 9Hbm/J6woCZja+qvBblROStPpHFuek5Re1odrt2+FoglFxnmY9XCYlGeczhnd+ifR9
	 6iZvcZy0C+s5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82AB7405E2;
	Tue, 10 Mar 2026 11:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 08FF535C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE5C8404E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:46:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id defaetZcNqVN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 11:46:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9DE6540B7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DE6540B7C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9DE6540B7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:46:43 +0000 (UTC)
X-CSE-ConnectionGUID: jPlZoECSTqqko4S3Org1YQ==
X-CSE-MsgGUID: n5uWBECDTd68V4lrBq/05w==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74155727"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="74155727"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 04:46:43 -0700
X-CSE-ConnectionGUID: H/Y1/wl4T02BhnVixWJttQ==
X-CSE-MsgGUID: rACZn51XQwiOmj/2yysdmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="250564963"
Received: from lkp-server01.sh.intel.com (HELO 434e41ea3c86) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 10 Mar 2026 04:46:41 -0700
Received: from kbuild by 434e41ea3c86 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vzvXq-000000001oe-3G2t;
 Tue, 10 Mar 2026 11:46:38 +0000
Date: Tue, 10 Mar 2026 19:46:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202603101923.QQ3oJ0WY-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773143204; x=1804679204;
 h=date:from:to:subject:message-id;
 bh=mdLDWiF/zpkF9KtI+24Vw5hZ8hyDCwC5OkIl8KlxLtg=;
 b=OO7rCzOGEx9WwRzp53HaF9Fj3J3f24CajHwxfU6l77d2YVwpsnZYCums
 1PQv0XY2IX8rEnnC7rFHf4Zfs7JVeInkfyI0P17yP4J2kzLZ9s9UoK258
 2qtJz7ki9t1ohhOuMS77LzCsrc8aWtugwaF13wQuZtV7YDzQNJ4c2A5hT
 Ce0Q/O9Oh0PHMzINtv/TP4JnVGgeTIN9dyuZR2pRxubQM4TcdGO7D8pA2
 5w9yK4hAspI3m2d3DPx4WmL2su+fYT9GA7MRY/iNUCw1/E373AARiZ+mu
 Q710AM06D6LICrcojEVZJc00p+SAOd5ZTET2/DXfp6wfBv3k4xbT0w/EY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OO7rCzOG
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 1d62a4d95ebe7d0ab68be6d17436aa18226a1ddf
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
X-Rspamd-Queue-Id: AD11D24B865
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 1d62a4d95ebe7d0ab68be6d17436aa18226a1ddf  ice: add support for transmitting unreadable frags

elapsed time: 738m

configs tested: 178
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260310    gcc-8.5.0
arc                   randconfig-002-20260310    gcc-8.5.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260310    gcc-8.5.0
arm                   randconfig-002-20260310    gcc-8.5.0
arm                   randconfig-003-20260310    gcc-8.5.0
arm                   randconfig-004-20260310    gcc-8.5.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260310    gcc-11.5.0
arm64                 randconfig-002-20260310    gcc-11.5.0
arm64                 randconfig-003-20260310    gcc-11.5.0
arm64                 randconfig-004-20260310    gcc-11.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260310    gcc-11.5.0
csky                  randconfig-002-20260310    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260310    gcc-11.5.0
hexagon               randconfig-002-20260310    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260310    clang-20
i386        buildonly-randconfig-002-20260310    clang-20
i386        buildonly-randconfig-003-20260310    clang-20
i386        buildonly-randconfig-004-20260310    clang-20
i386        buildonly-randconfig-005-20260310    clang-20
i386        buildonly-randconfig-006-20260310    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260310    clang-20
i386                  randconfig-002-20260310    clang-20
i386                  randconfig-003-20260310    clang-20
i386                  randconfig-004-20260310    clang-20
i386                  randconfig-005-20260310    clang-20
i386                  randconfig-006-20260310    clang-20
i386                  randconfig-007-20260310    clang-20
i386                  randconfig-011-20260310    clang-20
i386                  randconfig-012-20260310    clang-20
i386                  randconfig-013-20260310    clang-20
i386                  randconfig-014-20260310    clang-20
i386                  randconfig-015-20260310    clang-20
i386                  randconfig-016-20260310    clang-20
i386                  randconfig-017-20260310    clang-20
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260310    gcc-11.5.0
loongarch             randconfig-002-20260310    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                     decstation_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260310    gcc-11.5.0
nios2                 randconfig-002-20260310    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260310    gcc-15.2.0
parisc                randconfig-002-20260310    gcc-15.2.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                     mpc83xx_defconfig    clang-23
powerpc               randconfig-001-20260310    gcc-15.2.0
powerpc               randconfig-002-20260310    gcc-15.2.0
powerpc                    sam440ep_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260310    gcc-15.2.0
powerpc64             randconfig-002-20260310    gcc-15.2.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260310    gcc-15.2.0
riscv                 randconfig-002-20260310    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260310    gcc-15.2.0
s390                  randconfig-002-20260310    gcc-15.2.0
sh                               alldefconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260310    gcc-15.2.0
sh                    randconfig-002-20260310    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260310    gcc-12.5.0
sparc                 randconfig-002-20260310    gcc-12.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260310    gcc-12.5.0
sparc64               randconfig-002-20260310    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260310    gcc-12.5.0
um                    randconfig-002-20260310    gcc-12.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260310    gcc-14
x86_64      buildonly-randconfig-002-20260310    gcc-14
x86_64      buildonly-randconfig-003-20260310    gcc-14
x86_64      buildonly-randconfig-004-20260310    gcc-14
x86_64      buildonly-randconfig-005-20260310    gcc-14
x86_64      buildonly-randconfig-006-20260310    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260310    clang-20
x86_64                randconfig-002-20260310    clang-20
x86_64                randconfig-003-20260310    clang-20
x86_64                randconfig-004-20260310    clang-20
x86_64                randconfig-005-20260310    clang-20
x86_64                randconfig-006-20260310    clang-20
x86_64                randconfig-011-20260310    clang-20
x86_64                randconfig-011-20260310    gcc-14
x86_64                randconfig-012-20260310    clang-20
x86_64                randconfig-012-20260310    gcc-14
x86_64                randconfig-013-20260310    clang-20
x86_64                randconfig-013-20260310    gcc-14
x86_64                randconfig-014-20260310    clang-20
x86_64                randconfig-014-20260310    gcc-14
x86_64                randconfig-015-20260310    clang-20
x86_64                randconfig-015-20260310    gcc-14
x86_64                randconfig-016-20260310    clang-20
x86_64                randconfig-071-20260310    clang-20
x86_64                randconfig-072-20260310    clang-20
x86_64                randconfig-073-20260310    clang-20
x86_64                randconfig-074-20260310    clang-20
x86_64                randconfig-075-20260310    clang-20
x86_64                randconfig-076-20260310    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260310    gcc-12.5.0
xtensa                randconfig-002-20260310    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
