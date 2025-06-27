Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A772FAEBE81
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 19:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E48E881947;
	Fri, 27 Jun 2025 17:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vBTCZBm2_Use; Fri, 27 Jun 2025 17:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A76D6843EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751045732;
	bh=ArYw4ThqutTLsP7AQCpxFMRSQqSbIPmTLZr+zczRT/w=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AgYnQb1Ur4tpZqQxFmBl3rbU2dOYEqB1/AtprfrXf2WqVYLv6B/+5ykm9D4RQzwFu
	 WLJwGaAIhcO08Cdf91b3Q4VyMFUfx36FURoV3OYljLpM5lIGSaLC37saKIi4nAjgIU
	 6EZDrFPTM8t30rBGiqxi9/qtcnPT+TOJExn7+/x7t4zWm1H4KXpmnfq9GbVpw0jHZd
	 HvehRm/5HG5lCENjQm8HKR7T2MuvY3xutg91WBvjEkig3bizpzWjjyAc1GVGLygiAo
	 TIIy2OjrxtiyjIPPDUT65OM0VTtv0D6+k2tMIwIMwHStanjq4o9/l3i+VHMzMqZZSX
	 I67m68cEt65Aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A76D6843EA;
	Fri, 27 Jun 2025 17:35:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E9A0154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 437178175A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:35:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkpapvpCa4N1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 17:35:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 51B5481238
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51B5481238
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51B5481238
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:35:30 +0000 (UTC)
X-CSE-ConnectionGUID: Hsgm1ofqSPW02VTHpLMT/w==
X-CSE-MsgGUID: fRxqHT4sQ/mp9U8PuDAJzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="63622342"
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="63622342"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 10:35:29 -0700
X-CSE-ConnectionGUID: OU4J7AFKQPKw0/d1714tqg==
X-CSE-MsgGUID: EEX3jcUYTzOg06guftri7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="152961181"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 27 Jun 2025 10:35:28 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uVCz0-000WQk-0l
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Jun 2025 17:35:26 +0000
Date: Sat, 28 Jun 2025 01:35:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506280157.6sQQqEXJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751045730; x=1782581730;
 h=date:from:to:subject:message-id;
 bh=Zt7UntTc3iflow0l2sZCxoKWr6ieSRjehEHY68P6gW4=;
 b=AkfBW60L1RyBxuZd6AR07kdZyU0OSKSjFqkHWU9Vmzau2Sq8H/XxjvwE
 1epzO6/GlnfvzWZFrB0Hb8RyQCpWFDdcGiWHC8LWh6ZIA/K+NOWlNZUGB
 8My2jJOir4WUly954T/L2Gg0BA5qTvvsK+Fk9AE2QhXZpkxMa1NlyokqR
 UsDZZlynXbnkOO8TTHs5Y7ROWMEXPYuNWjdmkUhlpFEoRY9N8ecNBaOJJ
 879UblEGiwpvKK8G2Xftlv7xBY53jXTA/UmHbrQVhiLvvLMkusA7Ns3N0
 uKbSPCzoV+5bkiuA8wIY6e149hp2ZFjSnjS7IUA7tGnLlIAbCaXp4YEzR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AkfBW60L
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 8b4987543453c6172983f4b0b084c55a18e250ad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 8b4987543453c6172983f4b0b084c55a18e250ad  ice: default to TIME_REF instead of TXCO on E825-C

elapsed time: 1441m

configs tested: 219
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
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
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
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
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                 randconfig-001-20250627    gcc-11.5.0
riscv                 randconfig-001-20250627    gcc-8.5.0
riscv                 randconfig-002-20250627    gcc-11.5.0
riscv                 randconfig-002-20250627    gcc-13.3.0
s390                             allmodconfig    clang-18
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
um                               allyesconfig    clang-19
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
