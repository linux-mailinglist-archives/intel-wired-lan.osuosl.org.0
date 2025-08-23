Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A01DB32795
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 10:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53C58612A1;
	Sat, 23 Aug 2025 08:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L16140eV0_Sn; Sat, 23 Aug 2025 08:14:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA2AC612AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755936890;
	bh=CN038dc0ZTPrHz0D0qJwBiyvpO9Pj45zy9vKhqhOIAc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UGq2yiBT9YFfJHZzEjNKJWjZ70oXyEnECPMnASlJ39kqU6fQbj3PKgBliFrlgvP86
	 /wZ88E2lzVaq0wHGWTwZy/8yToSljM+nQjzpNDxWMtFPI2Nn5QRSmry/S+imk7k7h9
	 grZR5ukwr6k+9ibMZyNdHSEoPmAZc5RgS+i0zaocY89TeV5gvLAv1ce54geJkX0D1T
	 9aIA8p/LyZDK7Veed+maeJTsr8/Zl9wkbZhFE+RhR6PoJJeQ6Q9ajjGP3c8jLJ9vjU
	 3GMW0LHvu5du/muPHadufzd4iYyKIJHQIQmjbbSTWz6rRAMEQvqWUDBI8WTBwHdLyw
	 A2xQIoYHJrUXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA2AC612AE;
	Sat, 23 Aug 2025 08:14:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A59D071E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 08:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BBE7811F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 08:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NyKSkELWb8lh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Aug 2025 08:14:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 619D3811F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 619D3811F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 619D3811F0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 08:14:46 +0000 (UTC)
X-CSE-ConnectionGUID: qqgbBsSKQWSUqj8Fxmo3LQ==
X-CSE-MsgGUID: HC7C84nbRPuot/X+I/9S4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="83643126"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="83643126"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2025 01:14:46 -0700
X-CSE-ConnectionGUID: BRbmGRyvRAmg3WJVpohyEQ==
X-CSE-MsgGUID: 2zui4BXcRuG26bqkhF3jLQ==
X-ExtLoop1: 1
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa003.fm.intel.com with ESMTP; 23 Aug 2025 01:14:45 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1upjOd-000MCD-07
 for intel-wired-lan@lists.osuosl.org; Sat, 23 Aug 2025 08:14:43 +0000
Date: Sat, 23 Aug 2025 16:14:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508231625.AAKxphP5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755936887; x=1787472887;
 h=date:from:to:subject:message-id;
 bh=ceGDEC3w8xu/OKvMn03+gXvASKcMyBNHi+Js1HS1WEY=;
 b=GiOr0m9AVfZn5LeJBMX10DbP4EzeulrDtyWqG7XhyUgyLXXVW3Q5vejk
 wmRPxXU39a4+8jPgrYyLT+jtNIJbIhk1y5VURCBLzMPFkrz6dOYteWp+a
 P5GMVZSMmSzNYXq5aC6mRl8giAUnRfuTbrL+mTm98f7u1QbImJKKIH0TV
 cs3icshLrnWYo+YYP2rygKRgoFEQL7WL7Id3QtiEFph6SPM793wQEau1d
 isvticQQaL5EJv6qwDyIs8Xu5Ib6dV5vDRTfHOj27jCcUC0X0uDlxyoP3
 CK+MXg4FsYlDYC6tboU6+aHcf7d2MKGtEksq/ZLyK9O0MovUijMONsfrL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GiOr0m9A
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 01b9128c5db1b470575d07b05b67ffa3cb02ebf1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 01b9128c5db1b470575d07b05b67ffa3cb02ebf1  net: macb: fix unregister_netdev call order in macb_remove()

elapsed time: 1801m

configs tested: 230
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250823    clang-22
arc                   randconfig-001-20250823    gcc-9.5.0
arc                   randconfig-002-20250823    clang-22
arc                   randconfig-002-20250823    gcc-12.5.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                          exynos_defconfig    clang-22
arm                      jornada720_defconfig    clang-22
arm                   randconfig-001-20250823    clang-17
arm                   randconfig-001-20250823    clang-22
arm                   randconfig-002-20250823    clang-22
arm                   randconfig-002-20250823    gcc-15.1.0
arm                   randconfig-003-20250823    clang-20
arm                   randconfig-003-20250823    clang-22
arm                   randconfig-004-20250823    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                            allyesconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250823    clang-22
arm64                 randconfig-001-20250823    gcc-11.5.0
arm64                 randconfig-002-20250823    clang-22
arm64                 randconfig-003-20250823    clang-22
arm64                 randconfig-004-20250823    clang-22
arm64                 randconfig-004-20250823    gcc-15.1.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                             allyesconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250823    clang-22
csky                  randconfig-001-20250823    gcc-15.1.0
csky                  randconfig-002-20250823    clang-22
csky                  randconfig-002-20250823    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250823    clang-22
hexagon               randconfig-002-20250823    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250823    clang-20
i386        buildonly-randconfig-002-20250823    clang-20
i386        buildonly-randconfig-003-20250823    clang-20
i386        buildonly-randconfig-004-20250823    clang-20
i386        buildonly-randconfig-005-20250823    clang-20
i386        buildonly-randconfig-006-20250823    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250823    clang-20
i386                  randconfig-002-20250823    clang-20
i386                  randconfig-003-20250823    clang-20
i386                  randconfig-004-20250823    clang-20
i386                  randconfig-005-20250823    clang-20
i386                  randconfig-006-20250823    clang-20
i386                  randconfig-007-20250823    clang-20
i386                  randconfig-011-20250823    gcc-12
i386                  randconfig-012-20250823    gcc-12
i386                  randconfig-013-20250823    gcc-12
i386                  randconfig-014-20250823    gcc-12
i386                  randconfig-015-20250823    gcc-12
i386                  randconfig-016-20250823    gcc-12
i386                  randconfig-017-20250823    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                        allyesconfig    gcc-15.1.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250823    clang-22
loongarch             randconfig-002-20250823    clang-22
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                        bcm47xx_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250823    clang-22
nios2                 randconfig-001-20250823    gcc-11.5.0
nios2                 randconfig-002-20250823    clang-22
nios2                 randconfig-002-20250823    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250823    clang-22
parisc                randconfig-001-20250823    gcc-8.5.0
parisc                randconfig-002-20250823    clang-22
parisc                randconfig-002-20250823    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                    ge_imp3a_defconfig    clang-22
powerpc                 mpc832x_rdb_defconfig    clang-22
powerpc               randconfig-001-20250823    clang-22
powerpc               randconfig-002-20250823    clang-22
powerpc               randconfig-003-20250823    clang-22
powerpc64             randconfig-001-20250823    clang-22
powerpc64             randconfig-001-20250823    gcc-11.5.0
powerpc64             randconfig-002-20250823    clang-22
powerpc64             randconfig-003-20250823    clang-22
powerpc64             randconfig-003-20250823    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250823    clang-22
riscv                 randconfig-002-20250823    clang-22
riscv                 randconfig-002-20250823    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250823    clang-22
s390                  randconfig-001-20250823    gcc-9.5.0
s390                  randconfig-002-20250823    clang-22
sh                               alldefconfig    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250823    clang-22
sh                    randconfig-001-20250823    gcc-15.1.0
sh                    randconfig-002-20250823    clang-22
sh                    randconfig-002-20250823    gcc-15.1.0
sh                        sh7757lcr_defconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250823    clang-22
sparc                 randconfig-001-20250823    gcc-8.5.0
sparc                 randconfig-002-20250823    clang-22
sparc                 randconfig-002-20250823    gcc-8.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250823    clang-22
sparc64               randconfig-001-20250823    gcc-8.5.0
sparc64               randconfig-002-20250823    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250823    clang-22
um                    randconfig-002-20250823    clang-22
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250822    clang-20
x86_64      buildonly-randconfig-001-20250823    gcc-12
x86_64      buildonly-randconfig-002-20250822    gcc-12
x86_64      buildonly-randconfig-002-20250823    gcc-12
x86_64      buildonly-randconfig-003-20250822    clang-20
x86_64      buildonly-randconfig-003-20250823    clang-20
x86_64      buildonly-randconfig-004-20250822    clang-20
x86_64      buildonly-randconfig-004-20250823    clang-20
x86_64      buildonly-randconfig-005-20250822    clang-20
x86_64      buildonly-randconfig-005-20250823    gcc-12
x86_64      buildonly-randconfig-006-20250822    gcc-12
x86_64      buildonly-randconfig-006-20250823    gcc-12
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250823    gcc-12
x86_64                randconfig-002-20250823    gcc-12
x86_64                randconfig-003-20250823    gcc-12
x86_64                randconfig-004-20250823    gcc-12
x86_64                randconfig-005-20250823    gcc-12
x86_64                randconfig-006-20250823    gcc-12
x86_64                randconfig-007-20250823    gcc-12
x86_64                randconfig-008-20250823    gcc-12
x86_64                randconfig-071-20250823    gcc-11
x86_64                randconfig-072-20250823    gcc-11
x86_64                randconfig-073-20250823    gcc-11
x86_64                randconfig-074-20250823    gcc-11
x86_64                randconfig-075-20250823    gcc-11
x86_64                randconfig-076-20250823    gcc-11
x86_64                randconfig-077-20250823    gcc-11
x86_64                randconfig-078-20250823    gcc-11
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250823    clang-22
xtensa                randconfig-001-20250823    gcc-15.1.0
xtensa                randconfig-002-20250823    clang-22
xtensa                randconfig-002-20250823    gcc-13.4.0
xtensa                    xip_kc705_defconfig    clang-22

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
