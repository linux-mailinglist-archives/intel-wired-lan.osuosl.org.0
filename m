Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIdnNI3JzmmtqAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 21:54:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2613438DCFD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 21:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5453940F5A;
	Thu,  2 Apr 2026 19:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g2KV3hM7qz2d; Thu,  2 Apr 2026 19:54:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8376B40DFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775159690;
	bh=Wa2Ti0L4VFL/0iT7RcOsdP8uwakcsPpYM7FQt+KxcQE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0wMVgcLBkGEs4/EMrkaZP3nY7X2EXuhVsf9T7j9V0xWCsZUBoIJp7Me++qZI5mqzJ
	 kN012qcs2VGBYZM1mG3wkNUSH81RUmQQIRQpLZPLMxFCLtCQRKPOvzSAoz8OOavdzf
	 dkMFcfB1vXIMusHfs+7zy/xjEsJDVX/3CSyNBxC87ycgLWUbjwJTgm/Z64HVwsI9fi
	 nGBJRHWuRKeeWKHA8+iVAdevi2W1MYRAcsepuxpAdIerOrwu6Og2uERurdxwK1DqEE
	 pGhjMDd7ZONmlMSRvq2pbT61ga6fkTpuAGHbhT8J5PLX7j5hkYmxmNIhPFSIxsXyJ3
	 41qQSyZozhcOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8376B40DFC;
	Thu,  2 Apr 2026 19:54:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B9A62CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 19:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11DDD806EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 19:54:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIJDrMHZCwir for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 19:54:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 365C7806C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 365C7806C3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 365C7806C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 19:54:48 +0000 (UTC)
X-CSE-ConnectionGUID: y3JjQCAmQMe/vpB15jvagg==
X-CSE-MsgGUID: mFdHbyBFQ1mYYUTLx3Vy3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="76416950"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="76416950"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 12:54:48 -0700
X-CSE-ConnectionGUID: VEL37hF6SS2MHnt7vdwWaQ==
X-CSE-MsgGUID: Y6IZoh7PTJmmftS0fBjtJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="223792216"
Received: from lkp-server01.sh.intel.com (HELO 064ad336901d) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 12:54:46 -0700
Received: from kbuild by 064ad336901d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w8O7o-000000000OH-07fe;
 Thu, 02 Apr 2026 19:54:44 +0000
Date: Fri, 03 Apr 2026 03:54:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604030335.tfToC7bQ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775159688; x=1806695688;
 h=date:from:to:subject:message-id;
 bh=AQdhqSS2Pul5BehtHsm3B+GkvVRo+2sv2/MrgYdVdAE=;
 b=VoAhq7On1nN4IQQaIoTu9ykZred2T1UebuqqFE7IN8E/KHdcJ2ZhwWur
 k9k+6oJ+3ymS8AqU1eW05Ky8w65wbo988enrXHzdck0QUwqYkB+inX5Iy
 5pMy+h+Zi8utaelpR472BRjCV/NOJY8U+Qk5lazhERDnt7zqqG+/Uo4m+
 az265Hygcb8uH2uJxqRl2DLNPD+9+TXaOYYlfG59SBzGqSXgiGd/leSw0
 l/58ziF9I+3H+hjQb+MzkZ1bHBN68kRozPupzdFnVDEPahoB8xc9R0xv9
 Q98hTRv3qNySuVAzKvqPyUsz33vuhR8qvoSg3B+poY29er6Bl0ooCJ5ez
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VoAhq7On
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 92fec6746e041fd9e4afea5b17adf9384a767cef
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.998];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: 2613438DCFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 92fec6746e041fd9e4afea5b17adf9384a767cef  ixd: add devlink support

elapsed time: 758m

configs tested: 168
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260402    gcc-11.5.0
arc                   randconfig-002-20260402    gcc-11.5.0
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260402    gcc-11.5.0
arm                   randconfig-002-20260402    gcc-11.5.0
arm                   randconfig-003-20260402    gcc-11.5.0
arm                   randconfig-004-20260402    gcc-11.5.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260402    gcc-15.2.0
arm64                 randconfig-002-20260402    gcc-15.2.0
arm64                 randconfig-003-20260402    gcc-15.2.0
arm64                 randconfig-004-20260402    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260402    gcc-15.2.0
csky                  randconfig-002-20260402    gcc-15.2.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260402    clang-18
hexagon               randconfig-002-20260402    clang-18
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260402    clang-20
i386        buildonly-randconfig-002-20260402    clang-20
i386        buildonly-randconfig-003-20260402    clang-20
i386        buildonly-randconfig-004-20260402    clang-20
i386        buildonly-randconfig-005-20260402    clang-20
i386        buildonly-randconfig-006-20260402    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260402    clang-20
i386                  randconfig-002-20260402    clang-20
i386                  randconfig-003-20260402    clang-20
i386                  randconfig-004-20260402    clang-20
i386                  randconfig-005-20260402    clang-20
i386                  randconfig-006-20260402    clang-20
i386                  randconfig-007-20260402    clang-20
i386                  randconfig-011-20260402    clang-20
i386                  randconfig-012-20260402    clang-20
i386                  randconfig-013-20260402    clang-20
i386                  randconfig-014-20260402    clang-20
i386                  randconfig-015-20260402    clang-20
i386                  randconfig-016-20260402    clang-20
i386                  randconfig-017-20260402    clang-20
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260402    clang-18
loongarch             randconfig-002-20260402    clang-18
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                                defconfig    clang-19
m68k                        stmark2_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                             allnoconfig    clang-23
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260402    clang-18
nios2                 randconfig-002-20260402    clang-18
openrisc                         allmodconfig    clang-23
openrisc                          allnoconfig    clang-23
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260402    clang-20
parisc                randconfig-002-20260402    clang-20
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc               randconfig-001-20260402    clang-20
powerpc               randconfig-002-20260402    clang-20
powerpc64             randconfig-001-20260402    clang-20
powerpc64             randconfig-002-20260402    clang-20
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260402    clang-23
riscv                 randconfig-002-20260402    clang-23
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260402    clang-23
s390                  randconfig-002-20260402    clang-23
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260402    clang-23
sh                    randconfig-002-20260402    clang-23
sparc                             allnoconfig    clang-23
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260402    gcc-14
sparc                 randconfig-002-20260402    gcc-14
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260402    gcc-14
sparc64               randconfig-002-20260402    gcc-14
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260402    gcc-14
um                    randconfig-002-20260402    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260402    clang-20
x86_64      buildonly-randconfig-002-20260402    clang-20
x86_64      buildonly-randconfig-003-20260402    clang-20
x86_64      buildonly-randconfig-004-20260402    clang-20
x86_64      buildonly-randconfig-005-20260402    clang-20
x86_64      buildonly-randconfig-006-20260402    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260402    gcc-14
x86_64                randconfig-002-20260402    gcc-14
x86_64                randconfig-003-20260402    gcc-14
x86_64                randconfig-004-20260402    gcc-14
x86_64                randconfig-005-20260402    gcc-14
x86_64                randconfig-006-20260402    gcc-14
x86_64                randconfig-011-20260402    clang-20
x86_64                randconfig-012-20260402    clang-20
x86_64                randconfig-013-20260402    clang-20
x86_64                randconfig-014-20260402    clang-20
x86_64                randconfig-015-20260402    clang-20
x86_64                randconfig-016-20260402    clang-20
x86_64                randconfig-071-20260402    clang-20
x86_64                randconfig-072-20260402    clang-20
x86_64                randconfig-073-20260402    clang-20
x86_64                randconfig-074-20260402    clang-20
x86_64                randconfig-075-20260402    clang-20
x86_64                randconfig-076-20260402    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                           allyesconfig    clang-23
xtensa                randconfig-001-20260402    gcc-14
xtensa                randconfig-002-20260402    gcc-14

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
