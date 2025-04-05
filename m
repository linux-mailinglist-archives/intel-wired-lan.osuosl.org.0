Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F041A7CBDF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Apr 2025 23:32:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD1B1406E8;
	Sat,  5 Apr 2025 21:32:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vx74_19Y6Sie; Sat,  5 Apr 2025 21:32:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98B504070B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743888724;
	bh=fsAmz8LD0bNbW0qrkD5VpNv/bH+QFRSm3njuP6enqEI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eLWdl+UWntS9DX3uz+shko/ksotzoUgPxeq8dc93epaBF/7gxTy2HWyEHt6ngA0CS
	 yn4OJseczPJBfqNoMJUlWPJC4i/tqxUEQtM/Ab4xVAc3tNaQ9wNdN+tqFUsUoHBqKz
	 sIPiCy2ZBYR+d+79zxT4TR4Guc0IXi0C7Q7nlUHFxZ1lChO23rvndCdbTXJ3l30g7d
	 qy+iV6sRhdiOwoVMREZuFVe2CJSB83AxBnjettm8wVmz7ksGgJnRVP/oh4GYTy+6lG
	 58+88Hvwp5arEYXb7X1uvWEC4zHgKav3rLEvKTSLwnuQfhzD0fHUReSJpYnhMQCKMy
	 TDW7FuabYaHiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98B504070B;
	Sat,  5 Apr 2025 21:32:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 598B1204
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Apr 2025 21:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49F798136F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Apr 2025 21:32:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r-KQvGdjsMO5 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Apr 2025 21:32:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E69680F64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E69680F64
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E69680F64
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Apr 2025 21:32:01 +0000 (UTC)
X-CSE-ConnectionGUID: P+j4HmdORbGobr0THRfjpw==
X-CSE-MsgGUID: tFtAPM2VRw6b1RiVHV06oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11395"; a="45426299"
X-IronPort-AV: E=Sophos;i="6.15,192,1739865600"; d="scan'208";a="45426299"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2025 14:32:01 -0700
X-CSE-ConnectionGUID: pcQVRbc5Rn6autF1AKXWZQ==
X-CSE-MsgGUID: IW90JOvUQ++jSbJtCW0wsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,192,1739865600"; d="scan'208";a="131739013"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 05 Apr 2025 14:32:00 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u1B7O-0002Io-1n
 for intel-wired-lan@lists.osuosl.org; Sat, 05 Apr 2025 21:31:58 +0000
Date: Sun, 06 Apr 2025 05:31:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202504060540.XbBP9R8X-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743888722; x=1775424722;
 h=date:from:to:subject:message-id;
 bh=DL3N2KN2owIoNRKlVvKTnOJOIkw/JlIJbFVWLT+Ohcs=;
 b=bdM1V17X53VJvrxvvKk/+mwi4vl8fhQHz1IjOgBJ15GXOa1A5u+l7EXp
 FKvV/GTCj5XsQwXZrZNrQGqktEqwPHaCoCs15VoGaJuWsJO5ZBt+5g09/
 TUfVaGS4X+wNDh9/Qfpvzp+1r886nwXWMxo1x/tnWtIGp+i9xm3mEi5/K
 T+aTs2Wzxn92PoJO0HWEEwIL3Z1/v9F/McuAp3TipQbb+RqCzXyvIhTVG
 geUCy4hk473Ut7gXuZKURR0C3E/nyVz2j7lLKwY1QHQry2uW3Vx6URu8s
 eQJ/5ATzfgAnN+1+emnX39XH+hNpivzjefnrLCxwEzg4oXpub6Namndj+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bdM1V17X
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 edf956e8bd7d4c7ac8a7643ed74a36227db1fa27
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: edf956e8bd7d4c7ac8a7643ed74a36227db1fa27  idpf: fix offloads support for encapsulated packets

elapsed time: 1450m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                        nsim_700_defconfig    gcc-14.2.0
arc                 nsimosci_hs_smp_defconfig    gcc-14.2.0
arc                   randconfig-001-20250405    gcc-14.2.0
arc                   randconfig-002-20250405    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                          ep93xx_defconfig    clang-21
arm                           h3600_defconfig    gcc-14.2.0
arm                        keystone_defconfig    gcc-14.2.0
arm                   randconfig-001-20250405    clang-18
arm                   randconfig-002-20250405    gcc-7.5.0
arm                   randconfig-003-20250405    gcc-8.5.0
arm                   randconfig-004-20250405    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250405    clang-19
arm64                 randconfig-002-20250405    gcc-8.5.0
arm64                 randconfig-003-20250405    gcc-8.5.0
arm64                 randconfig-004-20250405    gcc-6.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250405    gcc-14.2.0
csky                  randconfig-002-20250405    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250405    clang-21
hexagon               randconfig-002-20250405    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250405    gcc-12
i386        buildonly-randconfig-002-20250405    clang-20
i386        buildonly-randconfig-003-20250405    clang-20
i386        buildonly-randconfig-004-20250405    clang-20
i386        buildonly-randconfig-005-20250405    clang-20
i386        buildonly-randconfig-006-20250405    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250405    gcc-14.2.0
loongarch             randconfig-002-20250405    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
m68k                          atari_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          eyeq6_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250405    gcc-12.4.0
nios2                 randconfig-002-20250405    gcc-6.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250405    gcc-11.5.0
parisc                randconfig-002-20250405    gcc-9.3.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                      bamboo_defconfig    clang-21
powerpc                        cell_defconfig    gcc-14.2.0
powerpc                 linkstation_defconfig    clang-20
powerpc                   lite5200b_defconfig    clang-21
powerpc               randconfig-001-20250405    gcc-8.5.0
powerpc               randconfig-002-20250405    gcc-8.5.0
powerpc               randconfig-003-20250405    gcc-8.5.0
powerpc64             randconfig-001-20250405    clang-21
powerpc64             randconfig-002-20250405    clang-21
powerpc64             randconfig-003-20250405    clang-18
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250405    clang-21
riscv                 randconfig-002-20250405    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250405    clang-15
s390                  randconfig-002-20250405    clang-15
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250405    gcc-14.2.0
sh                    randconfig-002-20250405    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250405    gcc-11.5.0
sparc                 randconfig-002-20250405    gcc-10.3.0
sparc64               randconfig-001-20250405    gcc-9.3.0
sparc64               randconfig-002-20250405    gcc-11.5.0
um                               alldefconfig    clang-21
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250405    clang-17
um                    randconfig-002-20250405    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250405    gcc-12
x86_64      buildonly-randconfig-002-20250405    clang-20
x86_64      buildonly-randconfig-003-20250405    clang-20
x86_64      buildonly-randconfig-004-20250405    clang-20
x86_64      buildonly-randconfig-005-20250405    gcc-12
x86_64      buildonly-randconfig-006-20250405    clang-20
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250405    gcc-11.5.0
xtensa                randconfig-002-20250405    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
