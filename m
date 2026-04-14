Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMaKNDU73mkxpgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:03:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 202503FA442
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 15:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4D3C61613;
	Tue, 14 Apr 2026 13:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XqtTQyvn5IDU; Tue, 14 Apr 2026 13:03:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 083D261B0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776171826;
	bh=+ZttB44zyDX5Tr2rqgqgrPcvNqqI2RU9BK41dTcpXQ0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SwhiB7eGBYQ6xke9Rw1Dac30Ty22vHvgT4/O+BN98nf3Hg5ee+BcTPBiwWZjIuiZP
	 pxXtgM0hti1mfkx5D+67OyCyFvDAywwrUNZ9sB9XbJi+Hhw3dkLyPr00PG0GuncPW5
	 GeREYAMbsCEirov64EREH4siGkpNlNadf9ponUkC0R6RHNUrwvBcj5e37otXA7kW8o
	 DYerxSCrifCv3CRAuzWMNdzgZqMj+gFkPdfVu9K4pLXeKP1BE6HqpLMIQPJMy6QOaQ
	 PF9rt/3fUz/z47Yt3tr9lEk6HhV+RsGHyBUrbqqv8v2ZQXSFX2NRYskdW/iYsx7jWS
	 Ejiezs1VCO4qQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 083D261B0C;
	Tue, 14 Apr 2026 13:03:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D9D17237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB6D884C1F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:03:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ulcwy6lxRaZB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 13:03:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8AC5484C1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AC5484C1D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AC5484C1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 13:03:42 +0000 (UTC)
X-CSE-ConnectionGUID: wiMCme/9RRGy2x3fe7CNOg==
X-CSE-MsgGUID: D74Rq2YvRLqUmsHfjxNlCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77310357"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77310357"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 06:03:42 -0700
X-CSE-ConnectionGUID: XE+TJsSpTzOKYPkMt37ThQ==
X-CSE-MsgGUID: FLHkLZH8ShGW0w6YXtblbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227437012"
Received: from lkp-server01.sh.intel.com (HELO 7b0b59b3a0d4) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 14 Apr 2026 06:03:40 -0700
Received: from kbuild by 7b0b59b3a0d4 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wCdQY-000000001Sf-0oP7;
 Tue, 14 Apr 2026 13:03:38 +0000
Date: Tue, 14 Apr 2026 21:03:10 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604142102.KgUvbbtR-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776171823; x=1807707823;
 h=date:from:to:subject:message-id;
 bh=2IIYF4275EvUdy9rlRf0/PefqGXTnpIYlVxXddMZeqI=;
 b=hHSdbf2nS5KRSV11pFTOmN4u4cJkyJXzOdEbp8MRL+xbpMxIlUp2Xftr
 5Ahq9DLnOmXWJPSmzY41JoDyCGw6PWFRJj/NVwyq/wzhnDxa9KXRH+hW8
 eXXdJ51x+Xtl38hftxB5FgaUL50kawM9eoaKsfslU23XNwBv4oJAl/Xgh
 c0KNgsHCLMTnwRnFyPFSHjF5jaMADNaO7sb7tmTcmHENl+PnGL4IaukHO
 ewhX1nDR+Cg2YQfhPIh/JHalYJ9tkSZF1UMxC+ZUY1hBIbOwHP65G2PwK
 BH0XlleyG+k0I70p6aV4HID0AJsvk0AE/S/lzyjK7o1acY11uJiVyel9W
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hHSdbf2n
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 2cd7e6971fc2787408ceef17906ea152791448cf
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 202503FA442
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 2cd7e6971fc2787408ceef17906ea152791448cf  sctp: disable BH before calling udp_tunnel_xmit_skb()

elapsed time: 764m

configs tested: 196
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                   randconfig-001-20260414    gcc-9.5.0
arc                   randconfig-002-20260414    gcc-11.5.0
arc                   randconfig-002-20260414    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    gcc-15.2.0
arm                   randconfig-001-20260414    clang-23
arm                   randconfig-001-20260414    gcc-9.5.0
arm                   randconfig-002-20260414    gcc-15.2.0
arm                   randconfig-002-20260414    gcc-9.5.0
arm                   randconfig-003-20260414    clang-23
arm                   randconfig-003-20260414    gcc-9.5.0
arm                   randconfig-004-20260414    gcc-8.5.0
arm                   randconfig-004-20260414    gcc-9.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                 randconfig-001-20260414    gcc-12.5.0
arm64                 randconfig-002-20260414    gcc-11.5.0
arm64                 randconfig-003-20260414    clang-16
arm64                 randconfig-004-20260414    gcc-13.4.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                  randconfig-001-20260414    gcc-15.2.0
csky                  randconfig-002-20260414    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon               randconfig-001-20260414    clang-18
hexagon               randconfig-001-20260414    clang-23
hexagon               randconfig-002-20260414    clang-16
hexagon               randconfig-002-20260414    clang-18
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260414    clang-20
i386        buildonly-randconfig-001-20260414    gcc-14
i386        buildonly-randconfig-002-20260414    clang-20
i386        buildonly-randconfig-002-20260414    gcc-14
i386        buildonly-randconfig-003-20260414    gcc-14
i386        buildonly-randconfig-004-20260414    gcc-14
i386        buildonly-randconfig-005-20260414    gcc-14
i386        buildonly-randconfig-006-20260414    gcc-14
i386                  randconfig-001-20260414    gcc-14
i386                  randconfig-002-20260414    clang-20
i386                  randconfig-003-20260414    gcc-14
i386                  randconfig-004-20260414    clang-20
i386                  randconfig-005-20260414    clang-20
i386                  randconfig-006-20260414    clang-20
i386                  randconfig-007-20260414    gcc-14
i386                  randconfig-011-20260414    clang-20
i386                  randconfig-012-20260414    clang-20
i386                  randconfig-013-20260414    gcc-14
i386                  randconfig-014-20260414    gcc-14
i386                  randconfig-015-20260414    clang-20
i386                  randconfig-016-20260414    clang-20
i386                  randconfig-017-20260414    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch             randconfig-001-20260414    clang-18
loongarch             randconfig-002-20260414    clang-18
loongarch             randconfig-002-20260414    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                     loongson2k_defconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20260414    clang-18
nios2                 randconfig-001-20260414    gcc-11.5.0
nios2                 randconfig-002-20260414    clang-18
nios2                 randconfig-002-20260414    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                randconfig-001-20260414    gcc-14.3.0
parisc                randconfig-001-20260414    gcc-8.5.0
parisc                randconfig-002-20260414    gcc-14.3.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260414    gcc-14.3.0
powerpc               randconfig-001-20260414    gcc-8.5.0
powerpc               randconfig-002-20260414    gcc-14.3.0
powerpc               randconfig-002-20260414    gcc-8.5.0
powerpc64             randconfig-001-20260414    gcc-13.4.0
powerpc64             randconfig-001-20260414    gcc-14.3.0
powerpc64             randconfig-002-20260414    gcc-12.5.0
powerpc64             randconfig-002-20260414    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20260414    clang-23
riscv                 randconfig-001-20260414    gcc-8.5.0
riscv                 randconfig-002-20260414    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260414    clang-23
s390                  randconfig-001-20260414    gcc-8.5.0
s390                  randconfig-002-20260414    clang-23
s390                  randconfig-002-20260414    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260414    gcc-15.2.0
sh                    randconfig-001-20260414    gcc-8.5.0
sh                    randconfig-002-20260414    gcc-15.2.0
sh                    randconfig-002-20260414    gcc-8.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                 randconfig-001-20260414    gcc-15.2.0
sparc                 randconfig-002-20260414    gcc-14.3.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260414    gcc-8.5.0
sparc64               randconfig-002-20260414    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260414    clang-23
um                    randconfig-002-20260414    gcc-12
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260414    gcc-14
x86_64      buildonly-randconfig-002-20260414    gcc-14
x86_64      buildonly-randconfig-003-20260414    gcc-14
x86_64      buildonly-randconfig-004-20260414    clang-20
x86_64      buildonly-randconfig-004-20260414    gcc-14
x86_64      buildonly-randconfig-005-20260414    gcc-14
x86_64      buildonly-randconfig-006-20260414    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260414    clang-20
x86_64                randconfig-001-20260414    gcc-14
x86_64                randconfig-002-20260414    clang-20
x86_64                randconfig-003-20260414    clang-20
x86_64                randconfig-003-20260414    gcc-14
x86_64                randconfig-004-20260414    clang-20
x86_64                randconfig-005-20260414    clang-20
x86_64                randconfig-006-20260414    clang-20
x86_64                randconfig-011-20260414    gcc-14
x86_64                randconfig-012-20260414    clang-20
x86_64                randconfig-013-20260414    gcc-14
x86_64                randconfig-014-20260414    gcc-14
x86_64                randconfig-015-20260414    gcc-14
x86_64                randconfig-016-20260414    clang-20
x86_64                randconfig-071-20260414    gcc-14
x86_64                randconfig-072-20260414    gcc-14
x86_64                randconfig-073-20260414    gcc-14
x86_64                randconfig-074-20260414    gcc-14
x86_64                randconfig-075-20260414    gcc-14
x86_64                randconfig-076-20260414    clang-20
x86_64                randconfig-076-20260414    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    gcc-15.2.0
xtensa                  cadence_csp_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260414    gcc-8.5.0
xtensa                randconfig-002-20260414    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
