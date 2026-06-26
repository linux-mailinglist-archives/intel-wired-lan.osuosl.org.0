Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IKiGMChUPmpADwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 12:27:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 078F46CC131
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 12:27:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FPYKmOsj;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9910F8176A;
	Fri, 26 Jun 2026 10:27:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-e61lzA-Kcg; Fri, 26 Jun 2026 10:27:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF3B981776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782469666;
	bh=0Yd8XJijAv4IX0ShplWli0zWvz952vZmF/5pmjH8Mxs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FPYKmOsjJchlpFF4r4L2EA7uH7Y1DzLHOP3wH7ObKkGEugoij8znX261IwClE8cae
	 PWjioaFpSbsgrJYxE8Hr1KmQx0HSev2QKSy6CbpNW5Q4Sb6MU2mZCBKHFvE3qVcjCu
	 gfCzID05LUu/s70h/M1M/+tvnS24gb1y7ZxL8VjnyiF1AwoQvl4gceMGi1evyZkKrU
	 vVjphp7RqFLyEcMGQt97Q2U1Z4FmHtwnpNnlGY/WjD7I/JnZBDkXmyL0zbQpDPoI6i
	 nQrYsyG/FpUQfBfYNfvr1vwNbVXugZwJKpsjciYle3l+joQX4AKaYhqdFDlCW4cViP
	 DvNAaVMleeODA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF3B981776;
	Fri, 26 Jun 2026 10:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05197369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 10:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAAFE406E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 10:27:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pZDZ1lwx8-d1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 10:27:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8E16F406DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E16F406DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E16F406DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 10:27:43 +0000 (UTC)
X-CSE-ConnectionGUID: +nxvRfR3RnCzobdeOjQzOw==
X-CSE-MsgGUID: 56CVsmrGT1CB8SYiKIPjGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="83464004"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="83464004"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 03:27:42 -0700
X-CSE-ConnectionGUID: mCi3qq2SS3eJ4AB7M0YBsA==
X-CSE-MsgGUID: pkGIdEphQPumDJyb7S/jpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="254905479"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 26 Jun 2026 03:27:42 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wd3mc-000000004zN-3aVN;
 Fri, 26 Jun 2026 10:27:38 +0000
Date: Fri, 26 Jun 2026 18:27:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202606261827.dUQJrOxv-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782469663; x=1814005663;
 h=date:from:to:subject:message-id;
 bh=8sf/ojOC4OsHFY2Q8MLoO7/gb3Pv/jzlNo6CJc+5Z58=;
 b=nkQ1dEVhnCmM734pcYS9fpG5b/5Vxp0blOCsRzX3Nj9R4ccbdiP1Il09
 J9ZP8fD/9lc8+jQ9JfxZpUa6fMHx+RjGgbSOxU3pxhFnQ9+OpfGpn8vWX
 /fmLtw/YSQzspq645FOdHnJ8nRZIf8KUTGQyj8fGL3WkkJ8ANQczYOxnR
 BNGySo7knd9c1ZdmuxNlwPY/8h01RtVFlIJcHgsSjnff4ka1uIGYqdrI2
 hO0HUByIeuKyBfknS8/2KrvokrMdGuA4RRYnHJCgfKxEeMmdDlnZ9UCbN
 Bkl2IcBXwj30c18wugezTK86QuRy67Vn//yhVIrjD9yO1asszNTwt/7aW
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nkQ1dEVh
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5cca9023832afcdb4d8121797e52796bbbf94e2e
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 078F46CC131

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 5cca9023832afcdb4d8121797e52796bbbf94e2e  ice: refactor ice_sched_cfg_agg to take agg_info pointer

elapsed time: 803m

configs tested: 149
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260626    gcc-11.5.0
arc                   randconfig-002-20260626    gcc-9.5.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-16.1.0
arm                   randconfig-001-20260626    gcc-13.4.0
arm                   randconfig-002-20260626    clang-23
arm                   randconfig-003-20260626    gcc-13.4.0
arm                   randconfig-004-20260626    clang-21
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
hexagon                          allmodconfig    clang-23
hexagon                           allnoconfig    clang-23
hexagon               randconfig-001-20260626    clang-23
hexagon               randconfig-002-20260626    clang-17
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260626    gcc-14
i386        buildonly-randconfig-002-20260626    gcc-14
i386        buildonly-randconfig-003-20260626    gcc-14
i386        buildonly-randconfig-004-20260626    gcc-12
i386        buildonly-randconfig-005-20260626    gcc-14
i386        buildonly-randconfig-006-20260626    gcc-14
i386                                defconfig    clang-22
i386                  randconfig-001-20260626    clang-22
i386                  randconfig-002-20260626    gcc-14
i386                  randconfig-003-20260626    clang-22
i386                  randconfig-004-20260626    clang-22
i386                  randconfig-005-20260626    gcc-14
i386                  randconfig-006-20260626    gcc-14
i386                  randconfig-007-20260626    gcc-14
i386                  randconfig-011-20260626    gcc-14
i386                  randconfig-012-20260626    clang-22
i386                  randconfig-013-20260626    clang-22
i386                  randconfig-014-20260626    gcc-14
i386                  randconfig-015-20260626    gcc-14
i386                  randconfig-016-20260626    clang-22
i386                  randconfig-017-20260626    clang-22
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-20
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260626    gcc-16.1.0
loongarch             randconfig-002-20260626    clang-18
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
mips                       rbtx49xx_defconfig    gcc-16.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260626    gcc-11.5.0
nios2                 randconfig-002-20260626    gcc-8.5.0
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260626    gcc-8.5.0
parisc                randconfig-002-20260626    gcc-12.5.0
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    gcc-16.1.0
powerpc               randconfig-001-20260626    clang-23
powerpc               randconfig-002-20260626    gcc-11.5.0
powerpc64             randconfig-001-20260626    clang-17
powerpc64             randconfig-002-20260626    gcc-13.4.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260626    gcc-11.5.0
riscv                 randconfig-002-20260626    clang-23
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                  randconfig-001-20260626    clang-23
s390                  randconfig-002-20260626    gcc-8.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260626    gcc-9.5.0
sh                    randconfig-002-20260626    gcc-16.1.0
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260626    gcc-12.5.0
sparc                 randconfig-002-20260626    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64               randconfig-001-20260626    clang-20
sparc64               randconfig-002-20260626    clang-20
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260626    clang-18
um                    randconfig-002-20260626    clang-23
um                           x86_64_defconfig    clang-23
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260626    clang-22
x86_64      buildonly-randconfig-002-20260626    gcc-14
x86_64      buildonly-randconfig-003-20260626    clang-22
x86_64      buildonly-randconfig-004-20260626    gcc-14
x86_64      buildonly-randconfig-005-20260626    clang-22
x86_64      buildonly-randconfig-006-20260626    clang-22
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260626    clang-22
x86_64                randconfig-002-20260626    gcc-14
x86_64                randconfig-003-20260626    clang-22
x86_64                randconfig-004-20260626    clang-22
x86_64                randconfig-005-20260626    gcc-13
x86_64                randconfig-006-20260626    clang-22
x86_64                randconfig-011-20260626    gcc-14
x86_64                randconfig-012-20260626    gcc-14
x86_64                randconfig-013-20260626    clang-22
x86_64                randconfig-014-20260626    gcc-14
x86_64                randconfig-015-20260626    gcc-14
x86_64                randconfig-016-20260626    gcc-14
x86_64                randconfig-071-20260626    gcc-14
x86_64                randconfig-072-20260626    clang-22
x86_64                randconfig-073-20260626    gcc-14
x86_64                randconfig-074-20260626    gcc-14
x86_64                randconfig-075-20260626    gcc-14
x86_64                randconfig-076-20260626    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    gcc-16.1.0
xtensa                randconfig-001-20260626    gcc-12.5.0
xtensa                randconfig-002-20260626    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
