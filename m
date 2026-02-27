Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cL74FP+PoWkruQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 13:37:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0AF1B7327
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 13:37:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00BBB60A5F;
	Fri, 27 Feb 2026 12:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pZrIZVNjcdMR; Fri, 27 Feb 2026 12:37:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2702460A60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772195835;
	bh=oMzb4hRXag6WejPrfw/q4ouJiRFKWLxQhrMa32/+8pY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U4fUJTU3qV5DVnY7QLAvvMgA8chYnQPOBHRjJRrVV2aZ0VH0oaSKAqk0W9xCxPPle
	 nEObnX0nm784nWPSXEmBbsTqVBp9AhY2xMYqv9FaG33w/nudpino3l0n2MGNlPWSgW
	 oXKLv3bWz6rlCy71mnB5EZ9OPyxgwK4Xs8HoRLlAzv4W0rvxeSU9+qjgziExOHL8e0
	 FSDmWKji+KpPqb2tt6RTqnE/WyC9cs4LM6956PdYvdWIisfUVLQWYaGX8f470V4CA3
	 izuEEqhK1AY/1DNqJaOymt/FXOlbw9p8eHNWLz+vfsrTeFoYM3gs6kzEX6LNe4uqBL
	 Br8njSjotrP3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2702460A60;
	Fri, 27 Feb 2026 12:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D20A3204
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 12:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B81FD40805
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 12:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RU1wrtXE29sn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 12:37:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8903E403EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8903E403EA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8903E403EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 12:37:11 +0000 (UTC)
X-CSE-ConnectionGUID: HbZ4VIz3Steo1f1Lht8zyg==
X-CSE-MsgGUID: +zzveMBWS1ycOX1FEPNJ9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="84362945"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="84362945"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 04:37:11 -0800
X-CSE-ConnectionGUID: SBl/wNphQJyk0RoPSh2j9A==
X-CSE-MsgGUID: 4m5EcboWT12J1sK6UIY+KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="221034228"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 27 Feb 2026 04:37:08 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vvx55-00000000AZh-2d9n;
 Fri, 27 Feb 2026 12:36:36 +0000
Date: Fri, 27 Feb 2026 20:34:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602272046.gLxB4ZKO-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772195833; x=1803731833;
 h=date:from:to:subject:message-id;
 bh=Ui0morHj529DJhNkkJkF4FlOGt0/MjYoi8uzX6vf2Mk=;
 b=PsGvOBJ8eKErjWDdGLjb4yfbrSCJsTYvKts6PMPe8+sFsBrtkELjGdWD
 mwo1ASjRLip2IIj7JBWStHdqVog8/tgTsGMFOa4lO37IiupR1aWtVrQz0
 KQ63+vuFNddtJGhT16SohGlOVBPPuOdjlYaiw9oiCAkkBCvMxZe0pdMxv
 0gG1uWqboJ4ccXdLTkJ9jAREz26g7r/L47ZmE3N9CXY4gIpI7R0cwzPxm
 aW0PssZXRphaRnYaiV4wzHJsRiOCcCk0GT6Uww2mb1blzYQ8RQ1x2Orbu
 8rEzlUX4RM7EGEBq5bRRDfN2ZjFoEXg0QwAazVjOMCmJ6pgF8WjAx81bw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PsGvOBJ8
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d5fbc991435eac7a1ead7cd2ddb5a743528718bb
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	NEURAL_HAM(-0.00)[-0.998];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DD0AF1B7327
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d5fbc991435eac7a1ead7cd2ddb5a743528718bb  ice: use bitmap_empty() in ice_vf_has_no_qs_ena

elapsed time: 752m

configs tested: 167
configs skipped: 3

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
arc                   randconfig-001-20260227    gcc-8.5.0
arc                   randconfig-002-20260227    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                       multi_v4t_defconfig    clang-16
arm                   randconfig-001-20260227    gcc-14.3.0
arm                   randconfig-002-20260227    clang-23
arm                   randconfig-003-20260227    gcc-15.2.0
arm                   randconfig-004-20260227    clang-23
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260227    clang-23
arm64                 randconfig-002-20260227    gcc-15.2.0
arm64                 randconfig-003-20260227    clang-23
arm64                 randconfig-004-20260227    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260227    gcc-15.2.0
csky                  randconfig-002-20260227    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260227    clang-23
hexagon               randconfig-002-20260227    clang-23
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260227    clang-20
i386        buildonly-randconfig-002-20260227    clang-20
i386        buildonly-randconfig-003-20260227    gcc-14
i386        buildonly-randconfig-004-20260227    gcc-14
i386        buildonly-randconfig-005-20260227    clang-20
i386        buildonly-randconfig-006-20260227    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20260227    clang-20
i386                  randconfig-002-20260227    clang-20
i386                  randconfig-003-20260227    gcc-14
i386                  randconfig-004-20260227    gcc-14
i386                  randconfig-005-20260227    gcc-12
i386                  randconfig-006-20260227    gcc-14
i386                  randconfig-007-20260227    clang-20
i386                  randconfig-011-20260227    clang-20
i386                  randconfig-012-20260227    gcc-14
i386                  randconfig-013-20260227    clang-20
i386                  randconfig-014-20260227    gcc-14
i386                  randconfig-015-20260227    gcc-13
i386                  randconfig-016-20260227    clang-20
i386                  randconfig-017-20260227    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260227    gcc-15.2.0
loongarch             randconfig-002-20260227    clang-20
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
mips                          malta_defconfig    gcc-15.2.0
nios2                         3c120_defconfig    gcc-11.5.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260227    gcc-11.5.0
nios2                 randconfig-002-20260227    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260227    gcc-8.5.0
parisc                randconfig-002-20260227    gcc-8.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260227    gcc-11.5.0
powerpc               randconfig-002-20260227    clang-17
powerpc                     tqm8555_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260227    gcc-10.5.0
powerpc64             randconfig-002-20260227    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260227    clang-23
riscv                 randconfig-002-20260227    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260227    gcc-11.5.0
s390                  randconfig-002-20260227    gcc-9.5.0
s390                       zfcpdump_defconfig    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-15.2.0
sh                          landisk_defconfig    gcc-15.2.0
sh                    randconfig-001-20260227    gcc-12.5.0
sh                    randconfig-002-20260227    gcc-15.2.0
sh                           se7751_defconfig    gcc-15.2.0
sh                              ul2_defconfig    gcc-15.2.0
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260227    gcc-11.5.0
sparc                 randconfig-002-20260227    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20260227    clang-23
sparc64               randconfig-002-20260227    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260227    clang-23
um                    randconfig-002-20260227    clang-23
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260227    gcc-14
x86_64      buildonly-randconfig-002-20260227    gcc-14
x86_64      buildonly-randconfig-003-20260227    clang-20
x86_64      buildonly-randconfig-004-20260227    gcc-14
x86_64      buildonly-randconfig-005-20260227    gcc-14
x86_64      buildonly-randconfig-006-20260227    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260227    clang-20
x86_64                randconfig-002-20260227    clang-20
x86_64                randconfig-003-20260227    gcc-14
x86_64                randconfig-004-20260227    gcc-13
x86_64                randconfig-005-20260227    gcc-14
x86_64                randconfig-006-20260227    gcc-14
x86_64                randconfig-011-20260227    gcc-14
x86_64                randconfig-012-20260227    gcc-14
x86_64                randconfig-013-20260227    clang-20
x86_64                randconfig-014-20260227    clang-20
x86_64                randconfig-015-20260227    clang-20
x86_64                randconfig-016-20260227    gcc-14
x86_64                randconfig-071-20260227    gcc-12
x86_64                randconfig-072-20260227    clang-20
x86_64                randconfig-073-20260227    gcc-14
x86_64                randconfig-074-20260227    clang-20
x86_64                randconfig-075-20260227    clang-20
x86_64                randconfig-076-20260227    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260227    gcc-15.2.0
xtensa                randconfig-002-20260227    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
