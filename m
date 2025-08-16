Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D94B28AF1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 08:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5386F614DA;
	Sat, 16 Aug 2025 06:18:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EsMHfp_aOdQ7; Sat, 16 Aug 2025 06:18:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 474B9614C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755325135;
	bh=jsQ7ID7bSOk72kRY/Gwqa5F/DIa42GWOTK1cae3O/k0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yPXj36ZzN3SEZ8zd3lmYG1uekGzqKMfIIZ0yXSMkvkD7XLccc09vXifQEZKOloVpw
	 83Ku9tF9p8WR/MuuSOYIuTcI0jVOkC6nViVtJ0Gk4VXgJMtya8Vh4D1uFde8/f6qtc
	 4l0KUN0ECgjsdyJlQzmjjD657nyQh7H8NJN0l4BqPihE1v/qJeNF0lkpWCB+iJKKYY
	 tJ9tADks4CXmdJ4rQegaXKYtPIklalhJSlUWup82U6XlM4zJFeLS2ZtezxU2bgpKKK
	 Yq4RkSSfmUJg0JqIHNuFfOy3hNJrkGufWkflauRJ83j6wObyjuAr+PTB8lWn1RMlO6
	 3FKD76Gkn2ZLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 474B9614C8;
	Sat, 16 Aug 2025 06:18:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D6A0196
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 06:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 142CD413E6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 06:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FVFbPsu-Tf3S for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 06:18:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C37E3413C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C37E3413C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C37E3413C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 06:18:51 +0000 (UTC)
X-CSE-ConnectionGUID: QMTZIF+7Sjy8ZDqWdZx7sA==
X-CSE-MsgGUID: YWmIgmmISlSYGZgZ/shpyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="57589683"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57589683"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 23:18:51 -0700
X-CSE-ConnectionGUID: IsDNYfP1TOm0WuJN4/lp7Q==
X-CSE-MsgGUID: MIGoLsvuSyql0Kv6LRExXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167134527"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 15 Aug 2025 23:18:51 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1unAFb-000CdS-2L
 for intel-wired-lan@lists.osuosl.org; Sat, 16 Aug 2025 06:18:47 +0000
Date: Sat, 16 Aug 2025 14:18:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508161440.gsBXbkf6-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755325132; x=1786861132;
 h=date:from:to:subject:message-id;
 bh=bjrTlKjsVh59W6b8T0b129HIKTFWw97x35FQAcNuxp4=;
 b=bivqIHoRkUE46uUQmcoc79raAb8L2lDfF6aOwyvuaoXSnPUNKVE9j6fB
 GgYNvPLtkn0KVk+QJBkqV0z+7M+lpMNVsnEGFeaA6IjDLB1esD6qB1nlO
 9UMwhWGdHLcd3SHvMaVpykYpeUltRG8ZxE+WmAv7gSs4kPpKpAmEg1od1
 Y1sbMMz04knaenCv4Tajx6ORU2b+fbhslsJcSony2Z8bxGTOl/tzLRqNJ
 UFIWUB1tioJuVbGNwsufj0SuXlvAnnD++XNm4rpsjtBFIqn1xwyQI85NO
 rCD4PwIkdOGgObdko/b3qsW1fHOfnd04VC3Aanwj8yrEY8HL1bn8O7Avh
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bivqIHoR
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 065c31f2c6915b38f45b1c817b31f41f62eaa774
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 065c31f2c6915b38f45b1c817b31f41f62eaa774  rtase: Fix Rx descriptor CRC error bit definition

elapsed time: 1676m

configs tested: 101
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250816    gcc-8.5.0
arc                   randconfig-002-20250816    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250816    gcc-12.5.0
arm                   randconfig-002-20250816    gcc-10.5.0
arm                   randconfig-003-20250816    gcc-10.5.0
arm                   randconfig-004-20250816    gcc-10.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250816    clang-22
arm64                 randconfig-002-20250816    clang-22
arm64                 randconfig-003-20250816    gcc-8.5.0
arm64                 randconfig-004-20250816    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250816    gcc-15.1.0
csky                  randconfig-002-20250816    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250816    clang-19
hexagon               randconfig-002-20250816    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250816    clang-20
i386        buildonly-randconfig-002-20250816    gcc-12
i386        buildonly-randconfig-003-20250816    gcc-12
i386        buildonly-randconfig-004-20250816    gcc-12
i386        buildonly-randconfig-005-20250816    gcc-12
i386        buildonly-randconfig-006-20250816    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250816    gcc-15.1.0
loongarch             randconfig-002-20250816    gcc-14.3.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20250816    gcc-10.5.0
nios2                 randconfig-002-20250816    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250816    gcc-10.5.0
parisc                randconfig-002-20250816    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250816    clang-20
powerpc               randconfig-002-20250816    clang-22
powerpc               randconfig-003-20250816    clang-22
powerpc64             randconfig-001-20250816    gcc-8.5.0
powerpc64             randconfig-002-20250816    clang-22
powerpc64             randconfig-003-20250816    clang-16
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250816    clang-22
riscv                 randconfig-002-20250816    gcc-13.4.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250816    clang-22
s390                  randconfig-002-20250816    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250816    gcc-15.1.0
sh                    randconfig-002-20250816    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250816    gcc-15.1.0
sparc                 randconfig-002-20250816    gcc-15.1.0
sparc64               randconfig-001-20250816    gcc-11.5.0
sparc64               randconfig-002-20250816    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250816    gcc-12
um                    randconfig-002-20250816    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250816    gcc-12
x86_64      buildonly-randconfig-002-20250816    gcc-12
x86_64      buildonly-randconfig-003-20250816    gcc-12
x86_64      buildonly-randconfig-004-20250816    clang-20
x86_64      buildonly-randconfig-005-20250816    clang-20
x86_64      buildonly-randconfig-006-20250816    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250816    gcc-10.5.0
xtensa                randconfig-002-20250816    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
