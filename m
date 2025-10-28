Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5C8C168C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 19:53:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20D60405D8;
	Tue, 28 Oct 2025 18:53:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2t2h0aOM-Rft; Tue, 28 Oct 2025 18:53:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5288D405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761677612;
	bh=dQRyv+04EIxamz3qH1xWMrQc4Goa4Y00QI0aqj4Xsjk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jR06x/ADWVceZOXXFk5uJuGfmu28SJYN9VkJTthIdSRrcHGFRad3Z1ayzYdA7P/ww
	 CbyeyKb/FXEpcnUC491JtxZcB4RUP5ttT10948AHjTEYOClrRVzPADgtEh7ku1h4sE
	 GtbODex6ivit/9WaEfDURXh1sG1dVgcvEfgO2jG1tXlmGB/7xbZDWNBpJjDRo+eTYr
	 mxfxnhZx/QlpgNhsWLmpLb05Rpg+Z+s+d8w6u/hYA401HaUfBKeoCAP06iHFHzLeVD
	 G67i/Q+tdsFSi18m3dKLNBzOKRWw1AVIIN4cT37jMhLvKvntSQg0G+uCqPAsA19/cE
	 58wm+znv8sO6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5288D405D0;
	Tue, 28 Oct 2025 18:53:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DE155707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEFB9405CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oDsgvi5MBhQL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 18:53:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C60B2405A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C60B2405A2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C60B2405A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 18:53:29 +0000 (UTC)
X-CSE-ConnectionGUID: p/t1hgbASDKQ+d3n574Z2w==
X-CSE-MsgGUID: jGBiEMeNRKKJVExpsTn1sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63825615"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="63825615"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 11:53:29 -0700
X-CSE-ConnectionGUID: kV+JZ8ACQKWJqT4GBe3DVw==
X-CSE-MsgGUID: pt8DKXk5Ree44BU2QKNz5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="216090613"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 28 Oct 2025 11:53:28 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vDoov-000Jch-28
 for intel-wired-lan@lists.osuosl.org; Tue, 28 Oct 2025 18:53:25 +0000
Date: Wed, 29 Oct 2025 02:38:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510290219.RnBDmBWY-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761677610; x=1793213610;
 h=date:from:to:subject:message-id;
 bh=v83rSc+TkFBMfIUb7XTqHouQEe/OZLCRYbGJDW/cCmU=;
 b=J5JqaHu534fuR5by9O2wHzBcahg+Jg0t921xKDIJqyjN+2JjAsxsWOso
 2ttd4pdFL726PRSsX9Iia1CtZAcLiAyB6smyvHNtnhCpzc3mxH2hX8y4l
 oPHSB19D8W/MYebcVzZLyFFnCkM3ZPQvkEQlSdgy6pZ0Kkq9Z5Z72VvfT
 okcxKEUJHi9vFV3LFK0gBuhKeXnB2xQe96WWrzZIsVVdsDsFl7rs+BkBR
 r78sa05S2yQjTdGwGgE8BNh1Cw5G5Ka0ex1FnZCCF3Tcyy/8pvGreRy65
 Ub8EvS7uixqs67LdhuMHlnXhH1u9bw5Gk1sWqjKpvmVPMemNNsHdmn/D9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J5JqaHu5
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 210b35d6a7ea415494ce75490c4b43b4e717d935
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
branch HEAD: 210b35d6a7ea415494ce75490c4b43b4e717d935  dt-bindings: net: sparx5: Narrow properly LAN969x register space windows

elapsed time: 1024m

configs tested: 153
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                        nsimosci_defconfig    clang-22
arc                   randconfig-001-20251028    gcc-8.5.0
arc                   randconfig-001-20251029    gcc-15.1.0
arc                   randconfig-002-20251028    gcc-8.5.0
arc                   randconfig-002-20251029    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                       aspeed_g5_defconfig    gcc-15.1.0
arm                        multi_v5_defconfig    gcc-15.1.0
arm                        multi_v7_defconfig    gcc-15.1.0
arm                   randconfig-001-20251028    gcc-8.5.0
arm                   randconfig-001-20251029    gcc-8.5.0
arm                   randconfig-002-20251028    gcc-8.5.0
arm                   randconfig-002-20251029    clang-22
arm                   randconfig-003-20251028    gcc-8.5.0
arm                   randconfig-003-20251029    clang-22
arm                   randconfig-004-20251028    gcc-8.5.0
arm                   randconfig-004-20251029    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                            allyesconfig    gcc-15.1.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                             allyesconfig    gcc-15.1.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
i386                             allmodconfig    clang-20
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.1.0
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251028    gcc-14
i386        buildonly-randconfig-002-20251028    gcc-14
i386        buildonly-randconfig-003-20251028    gcc-14
i386        buildonly-randconfig-004-20251028    gcc-14
i386        buildonly-randconfig-005-20251028    gcc-14
i386        buildonly-randconfig-006-20251028    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                         allnoconfig    gcc-15.1.0
loongarch                        allyesconfig    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                           sun3_defconfig    clang-22
microblaze                       allmodconfig    clang-19
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                      maltaaprp_defconfig    clang-22
nios2                            allmodconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                            allyesconfig    clang-22
openrisc                         allmodconfig    clang-22
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    gcc-15.1.0
powerpc                   bluestone_defconfig    gcc-15.1.0
powerpc                 mpc8313_rdb_defconfig    clang-22
powerpc                    socrates_defconfig    clang-22
powerpc                     tqm8541_defconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-15.1.0
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                          r7785rp_defconfig    clang-22
sparc                            alldefconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                            allyesconfig    clang-22
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251028    gcc-9.5.0
sparc                 randconfig-002-20251028    gcc-9.5.0
sparc64                          allmodconfig    clang-22
sparc64                          allyesconfig    clang-22
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251028    gcc-9.5.0
sparc64               randconfig-002-20251028    gcc-9.5.0
um                               alldefconfig    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251028    gcc-9.5.0
um                    randconfig-002-20251028    gcc-9.5.0
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251028    clang-20
x86_64      buildonly-randconfig-002-20251028    clang-20
x86_64      buildonly-randconfig-003-20251028    clang-20
x86_64      buildonly-randconfig-004-20251028    clang-20
x86_64      buildonly-randconfig-005-20251028    clang-20
x86_64      buildonly-randconfig-006-20251028    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251028    clang-20
x86_64                randconfig-002-20251028    clang-20
x86_64                randconfig-003-20251028    clang-20
x86_64                randconfig-004-20251028    clang-20
x86_64                randconfig-005-20251028    clang-20
x86_64                randconfig-006-20251028    clang-20
x86_64                randconfig-011-20251028    clang-20
x86_64                randconfig-012-20251028    clang-20
x86_64                randconfig-013-20251028    clang-20
x86_64                randconfig-014-20251028    clang-20
x86_64                randconfig-015-20251028    clang-20
x86_64                randconfig-016-20251028    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-22
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    clang-22
xtensa                randconfig-001-20251028    gcc-9.5.0
xtensa                randconfig-002-20251028    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
