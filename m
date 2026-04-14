Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMU6EE+V3mlyGAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 21:28:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 403433FE04F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 21:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D09A6F511;
	Tue, 14 Apr 2026 19:28:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LoVXMeN45G3Y; Tue, 14 Apr 2026 19:28:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF4546F50D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776194889;
	bh=zPFuM7+4K+82JodPSDWzOmWOmesfqQ60cpbYPRFc7R8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nYJe+7FfedsM8HSiXJ8I9EoR7OArU9PUD8yAAZve8L/2aMFRtKiEicp8wD3uuZYzq
	 nVtvmxB9Yk/HXXiT/JN3Qe1l7gls+5NFY8pd1ZpawBO3MXTajJqtmHOw+SVsjy7zUZ
	 atBGo3nWXNFFQO4pJlpwzHjuOqMszxRN5BYJimum8tnRsoqsgaclhcaWaGE/0ACwaU
	 XYqdEg1iiPsfN3EQhInllD+DpOp+UH5PnvHzlzWcMfcYHPaLD01w7wKPRMci0r7iOq
	 JW9KPfF/477mKJOOUWlwL5MwJ1+MVxVjAuwyEUBcbNF2mL5/5zREh0RcZ9FRxFIiwT
	 bUbncOuE6PL8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF4546F50D;
	Tue, 14 Apr 2026 19:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E884C237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 19:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D92CC6F50A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 19:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZOhj_mULSlH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 19:28:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D2C376F509
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2C376F509
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2C376F509
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 19:28:06 +0000 (UTC)
X-CSE-ConnectionGUID: eDosLGC9TsmHJl0DzRm70g==
X-CSE-MsgGUID: +SuyikyhSCq99eliY3/4Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88545451"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88545451"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 12:28:06 -0700
X-CSE-ConnectionGUID: HWopm2bqSRWX6qu2rtSDyQ==
X-CSE-MsgGUID: V0EHMaAySVKwasSGpl3N8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="253579609"
Received: from lkp-server01.sh.intel.com (HELO 7b0b59b3a0d4) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 14 Apr 2026 12:28:04 -0700
Received: from kbuild by 7b0b59b3a0d4 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wCjQY-000000001nV-0gLk;
 Tue, 14 Apr 2026 19:28:02 +0000
Date: Wed, 15 Apr 2026 03:27:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604150334.m8vJQWh5-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776194887; x=1807730887;
 h=date:from:to:subject:message-id;
 bh=5zYq30Ct/lAPUtNqbFp0AbE7TePAvrVu89RzYXa5nRE=;
 b=VNh3vp7WR0mcbwN397XNiQoYtcCDGp3XCKQCUtIkt4tBUEakSzFmZo3W
 VJeLih6MEHBBkhiZUHVK3CZSLp2tlhew9IfrIe4YeZqIj0bJcgtqxwk2R
 kZxIySWLvoZWe/v4eovU8sYppiw7vJJVp1gyz/MTW8164amtRWxtwmfQE
 w+OGE86+dzqlmmKS6n7rahHwae+OJaVuO1cyEJWsWp/B6TZPpMMeHhIIE
 ed2EGVRSGmaTF5UiAS2Q/F8XPMNfWA6Ps1FPoyqNJNb09+PcDHYYixu6N
 Fo5slPdIfowf+hY2zVMjJJ8X+7cjbtU2qnu+Rh80e8V1KIkOhWgqWBEmk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VNh3vp7W
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7d42ffb979fa89770a7f45e66b100e7f9b212515
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
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: 403433FE04F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 7d42ffb979fa89770a7f45e66b100e7f9b212515  ice: fix SMA and U.FL pin state changes affecting paired pin

elapsed time: 1107m

configs tested: 155
configs skipped: 5

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
arc                   randconfig-001-20260414    gcc-9.5.0
arc                   randconfig-002-20260414    gcc-11.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                   randconfig-001-20260414    clang-23
arm                   randconfig-002-20260414    gcc-15.2.0
arm                   randconfig-003-20260414    clang-23
arm                   randconfig-004-20260414    gcc-8.5.0
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260414    gcc-12.5.0
arm64                 randconfig-002-20260414    gcc-11.5.0
arm64                 randconfig-003-20260414    clang-16
arm64                 randconfig-004-20260414    gcc-13.4.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260414    gcc-15.2.0
csky                  randconfig-002-20260414    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260414    clang-23
hexagon               randconfig-002-20260414    clang-16
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260414    clang-20
i386        buildonly-randconfig-002-20260414    clang-20
i386        buildonly-randconfig-003-20260414    gcc-14
i386        buildonly-randconfig-004-20260414    gcc-14
i386        buildonly-randconfig-005-20260414    gcc-14
i386        buildonly-randconfig-006-20260414    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20260414    gcc-14
i386                  randconfig-002-20260414    clang-20
i386                  randconfig-003-20260414    gcc-14
i386                  randconfig-004-20260414    clang-20
i386                  randconfig-005-20260414    clang-20
i386                  randconfig-011-20260414    clang-20
i386                  randconfig-012-20260414    clang-20
i386                  randconfig-013-20260414    gcc-14
i386                  randconfig-014-20260414    gcc-14
i386                  randconfig-015-20260414    clang-20
i386                  randconfig-016-20260414    clang-20
i386                  randconfig-017-20260414    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260414    clang-18
loongarch             randconfig-002-20260414    clang-23
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
nios2                 randconfig-001-20260414    gcc-11.5.0
nios2                 randconfig-002-20260414    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260414    gcc-8.5.0
parisc                randconfig-002-20260414    gcc-14.3.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                       ebony_defconfig    clang-23
powerpc               randconfig-001-20260414    gcc-8.5.0
powerpc               randconfig-002-20260414    gcc-8.5.0
powerpc64             randconfig-001-20260414    gcc-13.4.0
powerpc64             randconfig-002-20260414    gcc-12.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260414    clang-23
riscv                 randconfig-002-20260414    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                  randconfig-001-20260414    clang-23
s390                  randconfig-002-20260414    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260414    gcc-15.2.0
sh                    randconfig-002-20260414    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260414    gcc-15.2.0
sparc                 randconfig-002-20260414    gcc-14.3.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260414    gcc-8.5.0
sparc64               randconfig-002-20260414    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260414    clang-23
um                    randconfig-002-20260414    gcc-12
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260414    gcc-14
x86_64      buildonly-randconfig-002-20260414    gcc-14
x86_64      buildonly-randconfig-003-20260414    gcc-14
x86_64      buildonly-randconfig-004-20260414    clang-20
x86_64      buildonly-randconfig-005-20260414    gcc-14
x86_64      buildonly-randconfig-006-20260414    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260414    gcc-14
x86_64                randconfig-002-20260414    clang-20
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
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260414    gcc-8.5.0
xtensa                randconfig-002-20260414    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
