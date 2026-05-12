Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oERdMdSBA2pX6gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 21:39:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD96528C07
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 21:39:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 274E440974;
	Tue, 12 May 2026 19:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sF6Bf-BC-9Pm; Tue, 12 May 2026 19:29:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1747840934
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778614145;
	bh=LIz4JKb+4lUOiF/5WW2ijx2F37WPoVCO3eLspyGlTi4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9NOUWJ6r5Xn8kOqJiBs7KoCD2N2AoDYeu9FrJlDcq7S3GF9fFdhfThTdC+FlrRPoS
	 9xH0jfGSdDg8Hl5o7g9lJw74gKmCRjD+17vIlzXXqfDbJxUxoSr4jEKjqiIokf52Om
	 0AYRlGNPfI7uAZbnid7SUr9QBp2InInmtOHH30AB0lJV5gjpxif5+ayizDPRNOL68l
	 eyl6+mfyH9KcehXsUF36v+T2RcZFdHpZqGO2xRY8XipHG2eW9nKpyx+HLm3pFh4KQn
	 cUACquUd0VvnIT11fxMpVO3xTVk/FFZU3OPCSKloTQnlg8ROXSTQ5qhetpJgw+wwJL
	 VJNLJVEzZ4brw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1747840934;
	Tue, 12 May 2026 19:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 330E7219
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 19:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18A06406C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 19:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l2LIkfxExrA2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 19:29:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EFA854008E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFA854008E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFA854008E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 19:29:01 +0000 (UTC)
X-CSE-ConnectionGUID: gZZlleJWS4GrIbp3RvmSnQ==
X-CSE-MsgGUID: xeGB8bQ3TX+86xzinqdsmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89836196"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="89836196"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 12:29:01 -0700
X-CSE-ConnectionGUID: mpB1OG4IS92Zffm2PmzkGQ==
X-CSE-MsgGUID: vROFCMY7QqS410Z4bwsQXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="241872167"
Received: from lkp-server01.sh.intel.com (HELO dca79079c3eb) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 12 May 2026 12:29:00 -0700
Received: from kbuild by dca79079c3eb with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wMsmn-000000002gr-0kGh;
 Tue, 12 May 2026 19:28:57 +0000
Date: Wed, 13 May 2026 03:28:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202605130318.HVBnrejZ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778614142; x=1810150142;
 h=date:from:to:subject:message-id;
 bh=yBF8sPCfITOiFlDMw+YCTvc2Bvig1IGmGhVrhWaIV+E=;
 b=VQpfOLRwmrMC8L+8yKy2aUE3KEATjHli3++zjgNwQFG6cqz3Wu0WSrkq
 aHzlrQr7Jm51E/ozW1oqQ5dQ/IphW7Vj/AVUqCMzWXh4VcZ1LMbDFxh9x
 Nwp+STUBTG37iB54iLVYxkuek5vjIKxpj1yHMKeWiZYG5jyOvbpHOmehB
 oG61edjjyYrm37IR2Vq5+NBBG5h8Kjl7bj6Sgy0VvoAebdb3zRP6BASVz
 VAmWZ6wOjvloYkwPduR8zRdmTH5Ln/Qk8xod2h6esULcu3cvFjvkSAYXr
 NDzKbyiWGncQw4lmtdObMecHXBMSl8azg0hihvpwibFSbslhxl9ZKHfEE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VQpfOLRw
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 b844ad301b7504b852dc9c3b10f2da188145e05c
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
X-Rspamd-Queue-Id: 1CD96528C07
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,body];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_SPAM(0.00)[0.809];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	R_SPF_ALLOW(0.00)[+mx];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: add header
X-Spam: Yes

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: b844ad301b7504b852dc9c3b10f2da188145e05c  ice: support SBQ posted writes with non-posted support for CGU

elapsed time: 828m

configs tested: 303
configs skipped: 5

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
arc                                 defconfig    gcc-15.2.0
arc                         haps_hs_defconfig    gcc-15.2.0
arc                            randconfig-001    gcc-8.5.0
arc                   randconfig-001-20260512    gcc-11.5.0
arc                   randconfig-001-20260512    gcc-8.5.0
arc                            randconfig-002    gcc-8.5.0
arc                   randconfig-002-20260512    gcc-11.5.0
arc                   randconfig-002-20260512    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                      footbridge_defconfig    clang-17
arm                            randconfig-001    gcc-8.5.0
arm                   randconfig-001-20260512    gcc-11.5.0
arm                   randconfig-001-20260512    gcc-8.5.0
arm                            randconfig-002    gcc-8.5.0
arm                   randconfig-002-20260512    gcc-11.5.0
arm                   randconfig-002-20260512    gcc-8.5.0
arm                            randconfig-003    gcc-8.5.0
arm                   randconfig-003-20260512    gcc-11.5.0
arm                   randconfig-003-20260512    gcc-8.5.0
arm                            randconfig-004    gcc-8.5.0
arm                   randconfig-004-20260512    gcc-11.5.0
arm                   randconfig-004-20260512    gcc-8.5.0
arm                        spear3xx_defconfig    clang-17
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                          randconfig-001    clang-23
arm64                 randconfig-001-20260512    clang-23
arm64                 randconfig-001-20260512    gcc-14.3.0
arm64                 randconfig-001-20260513    gcc-12.5.0
arm64                          randconfig-002    clang-23
arm64                 randconfig-002-20260512    clang-23
arm64                 randconfig-002-20260512    gcc-14.3.0
arm64                 randconfig-002-20260513    gcc-12.5.0
arm64                          randconfig-003    clang-23
arm64                 randconfig-003-20260512    clang-23
arm64                 randconfig-003-20260512    gcc-14.3.0
arm64                 randconfig-003-20260513    gcc-12.5.0
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260512    clang-23
arm64                 randconfig-004-20260512    gcc-14.3.0
arm64                 randconfig-004-20260513    gcc-12.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                           randconfig-001    clang-23
csky                  randconfig-001-20260512    clang-23
csky                  randconfig-001-20260512    gcc-14.3.0
csky                  randconfig-001-20260513    gcc-12.5.0
csky                           randconfig-002    clang-23
csky                  randconfig-002-20260512    clang-23
csky                  randconfig-002-20260512    gcc-14.3.0
csky                  randconfig-002-20260513    gcc-12.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260512    clang-23
hexagon               randconfig-001-20260512    gcc-10.5.0
hexagon               randconfig-001-20260512    gcc-11.5.0
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260512    clang-23
hexagon               randconfig-002-20260512    gcc-10.5.0
hexagon               randconfig-002-20260512    gcc-11.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260512    gcc-14
i386        buildonly-randconfig-002-20260512    gcc-14
i386        buildonly-randconfig-003-20260512    gcc-14
i386        buildonly-randconfig-004-20260512    gcc-14
i386        buildonly-randconfig-005-20260512    gcc-14
i386        buildonly-randconfig-006-20260512    gcc-14
i386                                defconfig    gcc-15.2.0
i386                           randconfig-001    gcc-14
i386                  randconfig-001-20260512    gcc-14
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260512    gcc-14
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260512    gcc-14
i386                           randconfig-004    gcc-14
i386                  randconfig-004-20260512    gcc-14
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260512    gcc-14
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260512    gcc-14
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260512    gcc-14
i386                           randconfig-011    clang-20
i386                  randconfig-011-20260512    clang-20
i386                           randconfig-012    clang-20
i386                  randconfig-012-20260512    clang-20
i386                           randconfig-013    clang-20
i386                  randconfig-013-20260512    clang-20
i386                           randconfig-014    clang-20
i386                  randconfig-014-20260512    clang-20
i386                           randconfig-015    clang-20
i386                  randconfig-015-20260512    clang-20
i386                           randconfig-016    clang-20
i386                  randconfig-016-20260512    clang-20
i386                           randconfig-017    clang-20
i386                  randconfig-017-20260512    clang-20
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260512    clang-18
loongarch             randconfig-001-20260512    gcc-10.5.0
loongarch             randconfig-001-20260512    gcc-11.5.0
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260512    gcc-10.5.0
loongarch             randconfig-002-20260512    gcc-11.5.0
loongarch             randconfig-002-20260512    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                          amiga_defconfig    gcc-15.2.0
m68k                          atari_defconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                     cu1000-neo_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260512    gcc-10.5.0
nios2                 randconfig-001-20260512    gcc-11.5.0
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260512    gcc-10.5.0
nios2                 randconfig-002-20260512    gcc-11.5.0
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260512    gcc-12.5.0
parisc                randconfig-001-20260513    gcc-8.5.0
parisc                randconfig-002-20260512    gcc-12.5.0
parisc                randconfig-002-20260513    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260512    gcc-12.5.0
powerpc               randconfig-001-20260513    gcc-8.5.0
powerpc               randconfig-002-20260512    gcc-12.5.0
powerpc               randconfig-002-20260513    gcc-8.5.0
powerpc64             randconfig-001-20260512    gcc-12.5.0
powerpc64             randconfig-001-20260513    gcc-8.5.0
powerpc64             randconfig-002-20260512    gcc-12.5.0
powerpc64             randconfig-002-20260513    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                          randconfig-001    gcc-15.2.0
riscv                 randconfig-001-20260512    gcc-15.2.0
riscv                 randconfig-001-20260513    gcc-15.2.0
riscv                          randconfig-002    gcc-15.2.0
riscv                 randconfig-002-20260512    gcc-15.2.0
riscv                 randconfig-002-20260513    gcc-15.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                           randconfig-001    gcc-15.2.0
s390                  randconfig-001-20260512    gcc-15.2.0
s390                  randconfig-001-20260513    gcc-15.2.0
s390                           randconfig-002    gcc-15.2.0
s390                  randconfig-002-20260512    gcc-15.2.0
s390                  randconfig-002-20260513    gcc-15.2.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                             randconfig-001    gcc-15.2.0
sh                    randconfig-001-20260512    gcc-15.2.0
sh                    randconfig-001-20260513    gcc-15.2.0
sh                             randconfig-002    gcc-15.2.0
sh                    randconfig-002-20260512    gcc-15.2.0
sh                    randconfig-002-20260513    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                          randconfig-001    gcc-13.4.0
sparc                 randconfig-001-20260512    gcc-13.4.0
sparc                 randconfig-001-20260513    gcc-11.5.0
sparc                          randconfig-002    gcc-13.4.0
sparc                 randconfig-002-20260512    gcc-13.4.0
sparc                 randconfig-002-20260513    gcc-11.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-13.4.0
sparc64               randconfig-001-20260512    gcc-13.4.0
sparc64               randconfig-001-20260513    gcc-11.5.0
sparc64                        randconfig-002    gcc-13.4.0
sparc64               randconfig-002-20260512    gcc-13.4.0
sparc64               randconfig-002-20260513    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    gcc-13.4.0
um                    randconfig-001-20260512    gcc-13.4.0
um                    randconfig-001-20260513    gcc-11.5.0
um                             randconfig-002    gcc-13.4.0
um                    randconfig-002-20260512    gcc-13.4.0
um                    randconfig-002-20260513    gcc-11.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64               buildonly-randconfig-001    gcc-14
x86_64      buildonly-randconfig-001-20260512    gcc-14
x86_64               buildonly-randconfig-002    gcc-14
x86_64      buildonly-randconfig-002-20260512    gcc-14
x86_64               buildonly-randconfig-003    gcc-14
x86_64      buildonly-randconfig-003-20260512    gcc-14
x86_64               buildonly-randconfig-004    gcc-14
x86_64      buildonly-randconfig-004-20260512    gcc-14
x86_64               buildonly-randconfig-005    gcc-14
x86_64      buildonly-randconfig-005-20260512    gcc-14
x86_64               buildonly-randconfig-006    gcc-14
x86_64      buildonly-randconfig-006-20260512    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                         randconfig-001    gcc-14
x86_64                randconfig-001-20260512    gcc-14
x86_64                         randconfig-002    gcc-14
x86_64                randconfig-002-20260512    gcc-14
x86_64                         randconfig-003    gcc-14
x86_64                randconfig-003-20260512    gcc-14
x86_64                         randconfig-004    gcc-14
x86_64                randconfig-004-20260512    gcc-14
x86_64                         randconfig-005    gcc-14
x86_64                randconfig-005-20260512    gcc-14
x86_64                         randconfig-006    gcc-14
x86_64                randconfig-006-20260512    gcc-14
x86_64                randconfig-011-20260512    clang-20
x86_64                randconfig-012-20260512    clang-20
x86_64                randconfig-013-20260512    clang-20
x86_64                randconfig-014-20260512    clang-20
x86_64                randconfig-015-20260512    clang-20
x86_64                randconfig-016-20260512    clang-20
x86_64                randconfig-071-20260512    clang-20
x86_64                randconfig-072-20260512    clang-20
x86_64                randconfig-073-20260512    clang-20
x86_64                randconfig-074-20260512    clang-20
x86_64                randconfig-075-20260512    clang-20
x86_64                randconfig-076-20260512    clang-20
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
xtensa                         randconfig-001    gcc-13.4.0
xtensa                randconfig-001-20260512    gcc-13.4.0
xtensa                randconfig-001-20260513    gcc-11.5.0
xtensa                         randconfig-002    gcc-13.4.0
xtensa                randconfig-002-20260512    gcc-13.4.0
xtensa                randconfig-002-20260513    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
