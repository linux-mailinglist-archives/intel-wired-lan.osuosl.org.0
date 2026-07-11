Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dArsM3y5UmrmSgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 23:45:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D748A742F27
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 23:45:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=zeP9efI+;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7372281EC8;
	Sat, 11 Jul 2026 21:45:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZrrfKXsmaERN; Sat, 11 Jul 2026 21:45:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 771C581EB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783806329;
	bh=SVt4BhFK9hPJgnyTEtRV0LZgGLhXKein4fJ8h11ItcI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zeP9efI+VLh6bu8BZdOyyr1lIhqyJmAzv4QPzik1Y/Q0EE2HbZQYRDpRbKWvRyN2A
	 MqMH0dfKbtlGVYOAYXTgVFPAz4pa/1x0G+ws/L41LT2QmTNLtcTnF47fbIQS2j2sKT
	 8BxOsyUiaPSTO69PG7yRmbeqMmvac8f39SwnLwmPJyDFjLgr4DapmErLYyeobEsVN2
	 kGptsirZQynxhTgnxvDiVP+5yGWNHM7mc5k+84D4nHG2fONLEY9hjvzhRCzelfAypO
	 d6oyb3VCTzKWsw8m6IYmbA0KkwppVtO9V6GhAuKQAaFT4cQ4un4spmfPuG8ZpCN9tD
	 bbfaotidgHoow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 771C581EB8;
	Sat, 11 Jul 2026 21:45:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8308322F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 21:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68AD440101
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 21:45:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJ7AqPL0Swil for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jul 2026 21:45:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E6A040052
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E6A040052
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E6A040052
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 21:45:25 +0000 (UTC)
X-CSE-ConnectionGUID: N91K65Q3Qpes9uqpzNCgvw==
X-CSE-MsgGUID: QOLOAAkPTOuZBk1dAOvAZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94825520"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="94825520"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2026 14:45:26 -0700
X-CSE-ConnectionGUID: PwGOCwrVS3Wa7E9/S3fajg==
X-CSE-MsgGUID: FHLzMR5CQDCBt04kGeMcyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="255268937"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 11 Jul 2026 14:45:24 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wifVh-00000000KPi-2oIb;
 Sat, 11 Jul 2026 21:45:21 +0000
Date: Sun, 12 Jul 2026 05:44:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607120518.Uir8Bix9-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783806326; x=1815342326;
 h=date:from:to:subject:message-id;
 bh=UjbT70J//aHxSk3l2DPKyOLXTkcPgYstkhMTtXbsJYI=;
 b=nRZbno9gwd0BJPRWkjEJBsLAbWn6cdNPIMltMRRtzxZMc5IsSmUYWRH+
 AUhGj0depb4qz8Bxd+PdJecWth6gxxJmRWZ7UDBreJ0H8jcHP3a3hvyYN
 nYJBKhCZF8K1/CaP5UrlGzKpSKTP5pdoj/mp7CYUbg/v42XWqIoDfnHHE
 PDN8OuPzcYW2aSFbgPLP564KSA3ce8lfSjgSN9FDiqrxkGZPb1DiON9ht
 5gyGd1z/jXHZ6/RxQUh/m2ReNZInI1xol0xhTFAUJDdCFinOACIw6KRH6
 bJM0ARFQiq3XCLCndfeSc0BzAxnCDE1gMiCa4vT4eInWLWHTZ9nYDl2qC
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nRZbno9g
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 ec319017ba473d3ff7f08aeddb47a03d69a8e40c
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D748A742F27

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: ec319017ba473d3ff7f08aeddb47a03d69a8e40c  ice: use ACL for ntuple rules that conflict with FDir

Unverified Error/Warning (likely false positive, kindly check if interested):

    drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1206:1: internal compiler error: in final_scan_insn_1, at final.cc:2823
    drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c:438:1: internal compiler error: in final_scan_insn_1, at final.cc:2823

Error/Warning ids grouped by kconfigs:

recent_errors
`-- csky-allmodconfig
    |-- drivers-net-ethernet-intel-idpf-idpf_virtchnl.c:internal-compiler-error:in-final_scan_insn_1-at-final.cc
    `-- drivers-net-ethernet-intel-idpf-idpf_virtchnl_ptp.c:internal-compiler-error:in-final_scan_insn_1-at-final.cc

elapsed time: 936m

configs tested: 251
configs skipped: 12

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                            randconfig-001    gcc-8.5.0
arc                   randconfig-001-20260711    gcc-13.4.0
arc                   randconfig-001-20260712    clang-18
arc                            randconfig-002    gcc-8.5.0
arc                   randconfig-002-20260711    gcc-11.5.0
arc                   randconfig-002-20260712    clang-18
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    gcc-16.1.0
arm                            randconfig-001    gcc-16.1.0
arm                   randconfig-001-20260711    gcc-11.5.0
arm                   randconfig-001-20260712    clang-18
arm                            randconfig-002    gcc-15.2.0
arm                   randconfig-002-20260711    clang-17
arm                   randconfig-002-20260712    clang-18
arm                            randconfig-003    clang-23
arm                   randconfig-003-20260711    gcc-15.2.0
arm                   randconfig-003-20260712    clang-18
arm                            randconfig-004    gcc-13.4.0
arm                   randconfig-004-20260711    gcc-13.4.0
arm                   randconfig-004-20260712    clang-18
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                          randconfig-001    gcc-14.3.0
arm64                 randconfig-001-20260711    gcc-8.5.0
arm64                 randconfig-001-20260712    gcc-16.1.0
arm64                          randconfig-002    gcc-8.5.0
arm64                 randconfig-002-20260711    clang-17
arm64                 randconfig-002-20260712    gcc-16.1.0
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20260711    gcc-8.5.0
arm64                 randconfig-003-20260712    gcc-16.1.0
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260711    clang-17
arm64                 randconfig-004-20260712    gcc-16.1.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                           randconfig-001    gcc-13.4.0
csky                  randconfig-001-20260711    gcc-16.1.0
csky                  randconfig-001-20260712    gcc-16.1.0
csky                           randconfig-002    gcc-14.3.0
csky                  randconfig-002-20260711    gcc-16.1.0
csky                  randconfig-002-20260712    gcc-16.1.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon               randconfig-001-20260711    clang-17
hexagon               randconfig-001-20260712    clang-22
hexagon               randconfig-002-20260711    clang-23
hexagon               randconfig-002-20260712    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260711    gcc-14
i386        buildonly-randconfig-002-20260711    gcc-14
i386        buildonly-randconfig-003-20260711    gcc-14
i386        buildonly-randconfig-004-20260711    clang-22
i386        buildonly-randconfig-005-20260711    gcc-14
i386        buildonly-randconfig-006-20260711    gcc-14
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260712    clang-22
i386                  randconfig-002-20260712    clang-22
i386                  randconfig-003-20260712    clang-22
i386                  randconfig-004-20260712    clang-22
i386                  randconfig-005-20260712    clang-22
i386                  randconfig-006-20260712    clang-22
i386                  randconfig-007-20260712    clang-22
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260711    gcc-16.1.0
loongarch             randconfig-001-20260712    clang-22
loongarch             randconfig-002-20260711    gcc-15.2.0
loongarch             randconfig-002-20260712    clang-22
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
m68k                          hp300_defconfig    gcc-16.1.0
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
nios2                 randconfig-001-20260711    gcc-8.5.0
nios2                 randconfig-001-20260712    clang-22
nios2                 randconfig-002-20260711    gcc-11.5.0
nios2                 randconfig-002-20260712    clang-22
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260711    gcc-12.5.0
parisc                randconfig-001-20260712    gcc-8.5.0
parisc                randconfig-002-20260711    gcc-10.5.0
parisc                randconfig-002-20260712    gcc-8.5.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                     asp8347_defconfig    clang-23
powerpc               randconfig-001-20260711    gcc-11.5.0
powerpc               randconfig-001-20260712    gcc-8.5.0
powerpc               randconfig-002-20260711    clang-17
powerpc               randconfig-002-20260712    gcc-8.5.0
powerpc64             randconfig-001-20260711    gcc-10.5.0
powerpc64             randconfig-001-20260712    gcc-8.5.0
powerpc64             randconfig-002-20260711    gcc-11.5.0
powerpc64             randconfig-002-20260712    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                 randconfig-001-20260711    clang-17
riscv                 randconfig-002-20260711    gcc-8.5.0
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260711    clang-19
s390                  randconfig-002-20260711    gcc-8.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260711    gcc-11.5.0
sh                    randconfig-002-20260711    gcc-9.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-16.1.0
sparc                 randconfig-001-20260711    gcc-16.1.0
sparc                 randconfig-001-20260712    gcc-13.4.0
sparc                          randconfig-002    gcc-11.5.0
sparc                 randconfig-002-20260711    gcc-8.5.0
sparc                 randconfig-002-20260712    gcc-13.4.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-12.5.0
sparc64               randconfig-001-20260711    clang-23
sparc64               randconfig-001-20260712    gcc-13.4.0
sparc64                        randconfig-002    clang-20
sparc64               randconfig-002-20260711    gcc-16.1.0
sparc64               randconfig-002-20260712    gcc-13.4.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    clang-23
um                    randconfig-001-20260711    gcc-14
um                    randconfig-001-20260712    gcc-13.4.0
um                             randconfig-002    clang-23
um                    randconfig-002-20260711    gcc-14
um                    randconfig-002-20260712    gcc-13.4.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260711    gcc-14
x86_64      buildonly-randconfig-001-20260712    gcc-14
x86_64      buildonly-randconfig-002-20260711    gcc-12
x86_64      buildonly-randconfig-002-20260712    gcc-14
x86_64      buildonly-randconfig-003-20260711    clang-22
x86_64      buildonly-randconfig-003-20260712    gcc-14
x86_64      buildonly-randconfig-004-20260711    gcc-14
x86_64      buildonly-randconfig-004-20260712    gcc-14
x86_64      buildonly-randconfig-005-20260711    gcc-14
x86_64      buildonly-randconfig-005-20260712    gcc-14
x86_64      buildonly-randconfig-006-20260711    gcc-14
x86_64      buildonly-randconfig-006-20260712    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260711    clang-22
x86_64                randconfig-002-20260711    gcc-14
x86_64                randconfig-003-20260711    clang-22
x86_64                randconfig-004-20260711    clang-22
x86_64                randconfig-005-20260711    gcc-14
x86_64                randconfig-006-20260711    gcc-14
x86_64                         randconfig-011    gcc-14
x86_64                randconfig-011-20260711    clang-22
x86_64                         randconfig-012    gcc-14
x86_64                randconfig-012-20260711    clang-22
x86_64                         randconfig-013    clang-22
x86_64                randconfig-013-20260711    gcc-14
x86_64                         randconfig-014    gcc-14
x86_64                randconfig-014-20260711    gcc-14
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260711    gcc-14
x86_64                         randconfig-016    clang-22
x86_64                randconfig-016-20260711    clang-22
x86_64                randconfig-071-20260711    clang-22
x86_64                randconfig-072-20260711    gcc-14
x86_64                randconfig-073-20260711    clang-22
x86_64                randconfig-074-20260711    gcc-14
x86_64                randconfig-075-20260711    gcc-14
x86_64                randconfig-076-20260711    gcc-14
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                           alldefconfig    gcc-16.1.0
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                         randconfig-001    gcc-8.5.0
xtensa                randconfig-001-20260711    gcc-14.3.0
xtensa                randconfig-001-20260712    gcc-13.4.0
xtensa                         randconfig-002    gcc-13.4.0
xtensa                randconfig-002-20260711    gcc-8.5.0
xtensa                randconfig-002-20260712    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
