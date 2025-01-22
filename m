Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D09EA18E92
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 10:44:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8A0880D0F;
	Wed, 22 Jan 2025 09:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CaqePuNceETN; Wed, 22 Jan 2025 09:44:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9196C84F88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737539066;
	bh=uiAXJ1MjPAy8DdwjnkxioDMG24BOmQFNX8xGDBhK8JM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=94RIezBDc2SrFI0bAf2JeJipu2staWpDznvXX8HQUvRmyvT0apcsb5d8v9h45RVN/
	 hmsbAWhK0dy0QuqtKwQR4ggXxc1NojDAarm8cNfxLlWzbEsa7UEhqsYCKQCjlyqSh3
	 WNxtCn4QyT9U7FFttN+ZR9qpewo1kBQ3/YcFB8vAZD9llGenf2pBK3XIGsy3xS/ebx
	 4y8/nFxaKDIppS4ermNStog7jGS02sS0QBenEoZer+9rnq5Wsic7U7KnKLpKN6xbnA
	 3EDNkFR03lxUmOJoiJz1ip8xTUpeRVV9ucuAFEuDhkj07eyU+hQUuGH8FkRN5bHRz0
	 UkPEKoDpXx2BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9196C84F88;
	Wed, 22 Jan 2025 09:44:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5979A959
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 09:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47EB480C9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 09:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjREd2887f7u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 09:44:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 224B280C8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 224B280C8F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 224B280C8F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 09:44:23 +0000 (UTC)
X-CSE-ConnectionGUID: cVTCeZOjQrSU/BelyLIcRA==
X-CSE-MsgGUID: eMHw+OrNTum+Yjd8Sh327A==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37865920"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="37865920"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:44:23 -0800
X-CSE-ConnectionGUID: 4far18rqSK673NXKNE6rgg==
X-CSE-MsgGUID: zcRzkDSQRxqyZx7WhAsEGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111714302"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 22 Jan 2025 01:44:22 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1taXHY-000Zhz-0I
 for intel-wired-lan@lists.osuosl.org; Wed, 22 Jan 2025 09:44:20 +0000
Date: Wed, 22 Jan 2025 17:43:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501221726.sQ6Uv5s3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737539064; x=1769075064;
 h=date:from:to:subject:message-id;
 bh=Tm24OaSos3YJzLl1jy1PfbYusXcqUizDgT3j/85Yppg=;
 b=mlJqs9jH46D96PvAMyfeVTGPU267eM2JqaNQ9Jn28hNUlfSZD/vQZCq6
 SE2YCqgBol+OU4jlvavOfq+MhKSBUUHNwIbNXoke3KZX+zqYayjYTQmlJ
 u5TX/XGOkdi0GeP2SURyEy/zThcEzZEbq0lAfo8IYJrU+lCWBcjjT0TCf
 rkYmXKiNK2+IO2sbB/3CWvxTb5fRHhkoATaVrZ2ID/h+tvy7pU8WFUIBY
 lcSNoORyai4XtoseJBcP1xzfr3ehfF2nuPN+RmwF4ELkJtDnCfKqD/YKd
 W8kD5BuUKDgM1WnQrKB/SpUU1umsnOXhWM/2KvBu7cfOpjhoLCcJQnF74
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mlJqs9jH
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 cf33d96f50903214226b379b3f10d1f262dae018
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
branch HEAD: cf33d96f50903214226b379b3f10d1f262dae018  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 1407m

configs tested: 143
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                        nsimosci_defconfig    gcc-13.2.0
arc                   randconfig-001-20250121    gcc-13.2.0
arc                   randconfig-001-20250122    gcc-13.2.0
arc                   randconfig-002-20250121    gcc-13.2.0
arc                   randconfig-002-20250122    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                         assabet_defconfig    clang-20
arm                       imx_v6_v7_defconfig    clang-20
arm                   randconfig-001-20250121    clang-18
arm                   randconfig-001-20250122    clang-19
arm                   randconfig-002-20250121    gcc-14.2.0
arm                   randconfig-002-20250122    clang-20
arm                   randconfig-003-20250121    gcc-14.2.0
arm                   randconfig-003-20250122    gcc-14.2.0
arm                   randconfig-004-20250121    gcc-14.2.0
arm                   randconfig-004-20250122    gcc-14.2.0
arm                           sunxi_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250121    gcc-14.2.0
arm64                 randconfig-001-20250122    clang-20
arm64                 randconfig-002-20250121    gcc-14.2.0
arm64                 randconfig-002-20250122    clang-15
arm64                 randconfig-003-20250121    gcc-14.2.0
arm64                 randconfig-003-20250122    clang-20
arm64                 randconfig-004-20250121    clang-18
arm64                 randconfig-004-20250122    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250122    gcc-14.2.0
csky                  randconfig-002-20250122    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250122    clang-20
hexagon               randconfig-002-20250122    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250121    gcc-12
i386        buildonly-randconfig-001-20250122    clang-19
i386        buildonly-randconfig-002-20250121    clang-19
i386        buildonly-randconfig-002-20250122    gcc-12
i386        buildonly-randconfig-003-20250121    gcc-12
i386        buildonly-randconfig-003-20250122    gcc-12
i386        buildonly-randconfig-004-20250121    gcc-12
i386        buildonly-randconfig-004-20250122    clang-19
i386        buildonly-randconfig-005-20250121    gcc-12
i386        buildonly-randconfig-005-20250122    clang-19
i386        buildonly-randconfig-006-20250121    clang-19
i386        buildonly-randconfig-006-20250122    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250122    gcc-14.2.0
loongarch             randconfig-002-20250122    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                      maltaaprp_defconfig    clang-20
mips                        vocore2_defconfig    clang-15
nios2                 randconfig-001-20250122    gcc-14.2.0
nios2                 randconfig-002-20250122    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250122    gcc-14.2.0
parisc                randconfig-002-20250122    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                        icon_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    clang-17
powerpc                  mpc866_ads_defconfig    clang-20
powerpc               randconfig-001-20250122    gcc-14.2.0
powerpc               randconfig-002-20250122    clang-17
powerpc               randconfig-003-20250122    clang-15
powerpc                     tqm8560_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250122    clang-20
powerpc64             randconfig-002-20250122    clang-19
powerpc64             randconfig-003-20250122    clang-20
riscv                            allmodconfig    clang-20
riscv                            allyesconfig    clang-20
riscv                    nommu_virt_defconfig    clang-20
riscv                 randconfig-001-20250121    gcc-14.2.0
riscv                 randconfig-001-20250122    clang-20
riscv                 randconfig-002-20250121    gcc-14.2.0
riscv                 randconfig-002-20250122    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250121    clang-15
s390                  randconfig-001-20250122    clang-18
s390                  randconfig-002-20250121    gcc-14.2.0
s390                  randconfig-002-20250122    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250121    gcc-14.2.0
sh                    randconfig-001-20250122    gcc-14.2.0
sh                    randconfig-002-20250121    gcc-14.2.0
sh                    randconfig-002-20250122    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sh                   sh7724_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250121    gcc-14.2.0
sparc                 randconfig-001-20250122    gcc-14.2.0
sparc                 randconfig-002-20250121    gcc-14.2.0
sparc                 randconfig-002-20250122    gcc-14.2.0
sparc64               randconfig-001-20250121    gcc-14.2.0
sparc64               randconfig-001-20250122    gcc-14.2.0
sparc64               randconfig-002-20250121    gcc-14.2.0
sparc64               randconfig-002-20250122    gcc-14.2.0
um                               allmodconfig    clang-20
um                               allyesconfig    gcc-12
um                    randconfig-001-20250121    clang-16
um                    randconfig-001-20250122    gcc-12
um                    randconfig-002-20250121    gcc-12
um                    randconfig-002-20250122    clang-20
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250121    gcc-12
x86_64      buildonly-randconfig-001-20250122    gcc-12
x86_64      buildonly-randconfig-002-20250121    clang-19
x86_64      buildonly-randconfig-002-20250122    clang-19
x86_64      buildonly-randconfig-003-20250121    gcc-12
x86_64      buildonly-randconfig-003-20250122    gcc-12
x86_64      buildonly-randconfig-004-20250121    clang-19
x86_64      buildonly-randconfig-004-20250122    gcc-12
x86_64      buildonly-randconfig-005-20250121    clang-19
x86_64      buildonly-randconfig-005-20250122    gcc-12
x86_64      buildonly-randconfig-006-20250121    gcc-12
x86_64      buildonly-randconfig-006-20250122    clang-19
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250121    gcc-14.2.0
xtensa                randconfig-001-20250122    gcc-14.2.0
xtensa                randconfig-002-20250121    gcc-14.2.0
xtensa                randconfig-002-20250122    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
