Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8FDBEC64B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Oct 2025 05:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED43260C10;
	Sat, 18 Oct 2025 03:02:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYhbKQHgP4Ii; Sat, 18 Oct 2025 03:02:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9506060C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760756541;
	bh=7jC9163fCqEvzwSdSoUofgkvhC/5GS/1dHfCbOQE6i4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=431EOJsBQqxJd7XGwTlN8TKli9y1kVTMURT7ok0aiOACBzjOe6+S0qArzqsPI92lW
	 BfipNCilGezdIfDq4JsSaqfvAfZ+S+RvRgQyO0ZLflAYQlA0Cx1luNpU9G2M27aLVr
	 s3VJHYarYi60pJjapsSYFbp+JMSLVXBfzRrVN/x8CnWNl8Ge7S3tBH01e01nnNYLJD
	 4grCWG8M0dfg1Qs2qjrDkOXxVV2VSDI3LqyRfUEdZqUvANGdz5p3oZMfZL9oKhYML2
	 qYozoIwjPtjOPjfZK2QbLc0W+3W5qXEl5Pn4IC7UkoBfJCCnoa9Q8306BN7kHMdcyz
	 KT0+WLIH/Ss4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9506060C14;
	Sat, 18 Oct 2025 03:02:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 42F2343F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Oct 2025 03:02:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 282D560C0F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Oct 2025 03:02:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ifiajjHhL9-r for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Oct 2025 03:02:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F18A360C0A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F18A360C0A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F18A360C0A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Oct 2025 03:02:18 +0000 (UTC)
X-CSE-ConnectionGUID: P1jZiILpTVGpGZWuwUc5qw==
X-CSE-MsgGUID: Nw8JH454QAiJJDOSvrWKsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="80411586"
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="80411586"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 20:02:19 -0700
X-CSE-ConnectionGUID: TdxLW39jQYyrY2EorL9eFA==
X-CSE-MsgGUID: pJ8/Ln4yQ+aMJzJpUX4XbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,237,1754982000"; d="scan'208";a="187902274"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 17 Oct 2025 13:39:42 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v9rEh-0007kN-1s
 for intel-wired-lan@lists.osuosl.org; Fri, 17 Oct 2025 20:39:39 +0000
Date: Sat, 18 Oct 2025 04:39:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510180430.HWLawBqA-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760756539; x=1792292539;
 h=date:from:to:subject:message-id;
 bh=x/VudDj4Un9hJhD+wy4AS7TnOfilyoi1tce3mUrJHvU=;
 b=njdVrw3E14DM9+GudkSPmKl5QlhRKZACV8TMVMNa8U+2m4NliJkzRagM
 uc5E2ihwVmJIRDUn6yV6xgcK2Jl50DSBw1Ntt9CDwkYqndzsTxShD7LkX
 BW17BUiw5Vi/dV26E0D8PTsRSMMeX9PQxUyb/2gS3GV9fz5wFWaDHu1GU
 JFapOEjXMBBHYVMbeVMV/WzCQ+kjEgFH5xuo7YPC43Rb1F0tYwsvZlreh
 wyEscLs93MZrXmSjxARUFQ1qOaDxNlbIBJnSAJgzpCVaPWCcEd2j1qSPw
 jSFoO1y9C/zhUqqQnGCydXK4Op0vJProZ9i2CtFHbSI+R90dPZLJQtPdS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=njdVrw3E
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 55db64ddd6a12c5157a61419a11a18fc727e8286
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
branch HEAD: 55db64ddd6a12c5157a61419a11a18fc727e8286  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 1531m

configs tested: 210
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20251017    clang-22
arc                   randconfig-001-20251017    gcc-8.5.0
arc                   randconfig-002-20251017    clang-22
arc                   randconfig-002-20251017    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                                 defconfig    clang-19
arm                   randconfig-001-20251017    clang-22
arm                   randconfig-001-20251017    gcc-15.1.0
arm                   randconfig-002-20251017    clang-22
arm                   randconfig-003-20251017    clang-22
arm                   randconfig-004-20251017    clang-22
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251017    clang-20
arm64                 randconfig-001-20251017    clang-22
arm64                 randconfig-002-20251017    clang-22
arm64                 randconfig-003-20251017    clang-22
arm64                 randconfig-003-20251017    gcc-15.1.0
arm64                 randconfig-004-20251017    clang-22
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20251017    gcc-15.1.0
csky                  randconfig-002-20251017    gcc-10.5.0
csky                  randconfig-002-20251017    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251017    clang-22
hexagon               randconfig-001-20251017    gcc-15.1.0
hexagon               randconfig-002-20251017    clang-22
hexagon               randconfig-002-20251017    gcc-15.1.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251017    clang-20
i386        buildonly-randconfig-002-20251017    clang-20
i386        buildonly-randconfig-003-20251017    clang-20
i386        buildonly-randconfig-004-20251017    clang-20
i386        buildonly-randconfig-005-20251017    clang-20
i386        buildonly-randconfig-006-20251017    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251017    clang-20
i386                  randconfig-002-20251017    clang-20
i386                  randconfig-003-20251017    clang-20
i386                  randconfig-004-20251017    clang-20
i386                  randconfig-005-20251017    clang-20
i386                  randconfig-006-20251017    clang-20
i386                  randconfig-007-20251017    clang-20
i386                  randconfig-011-20251017    gcc-12
i386                  randconfig-012-20251017    gcc-12
i386                  randconfig-013-20251017    gcc-12
i386                  randconfig-014-20251017    gcc-12
i386                  randconfig-015-20251017    gcc-12
i386                  randconfig-016-20251017    gcc-12
i386                  randconfig-017-20251017    gcc-12
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251017    gcc-13.4.0
loongarch             randconfig-001-20251017    gcc-15.1.0
loongarch             randconfig-002-20251017    clang-18
loongarch             randconfig-002-20251017    gcc-15.1.0
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
mips                              allnoconfig    gcc-15.1.0
mips                       rbtx49xx_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251017    gcc-15.1.0
nios2                 randconfig-001-20251017    gcc-8.5.0
nios2                 randconfig-002-20251017    gcc-15.1.0
nios2                 randconfig-002-20251017    gcc-8.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                generic-32bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20251017    gcc-12.5.0
parisc                randconfig-001-20251017    gcc-15.1.0
parisc                randconfig-002-20251017    gcc-15.1.0
parisc                randconfig-002-20251017    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ep8248e_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251017    gcc-14.3.0
powerpc               randconfig-001-20251017    gcc-15.1.0
powerpc               randconfig-002-20251017    clang-22
powerpc               randconfig-002-20251017    gcc-15.1.0
powerpc               randconfig-003-20251017    gcc-11.5.0
powerpc               randconfig-003-20251017    gcc-15.1.0
powerpc64             randconfig-001-20251017    clang-20
powerpc64             randconfig-001-20251017    gcc-15.1.0
powerpc64             randconfig-002-20251017    gcc-15.1.0
powerpc64             randconfig-003-20251017    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251017    clang-22
riscv                 randconfig-002-20251017    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251017    clang-22
s390                  randconfig-002-20251017    clang-22
s390                  randconfig-002-20251017    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                ecovec24-romimage_defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                    randconfig-001-20251017    clang-22
sh                    randconfig-001-20251017    gcc-14.3.0
sh                    randconfig-002-20251017    clang-22
sh                    randconfig-002-20251017    gcc-15.1.0
sh                   sh7770_generic_defconfig    gcc-15.1.0
sh                            titan_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251017    clang-22
sparc                 randconfig-001-20251017    gcc-12.5.0
sparc                 randconfig-002-20251017    clang-22
sparc                 randconfig-002-20251017    gcc-8.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251017    clang-22
sparc64               randconfig-001-20251017    gcc-14.3.0
sparc64               randconfig-002-20251017    clang-20
sparc64               randconfig-002-20251017    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251017    clang-22
um                    randconfig-001-20251017    gcc-14
um                    randconfig-002-20251017    clang-22
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251017    clang-20
x86_64      buildonly-randconfig-001-20251017    gcc-14
x86_64      buildonly-randconfig-002-20251017    clang-20
x86_64      buildonly-randconfig-002-20251017    gcc-14
x86_64      buildonly-randconfig-003-20251017    clang-20
x86_64      buildonly-randconfig-004-20251017    clang-20
x86_64      buildonly-randconfig-004-20251017    gcc-14
x86_64      buildonly-randconfig-005-20251017    clang-20
x86_64      buildonly-randconfig-006-20251017    clang-20
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251017    gcc-14
x86_64                randconfig-002-20251017    gcc-14
x86_64                randconfig-003-20251017    gcc-14
x86_64                randconfig-004-20251017    gcc-14
x86_64                randconfig-005-20251017    gcc-14
x86_64                randconfig-006-20251017    gcc-14
x86_64                randconfig-007-20251017    gcc-14
x86_64                randconfig-008-20251017    gcc-14
x86_64                randconfig-071-20251017    clang-20
x86_64                randconfig-072-20251017    clang-20
x86_64                randconfig-073-20251017    clang-20
x86_64                randconfig-074-20251017    clang-20
x86_64                randconfig-075-20251017    clang-20
x86_64                randconfig-076-20251017    clang-20
x86_64                randconfig-077-20251017    clang-20
x86_64                randconfig-078-20251017    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251017    clang-22
xtensa                randconfig-001-20251017    gcc-12.5.0
xtensa                randconfig-002-20251017    clang-22
xtensa                randconfig-002-20251017    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
