Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMBvJkJSh2kvWgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 15:54:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1F0106449
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 15:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10B9F40AA2;
	Sat,  7 Feb 2026 14:54:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3RdeCPw0UeK; Sat,  7 Feb 2026 14:54:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E16EE40B14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770476092;
	bh=t8Bh40WBFXFPhjUdwb97kbNklff0jB3c4d3LkMHtDhw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4REUUxOIoTFPewgakYOA7wK0MHD/NwMbi4qsdi3ywv9KCduKHsNBPLloqpMrTHSX9
	 +zRxoV3DZ+BXkpw+gz9Q71OEjmdJzu/nU8uwWEl7vgbeJ8WJrYc6NyFauxwlM1rZMq
	 +wqm4KzW3+JCsFl8Fr3BhDXvI8k25yCUkxfhdjPUKOA5vHVw5ODu4EKvSpJtULs3nI
	 uT4ykbKTUWAChgNryNDI5g7wa8blmM/e2KD1vRuicLENlkQWhoAvxrbvWaF0B3f/7b
	 Amgu7DgFJgd8SBPO7yM+3BPOiOTNh25ioGgvBT9wt1uYyIC7trRLbjaso+AEgql51K
	 W7xX6ojIboN0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E16EE40B14;
	Sat,  7 Feb 2026 14:54:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D0E13173
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 14:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1B144027F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 14:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBsfU5Wx4jGm for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Feb 2026 14:54:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C53340077
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C53340077
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C53340077
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 14:54:49 +0000 (UTC)
X-CSE-ConnectionGUID: qKSyUU55RZWnqV/un09EWw==
X-CSE-MsgGUID: Q3K5mP+lSduLx4Wzc09KdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11694"; a="71560392"
X-IronPort-AV: E=Sophos;i="6.21,278,1763452800"; d="scan'208";a="71560392"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2026 06:54:49 -0800
X-CSE-ConnectionGUID: nOJibGWEQU2jdps3/aaFNQ==
X-CSE-MsgGUID: GBx2BxlaSIWnGbsX1nH6qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,278,1763452800"; d="scan'208";a="210407782"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 07 Feb 2026 06:54:47 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vojhs-00000000lhf-3Jah;
 Sat, 07 Feb 2026 14:54:44 +0000
Date: Sat, 07 Feb 2026 22:54:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602072224.sjJTXBxr-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770476091; x=1802012091;
 h=date:from:to:subject:message-id;
 bh=Ih/qfRprtMSnm2MERPgBWLpH/UV9aXBTyB0GDiS8nV8=;
 b=Njfp5yz2iid0EF457CfBorPOGujcTjmIBRBa0gda1Mn0pagPyjDktrsP
 2V4iVHDc8bUfRX1v+dRi2CSBC4WRlMJ49tlr8MeuVAi047snCzb0S/I0q
 3JbhKwGU8cTgDly8vFOP3CsIaUepu/JrrFI1eGvY60cuu10vU4s1/u/MB
 JGf0P7uhCWR/xGNkrMg+HURBYZZ/AXpP6BDd0IpPY8gAUF/hLxRzipna4
 tazSYOLFcIrkMmijmhMOQlq8XUUeB1lgF4otyPxK/A9qPHvFsk2PmwKNT
 yFZFVihAi6L+zPMezQ9S8MPg1VJEXf1luI1vBE4AbAlC4wC9Ur3Z+N09J
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Njfp5yz2
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 33489c7b58a39b088549e29568d912cdd2fadb29
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
	NEURAL_HAM(-0.00)[-0.958];
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
X-Rspamd-Queue-Id: 6A1F0106449
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 33489c7b58a39b088549e29568d912cdd2fadb29  ice: fix crash in ethtool offline loopback test

elapsed time: 1326m

configs tested: 269
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-22
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                         haps_hs_defconfig    gcc-15.2.0
arc                   randconfig-001-20260207    gcc-8.5.0
arc                   randconfig-001-20260207    gcc-9.5.0
arc                   randconfig-002-20260207    gcc-8.5.0
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                     am200epdkit_defconfig    gcc-15.2.0
arm                                 defconfig    clang-22
arm                                 defconfig    gcc-15.2.0
arm                      footbridge_defconfig    gcc-15.2.0
arm                       imx_v6_v7_defconfig    clang-16
arm                         mv78xx0_defconfig    gcc-15.2.0
arm                          pxa3xx_defconfig    gcc-15.2.0
arm                   randconfig-001-20260207    gcc-10.5.0
arm                   randconfig-001-20260207    gcc-8.5.0
arm                   randconfig-002-20260207    gcc-12.5.0
arm                   randconfig-002-20260207    gcc-8.5.0
arm                   randconfig-003-20260207    gcc-8.5.0
arm                   randconfig-004-20260207    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260207    clang-22
arm64                 randconfig-001-20260207    gcc-15.2.0
arm64                 randconfig-002-20260207    clang-22
arm64                 randconfig-002-20260207    gcc-15.2.0
arm64                 randconfig-003-20260207    gcc-14.3.0
arm64                 randconfig-003-20260207    gcc-15.2.0
arm64                 randconfig-004-20260207    gcc-14.3.0
arm64                 randconfig-004-20260207    gcc-15.2.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260207    gcc-15.2.0
csky                  randconfig-002-20260207    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    clang-22
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260207    clang-22
hexagon               randconfig-002-20260207    clang-18
hexagon               randconfig-002-20260207    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260207    clang-20
i386        buildonly-randconfig-001-20260207    gcc-14
i386        buildonly-randconfig-002-20260207    clang-20
i386        buildonly-randconfig-003-20260207    clang-20
i386        buildonly-randconfig-004-20260207    clang-20
i386        buildonly-randconfig-005-20260207    clang-20
i386        buildonly-randconfig-006-20260207    clang-20
i386                                defconfig    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260207    clang-20
i386                  randconfig-002-20260207    clang-20
i386                  randconfig-003-20260207    clang-20
i386                  randconfig-004-20260207    clang-20
i386                  randconfig-005-20260207    clang-20
i386                  randconfig-006-20260207    clang-20
i386                  randconfig-007-20260207    clang-20
i386                  randconfig-011-20260207    clang-20
i386                  randconfig-011-20260207    gcc-14
i386                  randconfig-012-20260207    clang-20
i386                  randconfig-012-20260207    gcc-14
i386                  randconfig-013-20260207    clang-20
i386                  randconfig-013-20260207    gcc-12
i386                  randconfig-014-20260207    clang-20
i386                  randconfig-015-20260207    clang-20
i386                  randconfig-015-20260207    gcc-14
i386                  randconfig-016-20260207    clang-20
i386                  randconfig-017-20260207    clang-20
i386                  randconfig-017-20260207    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260207    clang-22
loongarch             randconfig-001-20260207    gcc-13.4.0
loongarch             randconfig-002-20260207    clang-22
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                                defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
microblaze                          defconfig    gcc-15.2.0
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
nios2                            alldefconfig    gcc-11.5.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260207    clang-22
nios2                 randconfig-001-20260207    gcc-10.5.0
nios2                 randconfig-002-20260207    clang-22
nios2                 randconfig-002-20260207    gcc-11.5.0
openrisc                         allmodconfig    clang-22
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
parisc                randconfig-001-20260207    gcc-14.3.0
parisc                randconfig-002-20260207    gcc-14.3.0
parisc                randconfig-002-20260207    gcc-8.5.0
parisc64                            defconfig    clang-19
parisc64                            defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.2.0
powerpc                        icon_defconfig    gcc-15.2.0
powerpc                     mpc512x_defconfig    gcc-15.2.0
powerpc                     mpc5200_defconfig    clang-22
powerpc                 mpc832x_rdb_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260207    gcc-10.5.0
powerpc               randconfig-001-20260207    gcc-14.3.0
powerpc               randconfig-002-20260207    gcc-14.3.0
powerpc               randconfig-002-20260207    gcc-15.2.0
powerpc                     redwood_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260207    clang-22
powerpc64             randconfig-001-20260207    gcc-14.3.0
powerpc64             randconfig-002-20260207    clang-22
powerpc64             randconfig-002-20260207    gcc-14.3.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260207    clang-18
riscv                 randconfig-002-20260207    clang-18
riscv                 randconfig-002-20260207    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-22
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260207    clang-18
s390                  randconfig-001-20260207    gcc-8.5.0
s390                  randconfig-002-20260207    clang-18
s390                  randconfig-002-20260207    gcc-14.3.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-15.2.0
sh                        edosk7705_defconfig    gcc-15.2.0
sh                          landisk_defconfig    gcc-15.2.0
sh                    randconfig-001-20260207    clang-18
sh                    randconfig-001-20260207    gcc-15.2.0
sh                    randconfig-002-20260207    clang-18
sh                    randconfig-002-20260207    gcc-12.5.0
sh                           se7712_defconfig    gcc-15.2.0
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260207    gcc-15.2.0
sparc                 randconfig-001-20260207    gcc-8.5.0
sparc                 randconfig-002-20260207    gcc-15.2.0
sparc                       sparc64_defconfig    gcc-15.2.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260207    gcc-14.3.0
sparc64               randconfig-001-20260207    gcc-15.2.0
sparc64               randconfig-002-20260207    clang-20
sparc64               randconfig-002-20260207    gcc-15.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    clang-22
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260207    clang-22
um                    randconfig-001-20260207    gcc-15.2.0
um                    randconfig-002-20260207    gcc-14
um                    randconfig-002-20260207    gcc-15.2.0
um                           x86_64_defconfig    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260207    clang-20
x86_64      buildonly-randconfig-001-20260207    gcc-14
x86_64      buildonly-randconfig-002-20260207    gcc-14
x86_64      buildonly-randconfig-003-20260207    gcc-14
x86_64      buildonly-randconfig-004-20260207    clang-20
x86_64      buildonly-randconfig-004-20260207    gcc-14
x86_64      buildonly-randconfig-005-20260207    clang-20
x86_64      buildonly-randconfig-005-20260207    gcc-14
x86_64      buildonly-randconfig-006-20260207    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260207    clang-20
x86_64                randconfig-001-20260207    gcc-14
x86_64                randconfig-002-20260207    clang-20
x86_64                randconfig-002-20260207    gcc-14
x86_64                randconfig-003-20260207    clang-20
x86_64                randconfig-004-20260207    clang-20
x86_64                randconfig-005-20260207    clang-20
x86_64                randconfig-006-20260207    clang-20
x86_64                randconfig-011-20260207    gcc-14
x86_64                randconfig-012-20260207    gcc-14
x86_64                randconfig-013-20260207    gcc-14
x86_64                randconfig-014-20260207    clang-20
x86_64                randconfig-014-20260207    gcc-14
x86_64                randconfig-015-20260207    gcc-14
x86_64                randconfig-016-20260207    gcc-14
x86_64                randconfig-071-20260207    gcc-14
x86_64                randconfig-072-20260207    clang-20
x86_64                randconfig-072-20260207    gcc-14
x86_64                randconfig-073-20260207    clang-20
x86_64                randconfig-073-20260207    gcc-14
x86_64                randconfig-074-20260207    gcc-13
x86_64                randconfig-074-20260207    gcc-14
x86_64                randconfig-075-20260207    clang-20
x86_64                randconfig-075-20260207    gcc-14
x86_64                randconfig-076-20260207    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-22
xtensa                           allyesconfig    gcc-15.2.0
xtensa                randconfig-001-20260207    gcc-15.2.0
xtensa                randconfig-001-20260207    gcc-8.5.0
xtensa                randconfig-002-20260207    gcc-15.2.0
xtensa                randconfig-002-20260207    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
