Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJtHAa4WcmksawAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 13:23:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB8766917
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 13:23:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44AC66F801;
	Thu, 22 Jan 2026 12:23:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ys2mQcg5eoSZ; Thu, 22 Jan 2026 12:23:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BA586F5E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769084585;
	bh=lkcFyflF6QxCeYq2n4reS00P888lFMAjb16kFM5aAwM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EiOrhvRjL0rbGsehe5QdTAH0pOY45H0cklBggAS9S1MEYU2qAk9zU+HLY9PpKmUZj
	 7h1/5RTDGWruHolpBmWCsDo2o8MYbuPoOHdZYnrVeK2sWkAQ9gDJT0W9sJ5JmWE4+B
	 P/PbSCVwzRoKA5CgIoPLcFkWAUpC6Qa4YZyo3dyohHdd5vGMEhoV5vrREZufunIhZk
	 TlA4Xl+UWNSVU7evzd372RzDOMtdCcaXljfB6AeisET1TCwvRSJlmbSb5YC7uY4SA0
	 0IvUcNXj6vHLjuJR/FBys8vJ7tn1R11WIE5LI/j5VE8heTC9MOTbaJYhS859eQHYqK
	 htdl6dji/QgRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BA586F5E7;
	Thu, 22 Jan 2026 12:23:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 991DA24D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 12:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F3A885243
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 12:23:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jRYO3pvrvEmI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 12:23:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0DEDC8523E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DEDC8523E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0DEDC8523E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 12:23:01 +0000 (UTC)
X-CSE-ConnectionGUID: vbOJh0+lTCyb3lVWzyO3bQ==
X-CSE-MsgGUID: 35l5lN7ZSO2Z1FfrcgTSpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81436109"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81436109"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:23:01 -0800
X-CSE-ConnectionGUID: vJkeQSIzR6yGDEit9b1cJA==
X-CSE-MsgGUID: cwnBNrSZRpaS4pVaoL6BsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211577589"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 22 Jan 2026 04:22:59 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vitiD-00000000Sop-1hKQ;
 Thu, 22 Jan 2026 12:22:57 +0000
Date: Thu, 22 Jan 2026 20:22:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601222031.IUirwyyE-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769084582; x=1800620582;
 h=date:from:to:subject:message-id;
 bh=uI8idkCXM2bXOXn3O1mvjKM87kBSr+jBX3xjT1ueeOI=;
 b=f+lLfnvKG6YokU+y/ykzTx9Fd1jYsVLjGyLRidR5PonBHMQeo314C6F+
 wAaAA7bALhsMr4Kb/reTOM4N3HBr1oUAyN2+oXir7CBR+pnXoK1jw4HFg
 GBOVpzgT8IQZ4wzf4wnr20cKNXlPBqIcVc9G6LA4hk6ZbljR1Z9mFleTU
 DjQAljqbnX36e/XIfnGdVEOf93LrolVim7iKOb4rasw0Lc/LYS8qHJgYs
 gwmyCIcQVdfuw7yFAL7ybqZETMbKhVEbgmCRPQsfg2Vm1Ak6I+dZteXMZ
 J4rFRBKApjAY65fIHgkmuSt8yIpMEPWkXHZrOQKaofHT6zk8X6UIMu41T
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f+lLfnvK
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 afade8d73a40fd895432eb89b25688dfcb5d8a1e
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DDB8766917
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: afade8d73a40fd895432eb89b25688dfcb5d8a1e  ice: reshuffle and group Rx and Tx queue fields by cachelines

elapsed time: 851m

configs tested: 168
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
arc                   randconfig-001-20260122    gcc-14.3.0
arc                   randconfig-002-20260122    gcc-15.2.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.2.0
arm                         at91_dt_defconfig    clang-22
arm                                 defconfig    clang-22
arm                            hisi_defconfig    gcc-15.2.0
arm                   randconfig-001-20260122    clang-22
arm                   randconfig-002-20260122    gcc-11.5.0
arm                   randconfig-003-20260122    gcc-15.2.0
arm                   randconfig-004-20260122    gcc-13.4.0
arm                        realview_defconfig    clang-16
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260122    clang-22
arm64                 randconfig-002-20260122    clang-20
arm64                 randconfig-003-20260122    clang-22
arm64                 randconfig-004-20260122    clang-22
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260122    gcc-12.5.0
csky                  randconfig-002-20260122    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20260122    clang-20
hexagon               randconfig-002-20260122    clang-22
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260122    clang-20
i386        buildonly-randconfig-002-20260122    gcc-14
i386        buildonly-randconfig-003-20260122    gcc-14
i386        buildonly-randconfig-004-20260122    gcc-14
i386        buildonly-randconfig-005-20260122    gcc-14
i386        buildonly-randconfig-006-20260122    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260122    gcc-14
i386                  randconfig-002-20260122    clang-20
i386                  randconfig-003-20260122    gcc-12
i386                  randconfig-004-20260122    gcc-14
i386                  randconfig-005-20260122    gcc-14
i386                  randconfig-006-20260122    gcc-14
i386                  randconfig-007-20260122    gcc-14
i386                  randconfig-011-20260122    clang-20
i386                  randconfig-012-20260122    clang-20
i386                  randconfig-013-20260122    clang-20
i386                  randconfig-014-20260122    clang-20
i386                  randconfig-015-20260122    clang-20
i386                  randconfig-016-20260122    clang-20
i386                  randconfig-017-20260122    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260122    gcc-15.2.0
loongarch             randconfig-002-20260122    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    gcc-15.2.0
m68k                         amcore_defconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                           ip22_defconfig    gcc-15.2.0
mips                      maltasmvp_defconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260122    gcc-11.5.0
nios2                 randconfig-002-20260122    gcc-8.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260122    gcc-10.5.0
parisc                randconfig-002-20260122    gcc-12.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc                 mpc8313_rdb_defconfig    gcc-15.2.0
powerpc               mpc834x_itxgp_defconfig    clang-22
powerpc               randconfig-001-20260122    gcc-14.3.0
powerpc               randconfig-002-20260122    clang-22
powerpc64             randconfig-001-20260122    clang-18
powerpc64             randconfig-002-20260122    gcc-12.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20260122    clang-18
riscv                 randconfig-002-20260122    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                  randconfig-001-20260122    gcc-8.5.0
s390                  randconfig-002-20260122    clang-22
sh                               alldefconfig    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                        edosk7705_defconfig    gcc-15.2.0
sh                    randconfig-001-20260122    gcc-15.2.0
sh                    randconfig-002-20260122    gcc-11.5.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260122    gcc-14.3.0
sparc                 randconfig-002-20260122    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260122    clang-22
sparc64               randconfig-002-20260122    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260122    clang-22
um                    randconfig-002-20260122    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260122    clang-20
x86_64      buildonly-randconfig-002-20260122    clang-20
x86_64      buildonly-randconfig-003-20260122    clang-20
x86_64      buildonly-randconfig-004-20260122    gcc-14
x86_64      buildonly-randconfig-005-20260122    clang-20
x86_64      buildonly-randconfig-006-20260122    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260122    gcc-14
x86_64                randconfig-002-20260122    gcc-13
x86_64                randconfig-003-20260122    clang-20
x86_64                randconfig-004-20260122    clang-20
x86_64                randconfig-005-20260122    clang-20
x86_64                randconfig-006-20260122    gcc-14
x86_64                randconfig-011-20260122    gcc-14
x86_64                randconfig-012-20260122    gcc-14
x86_64                randconfig-013-20260122    clang-20
x86_64                randconfig-014-20260122    clang-20
x86_64                randconfig-015-20260122    clang-20
x86_64                randconfig-016-20260122    gcc-14
x86_64                randconfig-071-20260122    clang-20
x86_64                randconfig-072-20260122    clang-20
x86_64                randconfig-073-20260122    gcc-14
x86_64                randconfig-074-20260122    clang-20
x86_64                randconfig-075-20260122    gcc-14
x86_64                randconfig-076-20260122    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260122    gcc-8.5.0
xtensa                randconfig-002-20260122    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
