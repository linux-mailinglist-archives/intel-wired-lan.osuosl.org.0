Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PnPEEwk6fGntLQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 05:56:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA59B72B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 05:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC1AC84018;
	Fri, 30 Jan 2026 04:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f432EfxUnDNU; Fri, 30 Jan 2026 04:56:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F417E84012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769748997;
	bh=2SnLFbZJxDnYYu6zF9hRhLPibJzsGd89ZQ6FTo98Dyg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0O5MQKFWsMCeL++k0yNIRVqragtxQlleJogha1iTq1YXfHZc/ZZ9/svF1r2gU7StB
	 MsgxZZmGkkGHTyF0UB1PorQxDxvSdznxO7c1ra2NJoVtzPt9qEtpM2CKniAhDYXF8F
	 Nv3pPCgwZrgkGGaRo581n9CbiC4CxigdNHbRAGke4UACoCxNJadd0fWE0fznHBva8T
	 cExGKR5HlMrCVnUL0Ua9d8h9XkOp8YLCordDSQbNgJHmezr3ana6nffoAcsQ8Vs7Vq
	 Ij7rpbSzYenFD2GApDu8Ci6Z/5Nolmz4odsTBhV8SkyFX1fOmamoM0zZtuJsSAK8FT
	 RU9JdDnNLG1ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F417E84012;
	Fri, 30 Jan 2026 04:56:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E2A001A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 04:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3E2D60C03
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 04:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SQIhFoclFdQ2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jan 2026 04:56:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8A71960891
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A71960891
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A71960891
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 04:56:33 +0000 (UTC)
X-CSE-ConnectionGUID: 1cQ/EUuGQ4yJpuZiXU0yxg==
X-CSE-MsgGUID: aBC5xCcfR1qiUdj6zOmacA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74849656"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74849656"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 20:56:32 -0800
X-CSE-ConnectionGUID: +xCOmr5iR5mJ7BEIwubCQA==
X-CSE-MsgGUID: NPXQW7yNScGDXCq0cv/DPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="209015975"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 29 Jan 2026 20:56:30 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vlgYW-00000000cC4-0Pa6;
 Fri, 30 Jan 2026 04:56:28 +0000
Date: Fri, 30 Jan 2026 12:56:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601301202.XCoQbLaS-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769748994; x=1801284994;
 h=date:from:to:subject:message-id;
 bh=L27NpOwpvQXmZyStst/RUdyO/Tl/CEim49m2wqhUgYI=;
 b=L2gsKbhsN/fcTIbDDwM8/cyqD4i2MUs7jw3LaZhKJ+JC/YPSfGFZnwFv
 qEOlRMfzLx1a2a2JkoTUPAbegcADxtgJ3KFE7XhmqCDeNMCA/E5KyT5k8
 oK+Ujp1/l0+qnyHfyiZimdkKPDJAkZ4RByX4hrhQQubrM3Awi2DhpuVvS
 P1Ix6P1JCGJJYxdPoEHDygKpy8sVpixDiRMN7EMX6HU7PWJ4wDn8mXkPP
 EFBeeqTZm9v8mFq33yPn0D4SaXuUpe4/Tne2L31qvfjfQWxj67KxW4NQ9
 nqCP2ndZhBY5xPshJ5fRE05PcQ1gUOC5vizI5qyUGBAIlTLUyy1Gnmf2m
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L2gsKbhs
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 e75e408dc524ba32b3bd66e89d2ba1e337877bfa
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BEA59B72B8
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: e75e408dc524ba32b3bd66e89d2ba1e337877bfa  Merge tag 'nf-next-26-01-29' of https://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf-next

elapsed time: 874m

configs tested: 197
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                      axs103_smp_defconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260130    clang-17
arc                   randconfig-002-20260130    clang-17
arc                        vdk_hs38_defconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                       aspeed_g5_defconfig    clang-22
arm                          collie_defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                         lpc32xx_defconfig    clang-22
arm                   milbeaut_m10v_defconfig    clang-22
arm                             mxs_defconfig    clang-22
arm                         nhk8815_defconfig    clang-22
arm                          pxa3xx_defconfig    gcc-15.2.0
arm                   randconfig-001-20260130    clang-17
arm                   randconfig-002-20260130    clang-17
arm                   randconfig-003-20260130    clang-17
arm                   randconfig-004-20260130    clang-17
arm                           sunxi_defconfig    clang-22
arm                           u8500_defconfig    clang-22
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260130    gcc-8.5.0
arm64                 randconfig-002-20260130    gcc-8.5.0
arm64                 randconfig-003-20260130    gcc-8.5.0
arm64                 randconfig-004-20260130    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260130    gcc-8.5.0
csky                  randconfig-002-20260130    gcc-8.5.0
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260130    gcc-11.5.0
hexagon               randconfig-002-20260130    gcc-11.5.0
i386                             alldefconfig    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20260130    clang-20
i386        buildonly-randconfig-002-20260130    clang-20
i386        buildonly-randconfig-003-20260130    clang-20
i386        buildonly-randconfig-004-20260130    clang-20
i386        buildonly-randconfig-005-20260130    clang-20
i386        buildonly-randconfig-006-20260130    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260130    gcc-14
i386                  randconfig-002-20260130    gcc-14
i386                  randconfig-003-20260130    gcc-14
i386                  randconfig-004-20260130    gcc-14
i386                  randconfig-005-20260130    gcc-14
i386                  randconfig-006-20260130    gcc-14
i386                  randconfig-007-20260130    gcc-14
i386                  randconfig-011-20260130    clang-20
i386                  randconfig-012-20260130    clang-20
i386                  randconfig-013-20260130    clang-20
i386                  randconfig-014-20260130    clang-20
i386                  randconfig-015-20260130    clang-20
i386                  randconfig-016-20260130    clang-20
i386                  randconfig-017-20260130    clang-20
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260130    gcc-11.5.0
loongarch             randconfig-002-20260130    gcc-11.5.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                          amiga_defconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                       m5208evb_defconfig    gcc-15.2.0
m68k                        m5407c3_defconfig    clang-22
m68k                           virt_defconfig    clang-22
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                  decstation_64_defconfig    gcc-15.2.0
mips                           jazz_defconfig    gcc-15.2.0
mips                     loongson2k_defconfig    gcc-15.2.0
mips                        omega2p_defconfig    clang-22
mips                       rbtx49xx_defconfig    gcc-15.2.0
nios2                         3c120_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    clang-22
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260130    gcc-11.5.0
nios2                 randconfig-002-20260130    gcc-11.5.0
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                            defconfig    gcc-15.2.0
openrisc                    or1ksim_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    clang-19
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260130    gcc-8.5.0
parisc                randconfig-002-20260130    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                     akebono_defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                      mgcoge_defconfig    gcc-15.2.0
powerpc                       ppc64_defconfig    clang-22
powerpc                     rainier_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260130    gcc-8.5.0
powerpc               randconfig-002-20260130    gcc-8.5.0
powerpc                    socrates_defconfig    gcc-15.2.0
powerpc                     tqm8541_defconfig    clang-22
powerpc64             randconfig-001-20260130    gcc-8.5.0
powerpc64             randconfig-002-20260130    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260130    clang-22
riscv                 randconfig-002-20260130    clang-22
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260130    clang-22
s390                  randconfig-002-20260130    clang-22
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                               allyesconfig    clang-19
sh                                  defconfig    gcc-14
sh                    randconfig-001-20260130    clang-22
sh                    randconfig-002-20260130    clang-22
sparc                             allnoconfig    clang-22
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260130    clang-22
sparc                 randconfig-002-20260130    clang-22
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260130    clang-22
sparc64               randconfig-002-20260130    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260130    clang-22
um                    randconfig-002-20260130    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260130    clang-20
x86_64      buildonly-randconfig-002-20260130    clang-20
x86_64      buildonly-randconfig-003-20260130    clang-20
x86_64      buildonly-randconfig-004-20260130    clang-20
x86_64      buildonly-randconfig-005-20260130    clang-20
x86_64      buildonly-randconfig-006-20260130    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260130    clang-20
x86_64                randconfig-002-20260130    clang-20
x86_64                randconfig-003-20260130    clang-20
x86_64                randconfig-004-20260130    clang-20
x86_64                randconfig-005-20260130    clang-20
x86_64                randconfig-006-20260130    clang-20
x86_64                randconfig-011-20260130    clang-20
x86_64                randconfig-012-20260130    clang-20
x86_64                randconfig-013-20260130    clang-20
x86_64                randconfig-014-20260130    clang-20
x86_64                randconfig-015-20260130    clang-20
x86_64                randconfig-016-20260130    clang-20
x86_64                randconfig-071-20260130    clang-20
x86_64                randconfig-072-20260130    clang-20
x86_64                randconfig-073-20260130    clang-20
x86_64                randconfig-074-20260130    clang-20
x86_64                randconfig-075-20260130    clang-20
x86_64                randconfig-076-20260130    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                           allyesconfig    clang-22
xtensa                  cadence_csp_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260130    clang-22
xtensa                randconfig-002-20260130    clang-22

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
