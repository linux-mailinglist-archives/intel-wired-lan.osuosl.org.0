Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56499966DE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 12:17:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BCA540BFE;
	Wed,  9 Oct 2024 10:17:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EtuK29OCa9N1; Wed,  9 Oct 2024 10:17:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B18D840C1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728469030;
	bh=LFNkyn3NV1DKHc+qiTxI5UfN2QWrpp56YDpWjYH2zzs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vmmx+lG5gwlAZa/o+c8Y9y+2+DnujNPqirCQi24HG6zqNyOB3bDxbvFuln6erNH8z
	 jSvI9Wj6b4Hwvy/1/ez36jrC8EpwGdkpcz6gu8zUPFaZTXZEZEBobHVOdcz8Hxr2lx
	 Vq+NJS7r/z2qXAnRwcDUwCdWvoy8S5+HDvuAB+UwegdHfHUYlA9AwySeFnrc+F2Mi8
	 xx8AtCM06zMXNLHeKGoiuPu3dmJBdUPsbm/TypWXZtJuQUToIwc7K78/+cBF5VoMYP
	 tqc3apsFapsQtF5QeQWmC1CP/xgYYMqAvxnKI+RC1l1VOVuqahaQuYH0S6+8XTmr2F
	 vO/shyJO1cRtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B18D840C1F;
	Wed,  9 Oct 2024 10:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31B471BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68F63608C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:16:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yb49Vt-0suPJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 10:16:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36CE06059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36CE06059E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36CE06059E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:16:48 +0000 (UTC)
X-CSE-ConnectionGUID: ZDkmI9UgT3WymFfh2Afklw==
X-CSE-MsgGUID: bsQbmmuPSqeEENv/sTZU5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27637852"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27637852"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:16:48 -0700
X-CSE-ConnectionGUID: dVOuUpg0Rp2E+A3iFCioew==
X-CSE-MsgGUID: /CBz4+PgTGebUydp+Y8SqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76161493"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 09 Oct 2024 03:16:47 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1syTkL-00096A-03
 for intel-wired-lan@lists.osuosl.org; Wed, 09 Oct 2024 10:16:45 +0000
Date: Wed, 09 Oct 2024 18:16:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410091829.W4H3ArBG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728469009; x=1760005009;
 h=date:from:to:subject:message-id;
 bh=kRPZL43Fbtpqke0TOh0aTS/OY3/5bDp6x34U8qWpQZg=;
 b=Aye+26LFx4jAWIj3zaN9IHWLXU0rGvQDhTvzHL+pueU2SfzVVR1T7xHq
 xuJD2TFTGRCsST7f05BA7ij3wc6wfpNFp72yFr37oBNzY9smSsReHdE/j
 OMN88j6HZgfaWLNBWrosILgP9auqPZs21c475f2Qj2CbFBvDd9XhU64cp
 ZY6PPKskN4t9hzipylEeMx2HRF9XjO2vRolTYCQKtZzJn111as62VGfXF
 wtIlUZ4304rIttGpV8g6Q7Hir0Y7j3aXrz4aC3MLbgvf5H/uVz7ICgylI
 MOCGnrRlPLI8ABL30UvjgnKOiXdBM/zi5z/PGBpunhKSjZtnOXIQXABOX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Aye+26LF
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 1fd9e4f257827d939cc627541f12fc4bdd979eb1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 1fd9e4f257827d939cc627541f12fc4bdd979eb1  selftests: make kselftest-clean remove libynl outputs

elapsed time: 1005m

configs tested: 177
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                   randconfig-001-20241009    gcc-14.1.0
arc                   randconfig-002-20241009    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                       aspeed_g4_defconfig    clang-14
arm                                 defconfig    gcc-14.1.0
arm                          gemini_defconfig    clang-14
arm                          pxa910_defconfig    clang-14
arm                   randconfig-001-20241009    gcc-14.1.0
arm                   randconfig-002-20241009    gcc-14.1.0
arm                   randconfig-003-20241009    gcc-14.1.0
arm                   randconfig-004-20241009    gcc-14.1.0
arm                         wpcm450_defconfig    clang-14
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20241009    gcc-14.1.0
arm64                 randconfig-002-20241009    gcc-14.1.0
arm64                 randconfig-003-20241009    gcc-14.1.0
arm64                 randconfig-004-20241009    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    clang-14
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20241009    gcc-14.1.0
csky                  randconfig-002-20241009    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20241009    gcc-14.1.0
hexagon               randconfig-002-20241009    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20241009    clang-18
i386        buildonly-randconfig-002-20241009    clang-18
i386        buildonly-randconfig-003-20241009    clang-18
i386        buildonly-randconfig-004-20241009    clang-18
i386        buildonly-randconfig-005-20241009    clang-18
i386        buildonly-randconfig-006-20241009    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241009    clang-18
i386                  randconfig-002-20241009    clang-18
i386                  randconfig-003-20241009    clang-18
i386                  randconfig-004-20241009    clang-18
i386                  randconfig-005-20241009    clang-18
i386                  randconfig-006-20241009    clang-18
i386                  randconfig-011-20241009    clang-18
i386                  randconfig-012-20241009    clang-18
i386                  randconfig-013-20241009    clang-18
i386                  randconfig-014-20241009    clang-18
i386                  randconfig-015-20241009    clang-18
i386                  randconfig-016-20241009    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20241009    gcc-14.1.0
loongarch             randconfig-002-20241009    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                            q40_defconfig    clang-14
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                     decstation_defconfig    clang-14
mips                      maltaaprp_defconfig    clang-14
nios2                         10m50_defconfig    clang-14
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20241009    gcc-14.1.0
nios2                 randconfig-002-20241009    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241009    gcc-14.1.0
parisc                randconfig-002-20241009    gcc-14.1.0
parisc64                            defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    gcc-14.1.0
powerpc                        fsp2_defconfig    clang-14
powerpc                 mpc832x_rdb_defconfig    clang-14
powerpc                      pcm030_defconfig    clang-14
powerpc                      ppc64e_defconfig    clang-14
powerpc               randconfig-001-20241009    gcc-14.1.0
powerpc               randconfig-002-20241009    gcc-14.1.0
powerpc               randconfig-003-20241009    gcc-14.1.0
powerpc64             randconfig-001-20241009    gcc-14.1.0
powerpc64             randconfig-002-20241009    gcc-14.1.0
powerpc64             randconfig-003-20241009    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241009    gcc-14.1.0
riscv                 randconfig-002-20241009    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241009    gcc-14.1.0
s390                  randconfig-002-20241009    gcc-14.1.0
sh                               alldefconfig    clang-14
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                         ecovec24_defconfig    clang-14
sh                    randconfig-001-20241009    gcc-14.1.0
sh                    randconfig-002-20241009    gcc-14.1.0
sh                             sh03_defconfig    clang-14
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241009    gcc-14.1.0
sparc64               randconfig-002-20241009    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241009    gcc-14.1.0
um                    randconfig-002-20241009    gcc-14.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241009    clang-18
x86_64      buildonly-randconfig-002-20241009    clang-18
x86_64      buildonly-randconfig-003-20241009    clang-18
x86_64      buildonly-randconfig-004-20241009    clang-18
x86_64      buildonly-randconfig-005-20241009    clang-18
x86_64      buildonly-randconfig-006-20241009    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241009    clang-18
x86_64                randconfig-002-20241009    clang-18
x86_64                randconfig-003-20241009    clang-18
x86_64                randconfig-004-20241009    clang-18
x86_64                randconfig-005-20241009    clang-18
x86_64                randconfig-006-20241009    clang-18
x86_64                randconfig-011-20241009    clang-18
x86_64                randconfig-012-20241009    clang-18
x86_64                randconfig-013-20241009    clang-18
x86_64                randconfig-014-20241009    clang-18
x86_64                randconfig-015-20241009    clang-18
x86_64                randconfig-016-20241009    clang-18
x86_64                randconfig-071-20241009    clang-18
x86_64                randconfig-072-20241009    clang-18
x86_64                randconfig-073-20241009    clang-18
x86_64                randconfig-074-20241009    clang-18
x86_64                randconfig-075-20241009    clang-18
x86_64                randconfig-076-20241009    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241009    gcc-14.1.0
xtensa                randconfig-002-20241009    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
