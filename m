Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B13C8B9FA82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 15:48:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 654158413D;
	Thu, 25 Sep 2025 13:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id InJo-HfHPHZT; Thu, 25 Sep 2025 13:48:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F30784135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758808117;
	bh=ZhsKdohmle960s2QhELa63PM5H5SF3Z1jv2ewgSIM6Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f03kBHdIvQrNrr9YNdniEEMAxCis3LdI8OPxN4BM0nBZv6Pj8Tj4f9KLawk6kKed8
	 U4Jaha5jsqnln/bvF5i86VCvVQe1TasBexqXFe6PGNHMWt1NdZC2Kn765/vxezsACr
	 4Ap7vHRBU87Dywl4pGubwHwVMHZoCwFmQaIqf0We/ULi3IdmBTIbNvy1FBqO8d8jAj
	 2HnMiSZPI5WPvjAKX7FEM2bGmO+UAjkrIjnDY0P/65BW6NUShPRlVt1S/eqrOX4nUw
	 0Miisjuv+rod7W5nObREAvgHytXgyi3sJfmShXv0RMYxSoGwd5YktkwluHFoYg1WP0
	 axVUKXH1ieFEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F30784135;
	Thu, 25 Sep 2025 13:48:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B14512D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 13:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2138D8412F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 13:48:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AXFn6bzLgWy8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 13:48:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 024F48225B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 024F48225B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 024F48225B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 13:48:33 +0000 (UTC)
X-CSE-ConnectionGUID: UC3ZBImtQC2nMxtx0wcDiw==
X-CSE-MsgGUID: OcApUpKvS8GeH/6xfjQyTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64934577"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64934577"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 06:48:33 -0700
X-CSE-ConnectionGUID: 4yjIYtV1Sny7gKaH3k1jdQ==
X-CSE-MsgGUID: WzpazFW4QOilQzw8hZYjmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="181727564"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by fmviesa005.fm.intel.com with ESMTP; 25 Sep 2025 06:48:31 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v1mKj-0005Gr-1I
 for intel-wired-lan@lists.osuosl.org; Thu, 25 Sep 2025 13:48:29 +0000
Date: Thu, 25 Sep 2025 21:47:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509252135.2uV2tfKV-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758808115; x=1790344115;
 h=date:from:to:subject:message-id;
 bh=ZrYTf3VD2nH78zbTQEdIFZxe6eeYb4jknVoQKGoPd60=;
 b=fHANBwnOruK8ZsdP6uAbYCoX0xOZXmHMtfEx+KaIW/wtmdkAfMyR6zJR
 2dWbXo5P8JKJImoVfMzhmFO0zEfd6hDPBmhsysC+ZbICLQpusQ7lEIIJL
 KsTzK9rUu64w78/rbNJjPddrmcRQA1TXAZUlzxtuMBEDXAVGjjnv8EmP/
 crWzScenPRCykGRYSVnsiiirCxF5rXdZgbGOtzIZvX8YDwirRUIfYGHOO
 Ft9yQsz0v3IriN67lvZMmE6H1LzMXPvpPNGEdW4YznW5mGH+RhtS5i4Ct
 KA/LEuJFyQ1BOSS+hLYTdJWskAn/qKwwmSlNbbf1j0WIVr5T1+y9VrLW6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fHANBwnO
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 dc1dea796b197aba2c3cae25bfef45f4b3ad46fe
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
branch HEAD: dc1dea796b197aba2c3cae25bfef45f4b3ad46fe  tcp: Remove stale locking comment for TFO.

elapsed time: 2093m

configs tested: 228
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20250925    gcc-13.4.0
arc                   randconfig-002-20250925    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                       aspeed_g4_defconfig    clang-22
arm                                 defconfig    clang-19
arm                   randconfig-001-20250925    gcc-11.5.0
arm                   randconfig-002-20250925    gcc-10.5.0
arm                   randconfig-003-20250925    gcc-8.5.0
arm                   randconfig-004-20250925    gcc-14.3.0
arm                         s3c6400_defconfig    gcc-15.1.0
arm                           sama5_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20250925    gcc-11.5.0
arm64                 randconfig-002-20250925    gcc-15.1.0
arm64                 randconfig-003-20250925    clang-19
arm64                 randconfig-004-20250925    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20250925    clang-22
csky                  randconfig-001-20250925    gcc-14.3.0
csky                  randconfig-002-20250925    clang-22
csky                  randconfig-002-20250925    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20250925    clang-22
hexagon               randconfig-002-20250925    clang-22
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-14
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250925    clang-20
i386        buildonly-randconfig-001-20250925    gcc-14
i386        buildonly-randconfig-002-20250925    clang-20
i386        buildonly-randconfig-002-20250925    gcc-14
i386        buildonly-randconfig-003-20250925    gcc-14
i386        buildonly-randconfig-004-20250925    gcc-14
i386        buildonly-randconfig-005-20250925    clang-20
i386        buildonly-randconfig-005-20250925    gcc-14
i386        buildonly-randconfig-006-20250925    clang-20
i386        buildonly-randconfig-006-20250925    gcc-14
i386                                defconfig    clang-20
i386                  randconfig-001-20250925    gcc-14
i386                  randconfig-002-20250925    gcc-14
i386                  randconfig-003-20250925    gcc-14
i386                  randconfig-004-20250925    gcc-14
i386                  randconfig-005-20250925    gcc-14
i386                  randconfig-006-20250925    gcc-14
i386                  randconfig-007-20250925    gcc-14
i386                  randconfig-011-20250925    clang-20
i386                  randconfig-012-20250925    clang-20
i386                  randconfig-013-20250925    clang-20
i386                  randconfig-014-20250925    clang-20
i386                  randconfig-015-20250925    clang-20
i386                  randconfig-016-20250925    clang-20
i386                  randconfig-017-20250925    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20250925    clang-18
loongarch             randconfig-001-20250925    clang-22
loongarch             randconfig-002-20250925    clang-22
loongarch             randconfig-002-20250925    gcc-12.5.0
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
mips                           ip27_defconfig    gcc-15.1.0
mips                           ip30_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250925    clang-22
nios2                 randconfig-001-20250925    gcc-8.5.0
nios2                 randconfig-002-20250925    clang-22
nios2                 randconfig-002-20250925    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           alldefconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250925    clang-22
parisc                randconfig-001-20250925    gcc-8.5.0
parisc                randconfig-002-20250925    clang-22
parisc                randconfig-002-20250925    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                          g5_defconfig    gcc-15.1.0
powerpc                     mpc83xx_defconfig    clang-22
powerpc                  mpc866_ads_defconfig    clang-22
powerpc                      pmac32_defconfig    clang-22
powerpc                       ppc64_defconfig    clang-22
powerpc               randconfig-001-20250925    clang-22
powerpc               randconfig-002-20250925    clang-22
powerpc               randconfig-002-20250925    gcc-8.5.0
powerpc               randconfig-003-20250925    clang-22
powerpc               randconfig-003-20250925    gcc-8.5.0
powerpc64             randconfig-001-20250925    clang-22
powerpc64             randconfig-002-20250925    clang-22
powerpc64             randconfig-002-20250925    gcc-14.3.0
powerpc64             randconfig-003-20250925    clang-22
powerpc64             randconfig-003-20250925    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20250925    clang-22
riscv                 randconfig-001-20250925    gcc-12.5.0
riscv                 randconfig-002-20250925    clang-22
riscv                 randconfig-002-20250925    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20250925    gcc-12.5.0
s390                  randconfig-001-20250925    gcc-15.1.0
s390                  randconfig-002-20250925    gcc-12.5.0
s390                  randconfig-002-20250925    gcc-13.4.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                        apsh4ad0a_defconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                        dreamcast_defconfig    clang-22
sh                             espt_defconfig    gcc-15.1.0
sh                    randconfig-001-20250925    gcc-12.5.0
sh                    randconfig-001-20250925    gcc-15.1.0
sh                    randconfig-002-20250925    gcc-12.5.0
sh                    randconfig-002-20250925    gcc-13.4.0
sh                      rts7751r2d1_defconfig    clang-22
sh                           se7206_defconfig    clang-22
sh                           se7343_defconfig    gcc-15.1.0
sparc                            alldefconfig    clang-22
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250925    gcc-12.5.0
sparc                 randconfig-001-20250925    gcc-15.1.0
sparc                 randconfig-002-20250925    gcc-12.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20250925    gcc-10.5.0
sparc64               randconfig-001-20250925    gcc-12.5.0
sparc64               randconfig-002-20250925    gcc-10.5.0
sparc64               randconfig-002-20250925    gcc-12.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20250925    gcc-12.5.0
um                    randconfig-001-20250925    gcc-14
um                    randconfig-002-20250925    clang-22
um                    randconfig-002-20250925    gcc-12.5.0
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250925    clang-20
x86_64      buildonly-randconfig-002-20250925    gcc-14
x86_64      buildonly-randconfig-003-20250925    gcc-14
x86_64      buildonly-randconfig-004-20250925    clang-20
x86_64      buildonly-randconfig-005-20250925    clang-20
x86_64      buildonly-randconfig-006-20250925    gcc-14
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250925    gcc-14
x86_64                randconfig-002-20250925    gcc-14
x86_64                randconfig-003-20250925    gcc-14
x86_64                randconfig-004-20250925    gcc-14
x86_64                randconfig-005-20250925    gcc-14
x86_64                randconfig-006-20250925    gcc-14
x86_64                randconfig-007-20250925    gcc-14
x86_64                randconfig-008-20250925    gcc-14
x86_64                randconfig-071-20250925    gcc-14
x86_64                randconfig-072-20250925    gcc-14
x86_64                randconfig-073-20250925    gcc-14
x86_64                randconfig-074-20250925    gcc-14
x86_64                randconfig-075-20250925    gcc-14
x86_64                randconfig-076-20250925    gcc-14
x86_64                randconfig-077-20250925    gcc-14
x86_64                randconfig-078-20250925    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    gcc-15.1.0
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250925    gcc-12.5.0
xtensa                randconfig-002-20250925    gcc-11.5.0
xtensa                randconfig-002-20250925    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
