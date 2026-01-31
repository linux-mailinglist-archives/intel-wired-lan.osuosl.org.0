Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMGjKpwIfmnXUwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 14:50:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAD7C214A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 14:50:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7648860B2B;
	Sat, 31 Jan 2026 13:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2e4a7uDfW4Sh; Sat, 31 Jan 2026 13:50:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BCB660B2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769867416;
	bh=2GEVw/i15JxXe+msT/PcUN8JZn5vUkXYuHCuAIUc7gs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lbEfVqGslgjGv27FNEbSQDPs4uB230RtvHM9ARF8MWvY4SonPURWE+5gyIxqcXXln
	 f02cJjILxiaLFNS+gKpMdbwteAkVKVGFGHwzC0JJsyU0TEsEQWp8k/e6Un7vHxEE1Z
	 VhUBu6L+fF6r5D9Nbs0eJpCoOZTcccPubbVl5N3+pUPRsqRKdQ4POu9Pb2NO0D90xT
	 /Y4ZwpvwtyXZT6Q3kOhXnEmxPoyfDtd0vWsmMb2HX51yYr3u+eky64/qrxOjuAUfMy
	 sMDt4hOUzjwigw58BtINUo5pUp29+f5aejENa5UkcwptU96NcBUlXnvw9z+ryWpw5Y
	 XHdAWHsnIgedw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BCB660B2C;
	Sat, 31 Jan 2026 13:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BBA21F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 13:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0DAA409B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 13:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6EDjMfTP0W_k for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 13:50:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B7187409AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7187409AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7187409AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 13:50:13 +0000 (UTC)
X-CSE-ConnectionGUID: T2yiuLwVQqOUMas0avWsKw==
X-CSE-MsgGUID: WtIKpFF9R+K2DTs+kFUcgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="70299389"
X-IronPort-AV: E=Sophos;i="6.21,265,1763452800"; d="scan'208";a="70299389"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2026 05:50:12 -0800
X-CSE-ConnectionGUID: 0S4kuKGnSWStzqTao3AV6w==
X-CSE-MsgGUID: dgQmzT6SRliilhsdDInRrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,265,1763452800"; d="scan'208";a="232014777"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 31 Jan 2026 05:50:11 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vmBMX-00000000e4e-2Zcv;
 Sat, 31 Jan 2026 13:50:09 +0000
Date: Sat, 31 Jan 2026 21:49:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601312105.76oyYUKQ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769867413; x=1801403413;
 h=date:from:to:subject:message-id;
 bh=MflrEcIR6C7hUhcmoIdIEmBSmiTmts77VHaLVMmxQM8=;
 b=HDSJa9a2ze0Tdd0IjXqWIuWHfoAkn+unGqQEXUZfZsoVfD5vKJXI/JAg
 crVBvgx49mi8OuSLfS4Nb5Up8WRtVLR5TVbSwpxHJdQBjGXwzgXuvuINq
 EbPvvGBIRcY3N6fmHYSiYzXMz9hgZjzhGq4PdNwsofsuialQB67TJr7CQ
 0I4y2oaFC3kpAG4N+RVxeaw3Th7re/D9TPnF6eqeFUwSP6Z60nMD2c7nc
 hl1T6fHOelDtM91ChizwhGSApD0pRfjnMdlasKjwNkFiCNFkZAsbOom60
 rcrY1yNVrIn+De1FgD5maWp9b0HVucGaFmk7xAOzu6cPVpylL7GB4IHvz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HDSJa9a2
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7af1af1f41319e9d7355c1e437ea2c58e6dbe158
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5FAD7C214A
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 7af1af1f41319e9d7355c1e437ea2c58e6dbe158  idpf: change IRQ naming to match netdev and ethtool queue numbering

elapsed time: 1252m

configs tested: 161
configs skipped: 4

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
arc                   randconfig-001-20260131    gcc-10.5.0
arc                   randconfig-002-20260131    gcc-14.3.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.2.0
arm                          ep93xx_defconfig    clang-22
arm                       multi_v4t_defconfig    clang-16
arm                   randconfig-001-20260131    clang-22
arm                   randconfig-002-20260131    gcc-8.5.0
arm                   randconfig-003-20260131    gcc-8.5.0
arm                   randconfig-004-20260131    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260131    gcc-12.5.0
arm64                 randconfig-002-20260131    clang-22
arm64                 randconfig-003-20260131    clang-22
arm64                 randconfig-004-20260131    gcc-11.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                  randconfig-001-20260131    gcc-14.3.0
csky                  randconfig-002-20260131    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon               randconfig-001-20260131    clang-22
hexagon               randconfig-002-20260131    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260131    gcc-14
i386        buildonly-randconfig-002-20260131    gcc-14
i386        buildonly-randconfig-003-20260131    gcc-14
i386        buildonly-randconfig-004-20260131    gcc-14
i386        buildonly-randconfig-005-20260131    clang-20
i386        buildonly-randconfig-006-20260131    gcc-12
i386                  randconfig-001-20260131    gcc-14
i386                  randconfig-002-20260131    gcc-14
i386                  randconfig-003-20260131    gcc-12
i386                  randconfig-004-20260131    clang-20
i386                  randconfig-005-20260131    gcc-14
i386                  randconfig-006-20260131    gcc-14
i386                  randconfig-007-20260131    gcc-14
i386                  randconfig-011-20260131    gcc-14
i386                  randconfig-012-20260131    clang-20
i386                  randconfig-013-20260131    gcc-14
i386                  randconfig-014-20260131    gcc-14
i386                  randconfig-015-20260131    gcc-14
i386                  randconfig-016-20260131    gcc-14
i386                  randconfig-017-20260131    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260131    clang-22
loongarch             randconfig-002-20260131    clang-22
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
mips                           ip22_defconfig    gcc-15.2.0
mips                      pic32mzda_defconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260131    gcc-10.5.0
nios2                 randconfig-002-20260131    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
openrisc                       virt_defconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260131    gcc-8.5.0
parisc                randconfig-002-20260131    gcc-8.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                   bluestone_defconfig    clang-22
powerpc                       eiger_defconfig    clang-22
powerpc               randconfig-001-20260131    gcc-9.5.0
powerpc               randconfig-002-20260131    gcc-8.5.0
powerpc64             randconfig-001-20260131    gcc-8.5.0
powerpc64             randconfig-002-20260131    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20260131    gcc-8.5.0
riscv                 randconfig-002-20260131    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                  randconfig-001-20260131    gcc-8.5.0
s390                  randconfig-002-20260131    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                        edosk7705_defconfig    gcc-15.2.0
sh                    randconfig-001-20260131    gcc-9.5.0
sh                    randconfig-002-20260131    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260131    gcc-15.2.0
sparc                 randconfig-002-20260131    gcc-13.4.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260131    clang-22
sparc64               randconfig-002-20260131    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260131    gcc-14
um                    randconfig-002-20260131    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260131    gcc-14
x86_64      buildonly-randconfig-002-20260131    gcc-14
x86_64      buildonly-randconfig-003-20260131    gcc-14
x86_64      buildonly-randconfig-004-20260131    gcc-14
x86_64      buildonly-randconfig-005-20260131    gcc-14
x86_64      buildonly-randconfig-006-20260131    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260131    clang-20
x86_64                randconfig-002-20260131    clang-20
x86_64                randconfig-003-20260131    clang-20
x86_64                randconfig-004-20260131    gcc-13
x86_64                randconfig-005-20260131    clang-20
x86_64                randconfig-006-20260131    clang-20
x86_64                randconfig-011-20260131    gcc-12
x86_64                randconfig-012-20260131    clang-20
x86_64                randconfig-013-20260131    gcc-14
x86_64                randconfig-014-20260131    gcc-14
x86_64                randconfig-015-20260131    gcc-14
x86_64                randconfig-016-20260131    clang-20
x86_64                randconfig-071-20260131    gcc-14
x86_64                randconfig-072-20260131    clang-20
x86_64                randconfig-073-20260131    gcc-14
x86_64                randconfig-074-20260131    clang-20
x86_64                randconfig-075-20260131    gcc-14
x86_64                randconfig-076-20260131    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260131    gcc-14.3.0
xtensa                randconfig-002-20260131    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
