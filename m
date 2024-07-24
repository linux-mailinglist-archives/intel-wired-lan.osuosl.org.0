Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EB193B3A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 17:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EC5A40CA5;
	Wed, 24 Jul 2024 15:31:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bds6Gwmsggt5; Wed, 24 Jul 2024 15:31:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEE1140C94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721835089;
	bh=+cPXDkPvFD0wqQM2zF5GY38YU6pUbM2w68IIH0JynVc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tQZhMJk4X8iewa0EWQlSlEQBZvjdj5euGEXGHGRKB54LHkfRl3JNV2SvNdOM+a3dU
	 p6ptXj8YZZ/3QrMNUJGBhn+69B3S41VvRABRpKwPSCFEGwrrjf+PcMgEKGZWJYjxlz
	 BxTBG9cs6ZhY6/qYb64h8Aar2DJPHrnCg256reZS3aXLOYy1egv5sfJCneWQ7lRq7B
	 uBZxIS3GDLnsEwDm6NssfEYJ27AYO9DnqiWjabrx+49HKIoP16OnQZynmsIHhC8Qzb
	 tdy7M6akBfmuSWuQWrcLQUaEAVPg64HQs6Br0sOENTmGFQlM9/AiYJ0FdWSZVCrg8Z
	 HQKFRMoDUUvqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEE1140C94;
	Wed, 24 Jul 2024 15:31:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92BD31BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 15:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7DADF8144A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 15:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bpxvHbw4uNhJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 15:31:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2351581448
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2351581448
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2351581448
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 15:31:25 +0000 (UTC)
X-CSE-ConnectionGUID: taBg8tL7Rga/nB1GNWMzsA==
X-CSE-MsgGUID: ue80CCOEQF2sWuB5LMK8eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30667638"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30667638"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 08:31:25 -0700
X-CSE-ConnectionGUID: pcSR84tjQveeG3+KJbR94w==
X-CSE-MsgGUID: IUJwg8k0SMW5tngHKUAX4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52842841"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 24 Jul 2024 08:31:24 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sWdxZ-000n7e-2h
 for intel-wired-lan@lists.osuosl.org; Wed, 24 Jul 2024 15:31:21 +0000
Date: Wed, 24 Jul 2024 23:30:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407242352.f6u9NjLM-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721835086; x=1753371086;
 h=date:from:to:subject:message-id;
 bh=PXM/0YaQn94YjA4racxpkxahD/CTloh7yRMCqJZ41pY=;
 b=REiTFuVtJvPwnQGSE37YnvV6IGgSS5ZDkWzJ5E6m/hhrRCaQYH9S6Jx1
 c0VrzbyllnjINzTERQAm/O4nPa9oCp1g5JlzZ/NuQps0MyFe3wUHKPrvW
 hBjMUvbjoqTb3NHyH6LJNsH+6GziQ6if/wuB6CBty0seoWFuXAuWLjdvW
 tuArz4u3LeBcqpmqS38tvdLxgopz6omAEPl2mxlEcwqkIEr7OnPFlcshe
 n3EZ+wk++XZL5H4PYbDe0dsU3UM9Pra7dHmPWXkoRi75lzUQkOaxU/ajd
 2/uezwNJdHQh0DppWq5wCPKlofZmSrDP1aT3NkS16jsi8hwMK0mCnsnV+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=REiTFuVt
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3229c54b1e37ac1fc71394a9a0da27749286e1fb
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
branch HEAD: 3229c54b1e37ac1fc71394a9a0da27749286e1fb  igc: Add Energy Efficient Ethernet ability

elapsed time: 1016m

configs tested: 183
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240724   gcc-13.2.0
arc                   randconfig-002-20240724   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                       aspeed_g5_defconfig   gcc-14.1.0
arm                     davinci_all_defconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                           omap1_defconfig   gcc-14.1.0
arm                   randconfig-001-20240724   gcc-13.2.0
arm                   randconfig-002-20240724   gcc-13.2.0
arm                   randconfig-003-20240724   gcc-13.2.0
arm                   randconfig-004-20240724   gcc-13.2.0
arm                       spear13xx_defconfig   gcc-14.1.0
arm                           spitz_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240724   gcc-13.2.0
arm64                 randconfig-002-20240724   gcc-13.2.0
arm64                 randconfig-003-20240724   gcc-13.2.0
arm64                 randconfig-004-20240724   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240724   gcc-13.2.0
csky                  randconfig-002-20240724   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240724   clang-18
i386         buildonly-randconfig-002-20240724   clang-18
i386         buildonly-randconfig-002-20240724   gcc-9
i386         buildonly-randconfig-003-20240724   clang-18
i386         buildonly-randconfig-004-20240724   clang-18
i386         buildonly-randconfig-005-20240724   clang-18
i386         buildonly-randconfig-006-20240724   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240724   clang-18
i386                  randconfig-002-20240724   clang-18
i386                  randconfig-003-20240724   clang-18
i386                  randconfig-004-20240724   clang-18
i386                  randconfig-004-20240724   gcc-9
i386                  randconfig-005-20240724   clang-18
i386                  randconfig-006-20240724   clang-18
i386                  randconfig-011-20240724   clang-18
i386                  randconfig-011-20240724   gcc-13
i386                  randconfig-012-20240724   clang-18
i386                  randconfig-013-20240724   clang-18
i386                  randconfig-013-20240724   gcc-13
i386                  randconfig-014-20240724   clang-18
i386                  randconfig-014-20240724   gcc-8
i386                  randconfig-015-20240724   clang-18
i386                  randconfig-015-20240724   gcc-13
i386                  randconfig-016-20240724   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240724   gcc-13.2.0
loongarch             randconfig-002-20240724   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                         bigsur_defconfig   gcc-14.1.0
mips                      pic32mzda_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240724   gcc-13.2.0
nios2                 randconfig-002-20240724   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240724   gcc-13.2.0
parisc                randconfig-002-20240724   gcc-13.2.0
parisc64                         alldefconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                          allyesconfig   gcc-14.1.0
powerpc                     ksi8560_defconfig   gcc-14.1.0
powerpc                 mpc837x_rdb_defconfig   gcc-14.1.0
powerpc                      pmac32_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240724   gcc-13.2.0
powerpc               randconfig-002-20240724   gcc-13.2.0
powerpc               randconfig-003-20240724   gcc-13.2.0
powerpc                     redwood_defconfig   gcc-14.1.0
powerpc                     tqm8560_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240724   gcc-13.2.0
powerpc64             randconfig-002-20240724   gcc-13.2.0
powerpc64             randconfig-003-20240724   gcc-13.2.0
riscv                            allmodconfig   clang-19
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv             nommu_k210_sdcard_defconfig   gcc-14.1.0
riscv                    nommu_virt_defconfig   gcc-14.1.0
riscv                 randconfig-001-20240724   gcc-13.2.0
riscv                 randconfig-002-20240724   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240724   gcc-13.2.0
s390                  randconfig-002-20240724   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                            migor_defconfig   gcc-14.1.0
sh                    randconfig-001-20240724   gcc-13.2.0
sh                    randconfig-002-20240724   gcc-13.2.0
sh                        sh7763rdp_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240724   gcc-13.2.0
sparc64               randconfig-002-20240724   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240724   gcc-13.2.0
um                    randconfig-002-20240724   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240724   clang-18
x86_64       buildonly-randconfig-002-20240724   clang-18
x86_64       buildonly-randconfig-003-20240724   clang-18
x86_64       buildonly-randconfig-004-20240724   clang-18
x86_64       buildonly-randconfig-005-20240724   clang-18
x86_64       buildonly-randconfig-006-20240724   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240724   clang-18
x86_64                randconfig-002-20240724   clang-18
x86_64                randconfig-003-20240724   clang-18
x86_64                randconfig-004-20240724   clang-18
x86_64                randconfig-005-20240724   clang-18
x86_64                randconfig-006-20240724   clang-18
x86_64                randconfig-011-20240724   clang-18
x86_64                randconfig-012-20240724   clang-18
x86_64                randconfig-013-20240724   clang-18
x86_64                randconfig-014-20240724   clang-18
x86_64                randconfig-015-20240724   clang-18
x86_64                randconfig-016-20240724   clang-18
x86_64                randconfig-071-20240724   clang-18
x86_64                randconfig-072-20240724   clang-18
x86_64                randconfig-073-20240724   clang-18
x86_64                randconfig-074-20240724   clang-18
x86_64                randconfig-075-20240724   clang-18
x86_64                randconfig-076-20240724   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240724   gcc-13.2.0
xtensa                randconfig-002-20240724   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
