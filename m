Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SqeTAKOtUmqySAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 22:54:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A22B742DA4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2026 22:54:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=zaBJJtgS;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED2DE40D72;
	Sat, 11 Jul 2026 20:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id awVK75WGb3gN; Sat, 11 Jul 2026 20:54:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D913440D69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783803294;
	bh=jPPme/5MhyL3EyF0OB1pDfK6OTMHPr6VeDPVgNrYJ2U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zaBJJtgSREx6W4onBG51ceRYvQTLxIs82pb4XjKA6LxquDujVh5YMjSitj/kv5ajX
	 TazlJV7zZFKIdvaMcB6S2trU9vME3ZTQn2TIa8qodVntXk9weSVe+66jFQK0SHtYMI
	 6+B03ZuMfc74Tm3JWPA6/RF4dngSDzBOMUxlR/YBZBgCHQM2yc17RZJxdxrtEi4/1O
	 N0TyCuh+ODhAXxdz9Pyn0f++71WEarxCcWMtUBwdxzkJDmkexxSWptGp9u1S6vRew2
	 QMeMryLllfC4/Ql7dUeEU5uvLPrRDzfF+kbQu8aO8Epzja5c+6WlZs0OYWdMTBp+HD
	 eo0nNOYZ8mB1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D913440D69;
	Sat, 11 Jul 2026 20:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0374E22F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 20:54:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8EAF60DB2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 20:54:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OZ0o8jmEnUU1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jul 2026 20:54:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B7D860AFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B7D860AFB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B7D860AFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2026 20:54:52 +0000 (UTC)
X-CSE-ConnectionGUID: HV9i1NQYThC25BP8Et5JXg==
X-CSE-MsgGUID: GMgewWyMQ5+DE9opzaIk4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84665687"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84665687"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2026 13:54:52 -0700
X-CSE-ConnectionGUID: YQRPciYFSZW+/5MDCFe1yA==
X-CSE-MsgGUID: rgkMz/lwRL2znuYydj/lHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="255262764"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 11 Jul 2026 13:54:50 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wieil-00000000KOC-2f7w;
 Sat, 11 Jul 2026 20:54:47 +0000
Date: Sun, 12 Jul 2026 04:54:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202607120449.ul43P2CI-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783803293; x=1815339293;
 h=date:from:to:subject:message-id;
 bh=rQ2qVXvI4V/DnGPaUSEh5/+6Y6jmOuXOU/yiQLfqf24=;
 b=NAeL2oFuwrfmPcMCheE1MqiP4iC5qARtJVzq10fjZ2k8wZ+4eyYMmb8T
 CSpVpQMuRk0zM8SV3q0/0FPoSfeuXQyUOGIID8vx+d0lbvyGRpxB/JamQ
 PrJb+eGOp8G2AVWNXqKTvHNuJeb98m7FsU4WBgLdIR2BmGZQCSdkFEIPj
 cB+nCjMeOXiMcWUFNxP4i6zx99zmD6iV+ombx89uZH2I6PJHqQyVvaoMC
 KZ/RVo78x+9U9ib2+JP25OsR1dZAs0zTD7NxArYE9BpGXdknYZnfTWiao
 zmLWAAuM7onKHB+S6/Rwuriep+cTDvOqfDgsIBXOkI/5RaoyfQNHp9Kbc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NAeL2oFu
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0d411710b51ec8042ab835b1ed73372ec09bbd1e
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A22B742DA4

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 0d411710b51ec8042ab835b1ed73372ec09bbd1e  ice: add missing xa_destroy for sched_node_ids

elapsed time: 884m

configs tested: 311
configs skipped: 28

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260711    gcc-13.4.0
arc                   randconfig-001-20260712    clang-18
arc                   randconfig-002-20260711    gcc-13.4.0
arc                   randconfig-002-20260712    clang-18
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260711    gcc-13.4.0
arm                   randconfig-001-20260712    clang-18
arm                   randconfig-002-20260711    gcc-13.4.0
arm                   randconfig-002-20260712    clang-18
arm                   randconfig-003-20260711    gcc-13.4.0
arm                   randconfig-003-20260712    clang-18
arm                   randconfig-004-20260711    gcc-13.4.0
arm                   randconfig-004-20260712    clang-18
arm                        vexpress_defconfig    gcc-16.1.0
arm                         wpcm450_defconfig    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260711    gcc-16.1.0
arm64                 randconfig-001-20260711    gcc-8.5.0
arm64                 randconfig-001-20260712    gcc-16.1.0
arm64                 randconfig-002-20260711    clang-17
arm64                 randconfig-002-20260711    gcc-16.1.0
arm64                 randconfig-002-20260712    gcc-16.1.0
arm64                 randconfig-003-20260711    gcc-16.1.0
arm64                 randconfig-003-20260711    gcc-8.5.0
arm64                 randconfig-003-20260712    gcc-16.1.0
arm64                 randconfig-004-20260711    clang-17
arm64                 randconfig-004-20260711    gcc-16.1.0
arm64                 randconfig-004-20260712    gcc-16.1.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260711    gcc-16.1.0
csky                  randconfig-001-20260712    gcc-16.1.0
csky                  randconfig-002-20260711    gcc-16.1.0
csky                  randconfig-002-20260712    gcc-16.1.0
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    gcc-16.1.0
hexagon                        randconfig-001    gcc-11.5.0
hexagon               randconfig-001-20260711    clang-17
hexagon               randconfig-001-20260711    gcc-11.5.0
hexagon               randconfig-001-20260711    gcc-16.1.0
hexagon               randconfig-001-20260712    clang-22
hexagon                        randconfig-002    gcc-11.5.0
hexagon               randconfig-002-20260711    clang-23
hexagon               randconfig-002-20260711    gcc-11.5.0
hexagon               randconfig-002-20260711    gcc-16.1.0
hexagon               randconfig-002-20260712    clang-22
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260711    gcc-14
i386                 buildonly-randconfig-002    gcc-14
i386        buildonly-randconfig-002-20260711    gcc-14
i386                 buildonly-randconfig-003    gcc-14
i386        buildonly-randconfig-003-20260711    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260711    gcc-14
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260711    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260711    gcc-14
i386                                defconfig    gcc-16.1.0
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260711    clang-22
i386                           randconfig-002    clang-22
i386                  randconfig-002-20260711    clang-22
i386                           randconfig-003    clang-22
i386                  randconfig-003-20260711    clang-22
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260711    clang-22
i386                           randconfig-005    clang-22
i386                  randconfig-005-20260711    clang-22
i386                           randconfig-006    clang-22
i386                  randconfig-006-20260711    clang-22
i386                           randconfig-007    clang-22
i386                  randconfig-007-20260711    clang-22
i386                  randconfig-011-20260711    gcc-13
i386                  randconfig-012-20260711    gcc-13
i386                  randconfig-013-20260711    gcc-13
i386                  randconfig-014-20260711    gcc-13
i386                  randconfig-015-20260711    gcc-13
i386                  randconfig-016-20260711    gcc-13
i386                  randconfig-017-20260711    gcc-13
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch                      randconfig-001    gcc-11.5.0
loongarch             randconfig-001-20260711    gcc-11.5.0
loongarch             randconfig-001-20260711    gcc-16.1.0
loongarch             randconfig-001-20260712    clang-22
loongarch                      randconfig-002    gcc-11.5.0
loongarch             randconfig-002-20260711    gcc-11.5.0
loongarch             randconfig-002-20260711    gcc-15.2.0
loongarch             randconfig-002-20260711    gcc-16.1.0
loongarch             randconfig-002-20260712    clang-22
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                          randconfig-001    gcc-11.5.0
nios2                 randconfig-001-20260711    gcc-11.5.0
nios2                 randconfig-001-20260711    gcc-16.1.0
nios2                 randconfig-001-20260711    gcc-8.5.0
nios2                 randconfig-001-20260712    clang-22
nios2                          randconfig-002    gcc-11.5.0
nios2                 randconfig-002-20260711    gcc-11.5.0
nios2                 randconfig-002-20260711    gcc-16.1.0
nios2                 randconfig-002-20260712    clang-22
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    clang-17
parisc                randconfig-001-20260711    clang-17
parisc                         randconfig-002    clang-17
parisc                randconfig-002-20260711    clang-17
parisc64                            defconfig    clang-23
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                     asp8347_defconfig    clang-23
powerpc                    mvme5100_defconfig    gcc-16.1.0
powerpc                     rainier_defconfig    gcc-16.1.0
powerpc                        randconfig-001    clang-17
powerpc               randconfig-001-20260711    clang-17
powerpc                        randconfig-002    clang-17
powerpc               randconfig-002-20260711    clang-17
powerpc64                      randconfig-001    clang-17
powerpc64             randconfig-001-20260711    clang-17
powerpc64                      randconfig-002    clang-17
powerpc64             randconfig-002-20260711    clang-17
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                          randconfig-001    gcc-8.5.0
riscv                 randconfig-001-20260711    gcc-8.5.0
riscv                 randconfig-001-20260712    clang-22
riscv                          randconfig-002    gcc-8.5.0
riscv                 randconfig-002-20260711    gcc-8.5.0
riscv                 randconfig-002-20260712    clang-22
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    gcc-8.5.0
s390                  randconfig-001-20260711    gcc-8.5.0
s390                  randconfig-001-20260712    clang-22
s390                           randconfig-002    gcc-8.5.0
s390                  randconfig-002-20260711    gcc-8.5.0
s390                  randconfig-002-20260712    clang-22
sh                               alldefconfig    gcc-16.1.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                             randconfig-001    gcc-8.5.0
sh                    randconfig-001-20260711    gcc-8.5.0
sh                    randconfig-001-20260712    clang-22
sh                             randconfig-002    gcc-8.5.0
sh                    randconfig-002-20260711    gcc-8.5.0
sh                    randconfig-002-20260712    clang-22
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                          randconfig-001    gcc-16.1.0
sparc                 randconfig-001-20260711    gcc-16.1.0
sparc                          randconfig-002    gcc-16.1.0
sparc                 randconfig-002-20260711    gcc-16.1.0
sparc                 randconfig-002-20260711    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64                        randconfig-001    gcc-16.1.0
sparc64               randconfig-001-20260711    clang-23
sparc64               randconfig-001-20260711    gcc-16.1.0
sparc64                        randconfig-002    gcc-16.1.0
sparc64               randconfig-002-20260711    gcc-16.1.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                             randconfig-001    gcc-16.1.0
um                    randconfig-001-20260711    gcc-14
um                    randconfig-001-20260711    gcc-16.1.0
um                             randconfig-002    gcc-16.1.0
um                    randconfig-002-20260711    gcc-14
um                    randconfig-002-20260711    gcc-16.1.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260711    gcc-14
x86_64      buildonly-randconfig-001-20260712    gcc-14
x86_64      buildonly-randconfig-002-20260711    gcc-14
x86_64      buildonly-randconfig-002-20260712    gcc-14
x86_64      buildonly-randconfig-003-20260711    gcc-14
x86_64      buildonly-randconfig-003-20260712    gcc-14
x86_64      buildonly-randconfig-004-20260711    gcc-14
x86_64      buildonly-randconfig-004-20260712    gcc-14
x86_64      buildonly-randconfig-005-20260711    gcc-14
x86_64      buildonly-randconfig-005-20260712    gcc-14
x86_64      buildonly-randconfig-006-20260711    gcc-14
x86_64      buildonly-randconfig-006-20260712    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                         randconfig-001    clang-22
x86_64                randconfig-001-20260711    clang-22
x86_64                randconfig-001-20260711    gcc-14
x86_64                         randconfig-002    clang-22
x86_64                randconfig-002-20260711    clang-22
x86_64                randconfig-002-20260711    gcc-14
x86_64                         randconfig-003    clang-22
x86_64                randconfig-003-20260711    clang-22
x86_64                randconfig-003-20260711    gcc-14
x86_64                         randconfig-004    clang-22
x86_64                randconfig-004-20260711    clang-22
x86_64                randconfig-004-20260711    gcc-14
x86_64                         randconfig-005    clang-22
x86_64                randconfig-005-20260711    clang-22
x86_64                randconfig-005-20260711    gcc-14
x86_64                         randconfig-006    clang-22
x86_64                randconfig-006-20260711    clang-22
x86_64                randconfig-006-20260711    gcc-14
x86_64                         randconfig-011    gcc-14
x86_64                randconfig-011-20260711    clang-22
x86_64                randconfig-011-20260711    gcc-14
x86_64                         randconfig-012    gcc-14
x86_64                randconfig-012-20260711    clang-22
x86_64                randconfig-012-20260711    gcc-14
x86_64                         randconfig-013    clang-22
x86_64                         randconfig-013    gcc-14
x86_64                randconfig-013-20260711    gcc-14
x86_64                         randconfig-014    gcc-14
x86_64                randconfig-014-20260711    gcc-14
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260711    gcc-14
x86_64                         randconfig-016    clang-22
x86_64                         randconfig-016    gcc-14
x86_64                randconfig-016-20260711    clang-22
x86_64                randconfig-016-20260711    gcc-14
x86_64                randconfig-071-20260711    gcc-14
x86_64                randconfig-072-20260711    gcc-14
x86_64                randconfig-073-20260711    gcc-14
x86_64                randconfig-074-20260711    gcc-14
x86_64                randconfig-075-20260711    gcc-14
x86_64                randconfig-076-20260711    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                         randconfig-001    gcc-16.1.0
xtensa                randconfig-001-20260711    gcc-14.3.0
xtensa                randconfig-001-20260711    gcc-16.1.0
xtensa                         randconfig-002    gcc-16.1.0
xtensa                randconfig-002-20260711    gcc-16.1.0
xtensa                randconfig-002-20260711    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
