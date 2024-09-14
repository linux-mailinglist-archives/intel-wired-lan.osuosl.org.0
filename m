Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEDA9791C1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2024 17:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03B1041A3A;
	Sat, 14 Sep 2024 15:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QEC7jA75jw8E; Sat, 14 Sep 2024 15:15:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DEEF41A41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726326911;
	bh=mpYDDXwelBL1p5B8fljjuHCJxPOczuehwA05evhBNQg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pW44D2GEpgHMQleGfyYMp+vy++58qn63ZJReJz5umL2b1/G+lHFWlrotnu3kYZUIP
	 T0wZPSMtbwPcJAiCBndy8XfL13qs86gUz9OebeVx/jHCLI9qM2qW9o7BmS9BLl208k
	 m8qxtqCHEqOhOvhG8JEzLDf6dD9sMK+dwPit35TcvDnK3Eu/p+j7/95t7SHLfmj5uH
	 CpqEJJOER6R62NUFJTNoTJIHqjxHZoLyEj4ZKuKuqVMMaz9tCoc1i7ReevA3EPgaRN
	 jcLgbRd25aB5DVQoI/yQ8f9lWguKv7UWK0cGzUdHl9TAtiNSIsa0NpPWBRnPvAjJIL
	 CKHnWO+3P14pQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DEEF41A41;
	Sat, 14 Sep 2024 15:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E75991BF844
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2BD2419C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:15:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e3b3zbNyXYpz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2024 15:15:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B40541A19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B40541A19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B40541A19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:15:06 +0000 (UTC)
X-CSE-ConnectionGUID: IWVkPhpuTKye80ZIQqNhSg==
X-CSE-MsgGUID: jFAaNPyaRd6WpKswubqOZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11195"; a="25419190"
X-IronPort-AV: E=Sophos;i="6.10,229,1719903600"; d="scan'208";a="25419190"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2024 08:15:06 -0700
X-CSE-ConnectionGUID: 0uIRboGeTAqtFCHBxfM4wQ==
X-CSE-MsgGUID: Tqih/IVnTni3yhQsDoKHGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,229,1719903600"; d="scan'208";a="68292450"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 14 Sep 2024 08:15:06 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1spUUJ-0007sm-0d
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Sep 2024 15:15:03 +0000
Date: Sat, 14 Sep 2024 23:14:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409142307.GeI7ZGvQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726326907; x=1757862907;
 h=date:from:to:subject:message-id;
 bh=PQ85Y2/qABCbm5sGfOF9JXQz65+ulY1tnvn/WYkLKDk=;
 b=Fm41ZVwtuz29vTT+z17QVk6LacxqdH0DPYgF11/ggydQe3Zxmabe1nPa
 ibyeDRpPEAU3iSMYBkSxu/5QHNj7SsPADHo8bu3+gagGPF8WlE5L48rHs
 wGz3eq7PXN88NUpWqLspAcp9kKVghQYkq3j8dREB1UYu5mKOAZoNSDtkj
 CwE2p4yZgNc6+XnMl/Yh1AeyrqbZZF60EM3GS/dKTNOtQ+UrDb0XHw6lc
 kOdOjDkvBGnhn/xXuEUArDGgdA1Dv7zBNXNGArnepOM15dnWEfKajqMzf
 BKw46QluDOcCbwVWIBV9dkBUJ23wqyIbRIWhPb0DUOPpZvoE7jLEM7IiF
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fm41ZVwt
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a947844911b782db2073d37bf12007f11b907196
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: a947844911b782db2073d37bf12007f11b907196  ice: store max_frame and rx_buf_len only in ice_rx_ring

elapsed time: 997m

configs tested: 168
configs skipped: 5

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
arc                   randconfig-001-20240914    gcc-13.2.0
arc                   randconfig-002-20240914    gcc-13.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                      jornada720_defconfig    clang-20
arm                            mmp2_defconfig    clang-20
arm                        multi_v5_defconfig    clang-20
arm                   randconfig-001-20240914    gcc-13.2.0
arm                   randconfig-002-20240914    gcc-13.2.0
arm                   randconfig-003-20240914    gcc-13.2.0
arm                   randconfig-004-20240914    gcc-13.2.0
arm                         wpcm450_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20240914    gcc-13.2.0
arm64                 randconfig-002-20240914    gcc-13.2.0
arm64                 randconfig-003-20240914    gcc-13.2.0
arm64                 randconfig-004-20240914    gcc-13.2.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20240914    gcc-13.2.0
csky                  randconfig-002-20240914    gcc-13.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20240914    gcc-13.2.0
hexagon               randconfig-002-20240914    gcc-13.2.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20240914    clang-18
i386        buildonly-randconfig-002-20240914    clang-18
i386        buildonly-randconfig-003-20240914    clang-18
i386        buildonly-randconfig-004-20240914    clang-18
i386        buildonly-randconfig-005-20240914    clang-18
i386        buildonly-randconfig-006-20240914    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240914    clang-18
i386                  randconfig-002-20240914    clang-18
i386                  randconfig-003-20240914    clang-18
i386                  randconfig-004-20240914    clang-18
i386                  randconfig-005-20240914    clang-18
i386                  randconfig-006-20240914    clang-18
i386                  randconfig-011-20240914    clang-18
i386                  randconfig-012-20240914    clang-18
i386                  randconfig-013-20240914    clang-18
i386                  randconfig-014-20240914    clang-18
i386                  randconfig-015-20240914    clang-18
i386                  randconfig-016-20240914    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20240914    gcc-13.2.0
loongarch             randconfig-002-20240914    gcc-13.2.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                       m5249evb_defconfig    clang-20
m68k                        m5307c3_defconfig    clang-20
m68k                          multi_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                        omega2p_defconfig    clang-20
mips                      pic32mzda_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20240914    gcc-13.2.0
nios2                 randconfig-002-20240914    gcc-13.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                 simple_smp_defconfig    clang-20
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20240914    gcc-13.2.0
parisc                randconfig-002-20240914    gcc-13.2.0
parisc64                            defconfig    gcc-14.1.0
powerpc                    adder875_defconfig    clang-20
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                   bluestone_defconfig    clang-20
powerpc                   microwatt_defconfig    clang-20
powerpc               randconfig-001-20240914    gcc-13.2.0
powerpc64             randconfig-001-20240914    gcc-13.2.0
powerpc64             randconfig-002-20240914    gcc-13.2.0
powerpc64             randconfig-003-20240914    gcc-13.2.0
riscv                            alldefconfig    clang-20
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20240914    gcc-13.2.0
riscv                 randconfig-002-20240914    gcc-13.2.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20240914    gcc-13.2.0
s390                  randconfig-002-20240914    gcc-13.2.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20240914    gcc-13.2.0
sh                    randconfig-002-20240914    gcc-13.2.0
sh                           se7705_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20240914    gcc-13.2.0
sparc64               randconfig-002-20240914    gcc-13.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240914    gcc-13.2.0
um                    randconfig-002-20240914    gcc-13.2.0
um                           x86_64_defconfig    clang-20
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20240914    clang-18
x86_64      buildonly-randconfig-002-20240914    clang-18
x86_64      buildonly-randconfig-003-20240914    clang-18
x86_64      buildonly-randconfig-004-20240914    clang-18
x86_64      buildonly-randconfig-005-20240914    clang-18
x86_64      buildonly-randconfig-006-20240914    clang-18
x86_64                              defconfig    clang-18
x86_64                randconfig-001-20240914    clang-18
x86_64                randconfig-002-20240914    clang-18
x86_64                randconfig-003-20240914    clang-18
x86_64                randconfig-004-20240914    clang-18
x86_64                randconfig-005-20240914    clang-18
x86_64                randconfig-006-20240914    clang-18
x86_64                randconfig-011-20240914    clang-18
x86_64                randconfig-012-20240914    clang-18
x86_64                randconfig-013-20240914    clang-18
x86_64                randconfig-014-20240914    clang-18
x86_64                randconfig-015-20240914    clang-18
x86_64                randconfig-016-20240914    clang-18
x86_64                randconfig-071-20240914    clang-18
x86_64                randconfig-072-20240914    clang-18
x86_64                randconfig-073-20240914    clang-18
x86_64                randconfig-074-20240914    clang-18
x86_64                randconfig-075-20240914    clang-18
x86_64                randconfig-076-20240914    clang-18
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20240914    gcc-13.2.0
xtensa                randconfig-002-20240914    gcc-13.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
