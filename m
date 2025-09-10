Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FABCB51AC0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 17:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BEB260E4A;
	Wed, 10 Sep 2025 15:04:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X4I_2EJDB3ho; Wed, 10 Sep 2025 15:04:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE18D60E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757516671;
	bh=3ZXo2kXZPwey9zu6Dw1cJnHk5FGz3//14oVnirmwdlU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=869WpuiVKSe0jJQ6V3v2/1J6Fmle4oKCZPxjFFqGsHqgw6vPDjHROaACweH5xi47h
	 Htu0ZOvgmg98f2NQOgaYEfkarqMGGMOJS+OQGQ2BblqixzYEBN8PvDXTgArzjFDjmu
	 0vYI0BW1r3kSOmoXTlafCZLVz59NLHTmoTf3ZLv+wMouuAP5Z78VGBE+AXgMcYmK1h
	 c4mIoO9LyuLlXZOfEvOH0xxeiuAIed+awWq85Iu7023g/ofdf2T997UwLm0SAn/fYq
	 6ZFtj9vMDUdqaOTW2WIZOIVvtB+g+UkH2DonK/E9Tv8glb22p5aNt+LLw7kC/TRPg1
	 urHa6hbfKcM4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE18D60E5D;
	Wed, 10 Sep 2025 15:04:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0786A10E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 15:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E22C680CF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 15:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmCJ21NDPaFP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 15:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F37F380B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F37F380B3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F37F380B3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 15:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: /IMKQFlXQ32BcoISEqguXg==
X-CSE-MsgGUID: CSxTvvSHR4K85OZlOCaJwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="71208570"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="71208570"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 08:04:29 -0700
X-CSE-ConnectionGUID: nJb6bFocSGijg623u0xPtw==
X-CSE-MsgGUID: 9ZIKUaPySRCgaM0Beu660Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="177445016"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 10 Sep 2025 08:04:27 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwMMy-00062N-2s
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Sep 2025 15:04:24 +0000
Date: Wed, 10 Sep 2025 23:03:48 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509102338.YHWWzgwr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757516669; x=1789052669;
 h=date:from:to:subject:message-id;
 bh=NA0zw2rIuC6Id+iyLDBXlmy+qHDQQKL0B3z1+vypNEc=;
 b=EEh5HlJKXBQR15uv44ilay7uvj1BleNh196lLCz9zp/POUHA1q41HFLk
 auZCyUkUJfdughhKZMBNZbQmx9OAhylQ1G2d9BlCm7gl7TE/+Od2E4A54
 rbq3EfopMunloZ1q9z7xXP4P/u7N5seBF6VoT+EEPuMEahAFDfnvMnWl4
 xtR+2fkMDDaTXd12dXXKJ7Wf5LHjbEz+nnMUShUEaQBei9zLVVuw9at+A
 f+nBHU0D9zY/ELKvnCD11HLr06dT4ZZyRFn5EkwYWwIETaWzeE8J1PL2d
 vMAA/UXQgasWNWZm2q6Lna2JIb3PrkQ0uj7jTODqtz3F+UgWm7hJc20GB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EEh5HlJK
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 0574c27cbe797329b932f9398959c3b08d41b0ad
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 0574c27cbe797329b932f9398959c3b08d41b0ad  eth: fbnic: support persistent NAPI config

elapsed time: 1466m

configs tested: 112
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250910    gcc-13.4.0
arc                   randconfig-002-20250910    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250910    gcc-8.5.0
arm                   randconfig-002-20250910    gcc-8.5.0
arm                   randconfig-003-20250910    clang-16
arm                   randconfig-004-20250910    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250910    clang-22
arm64                 randconfig-002-20250910    clang-22
arm64                 randconfig-003-20250910    gcc-9.5.0
arm64                 randconfig-004-20250910    gcc-13.4.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250910    gcc-12.5.0
csky                  randconfig-002-20250910    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250910    clang-22
hexagon               randconfig-002-20250910    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250910    gcc-14
i386        buildonly-randconfig-002-20250910    gcc-13
i386        buildonly-randconfig-003-20250910    clang-20
i386        buildonly-randconfig-004-20250910    clang-20
i386        buildonly-randconfig-005-20250910    gcc-14
i386        buildonly-randconfig-006-20250910    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250910    clang-18
loongarch             randconfig-002-20250910    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250910    gcc-11.5.0
nios2                 randconfig-002-20250910    gcc-9.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250910    gcc-10.5.0
parisc                randconfig-002-20250910    gcc-9.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250910    gcc-8.5.0
powerpc               randconfig-002-20250910    gcc-8.5.0
powerpc               randconfig-003-20250910    clang-22
powerpc64             randconfig-001-20250910    gcc-12.5.0
powerpc64             randconfig-002-20250910    gcc-11.5.0
powerpc64             randconfig-003-20250910    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250910    clang-22
riscv                 randconfig-002-20250910    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250910    clang-22
s390                  randconfig-002-20250910    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250910    gcc-15.1.0
sh                    randconfig-002-20250910    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250910    gcc-8.5.0
sparc                 randconfig-002-20250910    gcc-8.5.0
sparc64               randconfig-001-20250910    gcc-8.5.0
sparc64               randconfig-002-20250910    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250910    clang-22
um                    randconfig-002-20250910    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250910    gcc-14
x86_64      buildonly-randconfig-002-20250910    clang-20
x86_64      buildonly-randconfig-003-20250910    gcc-14
x86_64      buildonly-randconfig-004-20250910    clang-20
x86_64      buildonly-randconfig-005-20250910    gcc-14
x86_64      buildonly-randconfig-006-20250910    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250910    gcc-8.5.0
xtensa                randconfig-002-20250910    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
