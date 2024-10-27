Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0419B1B96
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Oct 2024 02:17:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 645DD81319;
	Sun, 27 Oct 2024 01:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cYbhdfqmVO5O; Sun, 27 Oct 2024 01:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B3C58132D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729991829;
	bh=7IHtU1+1kOmthlZc/BYomT3DX1SBCISeuyhimWSFx/M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PzUsocEnYVqIHXrH9/iXzbXmhOluJxzl9iuk1E+S5bIlqFtfUbtv2ih5kIjxik8OE
	 dcc4WWyxqi3wbh5XA4szvWeyYynMf+SH1sh3S6wstmXMg3S5NBWeUA0zXwC8L70DPU
	 0vggqHFjBZdB3316LoCuyhGCvdn91IkHxFDfPtFf1asUJVmoG2uKRuakpj3pdKvM3G
	 /XGGJP+hk+5SIyHbeOHndQFIwdPVm68br5SJVfMO2qNISdy3sLpQDOXWV15x/6KKGc
	 c/egSU54+0O7i1jJTSpd1eE6VUFd2eeFTSDES3Cw0ILgSC79PSuvDyPV6tNcnyIRXO
	 XXK5wRzX60iXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B3C58132D;
	Sun, 27 Oct 2024 01:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F0EF5C24
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 01:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47BBE402F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 01:17:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oj-b3hXeAGqr for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Oct 2024 01:17:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D152402F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D152402F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D152402F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Oct 2024 01:17:05 +0000 (UTC)
X-CSE-ConnectionGUID: dRg8n2fASpW1xkZhDEmqZA==
X-CSE-MsgGUID: 018tcL41RCSE74kpiFlIAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11237"; a="29088491"
X-IronPort-AV: E=Sophos;i="6.11,236,1725346800"; d="scan'208";a="29088491"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2024 18:17:04 -0700
X-CSE-ConnectionGUID: /nzKJ2EmTsiwwSqUkk2Zcw==
X-CSE-MsgGUID: kqPZhZMbTzeIqSc3uF2caQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,236,1725346800"; d="scan'208";a="85227750"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 26 Oct 2024 18:17:03 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t4rtt-000aEi-0r
 for intel-wired-lan@lists.osuosl.org; Sun, 27 Oct 2024 01:17:01 +0000
Date: Sun, 27 Oct 2024 09:16:18 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410270910.helEoQ9c-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729991826; x=1761527826;
 h=date:from:to:subject:message-id;
 bh=PJPoBKrH6ElNWb3FLkt9OsxKTRiI492bKfXhEtVi8TY=;
 b=aMeFhX2kQnjhoKE0+0NIBw1rjZJ/hlWaO7mjFxK/286wirYjFoz2/D8d
 3d/1XG5NLxDkKv+4RZiD17azwins5oFPlLEgLU4HSjIEtBjNGBDsjJgo9
 V9l/5NrGtjv6s5GAsMvDjuqnHBIxt/ASVi83kQsrtWKjEuOovTL9Zwr1I
 fmEDKlRIg6PJ28PtTpEP2Y+JyyMFnoRipRxmPiNHKEWDtqi6EhporUfK4
 XPmil0Jc/KYhbOhrt8asMz04MrjLbQsHOL3VJAMihMwns0Ts6kdT80f8U
 hUMTR2CsMthAEAF3l+2+rvd33WKij4bGsPoqzY+JG2E/4DL5AMxaBroMF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aMeFhX2k
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 19acd6818aa7404d96cd5d0e4373d4ebe71448c2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 19acd6818aa7404d96cd5d0e4373d4ebe71448c2  ixgbevf: Fix passing 0 to ERR_PTR in ixgbevf_run_xdp()

elapsed time: 1676m

configs tested: 102
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241026    gcc-13.2.0
arc                   randconfig-002-20241026    gcc-13.2.0
arm                               allnoconfig    clang-20
arm                   randconfig-001-20241026    gcc-14.1.0
arm                   randconfig-002-20241026    clang-20
arm                   randconfig-003-20241026    gcc-14.1.0
arm                   randconfig-004-20241026    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241026    gcc-14.1.0
arm64                 randconfig-002-20241026    clang-20
arm64                 randconfig-003-20241026    clang-20
arm64                 randconfig-004-20241026    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241026    gcc-14.1.0
csky                  randconfig-002-20241026    gcc-14.1.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20241026    clang-20
hexagon               randconfig-002-20241026    clang-17
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241027    gcc-12
i386        buildonly-randconfig-002-20241027    gcc-12
i386        buildonly-randconfig-003-20241027    clang-19
i386        buildonly-randconfig-004-20241027    gcc-12
i386        buildonly-randconfig-005-20241027    clang-19
i386        buildonly-randconfig-006-20241027    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241027    gcc-12
i386                  randconfig-002-20241027    clang-19
i386                  randconfig-003-20241027    gcc-12
i386                  randconfig-004-20241027    gcc-12
i386                  randconfig-005-20241027    gcc-12
i386                  randconfig-006-20241027    gcc-12
i386                  randconfig-011-20241027    clang-19
i386                  randconfig-012-20241027    clang-19
i386                  randconfig-013-20241027    clang-19
i386                  randconfig-014-20241027    gcc-12
i386                  randconfig-015-20241027    clang-19
i386                  randconfig-016-20241027    clang-19
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241026    gcc-14.1.0
loongarch             randconfig-002-20241026    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241026    gcc-14.1.0
nios2                 randconfig-002-20241026    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                randconfig-001-20241026    gcc-14.1.0
parisc                randconfig-002-20241026    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc               randconfig-001-20241026    gcc-14.1.0
powerpc               randconfig-002-20241026    gcc-14.1.0
powerpc               randconfig-003-20241026    clang-20
powerpc64             randconfig-001-20241026    clang-20
powerpc64             randconfig-002-20241026    clang-20
powerpc64             randconfig-003-20241026    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                 randconfig-001-20241026    gcc-14.1.0
riscv                 randconfig-002-20241026    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                  randconfig-001-20241026    gcc-14.1.0
s390                  randconfig-002-20241026    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                    randconfig-001-20241026    gcc-14.1.0
sh                    randconfig-002-20241026    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64               randconfig-001-20241026    gcc-14.1.0
sparc64               randconfig-002-20241026    gcc-14.1.0
um                                allnoconfig    clang-17
um                    randconfig-001-20241026    clang-20
um                    randconfig-002-20241026    clang-20
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241026    gcc-14.1.0
xtensa                randconfig-002-20241026    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
