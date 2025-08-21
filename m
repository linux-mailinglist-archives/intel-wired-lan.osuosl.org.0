Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3332CB2E979
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 02:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAE2E821EF;
	Thu, 21 Aug 2025 00:34:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CiK-acHU4JDE; Thu, 21 Aug 2025 00:34:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64B1182208
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755736498;
	bh=wvfoKWj4k/jg99Rx7gzqd0TIpAZite2h5yQayx+ysxA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=C74f0NYrfQCX1otBmwzPZ0x6NWvOp6G7YQDs+A32MAcW2cTpqbfDfV9IMiVg6xkIf
	 Htr8cHTo1Mgz0z7/zmD7ufV7CauYbRpz0ziEVoC3uUoZxIXqU0jvB/uz3qblvxsEaP
	 dCwa/z5iIN+qnA2/tzAisvd1UeqH1HPwRIlktvO1mB0l1/+LBJdONR/v5QeQ0c1t8z
	 b/j5DoI7+Ph3Qsd2AVQrqCW3H7vO9zQv253komZwG2EDqtVCVBzlROMp2HpMZ/QY4N
	 AdDlO5X87++Bb0wUzGIqkaMXlEeWRoN7KOSFP/RFn8mjgdku182XXmv2g/PUtCZFus
	 l7Kds3EGLgDnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64B1182208;
	Thu, 21 Aug 2025 00:34:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 06DFDD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 00:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1C574110C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 00:34:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pRo9e7X4UXad for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 00:34:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA53140AFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA53140AFC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA53140AFC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 00:34:55 +0000 (UTC)
X-CSE-ConnectionGUID: y83O12aEQdOB516tyTCsIA==
X-CSE-MsgGUID: 1VnZZq0eRjOy/qDqA1ZyNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="83435467"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="83435467"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 17:34:54 -0700
X-CSE-ConnectionGUID: rk+mfex1Rxe7wuJb0WRDpA==
X-CSE-MsgGUID: OFLRoCajQpmjbDP70cJHBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="172491579"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa003.jf.intel.com with ESMTP; 20 Aug 2025 17:34:54 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uotGR-000Jld-22
 for intel-wired-lan@lists.osuosl.org; Thu, 21 Aug 2025 00:34:48 +0000
Date: Thu, 21 Aug 2025 08:34:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508210823.85qBy3pw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755736496; x=1787272496;
 h=date:from:to:subject:message-id;
 bh=M9U5p057iaDIk/2SXz9IpkXCeGnjO3hnUZV575Mc8WM=;
 b=YhRQB71HWntpwK3J/yESMOkDqWT99sDPCEGDkFS6NWvjL1y3P41eDGpZ
 /SephY7cgTzsHBAA1gKvdAh439djV+2e/Jz0KC/Hm+dQ9rbsxMaT3YAuz
 lq8BhA0EpHSO7aP4y4+wdhfUhBgudx0tJcQFK6j51OvJAWn4AHyBm7rGh
 Ud9mkYigGBekpa8NHT+Lo+QgsYgnAtmSlQ2SO1KvL5p5vTVxLj6w8p/Nu
 vYULR+EvCc01XfTlmzf7zkKy3aAFGmfCO5jE7UGOoKQ0kcZZSbzFsBCfk
 A/sUVp0xSENMpicxUH/pi2iw7IwzFocqcC+CqjbCb7Jm4I87C7BI7zIAV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YhRQB71H
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 e4c70369624f069154c2d91173f9862318b807f8
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
branch HEAD: e4c70369624f069154c2d91173f9862318b807f8  i40e: Fix enable_cnt imbalance on PCIe error recovery

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202508201414.zlbWHBW2-lkp@intel.com

    ERROR: modpost: "libie_fwlog_deinit" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
    ERROR: modpost: "libie_fwlog_init" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
    ERROR: modpost: "libie_get_fwlog_data" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!

Error/Warning ids grouped by kconfigs:

recent_errors
`-- um-randconfig-r051-20250820
    |-- ERROR:libie_fwlog_deinit-drivers-net-ethernet-intel-ixgbe-ixgbe.ko-undefined
    |-- ERROR:libie_fwlog_init-drivers-net-ethernet-intel-ixgbe-ixgbe.ko-undefined
    `-- ERROR:libie_get_fwlog_data-drivers-net-ethernet-intel-ixgbe-ixgbe.ko-undefined

elapsed time: 1461m

configs tested: 108
configs skipped: 3

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250820    gcc-8.5.0
arc                   randconfig-002-20250820    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250820    gcc-8.5.0
arm                   randconfig-002-20250820    gcc-15.1.0
arm                   randconfig-003-20250820    gcc-13.4.0
arm                   randconfig-004-20250820    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250820    gcc-14.3.0
arm64                 randconfig-002-20250820    gcc-14.3.0
arm64                 randconfig-003-20250820    gcc-8.5.0
arm64                 randconfig-004-20250820    gcc-14.3.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250820    gcc-15.1.0
csky                  randconfig-002-20250820    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250820    clang-22
hexagon               randconfig-002-20250820    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250820    clang-20
i386        buildonly-randconfig-002-20250820    gcc-12
i386        buildonly-randconfig-003-20250820    gcc-12
i386        buildonly-randconfig-004-20250820    clang-20
i386        buildonly-randconfig-005-20250820    gcc-12
i386        buildonly-randconfig-006-20250820    gcc-11
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250820    clang-18
loongarch             randconfig-002-20250820    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250820    gcc-11.5.0
nios2                 randconfig-002-20250820    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250820    gcc-8.5.0
parisc                randconfig-002-20250820    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc               randconfig-001-20250820    gcc-12.5.0
powerpc               randconfig-002-20250820    gcc-8.5.0
powerpc               randconfig-003-20250820    gcc-13.4.0
powerpc64             randconfig-001-20250820    clang-22
powerpc64             randconfig-002-20250820    clang-22
powerpc64             randconfig-003-20250820    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250820    clang-20
riscv                 randconfig-002-20250820    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250820    clang-18
s390                  randconfig-002-20250820    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250820    gcc-15.1.0
sh                    randconfig-002-20250820    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250820    gcc-8.5.0
sparc                 randconfig-002-20250820    gcc-12.5.0
sparc64               randconfig-001-20250820    clang-22
sparc64               randconfig-002-20250820    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250820    gcc-12
um                    randconfig-002-20250820    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250820    clang-20
x86_64      buildonly-randconfig-002-20250820    gcc-11
x86_64      buildonly-randconfig-003-20250820    clang-20
x86_64      buildonly-randconfig-004-20250820    gcc-12
x86_64      buildonly-randconfig-005-20250820    clang-20
x86_64      buildonly-randconfig-006-20250820    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250820    gcc-8.5.0
xtensa                randconfig-002-20250820    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
