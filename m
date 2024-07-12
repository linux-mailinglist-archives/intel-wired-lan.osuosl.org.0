Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9832D92FD07
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 16:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 684D9410F8;
	Fri, 12 Jul 2024 14:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dJfix9S1VbDr; Fri, 12 Jul 2024 14:57:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D148409FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720796255;
	bh=74th5w7Zn0Waj8FUgn5HeuqUeodXM/Bgd6evUUhlMMQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ewV22pK0mgN18AFg9CSAMlMXPswgBJKNTA6PnaUlIe3Plrt4sJNB36sw52kC2hPw5
	 4ZlK5fOgW4fAWwIiTYHYj5/n07QZiHXesSkJZaWkVX+GArEIVzA9G18xqAu8FaslN9
	 6XaY60kxpO4fGIpun+tAWTHiopx6PF+PFJy86HHlsyeVIHEQIwBrs6ZISU1Fmu6/ar
	 FcBW321NYvB79qP3tCRzuwt/XPfXHOsAUaieIx2XQ4yBm4QsGIhbhaj41vkujJCIdj
	 Ycgf3T6E1S57Zid3KnJ+nJnEUfDkocBNNpKeRf8gKHzzHcSs5xghejcVAW4R4zroKY
	 GneyVVRePNqJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D148409FB;
	Fri, 12 Jul 2024 14:57:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7AE1BF424
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 14:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2CC78469E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 14:57:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A4a3kXmU4og0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 14:57:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0579E8469D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0579E8469D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0579E8469D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 14:57:30 +0000 (UTC)
X-CSE-ConnectionGUID: BOcq8XVlRVyxGXoS1okO8g==
X-CSE-MsgGUID: n0ieSBeNRvKvEDacTWhzWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="17949078"
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="17949078"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 07:57:29 -0700
X-CSE-ConnectionGUID: E6ZKtICbSseu0/Ey4JpfTA==
X-CSE-MsgGUID: GvUgFBqXRa+66xQG6FajTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="79632397"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 12 Jul 2024 07:57:29 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sSHiA-000asl-0x
 for intel-wired-lan@lists.osuosl.org; Fri, 12 Jul 2024 14:57:26 +0000
Date: Fri, 12 Jul 2024 22:56:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407122230.umOsht31-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720796251; x=1752332251;
 h=date:from:to:subject:message-id;
 bh=1CBbhnG99be0gQowmHGoVYObPxhdPTzmO7zfPRAyLUQ=;
 b=mGxReKnyUYMQzwNSMP9YsA6oUSL0HtwWkbBgtmsWruAD8rSQY3Rn5CYh
 u6+A2mlw4MZnhzA84A1BhiuKTl3d2Up7ACTO0jNosLTgBzCIGYmMew3K0
 pXC/J4UXx4w79Ye2idMfkevd+NehM1P2Do/WJZZCXQ7CPpXSmPvSbCvbg
 yrBA8ViF8xkjGLFkzjvTamvD//0aJkWdD/YqLyx3C75NcvGzT28PqSgKm
 99a5pbS5S2hkD6UWx90gP9ge0Sdz1SjM3qD6xm64CohpzWKBUb9e4jyLA
 mjzNIwvhygpIVUMP/rCU3AF6g0nHl93fEfg/r8jsLmNpoAt+ZWx8S9dED
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mGxReKny
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 1712c9ee36d1f7b00e89bcd9743c18ba00a47f42
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 1712c9ee36d1f7b00e89bcd9743c18ba00a47f42  igc: Remove the internal 'eee_advert' field

elapsed time: 1232m

configs tested: 137
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240712   gcc-13.2.0
arc                   randconfig-002-20240712   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-14.1.0
arm                   randconfig-001-20240712   clang-19
arm                   randconfig-002-20240712   clang-19
arm                   randconfig-003-20240712   gcc-14.1.0
arm                   randconfig-004-20240712   clang-15
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240712   gcc-14.1.0
arm64                 randconfig-002-20240712   gcc-14.1.0
arm64                 randconfig-003-20240712   clang-19
arm64                 randconfig-004-20240712   clang-17
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240712   gcc-14.1.0
csky                  randconfig-002-20240712   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240712   clang-14
hexagon               randconfig-002-20240712   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240712   gcc-9
i386         buildonly-randconfig-002-20240712   clang-18
i386         buildonly-randconfig-003-20240712   clang-18
i386         buildonly-randconfig-004-20240712   clang-18
i386         buildonly-randconfig-005-20240712   gcc-11
i386         buildonly-randconfig-006-20240712   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240712   clang-18
i386                  randconfig-002-20240712   clang-18
i386                  randconfig-003-20240712   clang-18
i386                  randconfig-004-20240712   clang-18
i386                  randconfig-005-20240712   clang-18
i386                  randconfig-006-20240712   clang-18
i386                  randconfig-011-20240712   clang-18
i386                  randconfig-012-20240712   clang-18
i386                  randconfig-013-20240712   clang-18
i386                  randconfig-014-20240712   gcc-10
i386                  randconfig-015-20240712   gcc-10
i386                  randconfig-016-20240712   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240712   gcc-14.1.0
loongarch             randconfig-002-20240712   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240712   gcc-14.1.0
nios2                 randconfig-002-20240712   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240712   gcc-14.1.0
parisc                randconfig-002-20240712   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc               randconfig-001-20240712   clang-15
powerpc               randconfig-002-20240712   clang-19
powerpc               randconfig-003-20240712   clang-19
powerpc64             randconfig-001-20240712   clang-19
powerpc64             randconfig-002-20240712   clang-19
powerpc64             randconfig-003-20240712   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240712   clang-19
riscv                 randconfig-002-20240712   gcc-14.1.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240712   gcc-14.1.0
s390                  randconfig-002-20240712   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240712   gcc-14.1.0
sh                    randconfig-002-20240712   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240712   clang-18
x86_64       buildonly-randconfig-002-20240712   clang-18
x86_64       buildonly-randconfig-003-20240712   clang-18
x86_64       buildonly-randconfig-004-20240712   clang-18
x86_64       buildonly-randconfig-005-20240712   clang-18
x86_64       buildonly-randconfig-006-20240712   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240712   gcc-12
x86_64                randconfig-002-20240712   gcc-13
x86_64                randconfig-003-20240712   gcc-12
x86_64                randconfig-004-20240712   clang-18
x86_64                randconfig-005-20240712   gcc-13
x86_64                randconfig-006-20240712   clang-18
x86_64                randconfig-011-20240712   clang-18
x86_64                randconfig-012-20240712   clang-18
x86_64                randconfig-013-20240712   clang-18
x86_64                randconfig-014-20240712   gcc-13
x86_64                randconfig-015-20240712   clang-18
x86_64                randconfig-016-20240712   clang-18
x86_64                randconfig-071-20240712   gcc-13
x86_64                randconfig-072-20240712   gcc-11
x86_64                randconfig-073-20240712   clang-18
x86_64                randconfig-074-20240712   gcc-9
x86_64                randconfig-075-20240712   clang-18
x86_64                randconfig-076-20240712   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
