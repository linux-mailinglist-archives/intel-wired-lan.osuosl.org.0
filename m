Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wF9SFTKflWk/SwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 12:14:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD5A155D41
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 12:14:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88FDE805D5;
	Wed, 18 Feb 2026 11:14:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ROeE9XA9GqQY; Wed, 18 Feb 2026 11:14:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9239C80775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771413292;
	bh=eXQCVtHfffqJcYueufMiPvQYAP6lR+jL6MVf5Nw+mpY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5WmEou6SKeYufDRJp1rK3/sbm2R0RZ6yfyJ2J4TlhbazaPHvu3qYz3SLUeaR818ah
	 Xmf4LM97NCEyApsSXrHH7q88eaxpVJArc3Y/BL2Oy/88HOOKKlkl5nZpeml6qaMoBc
	 UEWGrsrRJLGrKOyRu+IwSVP4+ucBIhEB1fy0sSgWwUzP4WIE6COH184GdgfGSZfMiZ
	 TYPZwL1Zfm+wa+dlh0P9Rzj2Va93APUH2UZyhzoGUhAmwWz8IwOjqztWhEir5oFxSY
	 lepbN6ou/I6fuuMi8FVJ7yLa3Q1kmcb+PLGdU+pnWTBY1r56YwW6ccg0MTb3aBABLy
	 4rg1WbIgTzaFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9239C80775;
	Wed, 18 Feb 2026 11:14:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F414206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 11:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4085160804
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 11:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LA3b13ffN2uH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 11:14:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4A657607FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A657607FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A657607FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 11:14:50 +0000 (UTC)
X-CSE-ConnectionGUID: CP4oRpyuTbaoI1/VzGtGmg==
X-CSE-MsgGUID: Iaj9Xp7FQcaK7Bg8VuurUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="76347295"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="76347295"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 03:14:49 -0800
X-CSE-ConnectionGUID: +v5TVltRThutfUH0YPxJsw==
X-CSE-MsgGUID: Jkh/5lLSS9u8iPs/glj42w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="213407147"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 18 Feb 2026 03:14:48 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vsfW2-000000012Ig-03wp;
 Wed, 18 Feb 2026 11:14:46 +0000
Date: Wed, 18 Feb 2026 19:14:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602181924.35CKuO9t-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771413290; x=1802949290;
 h=date:from:to:subject:message-id;
 bh=xcCSaZuaZ0VlGeg/RfKUA6GmlW3XNWUgUMn64wwQ9uQ=;
 b=LHbnau0DlRS+SErB9GlMrI+ke7wONd2QB3DddFPcB4xv+RR1tYaOpebZ
 ITKFu0aMaxnT8TT9WQTtv0ERITWx/fvRgWNq2BqAs0LKa0Mv926FyqsrJ
 vWn4hKHW++xZ3FZkGzCR6FBJWRWYwsXkOOWMA7oNS87QI3HCNE7d6c4lZ
 lIootiHPrg3VIqTm/3tFj8si/G7Ru7HpU5R3PLkwyEzv58DIn2h6sOofV
 TUPXlLC5+zYBI5hQw3NrzyM+4lg2eXbPom1FMJ+Sjo8sgGF7IVN3JP24P
 P5Wpe6k+oePMyXTURYbWOrjKPxEDa+CFhaM8Eo6zBZLj1PMNILC2P2aSR
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LHbnau0D
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fec04ac751e6c3da6db77386548673fe7bbc97db
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: EBD5A155D41
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: fec04ac751e6c3da6db77386548673fe7bbc97db  ice: use ice_update_eth_stats() for representor stats

elapsed time: 819m

configs tested: 248
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                          axs103_defconfig    gcc-15.2.0
arc                      axs103_smp_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                     haps_hs_smp_defconfig    gcc-15.2.0
arc                   randconfig-001-20260218    clang-23
arc                   randconfig-001-20260218    gcc-9.5.0
arc                   randconfig-002-20260218    clang-23
arc                   randconfig-002-20260218    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                            dove_defconfig    gcc-15.2.0
arm                            hisi_defconfig    gcc-15.2.0
arm                         lpc18xx_defconfig    gcc-15.2.0
arm                        multi_v5_defconfig    gcc-15.2.0
arm                        mvebu_v5_defconfig    gcc-15.2.0
arm                             pxa_defconfig    gcc-15.2.0
arm                   randconfig-001-20260218    clang-23
arm                   randconfig-002-20260218    clang-23
arm                   randconfig-003-20260218    clang-23
arm                   randconfig-004-20260218    clang-23
arm                   randconfig-004-20260218    gcc-10.5.0
arm                             rpc_defconfig    gcc-15.2.0
arm                        spear6xx_defconfig    gcc-15.2.0
arm                           spitz_defconfig    gcc-15.2.0
arm                           stm32_defconfig    gcc-15.2.0
arm                        vexpress_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260218    clang-23
arm64                 randconfig-002-20260218    clang-23
arm64                 randconfig-003-20260218    clang-23
arm64                 randconfig-004-20260218    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260218    clang-23
csky                  randconfig-002-20260218    clang-23
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260218    clang-16
hexagon               randconfig-002-20260218    clang-16
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260218    clang-20
i386        buildonly-randconfig-002-20260218    clang-20
i386        buildonly-randconfig-003-20260218    clang-20
i386        buildonly-randconfig-004-20260218    clang-20
i386        buildonly-randconfig-005-20260218    clang-20
i386        buildonly-randconfig-006-20260218    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260218    clang-20
i386                  randconfig-002-20260218    clang-20
i386                  randconfig-003-20260218    clang-20
i386                  randconfig-004-20260218    clang-20
i386                  randconfig-005-20260218    clang-20
i386                  randconfig-006-20260218    clang-20
i386                  randconfig-007-20260218    clang-20
i386                  randconfig-011-20260218    gcc-14
i386                  randconfig-012-20260218    gcc-14
i386                  randconfig-013-20260218    gcc-14
i386                  randconfig-014-20260218    gcc-14
i386                  randconfig-015-20260218    gcc-14
i386                  randconfig-016-20260218    gcc-14
i386                  randconfig-017-20260218    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260218    clang-16
loongarch             randconfig-002-20260218    clang-16
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                       m5249evb_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          eyeq6_defconfig    gcc-15.2.0
mips                      fuloong2e_defconfig    gcc-15.2.0
mips                           ip28_defconfig    gcc-15.2.0
mips                    maltaup_xpa_defconfig    gcc-15.2.0
nios2                         3c120_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260218    clang-16
nios2                 randconfig-002-20260218    clang-16
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc         de0_nano_multicore_defconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                generic-32bit_defconfig    gcc-15.2.0
parisc                randconfig-001-20260218    gcc-8.5.0
parisc                randconfig-002-20260218    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                    adder875_defconfig    gcc-15.2.0
powerpc                     akebono_defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                        icon_defconfig    gcc-15.2.0
powerpc                      mgcoge_defconfig    gcc-15.2.0
powerpc                     ppa8548_defconfig    gcc-15.2.0
powerpc                       ppc64_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260218    gcc-8.5.0
powerpc               randconfig-002-20260218    gcc-8.5.0
powerpc                     redwood_defconfig    gcc-15.2.0
powerpc                      tqm8xx_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260218    gcc-8.5.0
powerpc64             randconfig-002-20260218    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260218    clang-23
riscv                 randconfig-002-20260218    clang-23
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260218    clang-23
s390                  randconfig-002-20260218    clang-23
s390                       zfcpdump_defconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                          kfr2r09_defconfig    gcc-15.2.0
sh                          landisk_defconfig    gcc-15.2.0
sh                          polaris_defconfig    gcc-15.2.0
sh                    randconfig-001-20260218    clang-23
sh                    randconfig-001-20260218    gcc-15.2.0
sh                    randconfig-002-20260218    clang-23
sh                    randconfig-002-20260218    gcc-13.4.0
sh                        sh7763rdp_defconfig    gcc-15.2.0
sh                          urquell_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260218    gcc-10.5.0
sparc                 randconfig-001-20260218    gcc-14.3.0
sparc                 randconfig-002-20260218    gcc-10.5.0
sparc                 randconfig-002-20260218    gcc-8.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260218    gcc-10.5.0
sparc64               randconfig-001-20260218    gcc-11.5.0
sparc64               randconfig-002-20260218    gcc-10.5.0
sparc64               randconfig-002-20260218    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260218    clang-23
um                    randconfig-001-20260218    gcc-10.5.0
um                    randconfig-002-20260218    gcc-10.5.0
um                    randconfig-002-20260218    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260218    gcc-14
x86_64      buildonly-randconfig-002-20260218    clang-20
x86_64      buildonly-randconfig-002-20260218    gcc-14
x86_64      buildonly-randconfig-003-20260218    clang-20
x86_64      buildonly-randconfig-003-20260218    gcc-14
x86_64      buildonly-randconfig-004-20260218    gcc-14
x86_64      buildonly-randconfig-005-20260218    gcc-14
x86_64      buildonly-randconfig-006-20260218    clang-20
x86_64      buildonly-randconfig-006-20260218    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260218    gcc-14
x86_64                randconfig-002-20260218    gcc-14
x86_64                randconfig-003-20260218    gcc-14
x86_64                randconfig-004-20260218    gcc-14
x86_64                randconfig-005-20260218    gcc-14
x86_64                randconfig-006-20260218    gcc-14
x86_64                randconfig-011-20260218    gcc-13
x86_64                randconfig-012-20260218    gcc-13
x86_64                randconfig-013-20260218    gcc-13
x86_64                randconfig-014-20260218    gcc-13
x86_64                randconfig-015-20260218    gcc-13
x86_64                randconfig-016-20260218    gcc-13
x86_64                randconfig-071-20260218    clang-20
x86_64                randconfig-072-20260218    clang-20
x86_64                randconfig-073-20260218    clang-20
x86_64                randconfig-074-20260218    clang-20
x86_64                randconfig-075-20260218    clang-20
x86_64                randconfig-076-20260218    clang-20
x86_64                randconfig-076-20260218    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260218    gcc-10.5.0
xtensa                randconfig-001-20260218    gcc-9.5.0
xtensa                randconfig-002-20260218    gcc-10.5.0
xtensa                    smp_lx200_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
