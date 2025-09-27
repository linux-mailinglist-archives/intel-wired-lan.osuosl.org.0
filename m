Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 803F1BA6314
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Sep 2025 22:03:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D6A040491;
	Sat, 27 Sep 2025 20:03:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GvazEHE2n6z8; Sat, 27 Sep 2025 20:02:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 252A840492
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759003379;
	bh=Mm/k6t9BVnQDvp4q78dlr8helBD/GQzygyGZDMKzJTM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rw0j4MgdEzr9lTGMyLvBeUUePRlszG0tyXEQhTubRlspgP+foqTSttvWDLpgiwd4/
	 6jhduFCLvQy5JFSekop7xQf553ZwUrTbL/BvoGs6P4FbP6Zp4Z7jho6HMIf3z7mh4l
	 PN+KWS0UhpcS4ULXXuIQkMuCUBZl5rLU8b6Fqy+SRoaTbpGjoAXsr5ETTdCAYtt5WX
	 XE8CTzfHDSG9Bfdcwsym+2ji2G6Ui155w6/YIhZdKRaziMXKQJm03Nttsp1UvhNLBd
	 1Aut91E/fXahL7n5pHdPOy2aGkJGxfRfTRN0z047VK9q2EOpxZtOx9fURRjWyyaQfg
	 VxF8iqmg8gf6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 252A840492;
	Sat, 27 Sep 2025 20:02:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F9B712D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 20:02:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35AA040490
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 20:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F90ciCRyp4OD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Sep 2025 20:02:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12D3240489
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D3240489
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12D3240489
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Sep 2025 20:02:56 +0000 (UTC)
X-CSE-ConnectionGUID: gQRNVPcFSOW6A0gOUWwo8g==
X-CSE-MsgGUID: 4ddPdfF1TzqmLUsnwt9w0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="78727118"
X-IronPort-AV: E=Sophos;i="6.18,298,1751266800"; d="scan'208";a="78727118"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2025 13:02:57 -0700
X-CSE-ConnectionGUID: MAhiSuKxQUey9AAwsNCSug==
X-CSE-MsgGUID: CrDABLnXSy6vtjW1SE+DyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,298,1751266800"; d="scan'208";a="177014394"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 27 Sep 2025 13:02:55 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v2b89-0007Ip-0p
 for intel-wired-lan@lists.osuosl.org; Sat, 27 Sep 2025 20:02:53 +0000
Date: Sun, 28 Sep 2025 04:02:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509280444.rUKeLXaa-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759003377; x=1790539377;
 h=date:from:to:subject:message-id;
 bh=+06m0yTJfNXvEkfO1Man1ryCAmuCbmdRzib4PmwOxYo=;
 b=hL9kJRt00/JnNuMCn9NG9hgo2npFVkClKmOn1coNQV2cs0K0v2XyQxds
 fACbkaPpSjPkK70/UHpOi1bR4xHrvY2KC3THxUYuWIS7eMTR11IUlioxF
 /FJfRCQkKXLxXxObcE7LKO6mk/HFlmJ2GDqsDUtVtAI149KY5oUVDn3k+
 vYjtmpQ54P+RXHF+zmAnI3CFipxuVtsYM7wwFdGoioI3W92LczxPTc5s1
 WomsRsEJjY3a0Xbgw+necXvDL4dYLJndQn8ONZmLwBMCuUKYrIZykD24L
 xx+unt3K+9457Sx+IEIoBHRgye1Hanruul8xmLziq6tW7eXyN8x3MmEnL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hL9kJRt0
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 347afa39042728267550fa7a5ab5e9af52671add
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 347afa39042728267550fa7a5ab5e9af52671add  dpll: zl3073x: Fix double free in zl3073x_devlink_flash_update()

elapsed time: 1259m

configs tested: 142
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                            hsdk_defconfig    gcc-15.1.0
arc                   randconfig-001-20250927    gcc-10.5.0
arc                   randconfig-002-20250927    gcc-13.4.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                            dove_defconfig    gcc-15.1.0
arm                          exynos_defconfig    clang-22
arm                          gemini_defconfig    clang-20
arm                          ixp4xx_defconfig    gcc-15.1.0
arm                            mps2_defconfig    clang-22
arm                       multi_v4t_defconfig    clang-16
arm                             mxs_defconfig    clang-22
arm                       netwinder_defconfig    gcc-15.1.0
arm                         nhk8815_defconfig    clang-22
arm                          pxa910_defconfig    gcc-15.1.0
arm                   randconfig-001-20250927    clang-18
arm                   randconfig-002-20250927    clang-16
arm                   randconfig-003-20250927    gcc-8.5.0
arm                   randconfig-004-20250927    gcc-10.5.0
arm                        realview_defconfig    clang-16
arm                         socfpga_defconfig    gcc-15.1.0
arm                        spear3xx_defconfig    clang-17
arm                        vexpress_defconfig    gcc-15.1.0
arm64                            alldefconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250927    gcc-8.5.0
arm64                 randconfig-002-20250927    gcc-11.5.0
arm64                 randconfig-003-20250927    clang-22
arm64                 randconfig-004-20250927    gcc-9.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250927    gcc-15.1.0
csky                  randconfig-002-20250927    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250927    clang-22
hexagon               randconfig-002-20250927    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20250927    clang-20
i386        buildonly-randconfig-002-20250927    gcc-14
i386        buildonly-randconfig-003-20250927    clang-20
i386        buildonly-randconfig-004-20250927    clang-20
i386        buildonly-randconfig-005-20250927    gcc-12
i386        buildonly-randconfig-006-20250927    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250927    gcc-15.1.0
loongarch             randconfig-002-20250927    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          multi_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm63xx_defconfig    clang-22
nios2                         3c120_defconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250927    gcc-9.5.0
nios2                 randconfig-002-20250927    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250927    gcc-9.5.0
parisc                randconfig-002-20250927    gcc-11.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                      ep88xc_defconfig    gcc-15.1.0
powerpc                   lite5200b_defconfig    clang-22
powerpc                 mpc834x_itx_defconfig    clang-16
powerpc               randconfig-001-20250927    gcc-13.4.0
powerpc               randconfig-002-20250927    clang-22
powerpc               randconfig-003-20250927    gcc-8.5.0
powerpc                     tqm8555_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250927    clang-22
powerpc64             randconfig-002-20250927    gcc-15.1.0
powerpc64             randconfig-003-20250927    gcc-12.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv             nommu_k210_sdcard_defconfig    gcc-15.1.0
riscv                 randconfig-001-20250927    clang-22
riscv                 randconfig-002-20250927    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                          debug_defconfig    gcc-15.1.0
s390                  randconfig-001-20250927    clang-22
s390                  randconfig-002-20250927    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                        edosk7760_defconfig    gcc-15.1.0
sh                          kfr2r09_defconfig    gcc-15.1.0
sh                    randconfig-001-20250927    gcc-15.1.0
sh                    randconfig-002-20250927    gcc-15.1.0
sh                          rsk7264_defconfig    gcc-15.1.0
sh                           se7343_defconfig    gcc-15.1.0
sparc                            alldefconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250927    gcc-11.5.0
sparc                 randconfig-002-20250927    gcc-11.5.0
sparc64               randconfig-001-20250927    gcc-15.1.0
sparc64               randconfig-002-20250927    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20250927    gcc-14
um                    randconfig-002-20250927    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250927    gcc-14
x86_64      buildonly-randconfig-002-20250927    clang-20
x86_64      buildonly-randconfig-003-20250927    clang-20
x86_64      buildonly-randconfig-004-20250927    gcc-14
x86_64      buildonly-randconfig-005-20250927    gcc-14
x86_64      buildonly-randconfig-006-20250927    clang-20
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250927    gcc-8.5.0
xtensa                randconfig-002-20250927    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
