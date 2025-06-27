Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74579AEBE8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 19:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0A0A61253;
	Fri, 27 Jun 2025 17:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0r8287Pj7Uy; Fri, 27 Jun 2025 17:44:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DF946127B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751046274;
	bh=zGDdR0dBdSlxfGXAFiUumhLAbjBRhmvx6wTobZhDdCM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wo9ZGEb0+WK9FUejJZbpRpPBcxTCK359/1jz3KwxVDpFA8TUAcp1RASx0z8hQZelJ
	 0c4E8Ntn/ajJFPYKXHsFdZzV6Dxs9V5Tf9nzpE69SjJ+VoDBXgjkurcKomxPE/PLHr
	 HnTcEJCngJHszsiCSsoKDuJ+rdh8S8Ph3eA+O2wC9cF1ArYSsehhc6e7yXmsWzuuYA
	 ORMyxRFZP6VFrjtzkU3JdDYYpBzxg7vb2VpAyupmkWWTN21yIoYc93yIsDlywNvtdp
	 AWM014g7Jm0I17qFcYfioAgxjZLfir9Vh1fgEz6mi2r8y38V2/YK8hkBaYab5WsNoS
	 srl2ZSc+Ls2Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DF946127B;
	Fri, 27 Jun 2025 17:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 26F0811A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2449941B4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:44:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wvbBx1i_9BqV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 17:44:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1AF2541B67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AF2541B67
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1AF2541B67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:44:31 +0000 (UTC)
X-CSE-ConnectionGUID: +MlhUojZSuqecr+LweaA+w==
X-CSE-MsgGUID: UtxEG28cQ9modyZZ5aJsqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="63622964"
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="63622964"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 10:44:30 -0700
X-CSE-ConnectionGUID: Aa9XUwMuQou/DVGW6dTjCg==
X-CSE-MsgGUID: ymusHCohTBmPP9FcFPN1aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="152962691"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 27 Jun 2025 10:44:29 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uVD7i-000WR8-30
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Jun 2025 17:44:26 +0000
Date: Sat, 28 Jun 2025 01:43:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506280140.kVDSDhvF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751046271; x=1782582271;
 h=date:from:to:subject:message-id;
 bh=TQ++IUti5wGZuQh76NSDHg9LMYjUpoBGoFDRPjDmj9M=;
 b=jHAdvQlQ+cBU8GTf52sDbHkq5FhtyDmfPn5FX6F+wzqk4EjL/Q6UPGBR
 Hvwurrw2J/F4pvWxMld5vxauaMWnRbPlxWad30S63CBUQW8kRPJ+ybb9Q
 Q57WZm7HupDVgU+DaeSvyTnZ0X0f3foL8r3yq5VFZZ8IlkqkrD6J8PHf2
 7slEgm61oaKJ0FTnd4Ss0s1tk8ZjSIMXx4Au5aRswi7Pfp9tfgfZqsH1/
 KaPcZ1h7XpQK3aE5iYd6AbUjmim95nKJJyDNIfwdIoDDgZa04vInb+Ei3
 QnQZ03TW3kXwdxOHbJniC7mr5CJmBiItm5q/EPniwhvm8CiDKy50aZ3Fq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jHAdvQlQ
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3a2b5ac920a1a46b114bb49deed150d17330b265
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 3a2b5ac920a1a46b114bb49deed150d17330b265  ice: check correct pointer in fwlog debugfs

elapsed time: 1450m

configs tested: 213
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              alldefconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250627    gcc-10.5.0
arc                   randconfig-001-20250627    gcc-8.5.0
arc                   randconfig-002-20250627    gcc-10.5.0
arc                   randconfig-002-20250627    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    gcc-15.1.0
arm                   randconfig-001-20250627    gcc-10.5.0
arm                   randconfig-001-20250627    gcc-15.1.0
arm                   randconfig-002-20250627    gcc-10.5.0
arm                   randconfig-003-20250627    clang-21
arm                   randconfig-003-20250627    gcc-10.5.0
arm                   randconfig-004-20250627    gcc-10.5.0
arm                   randconfig-004-20250627    gcc-8.5.0
arm                           stm32_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250627    clang-17
arm64                 randconfig-001-20250627    gcc-10.5.0
arm64                 randconfig-002-20250627    gcc-10.5.0
arm64                 randconfig-003-20250627    gcc-10.5.0
arm64                 randconfig-003-20250627    gcc-12.3.0
arm64                 randconfig-004-20250627    clang-19
arm64                 randconfig-004-20250627    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250627    clang-21
csky                  randconfig-001-20250627    gcc-15.1.0
csky                  randconfig-002-20250627    clang-21
csky                  randconfig-002-20250627    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250627    clang-21
hexagon               randconfig-002-20250627    clang-21
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250627    gcc-12
i386        buildonly-randconfig-002-20250627    gcc-12
i386        buildonly-randconfig-003-20250627    gcc-12
i386        buildonly-randconfig-004-20250627    gcc-12
i386        buildonly-randconfig-005-20250627    clang-20
i386        buildonly-randconfig-005-20250627    gcc-12
i386        buildonly-randconfig-006-20250627    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-011-20250627    gcc-12
i386                  randconfig-012-20250627    gcc-12
i386                  randconfig-013-20250627    gcc-12
i386                  randconfig-014-20250627    gcc-12
i386                  randconfig-015-20250627    gcc-12
i386                  randconfig-016-20250627    gcc-12
i386                  randconfig-017-20250627    gcc-12
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250627    clang-21
loongarch             randconfig-001-20250627    gcc-15.1.0
loongarch             randconfig-002-20250627    clang-21
loongarch             randconfig-002-20250627    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    clang-21
m68k                                defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          eyeq6_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250627    clang-21
nios2                 randconfig-001-20250627    gcc-8.5.0
nios2                 randconfig-002-20250627    clang-21
nios2                 randconfig-002-20250627    gcc-8.5.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                  or1klitex_defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250627    clang-21
parisc                randconfig-001-20250627    gcc-9.3.0
parisc                randconfig-002-20250627    clang-21
parisc                randconfig-002-20250627    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                    amigaone_defconfig    clang-21
powerpc                        fsp2_defconfig    clang-21
powerpc               mpc834x_itxgp_defconfig    clang-21
powerpc               randconfig-001-20250627    clang-21
powerpc               randconfig-001-20250627    gcc-15.1.0
powerpc               randconfig-002-20250627    clang-21
powerpc               randconfig-003-20250627    clang-21
powerpc               randconfig-003-20250627    gcc-15.1.0
powerpc                     sequoia_defconfig    gcc-15.1.0
powerpc                     taishan_defconfig    clang-21
powerpc                     tqm8541_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250627    clang-21
powerpc64             randconfig-001-20250627    gcc-12.4.0
powerpc64             randconfig-002-20250627    clang-21
powerpc64             randconfig-002-20250627    gcc-10.5.0
powerpc64             randconfig-003-20250627    clang-21
powerpc64             randconfig-003-20250627    gcc-8.5.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                 randconfig-001-20250627    gcc-11.5.0
riscv                 randconfig-001-20250627    gcc-8.5.0
riscv                 randconfig-002-20250627    gcc-11.5.0
riscv                 randconfig-002-20250627    gcc-13.3.0
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250627    clang-21
s390                  randconfig-001-20250627    gcc-11.5.0
s390                  randconfig-002-20250627    clang-21
s390                  randconfig-002-20250627    gcc-11.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                          r7785rp_defconfig    gcc-15.1.0
sh                    randconfig-001-20250627    gcc-11.5.0
sh                    randconfig-001-20250627    gcc-9.3.0
sh                    randconfig-002-20250627    gcc-11.5.0
sh                    randconfig-002-20250627    gcc-15.1.0
sh                          sdk7786_defconfig    clang-21
sh                           se7343_defconfig    clang-21
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250627    gcc-11.5.0
sparc                 randconfig-002-20250627    gcc-11.5.0
sparc                 randconfig-002-20250627    gcc-8.5.0
sparc64                          alldefconfig    clang-21
sparc64               randconfig-001-20250627    gcc-11.5.0
sparc64               randconfig-002-20250627    gcc-11.5.0
sparc64               randconfig-002-20250627    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250627    gcc-11.5.0
um                    randconfig-001-20250627    gcc-12
um                    randconfig-002-20250627    gcc-11.5.0
um                    randconfig-002-20250627    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250627    clang-20
x86_64      buildonly-randconfig-002-20250627    clang-20
x86_64      buildonly-randconfig-003-20250627    clang-20
x86_64      buildonly-randconfig-004-20250627    clang-20
x86_64      buildonly-randconfig-005-20250627    clang-20
x86_64      buildonly-randconfig-005-20250627    gcc-12
x86_64      buildonly-randconfig-006-20250627    clang-20
x86_64      buildonly-randconfig-006-20250627    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250627    clang-20
x86_64                randconfig-002-20250627    clang-20
x86_64                randconfig-003-20250627    clang-20
x86_64                randconfig-004-20250627    clang-20
x86_64                randconfig-005-20250627    clang-20
x86_64                randconfig-006-20250627    clang-20
x86_64                randconfig-007-20250627    clang-20
x86_64                randconfig-008-20250627    clang-20
x86_64                randconfig-071-20250627    gcc-12
x86_64                randconfig-072-20250627    gcc-12
x86_64                randconfig-073-20250627    gcc-12
x86_64                randconfig-074-20250627    gcc-12
x86_64                randconfig-075-20250627    gcc-12
x86_64                randconfig-076-20250627    gcc-12
x86_64                randconfig-077-20250627    gcc-12
x86_64                randconfig-078-20250627    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250627    gcc-11.5.0
xtensa                randconfig-001-20250627    gcc-13.3.0
xtensa                randconfig-002-20250627    gcc-10.5.0
xtensa                randconfig-002-20250627    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
