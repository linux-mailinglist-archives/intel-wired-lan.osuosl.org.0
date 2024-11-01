Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2CD9B9979
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 21:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1341E80C86;
	Fri,  1 Nov 2024 20:32:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WB_Z8qbfxPWn; Fri,  1 Nov 2024 20:32:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A89680C57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730493125;
	bh=DTOZq051m8t0bIOicv9M4gipF5clushi7VXVJhV45sI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GoN057OltKHY7hfYgBpxGgiH8XE/QvlvG68NANkoxW4zZCV1dxUaFqXrXz3NmTDHD
	 DlFxlXdDQ8eR8oFU2XjqvyaB6nMnfgogm3Ftw7pq0vR7nY2p08WLuMo4IgsfNtPwOo
	 VimLg+WR4aRtZyveN/ZBwwrzxXVPx9aatiOvWVz1dnm2417lM/dtJKtWjF5OcjesDW
	 9AjrwZTGVs0Fdk4Gd0F11rd+ca69YtA+Z1pQMdO1kVfJWSjdxujl38Wp1B2ZKeaxDJ
	 nBTXEh/83TUvCcBJzjShJdkg1299KK1iLLgTcO7e8G7UZ1lBtN0TTKvFJb9WfS2kyM
	 2DFa8l4gX8kYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A89680C57;
	Fri,  1 Nov 2024 20:32:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D5736979
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 20:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2B19606A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 20:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uq8C3luljDUe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 20:32:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7362260594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7362260594
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7362260594
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 20:32:00 +0000 (UTC)
X-CSE-ConnectionGUID: 7YdVWJIiTqqU5xs3FEoEcw==
X-CSE-MsgGUID: Q3TLj5pES6GDlZ3+nvW1LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="47721265"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="47721265"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 13:31:59 -0700
X-CSE-ConnectionGUID: lIFamdbCSXSZ0JdWTOxsEw==
X-CSE-MsgGUID: N4mkDuu3RyacpV0myIp6Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87842298"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 01 Nov 2024 13:31:59 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6yJI-000i0r-2b
 for intel-wired-lan@lists.osuosl.org; Fri, 01 Nov 2024 20:31:56 +0000
Date: Sat, 02 Nov 2024 04:31:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411020455.yfucRhfG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730493121; x=1762029121;
 h=date:from:to:subject:message-id;
 bh=nMolG9QCCx5+VAAEmH6HMI4ZwyLnwPbF1hkgqaSdacE=;
 b=WBPYD5h4dAczz2e4FwLsauCcQmwuNVtV8n8lFKD/u2aoskMaSaqOPmvl
 8Ad8MjZgpo0H1Wfhy7W/rOpeclVmWlyzcc5Qs+Z54ni9iweLiIn8QOVgF
 YvjFOVfigwzReoLEMBZO72MhU4wt3ChN+VQNni2BJP/TeT3hrmsc/BMI2
 JIeJpMYsN/5VrN6VtxLIxf10Me9wg4bAazpVYCtU1V9tbGekYR2it9L/Z
 0ceFn/Ra4YBso8thRxW6JcZYl014VsTHjGzodjMdKtWDrC80o8XMPTWnR
 38LPxYmWthA7wNxlIxHJNnlFwI+EIq7S7Xz5omGLQgqsaigGm6lSCibZ7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WBPYD5h4
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 0144c06c5890d1ad0eea65df074cffaf4eea5a3c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 0144c06c5890d1ad0eea65df074cffaf4eea5a3c  net: dpaa_eth: print FD status in CPU endianness in dpaa_eth_fd tracepoint

elapsed time: 1038m

configs tested: 123
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
arc                    vdk_hs38_smp_defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                           omap1_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241101    gcc-12
i386        buildonly-randconfig-002-20241101    gcc-12
i386        buildonly-randconfig-003-20241101    gcc-12
i386        buildonly-randconfig-004-20241101    gcc-12
i386        buildonly-randconfig-005-20241101    gcc-12
i386        buildonly-randconfig-006-20241101    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241101    gcc-12
i386                  randconfig-002-20241101    gcc-12
i386                  randconfig-003-20241101    gcc-12
i386                  randconfig-004-20241101    gcc-12
i386                  randconfig-005-20241101    gcc-12
i386                  randconfig-006-20241101    gcc-12
i386                  randconfig-011-20241101    gcc-12
i386                  randconfig-012-20241101    gcc-12
i386                  randconfig-013-20241101    gcc-12
i386                  randconfig-014-20241101    gcc-12
i386                  randconfig-015-20241101    gcc-12
i386                  randconfig-016-20241101    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                           sun3_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                      mmu_defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                           ci20_defconfig    gcc-14.1.0
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                    or1ksim_defconfig    gcc-14.1.0
openrisc                 simple_smp_defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      ppc44x_defconfig    gcc-14.1.0
powerpc                         wii_defconfig    gcc-14.1.0
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv             nommu_k210_sdcard_defconfig    gcc-14.1.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                        apsh4ad0a_defconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                            titan_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc                       sparc64_defconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                           alldefconfig    gcc-14.1.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241101    gcc-12
x86_64      buildonly-randconfig-002-20241101    gcc-12
x86_64      buildonly-randconfig-003-20241101    gcc-12
x86_64      buildonly-randconfig-004-20241101    gcc-12
x86_64      buildonly-randconfig-005-20241101    gcc-12
x86_64      buildonly-randconfig-006-20241101    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241101    gcc-12
x86_64                randconfig-002-20241101    gcc-12
x86_64                randconfig-003-20241101    gcc-12
x86_64                randconfig-004-20241101    gcc-12
x86_64                randconfig-005-20241101    gcc-12
x86_64                randconfig-006-20241101    gcc-12
x86_64                randconfig-011-20241101    gcc-12
x86_64                randconfig-012-20241101    gcc-12
x86_64                randconfig-013-20241101    gcc-12
x86_64                randconfig-014-20241101    gcc-12
x86_64                randconfig-015-20241101    gcc-12
x86_64                randconfig-016-20241101    gcc-12
x86_64                randconfig-071-20241101    gcc-12
x86_64                randconfig-072-20241101    gcc-12
x86_64                randconfig-073-20241101    gcc-12
x86_64                randconfig-074-20241101    gcc-12
x86_64                randconfig-075-20241101    gcc-12
x86_64                randconfig-076-20241101    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                         virt_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
