Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2395FAF86EA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 06:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A404F40FA7;
	Fri,  4 Jul 2025 04:51:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9cvmeFTKBlr7; Fri,  4 Jul 2025 04:51:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6802F40F83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751604673;
	bh=x+AgzZDL/cQ4XwMPey4/cl/9dDIh+ATDp5u0xoQ0AbU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3istb5R59lhVDxrEvGK80osgPcG4uRxrZKdp94qSApjneQ+DuPAIYvpMOXV28/jgB
	 ZXjS5D+cJjOmsUDclSP1zp62ttDwpmNQvNufhoj9JV++EKE432p9Gm9WoqcnCNIPFM
	 RBlLTSrDA3BwiZQ9atvBjFJxXefrVm/qa5W3wOZ1GZt/OZGPi2iGQQFOGpXFnK+AXq
	 FN9axWX81EBo+94RgQQrZkF6QDRITKOu+EUPsitsQgPy7JuAO6czmpkwa77l5DjcvX
	 cO1nS3cMhA25bcQiF6v3b1R2Uai3nd/qJvcbEhFDeLkPlGe2LyEq3wNIsUSP3W6O2x
	 XHvFA3o5wX9dQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6802F40F83;
	Fri,  4 Jul 2025 04:51:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AB37615F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 04:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D5CA40F66
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 04:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lby4-a65osrS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 04:51:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4BCA40F39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4BCA40F39
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4BCA40F39
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 04:51:10 +0000 (UTC)
X-CSE-ConnectionGUID: X5bgr6/KQsW8CbHkUqIzPw==
X-CSE-MsgGUID: JJyu/6VwQDGh5lEKD8jm5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="41565754"
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; d="scan'208";a="41565754"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 21:51:10 -0700
X-CSE-ConnectionGUID: 7UTtB4RiSRmDraJi9Rjyig==
X-CSE-MsgGUID: LeuQI1s+SrGZgKoBBSzhYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; d="scan'208";a="185498320"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 03 Jul 2025 21:51:07 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uXYO9-0003La-15
 for intel-wired-lan@lists.osuosl.org; Fri, 04 Jul 2025 04:51:05 +0000
Date: Fri, 04 Jul 2025 12:51:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507041249.iyzuoqEb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751604670; x=1783140670;
 h=date:from:to:subject:message-id;
 bh=OpW8LcDqHcwn+629DavW2GRkcXKyr08aTlA7k58lVz8=;
 b=SCsVCY+MJpgL85mOEQcz0KGO23PnmkgjPY5SNor0iHyessjfSs7Y70jJ
 LWjl8LghZxmUXaNJDiQbp4tCJUJYYdXtOQaBGVJlStxxx+IIe7GcmODOz
 fEFLzLgdir40kvirzFgDvloTWOvT2MHuOksUQPQBZuCzcOypp9Ysew7Yt
 26aQTZQOHkAxeXZ5glcvbhSRCpbuSywVTHb5RIFajaYdsVXz+6BIuDqO0
 pXBG/c/Wee4jK8/Vei0EfsBQ2e1fQICNLkfbK09oqd9YHlD9jaZtGJHDN
 4fzFrh6Qclx3GgiJ4LxhiBberhQ1xUGoMvuPZkn3Os6P2JrC2wBu9xFdT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SCsVCY+M
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 5f712c3877f99d5b5e4d011955c6467ae0e535a6
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
branch HEAD: 5f712c3877f99d5b5e4d011955c6467ae0e535a6  ipv6: Cleanup fib6_drop_pcpu_from()

elapsed time: 826m

configs tested: 176
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250704    gcc-8.5.0
arc                   randconfig-002-20250704    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250704    gcc-8.5.0
arm                   randconfig-002-20250704    clang-21
arm                   randconfig-003-20250704    gcc-8.5.0
arm                   randconfig-004-20250704    gcc-13.4.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250704    gcc-14.3.0
arm64                 randconfig-002-20250704    clang-21
arm64                 randconfig-003-20250704    clang-16
arm64                 randconfig-004-20250704    gcc-10.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250704    gcc-10.5.0
csky                  randconfig-001-20250704    gcc-15.1.0
csky                  randconfig-002-20250704    gcc-10.5.0
csky                  randconfig-002-20250704    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250704    clang-21
hexagon               randconfig-001-20250704    gcc-10.5.0
hexagon               randconfig-002-20250704    clang-21
hexagon               randconfig-002-20250704    gcc-10.5.0
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250704    clang-20
i386        buildonly-randconfig-001-20250704    gcc-12
i386        buildonly-randconfig-002-20250704    clang-20
i386        buildonly-randconfig-003-20250704    clang-20
i386        buildonly-randconfig-004-20250704    clang-20
i386        buildonly-randconfig-005-20250704    clang-20
i386        buildonly-randconfig-006-20250704    clang-20
i386                                defconfig    clang-20
i386                  randconfig-011-20250704    clang-20
i386                  randconfig-012-20250704    clang-20
i386                  randconfig-013-20250704    clang-20
i386                  randconfig-014-20250704    clang-20
i386                  randconfig-015-20250704    clang-20
i386                  randconfig-016-20250704    clang-20
i386                  randconfig-017-20250704    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250704    gcc-10.5.0
loongarch             randconfig-001-20250704    gcc-15.1.0
loongarch             randconfig-002-20250704    gcc-10.5.0
loongarch             randconfig-002-20250704    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                            allmodconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                            allyesconfig    clang-21
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250704    gcc-10.5.0
nios2                 randconfig-001-20250704    gcc-8.5.0
nios2                 randconfig-002-20250704    gcc-10.5.0
openrisc                         allmodconfig    clang-21
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250704    gcc-10.5.0
parisc                randconfig-001-20250704    gcc-14.3.0
parisc                randconfig-002-20250704    gcc-10.5.0
parisc                randconfig-002-20250704    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-15.1.0
powerpc               randconfig-001-20250704    clang-21
powerpc               randconfig-001-20250704    gcc-10.5.0
powerpc               randconfig-002-20250704    gcc-10.5.0
powerpc               randconfig-002-20250704    gcc-9.3.0
powerpc               randconfig-003-20250704    clang-21
powerpc               randconfig-003-20250704    gcc-10.5.0
powerpc64             randconfig-001-20250704    clang-18
powerpc64             randconfig-001-20250704    gcc-10.5.0
powerpc64             randconfig-002-20250704    gcc-10.5.0
powerpc64             randconfig-003-20250704    clang-18
powerpc64             randconfig-003-20250704    gcc-10.5.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                 randconfig-001-20250704    clang-21
riscv                 randconfig-002-20250704    clang-21
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250704    clang-21
s390                  randconfig-001-20250704    gcc-15.1.0
s390                  randconfig-002-20250704    clang-21
s390                  randconfig-002-20250704    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250704    clang-21
sh                    randconfig-001-20250704    gcc-15.1.0
sh                    randconfig-002-20250704    clang-21
sh                    randconfig-002-20250704    gcc-13.4.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                            allyesconfig    clang-21
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250704    clang-21
sparc                 randconfig-001-20250704    gcc-11.5.0
sparc                 randconfig-002-20250704    clang-21
sparc                 randconfig-002-20250704    gcc-8.5.0
sparc64                          allmodconfig    clang-21
sparc64                          allyesconfig    clang-21
sparc64               randconfig-001-20250704    clang-21
sparc64               randconfig-001-20250704    gcc-13.4.0
sparc64               randconfig-002-20250704    clang-20
sparc64               randconfig-002-20250704    clang-21
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250704    clang-21
um                    randconfig-002-20250704    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250704    clang-20
x86_64      buildonly-randconfig-002-20250704    gcc-12
x86_64      buildonly-randconfig-003-20250704    clang-20
x86_64      buildonly-randconfig-004-20250704    clang-20
x86_64      buildonly-randconfig-005-20250704    clang-20
x86_64      buildonly-randconfig-006-20250704    gcc-12
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-071-20250704    clang-20
x86_64                randconfig-072-20250704    clang-20
x86_64                randconfig-073-20250704    clang-20
x86_64                randconfig-074-20250704    clang-20
x86_64                randconfig-075-20250704    clang-20
x86_64                randconfig-076-20250704    clang-20
x86_64                randconfig-077-20250704    clang-20
x86_64                randconfig-078-20250704    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                           allyesconfig    clang-21
xtensa                randconfig-001-20250704    clang-21
xtensa                randconfig-001-20250704    gcc-12.4.0
xtensa                randconfig-002-20250704    clang-21
xtensa                randconfig-002-20250704    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
