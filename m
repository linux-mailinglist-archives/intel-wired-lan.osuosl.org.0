Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1XbzFnZozGlXSwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 02:36:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 309B8373269
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 02:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B7E081443;
	Wed,  1 Apr 2026 00:36:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id esdyZuKI20QK; Wed,  1 Apr 2026 00:36:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CD1981347
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775003762;
	bh=jV9IW6NloFL39dywNWCVtHyYF5xMurk9Oo8iLb2N6uc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MRu/BPNINhacsI/FRyiaj3K26SoOjgrYyPqwC3F7kzoFQuQmJpI8+Va8pD1K8MF1v
	 FMwqOuEWj6UMiwIhxtkuXmc2ZyhKB6H3sMcS7kyIlzHhggcUxta2mzCNVAxU8KKcD+
	 jnZCHXoy9xOtG4yA+jiWecS7UX7vX66ZiXXskQrRU8/KLJUgaahhdpZinInSJ4LX9l
	 lgS75ssHHb9ISonxtF1m5S7IkKg74p26blBsk9V0G3BlqIswQ9h+Bq1DCS4cA6ywek
	 b7GaEzDg0TUs/QvzjZ996sFJgn8Of686cV0KCxMfRifGCItIxK5i/d8Q7kfl3p7pnX
	 1TAc6Gvfjltxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CD1981347;
	Wed,  1 Apr 2026 00:36:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 535A130E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 00:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 392C8406FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 00:36:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Y6u4zVj_5lV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 00:35:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C8BDB401AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8BDB401AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8BDB401AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 00:35:58 +0000 (UTC)
X-CSE-ConnectionGUID: 7HDWiSqeTvOwSrob25UVcw==
X-CSE-MsgGUID: f0JNYGwgQ2mpcRskK6tCjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76222832"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76222832"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 17:35:57 -0700
X-CSE-ConnectionGUID: kmiHV02gTGO6SfI4H3q1Dg==
X-CSE-MsgGUID: Ln55BeVeR2q62hCK6T0K6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="228125327"
Received: from lkp-server01.sh.intel.com (HELO 283bf2e1b94a) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 31 Mar 2026 17:35:56 -0700
Received: from kbuild by 283bf2e1b94a with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w7jYo-000000004UZ-19UT;
 Wed, 01 Apr 2026 00:35:54 +0000
Date: Wed, 01 Apr 2026 08:35:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604010804.CDJejCF8-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775003759; x=1806539759;
 h=date:from:to:subject:message-id;
 bh=bX5DXZstpoWjdP1O6EcJ+IYY1gZArB6h6WD4oblFeh4=;
 b=UriOnq7H7mCB9QYbf7D4N1TK+1XY4/HJQSSOL9pd3Z8cH0VrG7TlO3eV
 ltg05nDOM/V6S4j/LZh2ELJaldlVGkC2AkLvhCQoKMuvSjzhd2+hE40fo
 AfqykAcuv8RCjjaeSNWeCEv2B6+MoM7nQTW9MGg7mgxf2fIrSW9+3MKCM
 aH80pYcNMpocmTBculmxcW2ViE8HbboFa9nvNiqTval0hTQ7fyi0ozf6/
 JsLRCvv/Lshk7s9Xzp35ldhik+Swdo/xTuXSfr+pd+M9T+iEn7j5F84fq
 W+bbvuH7LkFawNU4XmEzka7wDEMT4a8fl+T91Quy8m+IP4bm6aLgNWq8V
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UriOnq7H
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 6c31a9de99fc91a2ea6408083e9bd252df9aeb96
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	NEURAL_HAM(-0.00)[-0.996];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 309B8373269
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 6c31a9de99fc91a2ea6408083e9bd252df9aeb96  ice: dpll: Fix compilation warning

elapsed time: 1447m

configs tested: 179
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
arc                   randconfig-001-20260401    clang-23
arc                   randconfig-001-20260401    gcc-8.5.0
arc                   randconfig-002-20260401    clang-23
arc                   randconfig-002-20260401    gcc-11.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    clang-23
arm                            mmp2_defconfig    gcc-15.2.0
arm                   randconfig-001-20260401    clang-23
arm                   randconfig-002-20260401    clang-23
arm                   randconfig-003-20260401    clang-23
arm                   randconfig-004-20260401    clang-23
arm                   randconfig-004-20260401    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260401    clang-18
arm64                 randconfig-001-20260401    gcc-15.2.0
arm64                 randconfig-002-20260401    gcc-15.2.0
arm64                 randconfig-002-20260401    gcc-8.5.0
arm64                 randconfig-003-20260401    gcc-15.2.0
arm64                 randconfig-003-20260401    gcc-8.5.0
arm64                 randconfig-004-20260401    gcc-11.5.0
arm64                 randconfig-004-20260401    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260401    gcc-13.4.0
csky                  randconfig-001-20260401    gcc-15.2.0
csky                  randconfig-002-20260401    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-23
hexagon               randconfig-001-20260401    clang-23
hexagon               randconfig-001-20260401    gcc-15.2.0
hexagon               randconfig-002-20260401    clang-17
hexagon               randconfig-002-20260401    gcc-15.2.0
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386        buildonly-randconfig-001-20260401    gcc-14
i386        buildonly-randconfig-002-20260401    clang-20
i386        buildonly-randconfig-002-20260401    gcc-14
i386        buildonly-randconfig-003-20260401    gcc-14
i386        buildonly-randconfig-004-20260401    gcc-14
i386        buildonly-randconfig-005-20260401    gcc-14
i386        buildonly-randconfig-006-20260401    clang-20
i386        buildonly-randconfig-006-20260401    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20260401    gcc-14
i386                  randconfig-002-20260401    clang-20
i386                  randconfig-003-20260401    clang-20
i386                  randconfig-004-20260401    gcc-12
i386                  randconfig-011-20260401    clang-20
i386                  randconfig-012-20260401    clang-20
i386                  randconfig-013-20260401    clang-20
i386                  randconfig-014-20260401    clang-20
i386                  randconfig-015-20260401    clang-20
i386                  randconfig-016-20260401    gcc-14
i386                  randconfig-017-20260401    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260401    gcc-15.2.0
loongarch             randconfig-002-20260401    clang-23
loongarch             randconfig-002-20260401    gcc-15.2.0
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
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260401    gcc-15.2.0
nios2                 randconfig-001-20260401    gcc-8.5.0
nios2                 randconfig-002-20260401    gcc-15.2.0
nios2                 randconfig-002-20260401    gcc-9.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260401    gcc-8.5.0
parisc                randconfig-002-20260401    gcc-8.5.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260401    gcc-8.5.0
powerpc               randconfig-002-20260401    gcc-8.5.0
powerpc64             randconfig-001-20260401    gcc-8.5.0
powerpc64             randconfig-002-20260401    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                 randconfig-001-20260401    gcc-8.5.0
riscv                 randconfig-001-20260401    gcc-9.5.0
riscv                 randconfig-002-20260401    gcc-11.5.0
riscv                 randconfig-002-20260401    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                  randconfig-001-20260401    gcc-9.5.0
s390                  randconfig-002-20260401    gcc-8.5.0
s390                  randconfig-002-20260401    gcc-9.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260401    gcc-10.5.0
sh                    randconfig-001-20260401    gcc-9.5.0
sh                    randconfig-002-20260401    gcc-15.2.0
sh                    randconfig-002-20260401    gcc-9.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-14
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64      buildonly-randconfig-001-20260401    gcc-12
x86_64      buildonly-randconfig-001-20260401    gcc-14
x86_64      buildonly-randconfig-002-20260401    gcc-12
x86_64      buildonly-randconfig-002-20260401    gcc-14
x86_64      buildonly-randconfig-003-20260401    gcc-12
x86_64      buildonly-randconfig-004-20260401    gcc-12
x86_64      buildonly-randconfig-005-20260401    clang-20
x86_64      buildonly-randconfig-005-20260401    gcc-12
x86_64      buildonly-randconfig-006-20260401    gcc-12
x86_64      buildonly-randconfig-006-20260401    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260401    clang-20
x86_64                randconfig-002-20260401    clang-20
x86_64                randconfig-003-20260401    clang-20
x86_64                randconfig-004-20260401    clang-20
x86_64                randconfig-005-20260401    clang-20
x86_64                randconfig-006-20260401    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
