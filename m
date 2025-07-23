Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E31FBB0FB3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 22:03:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 435016125A;
	Wed, 23 Jul 2025 20:03:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0rA0xHmeePmg; Wed, 23 Jul 2025 20:03:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5F03611DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753300985;
	bh=cOdl7eOg4nRUXG5f2Mj9FJg8uU29IPEmh5KnGk2e/kI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j3pfW3OrBMHVEFKN9+19Xcq2Q1TOLlqORxf4G44jBaMuS+FRrcBLEhNBaodr3cxjk
	 xK9zxSYM3WnTz4etcX98ceEsrlRl9CMASq2F6/Dz/IHCSbVRKRTNPu6cAXtVI2Nt27
	 E6VLxGJvSuY7QwT87wZmBujiEByPEIOmFc0ZIMilUrLGIer4rjXygk8cAptke3ZzsL
	 pRbuap6Fn0q/2Bi/p2lycBfc7skvVmj4dvc+0v20YJeF5qNiEf3zkrEtXNiXTZbSYI
	 616IbyHBnfRmZ6HUK74hBXwpBJhcyseyipSEiCHP53+IBXCIf8uTIaSRZgBcnFN5Na
	 uA1W0RoxxrtcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5F03611DC;
	Wed, 23 Jul 2025 20:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6136E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 20:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A319B8120E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 20:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtbSbxNvObGH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 20:03:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8CF988120F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CF988120F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CF988120F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 20:03:03 +0000 (UTC)
X-CSE-ConnectionGUID: QPT3biHyRd6NRcWTNSIsbA==
X-CSE-MsgGUID: Mbzix5xATUCmAPpoAYMsRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="81043635"
X-IronPort-AV: E=Sophos;i="6.16,335,1744095600"; d="scan'208";a="81043635"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 13:03:03 -0700
X-CSE-ConnectionGUID: kkVmWIODTy6GKtSWPGLVZA==
X-CSE-MsgGUID: MG27MQF8RwGg8BgexHLjHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,335,1744095600"; d="scan'208";a="190688991"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 23 Jul 2025 13:03:01 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uefg3-000Jkn-0O
 for intel-wired-lan@lists.osuosl.org; Wed, 23 Jul 2025 20:02:59 +0000
Date: Thu, 24 Jul 2025 04:02:23 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507240411.ysoPYVjR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753300983; x=1784836983;
 h=date:from:to:subject:message-id;
 bh=IgS8XCU8UXOq3mF6eoCAxxFb91dICPSvpd95D0zXbO4=;
 b=VnWMXaqXTV5qOmNit5aPzMYZK2kOhh1bowy72FtMl8xhL4RZGpA4uKAd
 DRJPVzwVkInovZR1lMuKdhbB93GcpgtcDCLDin9KZHdNYhewaeeDRrz+Y
 C8z3osjV4aeDnodbPwg/c0NwFwgI5jGyT3Y/eYo/Pm18MpzeIOIG+lHic
 ME1bNWZXY6WVOOXZxT6KweB4haxgmqMoa/W5+T8DIf9YBlUpfhfmjgvBI
 1QYq9wEjnLaSYNsi1w41Lmxz0IuV1TOn1FCyRAZyWxh9XpYdjzGDaAFg+
 fk+vwxBZXCMw8mHWlZu4fa2p1AG/TskW/uvQkiSYgyjUH2Nt7XDRs96rm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VnWMXaqX
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 67e9d0b40bd7990d6eab63b5afedea3c17578993
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
branch HEAD: 67e9d0b40bd7990d6eab63b5afedea3c17578993  Merge tag 'linux-can-fixes-for-6.16-20250722' of git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can

elapsed time: 1100m

configs tested: 223
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                            allyesconfig    clang-19
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    clang-22
arc                              allyesconfig    clang-19
arc                                 defconfig    clang-19
arc                   randconfig-001-20250723    clang-16
arc                   randconfig-001-20250724    gcc-13.4.0
arc                   randconfig-002-20250723    clang-16
arc                   randconfig-002-20250724    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                                 defconfig    clang-19
arm                          ixp4xx_defconfig    clang-22
arm                   randconfig-001-20250723    clang-16
arm                   randconfig-001-20250724    gcc-10.5.0
arm                   randconfig-002-20250723    clang-16
arm                   randconfig-002-20250724    clang-22
arm                   randconfig-003-20250723    clang-16
arm                   randconfig-003-20250724    gcc-8.5.0
arm                   randconfig-004-20250723    clang-16
arm                   randconfig-004-20250724    gcc-12.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250723    clang-16
arm64                 randconfig-001-20250724    gcc-8.5.0
arm64                 randconfig-002-20250723    clang-16
arm64                 randconfig-002-20250724    clang-22
arm64                 randconfig-003-20250723    clang-16
arm64                 randconfig-003-20250724    gcc-13.4.0
arm64                 randconfig-004-20250723    clang-16
arm64                 randconfig-004-20250724    clang-22
csky                              allnoconfig    clang-22
csky                                defconfig    clang-19
csky                  randconfig-001-20250723    gcc-8.5.0
csky                  randconfig-001-20250724    gcc-13.4.0
csky                  randconfig-002-20250723    gcc-8.5.0
csky                  randconfig-002-20250724    gcc-10.5.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250723    gcc-8.5.0
hexagon               randconfig-001-20250724    clang-22
hexagon               randconfig-002-20250723    gcc-8.5.0
hexagon               randconfig-002-20250724    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250723    clang-20
i386        buildonly-randconfig-001-20250724    gcc-12
i386        buildonly-randconfig-002-20250723    clang-20
i386        buildonly-randconfig-002-20250724    clang-20
i386        buildonly-randconfig-003-20250723    clang-20
i386        buildonly-randconfig-003-20250724    clang-20
i386        buildonly-randconfig-004-20250723    clang-20
i386        buildonly-randconfig-004-20250724    clang-20
i386        buildonly-randconfig-005-20250723    clang-20
i386        buildonly-randconfig-005-20250724    clang-20
i386        buildonly-randconfig-006-20250723    clang-20
i386        buildonly-randconfig-006-20250724    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250723    clang-20
i386                  randconfig-002-20250723    clang-20
i386                  randconfig-003-20250723    clang-20
i386                  randconfig-004-20250723    clang-20
i386                  randconfig-005-20250723    clang-20
i386                  randconfig-006-20250723    clang-20
i386                  randconfig-007-20250723    clang-20
i386                  randconfig-011-20250723    clang-20
i386                  randconfig-012-20250723    clang-20
i386                  randconfig-013-20250723    clang-20
i386                  randconfig-014-20250723    clang-20
i386                  randconfig-015-20250723    clang-20
i386                  randconfig-016-20250723    clang-20
i386                  randconfig-017-20250723    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250723    gcc-8.5.0
loongarch             randconfig-001-20250724    clang-22
loongarch             randconfig-002-20250723    gcc-8.5.0
loongarch             randconfig-002-20250724    gcc-13.4.0
m68k                             allmodconfig    clang-19
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                                defconfig    clang-19
microblaze                       allmodconfig    clang-19
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                      maltaaprp_defconfig    clang-22
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250723    gcc-8.5.0
nios2                 randconfig-001-20250724    gcc-11.5.0
nios2                 randconfig-002-20250723    gcc-8.5.0
nios2                 randconfig-002-20250724    gcc-8.5.0
openrisc                          allnoconfig    clang-22
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250723    gcc-8.5.0
parisc                randconfig-001-20250724    gcc-14.3.0
parisc                randconfig-002-20250723    gcc-8.5.0
parisc                randconfig-002-20250724    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                       ebony_defconfig    clang-22
powerpc                       holly_defconfig    clang-22
powerpc                      mgcoge_defconfig    clang-22
powerpc                    mvme5100_defconfig    clang-22
powerpc               randconfig-001-20250723    gcc-8.5.0
powerpc               randconfig-001-20250724    clang-22
powerpc               randconfig-002-20250723    gcc-8.5.0
powerpc               randconfig-002-20250724    gcc-8.5.0
powerpc               randconfig-003-20250723    gcc-8.5.0
powerpc               randconfig-003-20250724    clang-22
powerpc64             randconfig-001-20250723    gcc-8.5.0
powerpc64             randconfig-001-20250724    clang-22
powerpc64             randconfig-002-20250723    gcc-8.5.0
powerpc64             randconfig-002-20250724    gcc-13.4.0
powerpc64             randconfig-003-20250723    gcc-8.5.0
powerpc64             randconfig-003-20250724    gcc-15.1.0
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    clang-22
riscv                 randconfig-001-20250723    gcc-9.5.0
riscv                 randconfig-001-20250724    gcc-13.4.0
riscv                 randconfig-002-20250723    gcc-9.5.0
riscv                 randconfig-002-20250724    gcc-8.5.0
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250723    gcc-9.5.0
s390                  randconfig-001-20250724    clang-22
s390                  randconfig-002-20250723    gcc-9.5.0
s390                  randconfig-002-20250724    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250723    gcc-9.5.0
sh                    randconfig-001-20250724    gcc-13.4.0
sh                    randconfig-002-20250723    gcc-9.5.0
sh                    randconfig-002-20250724    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250723    gcc-9.5.0
sparc                 randconfig-001-20250724    gcc-15.1.0
sparc                 randconfig-002-20250723    gcc-9.5.0
sparc                 randconfig-002-20250724    gcc-8.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250723    gcc-9.5.0
sparc64               randconfig-001-20250724    gcc-8.5.0
sparc64               randconfig-002-20250723    gcc-9.5.0
sparc64               randconfig-002-20250724    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250723    gcc-9.5.0
um                    randconfig-001-20250724    clang-22
um                    randconfig-002-20250723    gcc-9.5.0
um                    randconfig-002-20250724    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250723    gcc-11
x86_64      buildonly-randconfig-001-20250724    gcc-12
x86_64      buildonly-randconfig-002-20250723    gcc-11
x86_64      buildonly-randconfig-002-20250724    clang-20
x86_64      buildonly-randconfig-003-20250723    gcc-11
x86_64      buildonly-randconfig-003-20250724    gcc-12
x86_64      buildonly-randconfig-004-20250723    gcc-11
x86_64      buildonly-randconfig-004-20250724    gcc-12
x86_64      buildonly-randconfig-005-20250723    gcc-11
x86_64      buildonly-randconfig-005-20250724    clang-20
x86_64      buildonly-randconfig-006-20250723    gcc-11
x86_64      buildonly-randconfig-006-20250724    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250723    gcc-12
x86_64                randconfig-002-20250723    gcc-12
x86_64                randconfig-003-20250723    gcc-12
x86_64                randconfig-004-20250723    gcc-12
x86_64                randconfig-005-20250723    gcc-12
x86_64                randconfig-006-20250723    gcc-12
x86_64                randconfig-007-20250723    gcc-12
x86_64                randconfig-008-20250723    gcc-12
x86_64                randconfig-071-20250723    clang-20
x86_64                randconfig-072-20250723    clang-20
x86_64                randconfig-073-20250723    clang-20
x86_64                randconfig-074-20250723    clang-20
x86_64                randconfig-075-20250723    clang-20
x86_64                randconfig-076-20250723    clang-20
x86_64                randconfig-077-20250723    clang-20
x86_64                randconfig-078-20250723    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                generic_kc705_defconfig    clang-22
xtensa                randconfig-001-20250723    gcc-9.5.0
xtensa                randconfig-001-20250724    gcc-12.5.0
xtensa                randconfig-002-20250723    gcc-9.5.0
xtensa                randconfig-002-20250724    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
