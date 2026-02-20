Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLiLJnt/mGlMJQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 16:36:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CC1168EFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 16:36:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31A5383F17;
	Fri, 20 Feb 2026 15:36:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORQgPhdmPSa8; Fri, 20 Feb 2026 15:36:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AD3483BFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771601782;
	bh=UBCsob0kaxdTdPdEy4b8f3ybVdto6/lVwUzByanQfcI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BzmwVtlf6oCU7EcEo2+2QzNEk+YBhOhHb2Z4QwYxCACzw1RtW5u0jaPlJWsPsCfiu
	 AG2RttcY5Z39+wcAavhbdEXciaAaDHhRE2O90cVnueEkZSmj6qTh8aifP1122hQHME
	 DENqzIyCyE0jvPXR4AWI82Wv1Y9IpWR0Llbnz4zREos/7HyHAMjQmLhb3wDSWLY1+T
	 MqJ/Ejta+OyMRbmkba9mq6TUBVvzhwWIU7JFQHTteKeWTbSffHDNgqVnXyT1WUAhft
	 HJjereqOsZ4BLTSy8qL6scUSMLwAaguuasgAbkIaOe31jjhxjOWJ+OqLW84UDV2ufL
	 o6RS51sKFnxRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AD3483BFA;
	Fri, 20 Feb 2026 15:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 25E49206
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 169E183CAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bXxCRzO5VdJd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 15:36:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ABE1983BFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABE1983BFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABE1983BFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:36:17 +0000 (UTC)
X-CSE-ConnectionGUID: Lz06qF3VRDylSfdJ9pbEJw==
X-CSE-MsgGUID: 3bVQnWADTOq71qiee7QI+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="72679166"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="72679166"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 07:36:18 -0800
X-CSE-ConnectionGUID: 9mzlR1GSR/af5bEl0Xuk7Q==
X-CSE-MsgGUID: LBEXMPOpQvWqk2qQj2kDlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="214885880"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 20 Feb 2026 07:36:16 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtSY9-000000014Cs-3Ftp;
 Fri, 20 Feb 2026 15:36:13 +0000
Date: Fri, 20 Feb 2026 23:35:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602202338.UF7hS4Eu-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771601779; x=1803137779;
 h=date:from:to:subject:message-id;
 bh=loFN8E0x51OG8Z+zzi0YBfJu8qgdHUvY3ipHgcI8yCU=;
 b=NtoLvUhnGGR86uyjH3zLBSrWCEw6/Aa/9LLyfraGKzG4M3Ns3BptWONG
 LLw2ggFiUmiXneJlzVT7rjZc/TnRpWmiQ92YdBy1zMdYu0uY/ba1+QyuF
 h5hBeWmTi5/9MMtZNqMRo5T/+xVnG6GM+WJak2KB7urrLFlthMZwIKv+f
 KVbfDlKjta4BUhuDndQFWnzvqe8I4ZJdt00T0rGcPq0LltxzvRx6ETseO
 SotkqAwNfRDUm3oZKSgaJy3FKmxFjQRG+tB19nx1l8VWSz4exK+DEVLRX
 N6steqEGL4fhbEoS175scwrcSs6Kw/Nap3BiSIlBSbV+3oOzvGod6K/xx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NtoLvUhn
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b213d8025d7ee1e4ae1cd7fdd1e4645c1b7ae53e
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 72CC1168EFF
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: b213d8025d7ee1e4ae1cd7fdd1e4645c1b7ae53e  ixgbe: fix unaligned u32 access in ixgbe_update_flash_X550()

elapsed time: 880m

configs tested: 249
configs skipped: 3

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
arc                         haps_hs_defconfig    clang-23
arc                   randconfig-001-20260220    gcc-8.5.0
arc                   randconfig-002-20260220    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                           imxrt_defconfig    gcc-15.2.0
arm                      jornada720_defconfig    clang-23
arm                        keystone_defconfig    clang-23
arm                   randconfig-001-20260220    gcc-10.5.0
arm                   randconfig-001-20260220    gcc-8.5.0
arm                   randconfig-002-20260220    clang-23
arm                   randconfig-002-20260220    gcc-8.5.0
arm                   randconfig-003-20260220    clang-23
arm                   randconfig-003-20260220    gcc-8.5.0
arm                   randconfig-004-20260220    gcc-10.5.0
arm                   randconfig-004-20260220    gcc-8.5.0
arm                        spear3xx_defconfig    clang-17
arm                           sunxi_defconfig    gcc-15.2.0
arm                       versatile_defconfig    clang-17
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260220    gcc-8.5.0
arm64                 randconfig-002-20260220    gcc-8.5.0
arm64                 randconfig-003-20260220    gcc-8.5.0
arm64                 randconfig-004-20260220    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260220    gcc-8.5.0
csky                  randconfig-002-20260220    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260220    clang-23
hexagon               randconfig-002-20260220    clang-23
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260220    clang-20
i386        buildonly-randconfig-002-20260220    clang-20
i386        buildonly-randconfig-003-20260220    clang-20
i386        buildonly-randconfig-004-20260220    clang-20
i386        buildonly-randconfig-005-20260220    clang-20
i386        buildonly-randconfig-006-20260220    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260220    clang-20
i386                  randconfig-002-20260220    clang-20
i386                  randconfig-003-20260220    clang-20
i386                  randconfig-003-20260220    gcc-14
i386                  randconfig-004-20260220    clang-20
i386                  randconfig-004-20260220    gcc-13
i386                  randconfig-005-20260220    clang-20
i386                  randconfig-006-20260220    clang-20
i386                  randconfig-006-20260220    gcc-14
i386                  randconfig-007-20260220    clang-20
i386                  randconfig-011-20260220    gcc-14
i386                  randconfig-012-20260220    gcc-14
i386                  randconfig-013-20260220    clang-20
i386                  randconfig-013-20260220    gcc-14
i386                  randconfig-014-20260220    gcc-14
i386                  randconfig-015-20260220    clang-20
i386                  randconfig-015-20260220    gcc-14
i386                  randconfig-016-20260220    gcc-14
i386                  randconfig-017-20260220    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260220    clang-23
loongarch             randconfig-002-20260220    clang-23
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                          amiga_defconfig    gcc-15.2.0
m68k                       bvme6000_defconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                       m5249evb_defconfig    clang-17
m68k                            mac_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
microblaze                      mmu_defconfig    clang-17
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                           ci20_defconfig    gcc-15.2.0
mips                 decstation_r4k_defconfig    gcc-15.2.0
mips                          eyeq5_defconfig    gcc-15.2.0
mips                           ip30_defconfig    clang-23
mips                           mtx1_defconfig    clang-23
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260220    clang-23
nios2                 randconfig-002-20260220    clang-23
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
openrisc                  or1klitex_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260220    clang-23
parisc                randconfig-002-20260220    clang-23
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                       holly_defconfig    gcc-15.2.0
powerpc                     ksi8560_defconfig    gcc-15.2.0
powerpc                 linkstation_defconfig    gcc-15.2.0
powerpc                       ppc64_defconfig    gcc-15.2.0
powerpc                      ppc6xx_defconfig    clang-23
powerpc               randconfig-001-20260220    clang-23
powerpc               randconfig-002-20260220    clang-23
powerpc                     skiroot_defconfig    clang-23
powerpc                     taishan_defconfig    clang-17
powerpc                         wii_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260220    clang-23
powerpc64             randconfig-002-20260220    clang-23
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260220    gcc-11.5.0
riscv                 randconfig-002-20260220    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-17
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260220    gcc-11.5.0
s390                  randconfig-002-20260220    gcc-11.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                ecovec24-romimage_defconfig    gcc-15.2.0
sh                          r7785rp_defconfig    gcc-15.2.0
sh                    randconfig-001-20260220    gcc-11.5.0
sh                    randconfig-002-20260220    gcc-11.5.0
sh                   secureedge5410_defconfig    clang-17
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260220    clang-20
sparc                 randconfig-001-20260220    gcc-12.5.0
sparc                 randconfig-002-20260220    clang-20
sparc                 randconfig-002-20260220    gcc-15.2.0
sparc                       sparc64_defconfig    clang-17
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260220    clang-20
sparc64               randconfig-002-20260220    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260220    clang-20
um                    randconfig-001-20260220    clang-23
um                    randconfig-002-20260220    clang-20
um                    randconfig-002-20260220    gcc-14
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260220    clang-20
x86_64      buildonly-randconfig-002-20260220    clang-20
x86_64      buildonly-randconfig-003-20260220    clang-20
x86_64      buildonly-randconfig-004-20260220    clang-20
x86_64      buildonly-randconfig-005-20260220    clang-20
x86_64      buildonly-randconfig-005-20260220    gcc-14
x86_64      buildonly-randconfig-006-20260220    clang-20
x86_64      buildonly-randconfig-006-20260220    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260220    gcc-14
x86_64                randconfig-002-20260220    gcc-14
x86_64                randconfig-003-20260220    gcc-14
x86_64                randconfig-004-20260220    gcc-14
x86_64                randconfig-005-20260220    gcc-14
x86_64                randconfig-006-20260220    gcc-14
x86_64                randconfig-011-20260220    gcc-14
x86_64                randconfig-012-20260220    gcc-14
x86_64                randconfig-013-20260220    gcc-14
x86_64                randconfig-014-20260220    gcc-14
x86_64                randconfig-015-20260220    gcc-14
x86_64                randconfig-016-20260220    gcc-14
x86_64                randconfig-071-20260220    gcc-13
x86_64                randconfig-071-20260220    gcc-14
x86_64                randconfig-072-20260220    clang-20
x86_64                randconfig-072-20260220    gcc-14
x86_64                randconfig-073-20260220    gcc-14
x86_64                randconfig-074-20260220    clang-20
x86_64                randconfig-074-20260220    gcc-14
x86_64                randconfig-075-20260220    clang-20
x86_64                randconfig-075-20260220    gcc-14
x86_64                randconfig-076-20260220    clang-20
x86_64                randconfig-076-20260220    gcc-14
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
xtensa                  audio_kc705_defconfig    clang-23
xtensa                randconfig-001-20260220    clang-20
xtensa                randconfig-001-20260220    gcc-13.4.0
xtensa                randconfig-002-20260220    clang-20
xtensa                randconfig-002-20260220    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
