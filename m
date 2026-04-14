Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDZcO9553mkHEwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:31:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D513FD18E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77C6C42C51;
	Tue, 14 Apr 2026 17:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1xH-HgXTDj0I; Tue, 14 Apr 2026 17:31:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A660D42C57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776187865;
	bh=1hrtQtXzlKyGufcPcdxoAirGXY1Udu+FzZb1h7ygJUQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CijHih6wRlrgYcKP5zwDsEwe4KiCam//puPUkiDKyrC874JZlRJakjSI5PqxmoNs7
	 ySvOSxyp6+km5XxnlpuuNhKfg+KonjDlmInyC5Gx6r3hkp7N8uydptC0bv/npS/E4c
	 1fQ3cmJRmTQ+/vXQDgrhjqdir0zWnWCQI8w8JpMDM0r0IoTBPBnTOeYDejekNkyAle
	 QemVJVUEGhkTSfGDJRQcWHcQ6MnCe8rXMRxZH3jfVp/h9stT9F6SsE8leMbHghaQ5g
	 DNhu4oushk1FU//Kb/ULYflG3VZP44/Ihhcr9z/HMvXpNxHqRYPOf1XQ2gknBpNKpY
	 /ERhCI9VvXelA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A660D42C57;
	Tue, 14 Apr 2026 17:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B1427375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9731142C55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L8pG5XSB-9q3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 17:31:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7586842C51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7586842C51
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7586842C51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:31:03 +0000 (UTC)
X-CSE-ConnectionGUID: Ac6/A80TRDCA6Zju/FI1Tg==
X-CSE-MsgGUID: s0OYECxzQBSWnnFBvuwfQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="99798242"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="99798242"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:31:02 -0700
X-CSE-ConnectionGUID: C6ofP0FpQGOEWf0juExGeg==
X-CSE-MsgGUID: YxIBvJVoSfaSojsP+4Bo/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="253373670"
Received: from lkp-server01.sh.intel.com (HELO 7b0b59b3a0d4) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 14 Apr 2026 10:31:01 -0700
Received: from kbuild by 7b0b59b3a0d4 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wChbG-000000001i3-3j3X;
 Tue, 14 Apr 2026 17:30:58 +0000
Date: Wed, 15 Apr 2026 01:30:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202604150144.kPfVmXLA-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776187863; x=1807723863;
 h=date:from:to:subject:message-id;
 bh=u+C4LFnWIJ3ksUjkpqjwcf/8Mb+lr7f3fDV7evjRUgQ=;
 b=O76txZQTj7iP+zV3Skwv0qU2I+VEhHMWlsdVyhaPvjaO2jBsotjITQJq
 C9X6zH3/wyRrgxAKOOZBJaHc1phMjFR+lcGJ/bZ0vMx6OHJ9tt/7jpDvt
 O2ZBScKs1bWYcKR0Cfu4+uzm4IdZzy9lCzJPAatqICEvcmZ4wJXBzZsRJ
 Zv+jxr1gG2jw907vtiebholIJvBgWSIYV+Lcjh1F3Y7KHbKPVysyqyS0K
 KhbIOGsiPeXcV3sVaf2ijRSnhllbu5fGqQbCYrPR/NicIrz9t0UUBFCng
 xsrLooXOU0PcW1MHFp2FD+lPkJZY/icxoIi6Yy2/lPhV5c+f1UB7Rr6K5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O76txZQT
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 34e1a98ff2a87cf4b8de3ccebe9d45273f014aeb
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
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: 20D513FD18E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 34e1a98ff2a87cf4b8de3ccebe9d45273f014aeb  net: airoha: Remove PCE_MC_EN_MASK bit in REG_FE_PCE_CFG configuration

elapsed time: 1014m

configs tested: 194
configs skipped: 4

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
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260414    gcc-9.5.0
arc                   randconfig-002-20260414    gcc-9.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                   randconfig-001-20260414    gcc-9.5.0
arm                   randconfig-002-20260414    gcc-9.5.0
arm                   randconfig-003-20260414    gcc-9.5.0
arm                   randconfig-004-20260414    gcc-9.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260414    gcc-12.5.0
arm64                 randconfig-002-20260414    gcc-12.5.0
arm64                 randconfig-003-20260414    gcc-12.5.0
arm64                 randconfig-004-20260414    gcc-12.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260414    gcc-12.5.0
csky                  randconfig-002-20260414    gcc-12.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260414    clang-18
hexagon               randconfig-002-20260414    clang-18
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260414    gcc-14
i386        buildonly-randconfig-002-20260414    gcc-14
i386        buildonly-randconfig-003-20260414    gcc-14
i386        buildonly-randconfig-004-20260414    gcc-14
i386        buildonly-randconfig-005-20260414    gcc-14
i386        buildonly-randconfig-006-20260414    gcc-14
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260414    gcc-14
i386                  randconfig-002-20260414    gcc-14
i386                  randconfig-003-20260414    gcc-14
i386                  randconfig-004-20260414    gcc-14
i386                  randconfig-005-20260414    gcc-14
i386                  randconfig-006-20260414    gcc-14
i386                  randconfig-007-20260414    gcc-14
i386                  randconfig-011-20260414    gcc-14
i386                  randconfig-012-20260414    gcc-14
i386                  randconfig-013-20260414    gcc-14
i386                  randconfig-014-20260414    gcc-14
i386                  randconfig-015-20260414    gcc-14
i386                  randconfig-016-20260414    gcc-14
i386                  randconfig-017-20260414    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260414    clang-18
loongarch             randconfig-002-20260414    clang-18
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260414    clang-18
nios2                 randconfig-002-20260414    clang-18
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
parisc                randconfig-001-20260414    gcc-14.3.0
parisc                randconfig-002-20260414    gcc-14.3.0
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc               randconfig-001-20260414    gcc-14.3.0
powerpc               randconfig-002-20260414    gcc-14.3.0
powerpc64             randconfig-001-20260414    gcc-14.3.0
powerpc64             randconfig-002-20260414    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260414    gcc-8.5.0
riscv                 randconfig-002-20260414    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260414    gcc-8.5.0
s390                  randconfig-002-20260414    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260414    gcc-8.5.0
sh                    randconfig-002-20260414    gcc-8.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260414    gcc-12
sparc                 randconfig-002-20260414    gcc-12
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260414    gcc-12
sparc64               randconfig-002-20260414    gcc-12
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260414    gcc-12
um                    randconfig-002-20260414    gcc-12
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260414    gcc-14
x86_64      buildonly-randconfig-002-20260414    gcc-14
x86_64      buildonly-randconfig-003-20260414    gcc-14
x86_64      buildonly-randconfig-004-20260414    gcc-14
x86_64      buildonly-randconfig-005-20260414    gcc-14
x86_64      buildonly-randconfig-006-20260414    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260414    clang-20
x86_64                randconfig-002-20260414    clang-20
x86_64                randconfig-003-20260414    clang-20
x86_64                randconfig-004-20260414    clang-20
x86_64                randconfig-005-20260414    clang-20
x86_64                randconfig-006-20260414    clang-20
x86_64                randconfig-011-20260414    clang-20
x86_64                randconfig-012-20260414    clang-20
x86_64                randconfig-013-20260414    clang-20
x86_64                randconfig-014-20260414    clang-20
x86_64                randconfig-015-20260414    clang-20
x86_64                randconfig-016-20260414    clang-20
x86_64                randconfig-071-20260414    gcc-14
x86_64                randconfig-072-20260414    gcc-14
x86_64                randconfig-073-20260414    gcc-14
x86_64                randconfig-074-20260414    gcc-14
x86_64                randconfig-075-20260414    gcc-14
x86_64                randconfig-076-20260414    gcc-14
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
xtensa                  cadence_csp_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260414    gcc-12
xtensa                randconfig-002-20260414    gcc-12

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
