Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1F2B42EB1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 03:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34CA442091;
	Thu,  4 Sep 2025 01:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J7Iwpme4cIdl; Thu,  4 Sep 2025 01:06:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63B1D42235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756947985;
	bh=sloFm1WFcUYM466l3nmc5djkfOp5uNzMx/F9cP4S9Ks=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bfjZ0jiUvxstUMZg+zf43aUpOddS3dH761or0s+EuQS6aFkgG1zxC7wHTyqP+oJxb
	 fNC6RKQLAngHJr1scRcXOPaAh4BHd9Sw9P95CBNWTDkeqDRVr/XO9oqyBM9UzfAoSs
	 H2gfE3ZMGJXuoJ60JiPBY4o8MVqjrQtI0uhCfXagTZqO8H+UhvR0sfYfv+3gvN6ELa
	 2QDoPs6Qs9+SkpiP9snoHpgZDWmYVhOcqemllWzAA73lSAxB6Ao+lYSdp/iO2a3yOG
	 2ltCBZ4ZqN8axm+2cm4osVphi/ZfsH4tDZlTNWTbz+Z5RO8rxtD8HCclmnnpDyngMe
	 jAoaKz9qcRbcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63B1D42235;
	Thu,  4 Sep 2025 01:06:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B4F01111
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 01:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E9486F52A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 01:06:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PSf9WPuKuBI5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 01:06:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B14EE6F528
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B14EE6F528
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B14EE6F528
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 01:06:21 +0000 (UTC)
X-CSE-ConnectionGUID: r9y1VGoETA6weTru1x7YSQ==
X-CSE-MsgGUID: /r97b9T4SfGrLygaumT6iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59423117"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="59423117"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 18:06:21 -0700
X-CSE-ConnectionGUID: 6VL5EM/4SQmSTZEy/Y1wjQ==
X-CSE-MsgGUID: SA1Ilr/mR8Sj/0LvjVLchg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="172110998"
Received: from lkp-server02.sh.intel.com (HELO 06ba48ef64e9) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 03 Sep 2025 18:06:20 -0700
Received: from kbuild by 06ba48ef64e9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1utyQb-0004ZF-2N
 for intel-wired-lan@lists.osuosl.org; Thu, 04 Sep 2025 01:06:17 +0000
Date: Thu, 04 Sep 2025 09:04:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509040941.DKVPY7ac-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756947983; x=1788483983;
 h=date:from:to:subject:message-id;
 bh=LdInm3QN9+mDBRc8YMO3BnltfFuv8LSBMuSRtrJQLAk=;
 b=Uc9TuA6/RTKwWFOCJzKHI8uJMW2yh+kTw0PLVUn59nucL1mTwF3O6HEp
 gVbNT56ARLnuI7z7eTS3ue9v5yn/4qVOoofvsRHM+7+SKlh4FBB1ZbRGh
 PKJRNuTRfBJ0e922Bjckea0UelPwhFYSQmmUd6dnMz3KFLeB5UPDj9g9/
 WfiC/aBLtV7qZgqoAMrg5F5RVXRsDhT6x8YRMnYLlkS0A0DegKbZ+dayQ
 CPgSuv+Ky7idjhlbTwDooPaogxyvIW7SG4KuMSWjFQ54L3q4ADEMGQl6u
 b4Dps8knMmX4w2YGZZmzHHRYMYTF79qrYsLy7KIVZ+1iQpZsyf3//OE0C
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uc9TuA6/
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 90fb7db49c6dbac961c6b8ebfd741141ffbc8545
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 90fb7db49c6dbac961c6b8ebfd741141ffbc8545  e1000e: fix heap overflow in e1000_set_eeprom

elapsed time: 1493m

configs tested: 118
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250903    gcc-15.1.0
arc                   randconfig-002-20250903    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                           imxrt_defconfig    clang-22
arm                   randconfig-001-20250903    clang-22
arm                   randconfig-002-20250903    clang-16
arm                   randconfig-003-20250903    clang-22
arm                   randconfig-004-20250903    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250903    gcc-8.5.0
arm64                 randconfig-002-20250903    gcc-11.5.0
arm64                 randconfig-003-20250903    clang-22
arm64                 randconfig-004-20250903    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250903    gcc-9.5.0
csky                  randconfig-002-20250903    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250903    clang-22
hexagon               randconfig-002-20250903    clang-18
i386                             allmodconfig    gcc-13
i386                              allnoconfig    gcc-13
i386                             allyesconfig    gcc-13
i386        buildonly-randconfig-001-20250903    gcc-12
i386        buildonly-randconfig-002-20250903    gcc-12
i386        buildonly-randconfig-003-20250903    clang-20
i386        buildonly-randconfig-004-20250903    clang-20
i386        buildonly-randconfig-005-20250903    clang-20
i386        buildonly-randconfig-006-20250903    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250903    gcc-15.1.0
loongarch             randconfig-002-20250903    clang-22
m68k                             alldefconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        maltaup_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250903    gcc-10.5.0
nios2                 randconfig-002-20250903    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                generic-64bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20250903    gcc-13.4.0
parisc                randconfig-002-20250903    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                        icon_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250903    gcc-8.5.0
powerpc               randconfig-002-20250903    gcc-8.5.0
powerpc               randconfig-003-20250903    gcc-14.3.0
powerpc64             randconfig-001-20250903    clang-22
powerpc64             randconfig-002-20250903    clang-22
powerpc64             randconfig-003-20250903    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250903    gcc-8.5.0
riscv                 randconfig-002-20250903    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250903    gcc-8.5.0
s390                  randconfig-002-20250903    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                               j2_defconfig    gcc-15.1.0
sh                    randconfig-001-20250903    gcc-12.5.0
sh                    randconfig-002-20250903    gcc-10.5.0
sh                          urquell_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250903    gcc-11.5.0
sparc                 randconfig-002-20250903    gcc-15.1.0
sparc64               randconfig-001-20250903    gcc-8.5.0
sparc64               randconfig-002-20250903    gcc-11.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-13
um                    randconfig-001-20250903    gcc-12
um                    randconfig-002-20250903    clang-18
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250903    clang-20
x86_64      buildonly-randconfig-002-20250903    clang-20
x86_64      buildonly-randconfig-003-20250903    clang-20
x86_64      buildonly-randconfig-004-20250903    gcc-12
x86_64      buildonly-randconfig-005-20250903    clang-20
x86_64      buildonly-randconfig-006-20250903    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250903    gcc-11.5.0
xtensa                randconfig-002-20250903    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
