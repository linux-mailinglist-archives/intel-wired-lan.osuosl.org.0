Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0160DCD03F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 15:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A66E261270;
	Fri, 19 Dec 2025 14:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3TlMrxgK438W; Fri, 19 Dec 2025 14:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEDBF6126B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766154272;
	bh=cYVktuGQYpzPehbeTe72l1vCNxiRkRjnreP5O+mHGsU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ofOtyfmvAYfwhHh9tv4QHoK0pePBDJHfveGWxpoblbqYGuVhgfhaSRezXtxzDipO0
	 hm0knm6yKQ37kFqrlZQiuwakXD9a/ca4l6fejLSgec3ypbAsR8bhJ1cm6X6OeQqNGl
	 DhA9vjW71B51DP2NRi1iWi0zyGaLwXpMY9kQt2zy2kPCTOYlg5XCreV5IW8gHT3EZs
	 fb+1Z1NxzwyZi4pSFNEygNjgDSTrzbkDrDeKtYn6KpuudfqVdWCyzuUsUOK1SZG3Vy
	 /o193T1C/Ttlm3V/DYnxWtVT3hTrlGdBKe7IcG/3BpsxfFW/8NaSYn5ofqcw9SvfsE
	 FdSsbA1reP13A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEDBF6126B;
	Fri, 19 Dec 2025 14:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 419771A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 14:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 337B561261
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 14:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LLUNMjtK2-10 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 14:24:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55C5D6125E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55C5D6125E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55C5D6125E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 14:24:30 +0000 (UTC)
X-CSE-ConnectionGUID: MgktowaqQQKHioF8cntvew==
X-CSE-MsgGUID: ZFKhxP5LQP6g07upbX+pnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="71959728"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="71959728"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 06:24:30 -0800
X-CSE-ConnectionGUID: BA+01jtEQWCQGulV7CuEGg==
X-CSE-MsgGUID: yPQZOL51SiSKR92qwbFCoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="203960672"
Received: from lkp-server01.sh.intel.com (HELO 0d09efa1b85f) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 19 Dec 2025 06:24:29 -0800
Received: from kbuild by 0d09efa1b85f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vWbP8-000000003cn-1eTk
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Dec 2025 14:24:26 +0000
Date: Fri, 19 Dec 2025 22:24:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512192247.HZ8burZZ-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766154271; x=1797690271;
 h=date:from:to:subject:message-id;
 bh=Z4AhzbKRMp3C/ufg0dF7HE+wFTJSBxuC5pndMxbD5EA=;
 b=J74qct+tg+iz9PauoO5XS/LdKbve4RfP7J+Cwvhv+ZHJcsRGKaNo8ITh
 DapgFH47r8suBMKTelpRY4OLr1KmBsL7f62+u+Q+5/ef4LFL3+OTPpG+X
 Y8qSU2jwPONSroPwa7hQdKF67XDpTBQvVRXQNV4oDhYr0jbn3YX6W88A5
 H4JDdUj7lgTAqW5INDRwjJSfWPmIMaHFYzMyW6+gcvuYeFa2LaJllfcQ2
 W3jnVZKfblK8+NpZo+8Z3Zn7rznzKJU2S9u4GsTH0P6p7GRfO4TB1dFV+
 FR77SqY2xIgpaxm8YrBVhlh1cCuJLJGcCniQntVUXgQCDgYjAFD3LiWP0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J74qct+t
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 9c72a5182ed92904d01057f208c390a303f00a0f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 9c72a5182ed92904d01057f208c390a303f00a0f  e1000: fix OOB in e1000_tbi_should_accept()

elapsed time: 2529m

configs tested: 105
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              alldefconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arm                              allyesconfig    gcc-15.1.0
arm                                 defconfig    clang-22
arm                          ep93xx_defconfig    clang-22
arm                          pxa3xx_defconfig    clang-22
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20251219    clang-22
arm64                 randconfig-002-20251219    clang-20
arm64                 randconfig-003-20251219    gcc-9.5.0
arm64                 randconfig-004-20251219    clang-22
csky                             allmodconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20251219    gcc-12.5.0
csky                  randconfig-002-20251219    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                             defconfig    clang-22
hexagon               randconfig-001-20251219    clang-18
hexagon               randconfig-002-20251219    clang-19
i386                             allmodconfig    gcc-14
i386                             allyesconfig    gcc-14
i386                                defconfig    clang-20
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251219    gcc-15.1.0
loongarch             randconfig-002-20251219    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
mips                        omega2p_defconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251219    gcc-11.5.0
nios2                 randconfig-002-20251219    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251219    gcc-13.4.0
parisc                randconfig-002-20251219    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                    ge_imp3a_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251219    clang-22
powerpc               randconfig-002-20251219    gcc-8.5.0
powerpc64             randconfig-001-20251219    clang-22
powerpc64             randconfig-002-20251219    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251219    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251219    gcc-12.5.0
s390                  randconfig-002-20251219    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                   sh7724_generic_defconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251219    clang-20
x86_64      buildonly-randconfig-002-20251219    gcc-13
x86_64      buildonly-randconfig-003-20251219    clang-20
x86_64      buildonly-randconfig-004-20251219    clang-20
x86_64      buildonly-randconfig-005-20251219    clang-20
x86_64      buildonly-randconfig-006-20251219    clang-20
x86_64                              defconfig    gcc-14
x86_64                randconfig-001-20251219    gcc-14
x86_64                randconfig-002-20251219    gcc-14
x86_64                randconfig-003-20251219    gcc-14
x86_64                randconfig-004-20251219    clang-20
x86_64                randconfig-005-20251219    clang-20
x86_64                randconfig-006-20251219    clang-20
x86_64                randconfig-071-20251219    gcc-14
x86_64                randconfig-072-20251219    clang-20
x86_64                randconfig-073-20251219    gcc-14
x86_64                randconfig-074-20251219    clang-20
x86_64                randconfig-075-20251219    clang-20
x86_64                randconfig-076-20251219    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  nommu_kc705_defconfig    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
