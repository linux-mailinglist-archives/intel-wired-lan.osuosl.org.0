Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF4E92D193
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 14:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12EA881E7F;
	Wed, 10 Jul 2024 12:29:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2fJ_XdkEhL7C; Wed, 10 Jul 2024 12:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B7BE81E7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720614572;
	bh=412pMAR6y3GgxN9IVUhwZKLA8DAmp+R1EO/pnYTjmDU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=034Rd78YOgPyrWSYScpmggs4xdb0DaV3HxCUU1hxmhr+yOMSUSLFb/E26Fv8gsTA+
	 IsyPVmUMkZ5gIW9i85NFN2zgTYI/YXiaxsFNYUzrBL1jdCH3jeRylUFMEULJklM8X4
	 aSdHBv+LNxvBMS6p0dPVDZUwzSuDuvIGQosGMsy6Zcpq6nHUZjKFn5VNQU1Y8WE93w
	 VL4NhhPL/o3D01R82X3J5pghl5Q/GWkCJGgf67q8y3Mz9ExMSoIDIV9OPP2Xs21fXQ
	 6TW4ZAtC+d369IFZYRrEtfvG1b4i4Pj/mOiXG+HPCUfaKpE/VAXNb9wiLXkz/7cQB5
	 Z2V0gWADuLl8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B7BE81E7D;
	Wed, 10 Jul 2024 12:29:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0499E1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E455440F4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:29:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hRR8JHflCTVU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 12:29:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4C5B14011F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C5B14011F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C5B14011F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 12:29:28 +0000 (UTC)
X-CSE-ConnectionGUID: H5GtC4GJQ8Sxl/Yp1prxXA==
X-CSE-MsgGUID: 7z90rg1TSCWPp7uTr0Ei2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="21801775"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="21801775"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 05:29:28 -0700
X-CSE-ConnectionGUID: xptdnr7SQwiUKmwNs0uL6g==
X-CSE-MsgGUID: Ghz2P4UkTXyR+chGiCw5sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="52796795"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 10 Jul 2024 05:29:26 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sRWRo-000Xpq-2v
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Jul 2024 12:29:24 +0000
Date: Wed, 10 Jul 2024 20:28:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407102024.vqs7GxjG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720614568; x=1752150568;
 h=date:from:to:subject:message-id;
 bh=AfjdiDVgl/dmduceDiG3l+/YeEEkEUk3FMOUl1c5usk=;
 b=d1QXkgQ1rY+z5uZRcLptTcDJggjoi6GksgWvazGDdCapA7G8YqbGUMun
 Oi7e3Bp3O3lAH+WKXCGqV99SMhmcAWc5/0u25LRBDmLXLv06q0Xeq8o2p
 c8vZMK1eamRPuNU7pSkSyUX+R8IvxTrVdshorVnIZyqtP6np67Z5TAC6I
 A9t3AxBXRB+9zkecP5oUOEa9vlKeI4koQJOzNcMVlMCAwCGVY6zIXC/+P
 G5mz3WwVyP9yEYorK/TFOXcO3IAriIterKjU6XcPDn7enFGgBFL0/lxwQ
 SaylGuU1IzbPe+3FdJ3pxIewH33jE9Go0TClz1qgQWoJc2aPfOd5T0nbx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d1QXkgQ1
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 528269fe117f3b19461733a0fa408c55a5270aff
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
branch HEAD: 528269fe117f3b19461733a0fa408c55a5270aff  Merge tag 'for-netdev' of https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf

elapsed time: 1291m

configs tested: 228
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240710   gcc-13.2.0
arc                   randconfig-002-20240710   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                          collie_defconfig   gcc-13.3.0
arm                                 defconfig   gcc-13.2.0
arm                            dove_defconfig   gcc-13.3.0
arm                            hisi_defconfig   gcc-13.2.0
arm                           imxrt_defconfig   gcc-13.3.0
arm                          ixp4xx_defconfig   gcc-13.2.0
arm                          pxa910_defconfig   gcc-13.2.0
arm                   randconfig-001-20240710   clang-19
arm                   randconfig-001-20240710   gcc-13.2.0
arm                   randconfig-002-20240710   gcc-13.2.0
arm                   randconfig-003-20240710   clang-19
arm                   randconfig-003-20240710   gcc-13.2.0
arm                   randconfig-004-20240710   gcc-13.2.0
arm                        realview_defconfig   gcc-13.2.0
arm                           sama7_defconfig   gcc-13.3.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240710   clang-19
arm64                 randconfig-001-20240710   gcc-13.2.0
arm64                 randconfig-002-20240710   clang-19
arm64                 randconfig-002-20240710   gcc-13.2.0
arm64                 randconfig-003-20240710   clang-17
arm64                 randconfig-003-20240710   gcc-13.2.0
arm64                 randconfig-004-20240710   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                                defconfig   gcc-13.3.0
csky                  randconfig-001-20240710   gcc-13.2.0
csky                  randconfig-002-20240710   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240710   clang-19
hexagon               randconfig-002-20240710   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240710   clang-18
i386         buildonly-randconfig-002-20240710   clang-18
i386         buildonly-randconfig-002-20240710   gcc-13
i386         buildonly-randconfig-003-20240710   clang-18
i386         buildonly-randconfig-003-20240710   gcc-11
i386         buildonly-randconfig-004-20240710   clang-18
i386         buildonly-randconfig-004-20240710   gcc-11
i386         buildonly-randconfig-005-20240710   clang-18
i386         buildonly-randconfig-006-20240710   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240710   clang-18
i386                  randconfig-002-20240710   clang-18
i386                  randconfig-002-20240710   gcc-11
i386                  randconfig-003-20240710   clang-18
i386                  randconfig-003-20240710   gcc-13
i386                  randconfig-004-20240710   clang-18
i386                  randconfig-005-20240710   clang-18
i386                  randconfig-006-20240710   clang-18
i386                  randconfig-011-20240710   clang-18
i386                  randconfig-011-20240710   gcc-13
i386                  randconfig-012-20240710   clang-18
i386                  randconfig-012-20240710   gcc-12
i386                  randconfig-013-20240710   clang-18
i386                  randconfig-013-20240710   gcc-12
i386                  randconfig-014-20240710   clang-18
i386                  randconfig-014-20240710   gcc-13
i386                  randconfig-015-20240710   clang-18
i386                  randconfig-015-20240710   gcc-8
i386                  randconfig-016-20240710   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                        allmodconfig   gcc-13.3.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240710   gcc-13.2.0
loongarch             randconfig-002-20240710   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-13.3.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.3.0
m68k                          amiga_defconfig   gcc-13.3.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5249evb_defconfig   gcc-13.2.0
m68k                            q40_defconfig   gcc-13.3.0
microblaze                       alldefconfig   gcc-13.3.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.3.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.3.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           mtx1_defconfig   gcc-13.3.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240710   gcc-13.2.0
nios2                 randconfig-002-20240710   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.3.0
openrisc                            defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.3.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240710   gcc-13.2.0
parisc                randconfig-002-20240710   gcc-13.2.0
parisc64                         alldefconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   gcc-13.2.0
powerpc                          allyesconfig   gcc-13.3.0
powerpc                          g5_defconfig   gcc-13.3.0
powerpc                        icon_defconfig   gcc-13.3.0
powerpc                      katmai_defconfig   gcc-13.2.0
powerpc                       maple_defconfig   gcc-13.3.0
powerpc                     mpc512x_defconfig   gcc-13.3.0
powerpc                      ppc44x_defconfig   gcc-13.3.0
powerpc               randconfig-001-20240710   gcc-13.2.0
powerpc               randconfig-002-20240710   clang-19
powerpc               randconfig-002-20240710   gcc-13.2.0
powerpc               randconfig-003-20240710   gcc-13.2.0
powerpc                     tqm8548_defconfig   gcc-13.2.0
powerpc                         wii_defconfig   gcc-13.3.0
powerpc64             randconfig-001-20240710   gcc-13.2.0
powerpc64             randconfig-002-20240710   clang-15
powerpc64             randconfig-002-20240710   gcc-13.2.0
powerpc64             randconfig-003-20240710   clang-19
powerpc64             randconfig-003-20240710   gcc-13.2.0
riscv                            allmodconfig   gcc-13.2.0
riscv                            allmodconfig   gcc-13.3.0
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   gcc-13.2.0
riscv                            allyesconfig   gcc-13.3.0
riscv                               defconfig   gcc-13.2.0
riscv                    nommu_virt_defconfig   gcc-13.2.0
riscv                 randconfig-001-20240710   clang-19
riscv                 randconfig-001-20240710   gcc-13.2.0
riscv                 randconfig-002-20240710   clang-19
riscv                 randconfig-002-20240710   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   gcc-13.2.0
s390                  randconfig-001-20240710   gcc-13.2.0
s390                  randconfig-002-20240710   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                        dreamcast_defconfig   gcc-13.2.0
sh                        edosk7705_defconfig   gcc-13.2.0
sh                    randconfig-001-20240710   gcc-13.2.0
sh                    randconfig-002-20240710   gcc-13.2.0
sh                          rsk7264_defconfig   gcc-13.2.0
sh                           se7780_defconfig   gcc-13.2.0
sh                            titan_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240710   gcc-13.2.0
sparc64               randconfig-002-20240710   gcc-13.2.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.2.0
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-13.2.0
um                    randconfig-001-20240710   gcc-13
um                    randconfig-001-20240710   gcc-13.2.0
um                    randconfig-002-20240710   clang-19
um                    randconfig-002-20240710   gcc-13.2.0
um                           x86_64_defconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240710   clang-18
x86_64       buildonly-randconfig-002-20240710   clang-18
x86_64       buildonly-randconfig-003-20240710   clang-18
x86_64       buildonly-randconfig-004-20240710   clang-18
x86_64       buildonly-randconfig-005-20240710   clang-18
x86_64       buildonly-randconfig-006-20240710   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240710   clang-18
x86_64                randconfig-002-20240710   clang-18
x86_64                randconfig-003-20240710   clang-18
x86_64                randconfig-004-20240710   clang-18
x86_64                randconfig-005-20240710   clang-18
x86_64                randconfig-006-20240710   clang-18
x86_64                randconfig-011-20240710   clang-18
x86_64                randconfig-012-20240710   clang-18
x86_64                randconfig-013-20240710   clang-18
x86_64                randconfig-014-20240710   clang-18
x86_64                randconfig-015-20240710   clang-18
x86_64                randconfig-016-20240710   clang-18
x86_64                randconfig-071-20240710   clang-18
x86_64                randconfig-072-20240710   clang-18
x86_64                randconfig-073-20240710   clang-18
x86_64                randconfig-074-20240710   clang-18
x86_64                randconfig-075-20240710   clang-18
x86_64                randconfig-076-20240710   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240710   gcc-13.2.0
xtensa                randconfig-002-20240710   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
