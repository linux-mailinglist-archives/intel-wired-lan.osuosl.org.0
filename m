Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7D8CA1FB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 00:42:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CFC840445;
	Wed,  3 Dec 2025 23:42:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LI_LafN2DOVp; Wed,  3 Dec 2025 23:42:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2DCC4056C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764805364;
	bh=VGv0by1D1eE/uQxzHwCr1JGJcFmh80ROAX3cvEsTceQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ev1iVYdyWFMG6OWJKDgDDbaq8PQ7Twl68kQLJuhxs1KyglCTxIlAwi+W1ITujlxSV
	 tVFsLyvkzydqvOJz4mGF1YGlrXR2km2hXdJQlIcYcZp3xhyopa74bR1v1O8l+hwh2P
	 kRDeRT2n8RKHLztP8lpc16mEpU7NgheUBEPvOG84izubuGqfJYKf03RUPohS6zXxh/
	 iFRIcvX0i0KvhLNn3lr1VTEp2CUUQ+O9y6JjPFw/d6UH8y+7NnNxb3BlI0QP6oaF3/
	 OmkjAzKUikBRvt22mqIQ29usYAp2iHrNSxoQR+C/ReLVx5xIwgwZ0OTE+kb9/Sjaa8
	 ZhXK3l4s8obIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2DCC4056C;
	Wed,  3 Dec 2025 23:42:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B7A0E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 23:42:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7856D83E6C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 23:42:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6RcpSp_Fc7_5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 23:42:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 46A1F83E59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46A1F83E59
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46A1F83E59
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 23:42:40 +0000 (UTC)
X-CSE-ConnectionGUID: U2RfjjAeQ+O3KsrQtWgrqQ==
X-CSE-MsgGUID: qqEULNf3QzC2rx7wgKrktw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65814988"
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; d="scan'208";a="65814988"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 15:42:40 -0800
X-CSE-ConnectionGUID: 5i3xe6vvSP2xfsiCzthIhA==
X-CSE-MsgGUID: kb+43w+vQTuwtIWFKcQKXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; d="scan'208";a="194734953"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 03 Dec 2025 15:42:40 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vQwUX-00000000DIA-2XzN
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Dec 2025 23:42:37 +0000
Date: Thu, 04 Dec 2025 07:41:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202512040753.EGXClw7U-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764805361; x=1796341361;
 h=date:from:to:subject:message-id;
 bh=VY8QgBiszG5257Dd8KYcYL+4kKTqsa9p4fVuENEREaw=;
 b=kCYVxZgrOCdLxhB8sut1fhZSgN+Gv9Ry8eB3yBqTAMtiMAmVilapkCwk
 1g4RrNoCLVnj6gQzKnKpQhwHSCe7op9f4hr8MQYGLMfJzZbSE1IdNxrtI
 1vjxuS/IhZEwHo//j1MlJISe5fG5rWcRUUjf1Vp3HzW48OkMAFUd+xSE3
 140+ubGXXbhrw6jM/6yDV1J+gsfaf1M0DQOIgzx6U0gXCtDwOIL+bOmmq
 L5BD/tnKOIOy7MNgLL2eAO2JwfnKlRUU9ins3KCvijxVA8s2XNv7iFCCe
 sX+Bdxl7pmho0qb5ION45nXzxiKg2bQbQWZKz2MTkMTmer/hqT0O2EIsN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kCYVxZgr
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 9954464d737dd12f12b274d3da46397e3656f079
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 9954464d737dd12f12b274d3da46397e3656f079  net: page_pool: sanitise allocation order

elapsed time: 1667m

configs tested: 243
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-22
arc                          axs101_defconfig    clang-22
arc                   randconfig-001-20251203    gcc-9.5.0
arc                   randconfig-001-20251204    gcc-10.5.0
arc                   randconfig-002-20251203    gcc-11.5.0
arc                   randconfig-002-20251204    gcc-10.5.0
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.1.0
arm                           h3600_defconfig    clang-22
arm                   randconfig-001-20251203    gcc-8.5.0
arm                   randconfig-001-20251204    gcc-10.5.0
arm                   randconfig-002-20251203    clang-22
arm                   randconfig-002-20251204    gcc-10.5.0
arm                   randconfig-003-20251203    clang-22
arm                   randconfig-003-20251204    gcc-10.5.0
arm                   randconfig-004-20251203    clang-22
arm                   randconfig-004-20251204    gcc-10.5.0
arm64                            allmodconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251204    clang-22
arm64                 randconfig-001-20251204    gcc-14.3.0
arm64                 randconfig-002-20251204    gcc-14.3.0
arm64                 randconfig-003-20251204    clang-16
arm64                 randconfig-003-20251204    gcc-14.3.0
arm64                 randconfig-004-20251204    clang-22
arm64                 randconfig-004-20251204    gcc-14.3.0
csky                             allmodconfig    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251204    gcc-11.5.0
csky                  randconfig-001-20251204    gcc-14.3.0
csky                  randconfig-002-20251204    gcc-14.3.0
csky                  randconfig-002-20251204    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.1.0
hexagon                           allnoconfig    gcc-15.1.0
hexagon               randconfig-001-20251203    clang-22
hexagon               randconfig-001-20251204    gcc-15.1.0
hexagon               randconfig-002-20251203    clang-20
hexagon               randconfig-002-20251204    gcc-15.1.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-15.1.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251203    gcc-14
i386        buildonly-randconfig-001-20251204    clang-20
i386        buildonly-randconfig-002-20251203    gcc-14
i386        buildonly-randconfig-002-20251204    clang-20
i386        buildonly-randconfig-003-20251203    gcc-14
i386        buildonly-randconfig-003-20251204    clang-20
i386        buildonly-randconfig-004-20251203    clang-20
i386        buildonly-randconfig-004-20251204    clang-20
i386        buildonly-randconfig-005-20251203    clang-20
i386        buildonly-randconfig-005-20251204    clang-20
i386        buildonly-randconfig-006-20251203    gcc-14
i386        buildonly-randconfig-006-20251204    clang-20
i386                  randconfig-001-20251203    clang-20
i386                  randconfig-002-20251203    gcc-14
i386                  randconfig-003-20251203    clang-20
i386                  randconfig-004-20251203    clang-20
i386                  randconfig-005-20251203    gcc-14
i386                  randconfig-006-20251203    gcc-14
i386                  randconfig-007-20251203    gcc-14
i386                  randconfig-011-20251203    clang-20
i386                  randconfig-011-20251204    gcc-14
i386                  randconfig-012-20251203    gcc-14
i386                  randconfig-012-20251204    gcc-14
i386                  randconfig-013-20251203    clang-20
i386                  randconfig-013-20251204    gcc-14
i386                  randconfig-014-20251203    gcc-14
i386                  randconfig-014-20251204    gcc-14
i386                  randconfig-015-20251203    gcc-13
i386                  randconfig-015-20251204    gcc-14
i386                  randconfig-016-20251203    clang-20
i386                  randconfig-016-20251204    gcc-14
i386                  randconfig-017-20251203    clang-20
i386                  randconfig-017-20251204    gcc-14
loongarch                        allmodconfig    clang-22
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251203    gcc-15.1.0
loongarch             randconfig-001-20251204    gcc-15.1.0
loongarch             randconfig-002-20251203    gcc-14.3.0
loongarch             randconfig-002-20251204    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                             allyesconfig    gcc-15.1.0
nios2                            allmodconfig    clang-22
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20251203    gcc-9.5.0
nios2                 randconfig-001-20251204    gcc-15.1.0
nios2                 randconfig-002-20251203    gcc-8.5.0
nios2                 randconfig-002-20251204    gcc-15.1.0
openrisc                         allmodconfig    clang-22
openrisc                         allmodconfig    gcc-15.1.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           alldefconfig    clang-22
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251203    gcc-12.5.0
parisc                randconfig-001-20251204    clang-22
parisc                randconfig-002-20251203    gcc-8.5.0
parisc                randconfig-002-20251204    clang-22
parisc64                            defconfig    clang-19
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20251203    gcc-8.5.0
powerpc               randconfig-001-20251204    clang-22
powerpc               randconfig-002-20251203    clang-22
powerpc               randconfig-002-20251204    clang-22
powerpc64             randconfig-001-20251203    gcc-8.5.0
powerpc64             randconfig-001-20251204    clang-22
powerpc64             randconfig-002-20251203    clang-22
powerpc64             randconfig-002-20251204    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    gcc-15.1.0
riscv                    nommu_k210_defconfig    clang-22
riscv             nommu_k210_sdcard_defconfig    clang-22
riscv                 randconfig-001-20251203    gcc-14.3.0
riscv                 randconfig-001-20251204    clang-22
riscv                 randconfig-002-20251203    clang-22
riscv                 randconfig-002-20251204    clang-22
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-15.1.0
s390                  randconfig-001-20251203    clang-22
s390                  randconfig-001-20251204    clang-22
s390                  randconfig-002-20251203    clang-22
s390                  randconfig-002-20251204    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    clang-22
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251203    gcc-15.1.0
sh                    randconfig-001-20251204    clang-22
sh                    randconfig-002-20251203    gcc-13.4.0
sh                    randconfig-002-20251204    clang-22
sh                          rsk7269_defconfig    clang-22
sparc                             allnoconfig    clang-22
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251204    gcc-8.5.0
sparc                 randconfig-002-20251204    gcc-8.5.0
sparc64                          allmodconfig    clang-22
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251204    gcc-13.4.0
sparc64               randconfig-002-20251204    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.1.0
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251204    clang-17
um                    randconfig-002-20251204    clang-22
um                           x86_64_defconfig    clang-22
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-22
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251203    clang-20
x86_64      buildonly-randconfig-001-20251204    clang-20
x86_64      buildonly-randconfig-002-20251203    clang-20
x86_64      buildonly-randconfig-002-20251204    clang-20
x86_64      buildonly-randconfig-003-20251203    clang-20
x86_64      buildonly-randconfig-003-20251204    clang-20
x86_64      buildonly-randconfig-004-20251203    gcc-14
x86_64      buildonly-randconfig-004-20251204    clang-20
x86_64      buildonly-randconfig-005-20251203    clang-20
x86_64      buildonly-randconfig-005-20251204    clang-20
x86_64      buildonly-randconfig-006-20251203    clang-20
x86_64      buildonly-randconfig-006-20251204    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251203    gcc-14
x86_64                randconfig-001-20251204    clang-20
x86_64                randconfig-002-20251203    gcc-14
x86_64                randconfig-002-20251204    clang-20
x86_64                randconfig-003-20251203    clang-20
x86_64                randconfig-003-20251204    clang-20
x86_64                randconfig-004-20251203    clang-20
x86_64                randconfig-004-20251204    clang-20
x86_64                randconfig-005-20251203    gcc-14
x86_64                randconfig-005-20251204    clang-20
x86_64                randconfig-006-20251203    gcc-14
x86_64                randconfig-006-20251204    clang-20
x86_64                randconfig-071-20251203    clang-20
x86_64                randconfig-071-20251204    clang-20
x86_64                randconfig-072-20251203    gcc-14
x86_64                randconfig-072-20251204    clang-20
x86_64                randconfig-073-20251203    clang-20
x86_64                randconfig-073-20251204    clang-20
x86_64                randconfig-074-20251203    gcc-14
x86_64                randconfig-074-20251204    clang-20
x86_64                randconfig-075-20251203    clang-20
x86_64                randconfig-075-20251204    clang-20
x86_64                randconfig-076-20251203    clang-20
x86_64                randconfig-076-20251204    clang-20
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
xtensa                           allyesconfig    gcc-15.1.0
xtensa                  nommu_kc705_defconfig    clang-22
xtensa                randconfig-001-20251204    gcc-8.5.0
xtensa                randconfig-002-20251204    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
