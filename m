Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cmLeFs6LmWn9UwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 11:41:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1134416CAF1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 11:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 213B0405A1;
	Sat, 21 Feb 2026 10:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTBJD8BZsQX2; Sat, 21 Feb 2026 10:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32632402FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771670472;
	bh=aLnUx/tvOwE1x/2j48DKVSUOSOJvkMxcaA3yvUFsfkk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9iryOJX9yExUGXSlwLlaZael0/qckFvTpLnX8Ee1s6w+iDiDm5RbtPFTTNeGsWVyS
	 nlyPi7VpN+p2XFTTQSEAytAV472ESkzPrIzsMcC0jjkw0lK6lPi+VrZ2FhG3LHaBD1
	 Zv0AnJWAFQOrjodm4KasmwM99JJoxNojWfq1hnrsuNVFHUxUAQoK7ux9NdzR8DDdKM
	 aaXWzzhp1cnQDvEbjSQZopcogqb0CW3ib5+l+eNiFhNTv9HUMInXziZRqwMX25Tt6/
	 tt7Ghk6A9MIcVUKN9/V32KdMun7HW3Yw6fZu/xRJgcKlkIWLndrmE+02PcBuXGgaUt
	 V5VH3HVP72hSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32632402FF;
	Sat, 21 Feb 2026 10:41:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B9BF1CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 10:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D218406E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 10:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VgKZlBPeprw7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Feb 2026 10:41:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DCCBA4057F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCCBA4057F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCCBA4057F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 10:41:04 +0000 (UTC)
X-CSE-ConnectionGUID: VCyh4yPKSLqLW3OHU2KInw==
X-CSE-MsgGUID: T5eU+RTmSzODAnP/Vfa8OA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="76578359"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="76578359"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2026 02:41:04 -0800
X-CSE-ConnectionGUID: T6UobFX5S72uJtqDZle+XQ==
X-CSE-MsgGUID: DSNOU/TCRzGnVEBSUorPvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="215095211"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 21 Feb 2026 02:41:03 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtkQ0-000000014rG-2ygb;
 Sat, 21 Feb 2026 10:41:00 +0000
Date: Sat, 21 Feb 2026 18:40:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602211853.sy3EIlTH-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771670466; x=1803206466;
 h=date:from:to:subject:message-id;
 bh=fu4+IpOq1TSZmwbhBj2KEuX6LIlpbmAQIBGRKOZGj9E=;
 b=ZgUDvjjgtbZut02sVZbds01fnHjqeGDHnb+qwaLYhoAbYMc+j+RBWmaH
 esxFYH+T/TJOYOv+cCq7EpK2lZN/Ekd77Mhw+TLsq/RozNXsvW85lUiiT
 HJGnyNyCZ4Kkv7kJDtxptazQxColNvC32VaJkyG/vHdsDJGW/mLgsaVub
 u/WHmzH+/OWrLghsAi3/cS5Op1AyZ0pcUZI8QWa/eVjjp38JwhtSvs8fd
 cRpurXJo5CwVcdH5ayWGL6Mqxh0Dx0vjfWv+XtvcydHB4JtsoVufk/ZDs
 ZpQX5lknlZR6SaPnTJlH/RXQeuh1AkN5F0hFyqkxZVGHQG0HBReDxnv45
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZgUDvjjg
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 af960c69349a922fac3b4fbdb42e118a35c8700f
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1134416CAF1
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: af960c69349a922fac3b4fbdb42e118a35c8700f  ice: update PCS latency settings for E825 10G/25Gb modes

elapsed time: 725m

configs tested: 242
configs skipped: 2

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
arc                   randconfig-001-20260221    gcc-14.3.0
arc                   randconfig-002-20260221    gcc-14.3.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                       aspeed_g5_defconfig    gcc-15.2.0
arm                         bcm2835_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                           omap1_defconfig    gcc-15.2.0
arm                   randconfig-001-20260221    gcc-14.3.0
arm                   randconfig-002-20260221    gcc-14.3.0
arm                   randconfig-003-20260221    gcc-14.3.0
arm                   randconfig-004-20260221    gcc-14.3.0
arm                         s3c6400_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260221    clang-23
arm64                 randconfig-002-20260221    clang-23
arm64                 randconfig-003-20260221    clang-23
arm64                 randconfig-004-20260221    clang-23
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260221    clang-23
csky                  randconfig-002-20260221    clang-23
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260221    clang-23
hexagon               randconfig-002-20260221    clang-23
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260221    clang-20
i386        buildonly-randconfig-001-20260221    gcc-14
i386        buildonly-randconfig-002-20260221    clang-20
i386        buildonly-randconfig-003-20260221    clang-20
i386        buildonly-randconfig-004-20260221    clang-20
i386        buildonly-randconfig-005-20260221    clang-20
i386        buildonly-randconfig-005-20260221    gcc-14
i386        buildonly-randconfig-006-20260221    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260221    gcc-14
i386                  randconfig-002-20260221    gcc-14
i386                  randconfig-003-20260221    gcc-14
i386                  randconfig-004-20260221    gcc-14
i386                  randconfig-005-20260221    gcc-14
i386                  randconfig-006-20260221    gcc-14
i386                  randconfig-007-20260221    gcc-14
i386                  randconfig-011-20260221    gcc-14
i386                  randconfig-012-20260221    gcc-14
i386                  randconfig-013-20260221    gcc-14
i386                  randconfig-014-20260221    gcc-14
i386                  randconfig-015-20260221    gcc-14
i386                  randconfig-016-20260221    gcc-14
i386                  randconfig-017-20260221    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch                loongson32_defconfig    gcc-15.2.0
loongarch             randconfig-001-20260221    clang-23
loongarch             randconfig-002-20260221    clang-18
loongarch             randconfig-002-20260221    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                          hp300_defconfig    gcc-15.2.0
m68k                          multi_defconfig    gcc-15.2.0
m68k                        mvme16x_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                          ath79_defconfig    gcc-15.2.0
mips                    maltaup_xpa_defconfig    gcc-15.2.0
nios2                         10m50_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260221    clang-23
nios2                 randconfig-002-20260221    clang-23
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
parisc                randconfig-001-20260221    gcc-8.5.0
parisc                randconfig-001-20260221    gcc-9.5.0
parisc                randconfig-002-20260221    gcc-8.5.0
parisc                randconfig-002-20260221    gcc-9.5.0
parisc64                            defconfig    clang-19
powerpc                     akebono_defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                      chrp32_defconfig    gcc-15.2.0
powerpc                  iss476-smp_defconfig    gcc-15.2.0
powerpc                 linkstation_defconfig    gcc-15.2.0
powerpc                      pcm030_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260221    gcc-12.5.0
powerpc               randconfig-001-20260221    gcc-9.5.0
powerpc               randconfig-002-20260221    gcc-9.5.0
powerpc                    sam440ep_defconfig    gcc-15.2.0
powerpc                         wii_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260221    gcc-11.5.0
powerpc64             randconfig-001-20260221    gcc-9.5.0
powerpc64             randconfig-002-20260221    gcc-8.5.0
powerpc64             randconfig-002-20260221    gcc-9.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260221    gcc-10.5.0
riscv                 randconfig-001-20260221    gcc-8.5.0
riscv                 randconfig-002-20260221    gcc-10.5.0
riscv                 randconfig-002-20260221    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260221    clang-23
s390                  randconfig-001-20260221    gcc-10.5.0
s390                  randconfig-002-20260221    gcc-10.5.0
s390                  randconfig-002-20260221    gcc-14.3.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                          lboxre2_defconfig    gcc-15.2.0
sh                    randconfig-001-20260221    gcc-10.5.0
sh                    randconfig-002-20260221    gcc-10.5.0
sh                    randconfig-002-20260221    gcc-15.2.0
sh                          rsk7269_defconfig    gcc-15.2.0
sh                           se7705_defconfig    gcc-15.2.0
sh                           se7724_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260221    gcc-15.2.0
sparc                 randconfig-001-20260221    gcc-8.5.0
sparc                 randconfig-002-20260221    gcc-8.5.0
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260221    gcc-8.5.0
sparc64               randconfig-002-20260221    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260221    gcc-14
um                    randconfig-001-20260221    gcc-8.5.0
um                    randconfig-002-20260221    clang-23
um                    randconfig-002-20260221    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260221    clang-20
x86_64      buildonly-randconfig-002-20260221    clang-20
x86_64      buildonly-randconfig-003-20260221    clang-20
x86_64      buildonly-randconfig-004-20260221    clang-20
x86_64      buildonly-randconfig-004-20260221    gcc-14
x86_64      buildonly-randconfig-005-20260221    clang-20
x86_64      buildonly-randconfig-006-20260221    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260221    clang-20
x86_64                randconfig-001-20260221    gcc-14
x86_64                randconfig-002-20260221    gcc-14
x86_64                randconfig-003-20260221    gcc-14
x86_64                randconfig-004-20260221    clang-20
x86_64                randconfig-004-20260221    gcc-14
x86_64                randconfig-005-20260221    clang-20
x86_64                randconfig-005-20260221    gcc-14
x86_64                randconfig-006-20260221    gcc-14
x86_64                randconfig-011-20260221    gcc-14
x86_64                randconfig-012-20260221    gcc-14
x86_64                randconfig-013-20260221    clang-20
x86_64                randconfig-013-20260221    gcc-14
x86_64                randconfig-014-20260221    gcc-14
x86_64                randconfig-015-20260221    gcc-14
x86_64                randconfig-016-20260221    gcc-14
x86_64                randconfig-071-20260221    clang-20
x86_64                randconfig-072-20260221    clang-20
x86_64                randconfig-073-20260221    clang-20
x86_64                randconfig-074-20260221    clang-20
x86_64                randconfig-075-20260221    clang-20
x86_64                randconfig-076-20260221    clang-20
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
xtensa                           allyesconfig    gcc-15.2.0
xtensa                          iss_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260221    gcc-8.5.0
xtensa                randconfig-002-20260221    gcc-12.5.0
xtensa                randconfig-002-20260221    gcc-8.5.0
xtensa                         virt_defconfig    gcc-15.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
