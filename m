Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD37AB795F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 01:18:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABDEC4144F;
	Wed, 14 May 2025 23:18:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0A7rxi8Znffj; Wed, 14 May 2025 23:18:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9952541481
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747264710;
	bh=T51AJjtqp0L/c9iMLxzQtVwZ3aSqkrbsKEdf4hJMM3E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AiWz5GDjiDc/lJnKJ0AnNqFsMvHRWuG3TvKpAZRPWWLyq0HZgMKjACPO/AvGEbhCe
	 1ntSSYBlGU1uReJyGk2imRK1jJZvMheT6Kh+gm83NRDKk7XUlJbXm5lebXK7P/GAhU
	 Fafv2w+HUL+VCbxX8LATiIGKInVphNadie2cluPK4eedV/p3Scv4K92sevgLn/n8fh
	 03C9HmJLUuDdqdmXx38YG8NHCr/k+9IQoiL1ty1GmbiU6UOpzdZiD+Lc22FM1xAGIm
	 zRC6lCAuN/qn3Cc6dfGzyzZdAgIRhbU0w+qX3Wr4SwPxu+sKoNMxEQChcxydzYv4EG
	 jTYB5z6orBpEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9952541481;
	Wed, 14 May 2025 23:18:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EA4313D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 23:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74B3140254
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 23:18:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jIq7mU8iB31R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 23:18:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 715E7400C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 715E7400C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 715E7400C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 23:18:28 +0000 (UTC)
X-CSE-ConnectionGUID: 7fsjNirBRaKUadJkyndvEg==
X-CSE-MsgGUID: wBWNtaf5RQaTehToXi14Ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="66590776"
X-IronPort-AV: E=Sophos;i="6.15,289,1739865600"; d="scan'208";a="66590776"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 16:18:28 -0700
X-CSE-ConnectionGUID: ktjwyfXETKCo3IbGMEfCNA==
X-CSE-MsgGUID: O+treNY9SQatQqsjPJRXqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,289,1739865600"; d="scan'208";a="137909762"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 14 May 2025 16:18:26 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uFLMm-000Hg1-28
 for intel-wired-lan@lists.osuosl.org; Wed, 14 May 2025 23:18:24 +0000
Date: Thu, 15 May 2025 07:18:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505150701.h3aZ16G0-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747264708; x=1778800708;
 h=date:from:to:subject:message-id;
 bh=s67xx5xuJHYYDbaS+0Lar5SFy/gldaytoX9xP5e13xo=;
 b=aKoF/sz1w4VFTiQ4lcRoVmEv/pktdEVHcSju1ZnOMtYUQRItwGR4Par6
 G4TIIR4IMe1ExZvjFu0gBKwtE/NdyqzEmwhe2kOFOHmBeV3C83r2Chgub
 oFjvSMLB+qMtIik/KVBAIY9pyGC1j+5b94NzlUQPXB/kU30sM7xeeLpaL
 wLMf0pQfHdktfYI2g82OSiyDlKOLg+jRU8fvGzIYpIn107pPTf9XlfYOb
 tF6bI4Mnm2PoKNkFW/JQj5zFg0vUeK0e62hp+Pt/3hfoYzjSGff1j10zz
 HEu6ts6zGJxRDULHEkHCcYDS/OUmWiw+Y+hR9ahyJUgjldnSOdtLuws2W
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aKoF/sz1
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 1fad1fdafaa13e1a690f3ca62ecc836f2bf238af
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 1fad1fdafaa13e1a690f3ca62ecc836f2bf238af  idpf: add support for Rx timestamping

elapsed time: 1449m

configs tested: 125
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              alldefconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                      axs103_smp_defconfig    gcc-14.2.0
arc                   randconfig-001-20250514    gcc-13.3.0
arc                   randconfig-002-20250514    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                          collie_defconfig    gcc-14.2.0
arm                   randconfig-001-20250514    clang-21
arm                   randconfig-002-20250514    clang-21
arm                   randconfig-003-20250514    gcc-7.5.0
arm                   randconfig-004-20250514    gcc-7.5.0
arm                         socfpga_defconfig    gcc-14.2.0
arm                         vf610m4_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250514    clang-17
arm64                 randconfig-002-20250514    gcc-5.5.0
arm64                 randconfig-003-20250514    gcc-5.5.0
arm64                 randconfig-004-20250514    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250514    gcc-13.3.0
csky                  randconfig-002-20250514    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250514    clang-21
hexagon               randconfig-002-20250514    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250514    clang-20
i386        buildonly-randconfig-002-20250514    gcc-12
i386        buildonly-randconfig-003-20250514    clang-20
i386        buildonly-randconfig-004-20250514    clang-20
i386        buildonly-randconfig-005-20250514    gcc-12
i386        buildonly-randconfig-006-20250514    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250514    gcc-14.2.0
loongarch             randconfig-002-20250514    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          eyeq5_defconfig    gcc-14.2.0
mips                   sb1250_swarm_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250514    gcc-7.5.0
nios2                 randconfig-002-20250514    gcc-11.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
openrisc                 simple_smp_defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-14.2.0
parisc                randconfig-001-20250514    gcc-12.4.0
parisc                randconfig-002-20250514    gcc-10.5.0
powerpc                    adder875_defconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250514    clang-17
powerpc               randconfig-002-20250514    gcc-5.5.0
powerpc               randconfig-003-20250514    gcc-7.5.0
powerpc64             randconfig-001-20250514    gcc-10.5.0
powerpc64             randconfig-002-20250514    clang-19
powerpc64             randconfig-003-20250514    gcc-5.5.0
riscv                             allnoconfig    gcc-14.2.0
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250514    gcc-7.5.0
riscv                 randconfig-002-20250514    gcc-14.2.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250514    clang-21
s390                  randconfig-002-20250514    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        apsh4ad0a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                    randconfig-001-20250514    gcc-11.5.0
sh                    randconfig-002-20250514    gcc-9.3.0
sh                   secureedge5410_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250514    gcc-8.5.0
sparc                 randconfig-002-20250514    gcc-14.2.0
sparc64                             defconfig    gcc-14.2.0
sparc64               randconfig-001-20250514    gcc-14.2.0
sparc64               randconfig-002-20250514    gcc-14.2.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250514    gcc-12
um                    randconfig-002-20250514    gcc-12
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250514    clang-20
x86_64      buildonly-randconfig-002-20250514    gcc-12
x86_64      buildonly-randconfig-003-20250514    gcc-12
x86_64      buildonly-randconfig-004-20250514    gcc-12
x86_64      buildonly-randconfig-005-20250514    clang-20
x86_64      buildonly-randconfig-006-20250514    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250514    gcc-10.5.0
xtensa                randconfig-002-20250514    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
