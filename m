Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5MUEBv8jI2ptjQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 21:31:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD92764AF49
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 21:31:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=vUSwKahX;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE6A60A6C;
	Fri,  5 Jun 2026 19:31:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UYH4u-wPiMRR; Fri,  5 Jun 2026 19:31:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68EE3606C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780687867;
	bh=HFirEKXfP8o9ojxBJZQxQmMBla3JA1m+aruQ9uagrD4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vUSwKahX/aa3+2zASQeGzBLQ+Yw+TFaH79xGnGO3gpJl7RqB1Y+ppp9+bTxTjCaSs
	 OUywpZ40kJQIqoiiSWnrSRX7RkZZKEo8Q8KEfYs7TuZ9JES1RImoaUkXKunAdWgofp
	 DB8YHEsHoYwGKOAuKMRuRnLcvrdhJYw8EBBf/+RPisHyaP4fYhU8/AladKKcgVuS+K
	 n1iEiAK3j72UMhWSW1a9dxksAKp4mnDyHhwtLksaKSM+UccPJD6/6V0vODt8EUWPj2
	 k8r6ahozWsiOOIDpQtTAwaBfR3sfzFVQ/NBL8uae2WsmKb4y1gpiapGSOVl8eyr0H1
	 +DBCjJzJ2lEoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68EE3606C5;
	Fri,  5 Jun 2026 19:31:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 52657388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 19:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 358FD60A6C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 19:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bbXvArJb9rlC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 19:31:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 018D4606C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 018D4606C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 018D4606C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 19:31:04 +0000 (UTC)
X-CSE-ConnectionGUID: yezi9vXySQ2WS0EbEu+7Mg==
X-CSE-MsgGUID: Z1UsZG3oR06XuklfXeupjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="91840492"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="91840492"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 12:31:03 -0700
X-CSE-ConnectionGUID: 9cLEYrZYQOu3WYiurRuIWA==
X-CSE-MsgGUID: TdM4Wg7HRJCF0eqUlpjGfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="283007096"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 05 Jun 2026 12:31:02 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wVaFv-00000000GPM-13Uj;
 Fri, 05 Jun 2026 19:30:59 +0000
Date: Sat, 06 Jun 2026 03:30:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606060350.bWGOH3tm-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780687865; x=1812223865;
 h=date:from:to:subject:message-id;
 bh=ApVFtRD5mWtX9NzF6MjEbMuESNbeuLxHYXQsXHG1fvc=;
 b=SMxQpa0G3yRrWIg9JblNMDmWZxlk3XrDJD8qXxTjVa5871s1ZdE0HLRy
 Nw+o2HVdPTeTaw94bpllnW1LAxvjZFkMxJn+B+L2XJ4hYLa6OTMgD1fmi
 bku8+gRsXzF42FiSyFrne9hn6B3uzHat7zGTqlH1IcOQEf5GOTvXFiqK/
 SmfO3iKX6N3oBlX9jRzuCFytOipcK97yJdy1uGMPyNBQhW4Inwz36Tuks
 fI+IKgSsxWbBEF/21V3twOGV8L5PAdV2dZjvwgWX/5mr3zEWnYASOHgvm
 5g7MYPZtBzqJjb9J4L00HVz2AIH/1vPnW8STWLn51btD2tEHkneOELiTF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SMxQpa0G
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 dfcc2ff12925d99e858eaf539eaa4aaaf81fe2a6
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD92764AF49

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: dfcc2ff12925d99e858eaf539eaa4aaaf81fe2a6  selftests/net: bind_bhash: fix memory leak in bind_socket

elapsed time: 3833m

configs tested: 300
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-17
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260604    clang-17
arc                   randconfig-001-20260604    gcc-10.5.0
arc                   randconfig-002-20260604    clang-17
arc                   randconfig-002-20260604    gcc-16.1.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-17
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260604    clang-17
arm                   randconfig-001-20260604    gcc-8.5.0
arm                   randconfig-002-20260604    clang-17
arm                   randconfig-002-20260604    gcc-14.3.0
arm                   randconfig-003-20260604    clang-17
arm                   randconfig-003-20260604    clang-23
arm                   randconfig-004-20260604    clang-17
arm                   randconfig-004-20260604    clang-23
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260604    clang-17
arm64                 randconfig-001-20260604    clang-23
arm64                 randconfig-002-20260604    clang-17
arm64                 randconfig-003-20260604    clang-17
arm64                 randconfig-003-20260604    clang-23
arm64                 randconfig-004-20260604    clang-17
arm64                 randconfig-004-20260604    clang-23
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260604    clang-17
csky                  randconfig-001-20260604    gcc-16.1.0
csky                  randconfig-002-20260604    clang-17
csky                  randconfig-002-20260604    gcc-16.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260604    clang-23
hexagon               randconfig-001-20260604    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260604    clang-16
hexagon               randconfig-002-20260604    gcc-11.5.0
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260604    clang-20
i386        buildonly-randconfig-002-20260604    clang-20
i386        buildonly-randconfig-002-20260604    gcc-14
i386        buildonly-randconfig-003-20260604    clang-20
i386        buildonly-randconfig-003-20260604    gcc-14
i386        buildonly-randconfig-004-20260604    clang-20
i386        buildonly-randconfig-005-20260604    clang-20
i386        buildonly-randconfig-005-20260604    gcc-14
i386        buildonly-randconfig-006-20260604    clang-20
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                  randconfig-001-20260604    clang-20
i386                  randconfig-002-20260604    clang-20
i386                  randconfig-003-20260604    clang-20
i386                  randconfig-003-20260604    gcc-13
i386                  randconfig-004-20260604    clang-20
i386                  randconfig-005-20260604    clang-20
i386                  randconfig-006-20260604    clang-20
i386                  randconfig-007-20260604    clang-20
i386                  randconfig-011-20260604    gcc-14
i386                  randconfig-012-20260604    gcc-14
i386                  randconfig-013-20260604    gcc-14
i386                  randconfig-014-20260604    gcc-12
i386                  randconfig-014-20260604    gcc-14
i386                  randconfig-015-20260604    clang-20
i386                  randconfig-015-20260604    gcc-14
i386                  randconfig-016-20260604    clang-20
i386                  randconfig-016-20260604    gcc-14
i386                  randconfig-017-20260604    clang-20
i386                  randconfig-017-20260604    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260604    clang-23
loongarch             randconfig-001-20260604    gcc-11.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260604    gcc-11.5.0
loongarch             randconfig-002-20260604    gcc-12.5.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-17
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-17
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260604    gcc-11.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260604    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-17
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-17
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    gcc-13.4.0
parisc                         randconfig-001    gcc-8.5.0
parisc                randconfig-001-20260604    gcc-8.5.0
parisc                         randconfig-002    gcc-8.5.0
parisc                randconfig-002-20260604    gcc-12.5.0
parisc                randconfig-002-20260604    gcc-8.5.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-17
powerpc                           allnoconfig    gcc-15.2.0
powerpc                        randconfig-001    gcc-13.4.0
powerpc                        randconfig-001    gcc-8.5.0
powerpc               randconfig-001-20260604    clang-23
powerpc               randconfig-001-20260604    gcc-8.5.0
powerpc                        randconfig-002    gcc-10.5.0
powerpc                        randconfig-002    gcc-8.5.0
powerpc               randconfig-002-20260604    clang-17
powerpc               randconfig-002-20260604    gcc-8.5.0
powerpc64                      randconfig-001    clang-17
powerpc64                      randconfig-001    gcc-8.5.0
powerpc64             randconfig-001-20260604    clang-23
powerpc64             randconfig-001-20260604    gcc-8.5.0
powerpc64                      randconfig-002    clang-23
powerpc64                      randconfig-002    gcc-8.5.0
powerpc64             randconfig-002-20260604    clang-23
powerpc64             randconfig-002-20260604    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-17
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-17
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    clang-17
riscv                 randconfig-001-20260604    clang-17
riscv                 randconfig-001-20260604    clang-23
riscv                          randconfig-002    clang-17
riscv                 randconfig-002-20260604    clang-16
riscv                 randconfig-002-20260604    clang-17
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-17
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    clang-17
s390                  randconfig-001-20260604    clang-17
s390                  randconfig-001-20260604    clang-23
s390                           randconfig-002    clang-17
s390                  randconfig-002-20260604    clang-17
s390                  randconfig-002-20260604    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-17
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                             randconfig-001    clang-17
sh                    randconfig-001-20260604    clang-17
sh                    randconfig-001-20260604    gcc-16.1.0
sh                             randconfig-002    clang-17
sh                    randconfig-002-20260604    clang-17
sh                    randconfig-002-20260604    gcc-16.1.0
sh                           se7780_defconfig    gcc-16.1.0
sh                          urquell_defconfig    gcc-16.1.0
sparc                             allnoconfig    clang-17
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-11.5.0
sparc                 randconfig-001-20260604    gcc-11.5.0
sparc                 randconfig-001-20260604    gcc-13.4.0
sparc                          randconfig-002    gcc-11.5.0
sparc                 randconfig-002-20260604    gcc-11.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-11.5.0
sparc64               randconfig-001-20260604    gcc-11.5.0
sparc64               randconfig-001-20260604    gcc-9.5.0
sparc64                        randconfig-002    gcc-11.5.0
sparc64               randconfig-002-20260604    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    gcc-11.5.0
um                    randconfig-001-20260604    clang-23
um                    randconfig-001-20260604    gcc-11.5.0
um                             randconfig-002    gcc-11.5.0
um                    randconfig-002-20260604    clang-23
um                    randconfig-002-20260604    gcc-11.5.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-17
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260604    gcc-14
x86_64      buildonly-randconfig-002-20260604    clang-22
x86_64      buildonly-randconfig-002-20260604    gcc-14
x86_64      buildonly-randconfig-003-20260604    gcc-14
x86_64      buildonly-randconfig-004-20260604    clang-22
x86_64      buildonly-randconfig-004-20260604    gcc-14
x86_64      buildonly-randconfig-005-20260604    gcc-13
x86_64      buildonly-randconfig-005-20260604    gcc-14
x86_64      buildonly-randconfig-006-20260604    clang-22
x86_64      buildonly-randconfig-006-20260604    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260604    clang-20
x86_64                randconfig-001-20260604    clang-22
x86_64                randconfig-002-20260604    clang-20
x86_64                randconfig-002-20260604    gcc-14
x86_64                randconfig-003-20260604    clang-20
x86_64                randconfig-003-20260604    clang-22
x86_64                randconfig-004-20260604    clang-20
x86_64                randconfig-004-20260604    clang-22
x86_64                randconfig-005-20260604    clang-20
x86_64                randconfig-005-20260604    clang-22
x86_64                randconfig-006-20260604    clang-20
x86_64                randconfig-006-20260604    gcc-14
x86_64                randconfig-011-20260604    clang-20
x86_64                randconfig-011-20260604    clang-22
x86_64                randconfig-012-20260604    clang-20
x86_64                randconfig-012-20260604    clang-22
x86_64                randconfig-013-20260604    clang-20
x86_64                randconfig-013-20260604    clang-22
x86_64                randconfig-014-20260604    clang-22
x86_64                randconfig-014-20260604    gcc-13
x86_64                randconfig-015-20260604    clang-20
x86_64                randconfig-015-20260604    clang-22
x86_64                randconfig-016-20260604    clang-20
x86_64                randconfig-016-20260604    clang-22
x86_64                randconfig-071-20260604    clang-22
x86_64                randconfig-071-20260605    gcc-12
x86_64                randconfig-072-20260604    clang-22
x86_64                randconfig-072-20260605    gcc-12
x86_64                randconfig-073-20260604    clang-22
x86_64                randconfig-073-20260605    gcc-12
x86_64                randconfig-074-20260604    clang-22
x86_64                randconfig-074-20260605    gcc-12
x86_64                randconfig-075-20260604    clang-22
x86_64                randconfig-075-20260605    gcc-12
x86_64                randconfig-076-20260604    clang-22
x86_64                randconfig-076-20260604    gcc-14
x86_64                randconfig-076-20260605    gcc-12
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-17
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                         randconfig-001    gcc-11.5.0
xtensa                randconfig-001-20260604    gcc-11.5.0
xtensa                randconfig-001-20260604    gcc-13.4.0
xtensa                         randconfig-002    gcc-11.5.0
xtensa                randconfig-002-20260604    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
