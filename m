Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM/7OSWdgmlgWwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 02:13:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D7AE0585
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 02:13:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 793F6607DF;
	Wed,  4 Feb 2026 01:13:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SVyDkEMvKTZS; Wed,  4 Feb 2026 01:13:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54942608BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770167585;
	bh=rLxRg4SDQSn2Gs4WE9KMvML+zyP2wXQmQwsB5E8JEBw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=94EQ92ZopqpK8AqzbFCsFihCW09aM3wXyBlE7ef1PNqbWSW/a0Jbh8IcX2RglQO/V
	 RjKwfIY1mrzU/qHbwHmbd9m0K2pOnjNCGgDeNrQPjQVwWUcHFl6/pFG8HYTViIUjB8
	 dUCv5/nRQAr3P4I28enFZ34okxht6HdvmgzGpo6j39tJqA9gXJ0G003/1xM6YC+HLA
	 tI/n9jCpCoqn3UQOvKBpM4YUKzA6KxE8zqFQD8vP9x5VuuhZuaVu/hesc3g513N4TJ
	 OJInL4yXuLWEI4oZtw5/QHfeaM4ZznAPULQ02J1+uQrlPf8b1U0J+hZcq2j/42g4HC
	 /LGDtaSWFk1kA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54942608BD;
	Wed,  4 Feb 2026 01:13:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 25CC3173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 01:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 046E04056E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 01:13:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B2fDe40RrJtD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 01:13:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F8DE40232
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F8DE40232
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F8DE40232
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 01:13:01 +0000 (UTC)
X-CSE-ConnectionGUID: Z2n7ybSaSLOCckbBJbY73A==
X-CSE-MsgGUID: +8bVeI6/SjSEhf36U85zTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88926618"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="88926618"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 17:13:00 -0800
X-CSE-ConnectionGUID: QKP96YXJRjSooooc16oe1g==
X-CSE-MsgGUID: 7KBBC/hzQXOjZhGfJXEEeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="209662883"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 03 Feb 2026 17:13:00 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vnRRx-00000000hLZ-3Njk;
 Wed, 04 Feb 2026 01:12:57 +0000
Date: Wed, 04 Feb 2026 09:12:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602040959.Wywx8Vhc-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770167581; x=1801703581;
 h=date:from:to:subject:message-id;
 bh=tT25oAeCDX1yGS9RJ1Pff44kaehGQxHN/bdZ8j1QHSA=;
 b=WLJtqMMwad73zB7mM+VZ9ntYbIkJnej0tRPjfo2BIwbSYUfL/jn/DNCL
 m1dIAGp2po3PGGWqHgckVwX+BSy8yxstGq1t3P/QvFoMyCDk2y/OQi8G9
 DXgyzppglBprwMry5NM2iFtAwdOPIwXygtvkU6OmJEi87vg0EljapAl4K
 /rNXNnOQy08RfvCeH6Gt4t9ymKzCsXJRu487R5us0FCJ4f5xqcRp1vgGX
 VlBVrGOd8bPOR6tzHUrnab49mmUaG2iQNXp23rtDpsCmVb4UNnIU2A/rT
 dx5gKcuUJ825N5FQRpvkkWj1CIhSO1Hrn8M3ZUNJy56wrLulxLLZTE8O1
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WLJtqMMw
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 3125fc17016945b11e9725c6aff30ff3326fd58f
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: A9D7AE0585
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 3125fc17016945b11e9725c6aff30ff3326fd58f  net: spacemit: k1-emac: fix jumbo frame support

elapsed time: 1259m

configs tested: 314
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
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260203    gcc-12.5.0
arc                   randconfig-001-20260204    gcc-8.5.0
arc                   randconfig-001-20260204    gcc-9.5.0
arc                   randconfig-002-20260203    gcc-12.5.0
arc                   randconfig-002-20260204    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                          ep93xx_defconfig    gcc-15.2.0
arm                          pxa910_defconfig    gcc-15.2.0
arm                   randconfig-001-20260203    gcc-12.5.0
arm                   randconfig-001-20260204    clang-22
arm                   randconfig-001-20260204    gcc-8.5.0
arm                   randconfig-002-20260203    gcc-12.5.0
arm                   randconfig-002-20260204    gcc-11.5.0
arm                   randconfig-002-20260204    gcc-8.5.0
arm                   randconfig-003-20260203    gcc-12.5.0
arm                   randconfig-003-20260204    clang-22
arm                   randconfig-003-20260204    gcc-8.5.0
arm                   randconfig-004-20260203    gcc-12.5.0
arm                   randconfig-004-20260204    gcc-8.5.0
arm                        spear6xx_defconfig    gcc-15.2.0
arm                        vexpress_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260203    gcc-15.2.0
arm64                 randconfig-001-20260204    gcc-11.5.0
arm64                 randconfig-001-20260204    gcc-8.5.0
arm64                 randconfig-002-20260203    gcc-15.2.0
arm64                 randconfig-002-20260204    clang-22
arm64                 randconfig-002-20260204    gcc-11.5.0
arm64                 randconfig-003-20260203    gcc-15.2.0
arm64                 randconfig-003-20260204    clang-22
arm64                 randconfig-003-20260204    gcc-11.5.0
arm64                 randconfig-004-20260203    gcc-15.2.0
arm64                 randconfig-004-20260204    gcc-11.5.0
arm64                 randconfig-004-20260204    gcc-14.3.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260203    gcc-15.2.0
csky                  randconfig-001-20260204    gcc-11.5.0
csky                  randconfig-002-20260203    gcc-15.2.0
csky                  randconfig-002-20260204    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260203    clang-22
hexagon               randconfig-001-20260204    clang-19
hexagon               randconfig-001-20260204    gcc-15.2.0
hexagon               randconfig-002-20260203    clang-22
hexagon               randconfig-002-20260204    clang-18
hexagon               randconfig-002-20260204    gcc-15.2.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260203    clang-20
i386        buildonly-randconfig-001-20260204    clang-20
i386        buildonly-randconfig-001-20260204    gcc-14
i386        buildonly-randconfig-002-20260203    clang-20
i386        buildonly-randconfig-002-20260204    gcc-14
i386        buildonly-randconfig-003-20260203    clang-20
i386        buildonly-randconfig-003-20260204    gcc-14
i386        buildonly-randconfig-004-20260203    clang-20
i386        buildonly-randconfig-004-20260204    gcc-14
i386        buildonly-randconfig-005-20260203    clang-20
i386        buildonly-randconfig-005-20260204    gcc-14
i386        buildonly-randconfig-006-20260203    clang-20
i386        buildonly-randconfig-006-20260204    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260204    gcc-14
i386                  randconfig-002-20260204    gcc-14
i386                  randconfig-003-20260204    clang-20
i386                  randconfig-003-20260204    gcc-14
i386                  randconfig-004-20260204    gcc-12
i386                  randconfig-004-20260204    gcc-14
i386                  randconfig-005-20260204    gcc-14
i386                  randconfig-006-20260204    gcc-14
i386                  randconfig-007-20260204    gcc-14
i386                  randconfig-011-20260203    gcc-14
i386                  randconfig-011-20260204    clang-20
i386                  randconfig-012-20260203    gcc-14
i386                  randconfig-012-20260204    gcc-14
i386                  randconfig-013-20260203    gcc-14
i386                  randconfig-013-20260204    clang-20
i386                  randconfig-014-20260203    gcc-14
i386                  randconfig-014-20260204    clang-20
i386                  randconfig-015-20260203    gcc-14
i386                  randconfig-015-20260204    gcc-13
i386                  randconfig-016-20260203    gcc-14
i386                  randconfig-016-20260204    clang-20
i386                  randconfig-017-20260203    gcc-14
i386                  randconfig-017-20260204    clang-20
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260203    clang-22
loongarch             randconfig-001-20260204    gcc-15.2.0
loongarch             randconfig-002-20260203    clang-22
loongarch             randconfig-002-20260204    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                        bcm63xx_defconfig    gcc-15.2.0
mips                      fuloong2e_defconfig    gcc-15.2.0
nios2                         10m50_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260203    clang-22
nios2                 randconfig-001-20260204    gcc-11.5.0
nios2                 randconfig-001-20260204    gcc-15.2.0
nios2                 randconfig-002-20260203    clang-22
nios2                 randconfig-002-20260204    gcc-11.5.0
nios2                 randconfig-002-20260204    gcc-15.2.0
openrisc                         alldefconfig    gcc-15.2.0
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260203    gcc-12.5.0
parisc                randconfig-001-20260204    gcc-8.5.0
parisc                randconfig-002-20260203    gcc-12.5.0
parisc                randconfig-002-20260204    gcc-10.5.0
parisc64                            defconfig    clang-19
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                     asp8347_defconfig    gcc-15.2.0
powerpc                       eiger_defconfig    gcc-15.2.0
powerpc                   microwatt_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260203    gcc-12.5.0
powerpc               randconfig-001-20260204    clang-22
powerpc               randconfig-002-20260203    gcc-12.5.0
powerpc               randconfig-002-20260204    gcc-14.3.0
powerpc                     tqm8541_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260203    gcc-12.5.0
powerpc64             randconfig-001-20260204    clang-19
powerpc64             randconfig-002-20260203    gcc-12.5.0
powerpc64             randconfig-002-20260204    gcc-11.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260203    gcc-8.5.0
riscv                 randconfig-001-20260204    gcc-8.5.0
riscv                 randconfig-002-20260203    gcc-8.5.0
riscv                 randconfig-002-20260204    clang-22
riscv                 randconfig-002-20260204    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260203    gcc-8.5.0
s390                  randconfig-001-20260204    clang-19
s390                  randconfig-001-20260204    gcc-8.5.0
s390                  randconfig-002-20260203    gcc-8.5.0
s390                  randconfig-002-20260204    gcc-8.5.0
s390                  randconfig-002-20260204    gcc-9.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-15.2.0
sh                               j2_defconfig    gcc-15.2.0
sh                            migor_defconfig    gcc-15.2.0
sh                    randconfig-001-20260203    gcc-8.5.0
sh                    randconfig-001-20260204    gcc-14.3.0
sh                    randconfig-001-20260204    gcc-8.5.0
sh                    randconfig-002-20260203    gcc-8.5.0
sh                    randconfig-002-20260204    gcc-12.5.0
sh                    randconfig-002-20260204    gcc-8.5.0
sh                   sh7724_generic_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260203    gcc-13.4.0
sparc                 randconfig-001-20260204    gcc-8.5.0
sparc                 randconfig-002-20260203    gcc-13.4.0
sparc                 randconfig-002-20260204    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260203    gcc-13.4.0
sparc64               randconfig-001-20260204    clang-22
sparc64               randconfig-001-20260204    gcc-8.5.0
sparc64               randconfig-002-20260203    gcc-13.4.0
sparc64               randconfig-002-20260204    gcc-8.5.0
sparc64               randconfig-002-20260204    gcc-9.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-22
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260203    gcc-13.4.0
um                    randconfig-001-20260204    gcc-14
um                    randconfig-001-20260204    gcc-8.5.0
um                    randconfig-002-20260203    gcc-13.4.0
um                    randconfig-002-20260204    gcc-14
um                    randconfig-002-20260204    gcc-8.5.0
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260204    gcc-12
x86_64      buildonly-randconfig-002-20260204    gcc-14
x86_64      buildonly-randconfig-003-20260204    clang-20
x86_64      buildonly-randconfig-004-20260204    gcc-14
x86_64      buildonly-randconfig-005-20260204    clang-20
x86_64      buildonly-randconfig-006-20260204    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260203    clang-20
x86_64                randconfig-001-20260204    gcc-13
x86_64                randconfig-002-20260203    clang-20
x86_64                randconfig-002-20260204    gcc-14
x86_64                randconfig-003-20260203    clang-20
x86_64                randconfig-003-20260204    gcc-14
x86_64                randconfig-004-20260203    clang-20
x86_64                randconfig-004-20260204    gcc-14
x86_64                randconfig-005-20260203    clang-20
x86_64                randconfig-005-20260204    clang-20
x86_64                randconfig-006-20260203    clang-20
x86_64                randconfig-006-20260204    clang-20
x86_64                randconfig-011-20260203    gcc-14
x86_64                randconfig-011-20260204    clang-20
x86_64                randconfig-012-20260203    gcc-14
x86_64                randconfig-012-20260204    clang-20
x86_64                randconfig-012-20260204    gcc-14
x86_64                randconfig-013-20260203    gcc-14
x86_64                randconfig-013-20260204    clang-20
x86_64                randconfig-014-20260203    gcc-14
x86_64                randconfig-014-20260204    clang-20
x86_64                randconfig-014-20260204    gcc-14
x86_64                randconfig-015-20260203    gcc-14
x86_64                randconfig-015-20260204    clang-20
x86_64                randconfig-015-20260204    gcc-14
x86_64                randconfig-016-20260203    gcc-14
x86_64                randconfig-016-20260204    clang-20
x86_64                randconfig-016-20260204    gcc-14
x86_64                randconfig-071-20260204    gcc-14
x86_64                randconfig-072-20260204    gcc-14
x86_64                randconfig-073-20260204    gcc-14
x86_64                randconfig-074-20260204    gcc-14
x86_64                randconfig-075-20260204    gcc-14
x86_64                randconfig-076-20260204    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260203    gcc-13.4.0
xtensa                randconfig-001-20260204    gcc-8.5.0
xtensa                randconfig-001-20260204    gcc-9.5.0
xtensa                randconfig-002-20260203    gcc-13.4.0
xtensa                randconfig-002-20260204    gcc-12.5.0
xtensa                randconfig-002-20260204    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
