Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DA3A14065
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 18:11:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73BA240B43;
	Thu, 16 Jan 2025 17:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Umba5xMFP4ss; Thu, 16 Jan 2025 17:11:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3D4F4137A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737047496;
	bh=2DLFKSogJ5s9cIKsT4sscf2L69J5WxXepdawkUX3IAQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=btzWyEMR3uCuVKfCprBcgKrAhMA4fHIMRGh7okk1mYIIAWZDNU6+wc9ncYBXTO3pR
	 esjaHBoDANsaImT3JXLAbBxXaZB1FJM8RZ8+qEMUym8HPC6lqz2dE+G2+3R0tI1V9u
	 y/+AEX4Poc0/7Y6TYpb6Nr7Hy4Xt9Bmv/+2GDIF8nN9gUzvsbgdBiu/tiV4KCJM73o
	 wleAUHwY9+V9K7gPXM2Pp781jiTXt65vsJyhIAQtkiVkrVc5OYqns5x3MUk1EfdCYr
	 OmM3MnPiBnMVScSVCDKtsUoPSU13zsDXGHdFREIMeSRkXfd5LW6snRtB5ahW/dAm2o
	 u9zOJmiJbmV6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3D4F4137A;
	Thu, 16 Jan 2025 17:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBF25B8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:11:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD72884C15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:11:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eq34ObjT6_86 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 17:11:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC56B84C13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC56B84C13
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC56B84C13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:11:33 +0000 (UTC)
X-CSE-ConnectionGUID: r/4D06jtReCXuxilE8rnnA==
X-CSE-MsgGUID: 4e0wTPvUQBuXVm4TFEm8Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41385829"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="41385829"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:11:33 -0800
X-CSE-ConnectionGUID: hDIAlRDdQOabk9yQonnTkw==
X-CSE-MsgGUID: JDHigPWDS4iDrtdaeK0jJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="110554321"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 16 Jan 2025 09:11:32 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tYTOz-000SCC-2n
 for intel-wired-lan@lists.osuosl.org; Thu, 16 Jan 2025 17:11:29 +0000
Date: Fri, 17 Jan 2025 01:10:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501170150.m1qrVS2f-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737047494; x=1768583494;
 h=date:from:to:subject:message-id;
 bh=6BGJ7d4aj8GvN0aTuRxThjqvZojAVDDeBcg9w4FebbQ=;
 b=ULoCF6cLQdm0wIawmS6dY4aeeStDdNGWw/3m0P76coY+opLzufyDfa3H
 DU3TJNAr/HD0ycElKNcv1PJtqgZIRKNY+fbIgVamspDjuU3Um8U3eEJ1l
 25LT/UkHq9vZqKcNR8RP5w0Ifj9wunSMeR3sucoinp9C8nz7xn04sbqHH
 TXWjKEs5OSY8j6FvA5ZFUdnF8CtRU9+cP2EBZbiEqQw6y+6yXdQfH0gCq
 9vx/jm0/tIoMJU/1dVodDSfsAt8u9uOkbEYICmBufd0OWh/WixfPKOh91
 7c4dLPdW6JedZXov5OTARqNam5OAZXX41OQkyOIVfJLH+oELvLW4RB5BZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ULoCF6cL
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 7a1723d3b230765dc025401db8308937e4c4fb13
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
branch HEAD: 7a1723d3b230765dc025401db8308937e4c4fb13  Merge branch 'net-stmmac-further-eee-cleanups-and-one-fix'

elapsed time: 2237m

configs tested: 143
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250116    gcc-13.2.0
arc                   randconfig-002-20250116    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20250116    gcc-14.2.0
arm                   randconfig-002-20250116    clang-15
arm                   randconfig-003-20250116    gcc-14.2.0
arm                   randconfig-004-20250116    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250116    gcc-14.2.0
arm64                 randconfig-002-20250116    gcc-14.2.0
arm64                 randconfig-003-20250116    clang-15
arm64                 randconfig-004-20250116    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250116    gcc-14.2.0
csky                  randconfig-002-20250116    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250116    clang-20
hexagon               randconfig-002-20250116    clang-20
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250116    clang-19
i386        buildonly-randconfig-002-20250116    clang-19
i386        buildonly-randconfig-003-20250116    clang-19
i386        buildonly-randconfig-004-20250116    clang-19
i386        buildonly-randconfig-005-20250116    clang-19
i386        buildonly-randconfig-006-20250116    clang-19
i386                                defconfig    clang-19
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250116    gcc-14.2.0
loongarch             randconfig-002-20250116    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250116    gcc-14.2.0
nios2                 randconfig-002-20250116    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250116    gcc-14.2.0
parisc                randconfig-002-20250116    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc               randconfig-001-20250116    clang-20
powerpc               randconfig-002-20250116    gcc-14.2.0
powerpc               randconfig-003-20250116    clang-20
powerpc64             randconfig-001-20250116    clang-19
powerpc64             randconfig-002-20250116    clang-20
powerpc64             randconfig-003-20250116    clang-15
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250116    gcc-14.2.0
riscv                 randconfig-002-20250116    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250116    gcc-14.2.0
s390                  randconfig-002-20250116    clang-18
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250116    gcc-14.2.0
sh                    randconfig-002-20250116    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250116    gcc-14.2.0
sparc                 randconfig-002-20250116    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250116    gcc-14.2.0
sparc64               randconfig-002-20250116    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250116    clang-19
um                    randconfig-002-20250116    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250116    gcc-12
x86_64      buildonly-randconfig-002-20250116    gcc-12
x86_64      buildonly-randconfig-003-20250116    gcc-12
x86_64      buildonly-randconfig-004-20250116    clang-19
x86_64      buildonly-randconfig-005-20250116    clang-19
x86_64      buildonly-randconfig-006-20250116    clang-19
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250116    gcc-14.2.0
xtensa                randconfig-002-20250116    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
