Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2A6AC8748
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 06:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BCDF41D58;
	Fri, 30 May 2025 04:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PEyIbymkj1d5; Fri, 30 May 2025 04:18:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D0EA41D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748578719;
	bh=FJMxQKPE9k5Lqd0hahIQ7HEcrPkd8trevAt7SzSaI94=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1UV2sw9Snq4+HbA1QJ36cN6Wq9bYuKSCm+M2PpZ4HJ4RK2WjOTCECS8RZ5/EFfc4U
	 wbN7WfUDXRIkURf/tqQ0OjJSB4uPz21zvO2GkS4ty+G7wupYpENGy5HY9WtvGwcwr2
	 CHwRc2JxiAuoM4jxuo5CN/HeYby+6ZZ6bTfSg+EZzJe0x/EWDVWgiU+UiuGvvQOe2r
	 ljRPEc1ryCBAm/tKRbKhit85f/blsaQfAaz86u9q35EUAZar8NoxOvS7A5XVGOXff9
	 EEOcb/yscObT418pcMSEgQ1Gq75eyogMutvsTmIXu42AxV38SLCXuORNV8OYRMyCZ2
	 EQT4s63G5jpmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D0EA41D4F;
	Fri, 30 May 2025 04:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 08F65236
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 04:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3503842BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 04:18:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqxn9XA_ry3E for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 04:18:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C30AE842B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C30AE842B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C30AE842B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 04:18:34 +0000 (UTC)
X-CSE-ConnectionGUID: 88aGj9q6Q++9kHJvbLhQXQ==
X-CSE-MsgGUID: yiw9p7KJRaq0sMFQD1rhug==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="61716670"
X-IronPort-AV: E=Sophos;i="6.16,194,1744095600"; d="scan'208";a="61716670"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 21:18:34 -0700
X-CSE-ConnectionGUID: euXyusoaSYGQLSaYBxv8gg==
X-CSE-MsgGUID: OzvEUSKRQl2vrKj6XDkv3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,194,1744095600"; d="scan'208";a="174759346"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 29 May 2025 21:18:33 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uKrCQ-000XKO-2D
 for intel-wired-lan@lists.osuosl.org; Fri, 30 May 2025 04:18:30 +0000
Date: Fri, 30 May 2025 12:18:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505301255.cQwTG4Ni-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748578716; x=1780114716;
 h=date:from:to:subject:message-id;
 bh=Oxuhz8Epw8MewSyQJl2/b8ThFvunG4BD9dmDHeMqgQA=;
 b=RGKFaGhBni0B1Pp6ebDNqfiwinNFqU09N4mPmg11T/2I/7qSqt//eNjj
 ceplqtjPc1cji5jmsDKsF05GmsYLS4nhOjxONLJnLcxSI8xS7aWafCX+z
 bKj6g1gFG2pYsvAYUPGFkh4HC4FK3Xg1K50qI6wNfyic5yug25lo6x5js
 0VukKHyFcb7LdmeuE0OZpXVvJ9xl/rqyWQkjDsVonZb7kQt1WLLEMbl5d
 eLbFKehMrX1MveIWjZHbw1/N5RKvZGky6kxkH2BZhNPCCtClCz7orVX9G
 iGd/16WQQT8bp3AysYapSqIQmJt2aytaz0z/0k65i+ky1MjcsGsn+Kol8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RGKFaGhB
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3c69b874da271f626109680b63b738c68d198f15
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 3c69b874da271f626109680b63b738c68d198f15  idpf: return 0 size for RSS key if not supported

elapsed time: 729m

configs tested: 121
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250530    gcc-15.1.0
arc                   randconfig-002-20250530    gcc-10.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                         mv78xx0_defconfig    clang-19
arm                   randconfig-001-20250530    gcc-15.1.0
arm                   randconfig-002-20250530    gcc-14.3.0
arm                   randconfig-003-20250530    clang-21
arm                   randconfig-004-20250530    clang-21
arm                           tegra_defconfig    gcc-15.1.0
arm                           u8500_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250530    gcc-12.3.0
arm64                 randconfig-002-20250530    gcc-5.5.0
arm64                 randconfig-003-20250530    gcc-7.5.0
arm64                 randconfig-004-20250530    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250530    gcc-15.1.0
csky                  randconfig-002-20250530    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250530    clang-21
hexagon               randconfig-002-20250530    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250530    clang-20
i386        buildonly-randconfig-002-20250530    clang-20
i386        buildonly-randconfig-003-20250530    clang-20
i386        buildonly-randconfig-004-20250530    clang-20
i386        buildonly-randconfig-005-20250530    clang-20
i386        buildonly-randconfig-006-20250530    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250530    gcc-15.1.0
loongarch             randconfig-002-20250530    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          ath79_defconfig    gcc-15.1.0
mips                        qi_lb60_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250530    gcc-5.5.0
nios2                 randconfig-002-20250530    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                generic-64bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20250530    gcc-12.4.0
parisc                randconfig-002-20250530    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                  iss476-smp_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250530    gcc-14.3.0
powerpc               randconfig-002-20250530    clang-21
powerpc               randconfig-003-20250530    gcc-8.5.0
powerpc64             randconfig-001-20250530    gcc-14.3.0
powerpc64             randconfig-002-20250530    clang-21
powerpc64             randconfig-003-20250530    gcc-15.1.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250530    gcc-15.1.0
riscv                 randconfig-002-20250530    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250530    clang-20
s390                  randconfig-002-20250530    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                          polaris_defconfig    gcc-15.1.0
sh                    randconfig-001-20250530    gcc-14.3.0
sh                    randconfig-002-20250530    gcc-15.1.0
sh                           se7206_defconfig    gcc-15.1.0
sh                           se7343_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250530    gcc-8.5.0
sparc                 randconfig-002-20250530    gcc-10.3.0
sparc64               randconfig-001-20250530    gcc-8.5.0
sparc64               randconfig-002-20250530    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250530    gcc-11
um                    randconfig-002-20250530    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250530    clang-20
x86_64      buildonly-randconfig-002-20250530    clang-20
x86_64      buildonly-randconfig-003-20250530    gcc-12
x86_64      buildonly-randconfig-004-20250530    gcc-11
x86_64      buildonly-randconfig-005-20250530    clang-20
x86_64      buildonly-randconfig-006-20250530    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                          iss_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250530    gcc-15.1.0
xtensa                randconfig-002-20250530    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
