Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH0TKKvcdGks+gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 15:52:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C737DEEF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 15:52:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01EA483466;
	Sat, 24 Jan 2026 14:52:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aJU73mzuAvWN; Sat, 24 Jan 2026 14:52:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1304E83668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769266343;
	bh=5oDxJAlvtKKr28T4nciZYiqpoI8MLoALL4DOvgIKMY4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SHxQv/FUiEUDgjvvFSiLs+P8wDyFafWX8DqTPjXO80EsM5Ja0Mb0oIPh1omZQL102
	 MsO8BEyXFWEU3zvfG2BtYtVDKI8iOdL5twg4pbc89PveZSYE37W0DhrC1lIJtYN3lr
	 SQGRg3YcvX4w11yErmaMu1MCWK5dXXIsB6F/yFjE22dq1CYMQFm+gbj7Uo5xmbhags
	 ltWbgUn1pjRROn8gtpHPk1cprRxO656LAMV804d+2CAUvTb/fWB2lWxxIBuwuSSn7j
	 EUGiUYPqFJRqeCZPVzhxaGcbk/QH+SV3wT3CAQgczFGdjKmQsAPmMc05vZ3HFhRD79
	 s6wXmX/DSGBtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1304E83668;
	Sat, 24 Jan 2026 14:52:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20CE6122
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jan 2026 14:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CAD560A6B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jan 2026 14:52:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dj7Y4d7heGhJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Jan 2026 14:52:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 975EC60A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 975EC60A6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 975EC60A6A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jan 2026 14:52:19 +0000 (UTC)
X-CSE-ConnectionGUID: eBwjHsZ9T5m3x2CkU1imQg==
X-CSE-MsgGUID: MbPsZT1tTdeug/0kWa29bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11681"; a="70543226"
X-IronPort-AV: E=Sophos;i="6.21,250,1763452800"; d="scan'208";a="70543226"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2026 06:52:19 -0800
X-CSE-ConnectionGUID: udPPiZf7R0KjrOdE8lLUIQ==
X-CSE-MsgGUID: 1kwbKdIPSUa5JJpQRsgFEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,250,1763452800"; d="scan'208";a="207082555"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 24 Jan 2026 06:52:17 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vjezm-00000000VFy-3keQ;
 Sat, 24 Jan 2026 14:52:14 +0000
Date: Sat, 24 Jan 2026 22:51:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202601242238.JLMBPldP-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769266340; x=1800802340;
 h=date:from:to:subject:message-id;
 bh=Bmm8IohDQe5abrnHoX2DKGV36GyF54zIZMH+S7Wdy4A=;
 b=YTgdRHzpouYTj6FLSEGxf4nTT3diS5wxnWoATQnpvr9UFMYospOMdtNJ
 Nv8pDyaIVKngR99lo/ciKJqj27+jwifyHUT9+rB4PqcfzZPyzPR2uuevB
 qkiyqtkmIwNl4H3mnTdZ94eIqRmoWsDTEyV4t8b5c7Z+27Q115UOD2L2M
 ExaVtetiKWYC5PyJYZfo/B5qgzkxpqKbJo89u9X2hX6tXly+BN05/HD+8
 OdPbFWPpgRFVReLPhq5nMYdzHXI07oIfN+clVBbyjSwUfsh7QEkz5nEMQ
 NoAqJRWRJ4iE82NyiGOU86GBHo2fLm3jkT5+9qT8sxyT/WozIMYmxIB8M
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YTgdRHzp
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dd7202ed288a2218d2e88519b9f0bfa84a4aa00e
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
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	RCPT_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 07C737DEEF
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: dd7202ed288a2218d2e88519b9f0bfa84a4aa00e  ice: add support for unmanaged DPLL on E830 NIC

elapsed time: 1282m

configs tested: 206
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                   randconfig-001-20260124    gcc-14.3.0
arc                   randconfig-002-20260124    gcc-13.4.0
arc                    vdk_hs38_smp_defconfig    gcc-15.2.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                        clps711x_defconfig    clang-22
arm                                 defconfig    clang-22
arm                   randconfig-001-20260124    gcc-8.5.0
arm                   randconfig-002-20260124    clang-22
arm                   randconfig-003-20260124    clang-18
arm                   randconfig-004-20260124    gcc-15.2.0
arm                           tegra_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260124    clang-22
arm64                 randconfig-002-20260124    clang-22
arm64                 randconfig-003-20260124    clang-22
arm64                 randconfig-004-20260124    gcc-9.5.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260124    gcc-13.4.0
csky                  randconfig-002-20260124    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20260124    clang-22
hexagon               randconfig-002-20260124    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386        buildonly-randconfig-001-20260124    gcc-14
i386        buildonly-randconfig-002-20260124    gcc-14
i386        buildonly-randconfig-003-20260124    gcc-14
i386        buildonly-randconfig-004-20260124    clang-20
i386        buildonly-randconfig-005-20260124    gcc-14
i386        buildonly-randconfig-006-20260124    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20260124    gcc-14
i386                  randconfig-002-20260124    gcc-14
i386                  randconfig-003-20260124    gcc-14
i386                  randconfig-004-20260124    gcc-12
i386                  randconfig-005-20260124    clang-20
i386                  randconfig-006-20260124    gcc-14
i386                  randconfig-007-20260124    gcc-14
i386                  randconfig-011-20260124    clang-20
i386                  randconfig-012-20260124    clang-20
i386                  randconfig-013-20260124    clang-20
i386                  randconfig-014-20260124    gcc-14
i386                  randconfig-015-20260124    clang-20
i386                  randconfig-016-20260124    gcc-14
i386                  randconfig-017-20260124    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260124    gcc-15.2.0
loongarch             randconfig-002-20260124    gcc-14.3.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    gcc-15.2.0
m68k                        mvme147_defconfig    gcc-15.2.0
microblaze                       alldefconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260124    gcc-8.5.0
nios2                 randconfig-002-20260124    gcc-11.5.0
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260124    gcc-8.5.0
parisc                randconfig-002-20260124    gcc-14.3.0
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                         ps3_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260124    clang-22
powerpc               randconfig-002-20260124    clang-22
powerpc                     skiroot_defconfig    clang-22
powerpc64             randconfig-001-20260124    gcc-10.5.0
powerpc64             randconfig-002-20260124    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20260124    gcc-8.5.0
riscv                 randconfig-002-20260124    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                  randconfig-001-20260124    gcc-15.2.0
s390                  randconfig-001-20260124    gcc-8.5.0
s390                  randconfig-002-20260124    gcc-15.2.0
s390                  randconfig-002-20260124    gcc-8.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-15.2.0
sh                    randconfig-001-20260124    gcc-15.2.0
sh                    randconfig-001-20260124    gcc-8.5.0
sh                    randconfig-002-20260124    gcc-13.4.0
sh                    randconfig-002-20260124    gcc-8.5.0
sh                          urquell_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260124    gcc-13.4.0
sparc                 randconfig-001-20260124    gcc-14.3.0
sparc                 randconfig-002-20260124    gcc-13.4.0
sparc                 randconfig-002-20260124    gcc-14.3.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260124    clang-22
sparc64               randconfig-001-20260124    gcc-13.4.0
sparc64               randconfig-002-20260124    clang-22
sparc64               randconfig-002-20260124    gcc-13.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-22
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260124    gcc-13.4.0
um                    randconfig-001-20260124    gcc-14
um                    randconfig-002-20260124    clang-18
um                    randconfig-002-20260124    gcc-13.4.0
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260124    clang-20
x86_64      buildonly-randconfig-002-20260124    gcc-14
x86_64      buildonly-randconfig-003-20260124    clang-20
x86_64      buildonly-randconfig-004-20260124    clang-20
x86_64      buildonly-randconfig-005-20260124    clang-20
x86_64      buildonly-randconfig-006-20260124    gcc-14
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20260124    clang-20
x86_64                randconfig-002-20260124    clang-20
x86_64                randconfig-003-20260124    clang-20
x86_64                randconfig-004-20260124    clang-20
x86_64                randconfig-005-20260124    gcc-13
x86_64                randconfig-006-20260124    clang-20
x86_64                randconfig-011-20260124    gcc-12
x86_64                randconfig-011-20260124    gcc-14
x86_64                randconfig-012-20260124    gcc-12
x86_64                randconfig-012-20260124    gcc-14
x86_64                randconfig-013-20260124    clang-20
x86_64                randconfig-013-20260124    gcc-12
x86_64                randconfig-014-20260124    gcc-12
x86_64                randconfig-015-20260124    gcc-12
x86_64                randconfig-015-20260124    gcc-14
x86_64                randconfig-016-20260124    gcc-12
x86_64                randconfig-016-20260124    gcc-14
x86_64                randconfig-071-20260124    gcc-14
x86_64                randconfig-072-20260124    clang-20
x86_64                randconfig-073-20260124    clang-20
x86_64                randconfig-074-20260124    gcc-12
x86_64                randconfig-075-20260124    clang-20
x86_64                randconfig-076-20260124    gcc-14
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                randconfig-001-20260124    gcc-13.4.0
xtensa                randconfig-001-20260124    gcc-8.5.0
xtensa                randconfig-002-20260124    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
