Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB3A6CCCE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Mar 2025 22:43:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EE6A608AC;
	Sat, 22 Mar 2025 21:42:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xx0N0aoBnZj; Sat, 22 Mar 2025 21:42:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 737C96088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742679778;
	bh=1S72INaI2gto+eQEWU+gITR2syYIBQXaXtfjMahfP+U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BUp/JeLzWV5WafaFVn6e+ldciadlhirwNMa9hBmpGOWkgJeyPF3pVVv+bEDq9oiO6
	 wHTFJmlLQooaJt0O0MH2im5zrIyEVNElw+wGtbwete7Jub8UlFDL82SeF/RUzxWhDi
	 JOjtDptxzm/ms1aUsg0rBzuKawgxPKVBUUyduo6OS3CV2YBgMmQUJ88un++knKVdXJ
	 tAC0Ovl0hJizs9E9tYQN/jjSVyXtjRWwkc6NXnR31BsIL+gvWohveE6rTKeoYu2JK1
	 ki89JaG0EX70/fCvUyMYRBuj8X4P2x41fQQKQBU7d2WRZD8YkFGq2FssjHlOJ2mEiB
	 tYK7ReetC0LCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 737C96088F;
	Sat, 22 Mar 2025 21:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B99D1A0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BAA640CE9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:42:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E-vZzDrwYEuX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Mar 2025 21:42:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 584A840CD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 584A840CD5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 584A840CD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Mar 2025 21:42:56 +0000 (UTC)
X-CSE-ConnectionGUID: 1Q4pFZEmQj+d6O4+tvos3g==
X-CSE-MsgGUID: +vaJj20AQHye+VD/t0Vgvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11381"; a="44032590"
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="44032590"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2025 14:42:56 -0700
X-CSE-ConnectionGUID: JLCyrF13SmiCQK6WgUIzSg==
X-CSE-MsgGUID: jm3oUhe0QDuMP9dKPOM8kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,268,1736841600"; d="scan'208";a="123499240"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 22 Mar 2025 14:42:54 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tw6cG-0002Q1-1u
 for intel-wired-lan@lists.osuosl.org; Sat, 22 Mar 2025 21:42:52 +0000
Date: Sun, 23 Mar 2025 05:42:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503230528.P4uz96nU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742679776; x=1774215776;
 h=date:from:to:subject:message-id;
 bh=n7mc/6wF1qYNphd5FHJe/lj/reIIn0WDKRvqOEiFkj8=;
 b=SMR9B9FLflUv263BsFyHXHVqeM6CeDHfBqMHYP3B3XewF2klLtuKU+s4
 HYvzeHun6SERlM+yAypWZKzY50o9HQAU53ZJCPbfFT9hYtF04fLOswD7L
 AIhTKcj0xpSYJDsmmImEuuV3NetZGU0fjNH3Cm8pUDqJ9tvAdf02Q6/bG
 GKO37ZQVjkFw+2QKlYPNUKGitOB3+/ihSmTHMSVGTWiM0cEdSi1a8R89V
 ZpAK9FLFPzsXR+j7ZsyI12nw4be8XCBTQLQE5MLrpkae1dwHTTMm8SpKD
 PqNntn03/zibDt1TARiYQyUH8UADyjpXH8QyNIIZA82ykgT18hv2pEmQW
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SMR9B9FL
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2e42180ee7b87a42dc4e7e58bab838ca66e8e52a
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
branch HEAD: 2e42180ee7b87a42dc4e7e58bab838ca66e8e52a  igb: Get rid of spurious interrupts

elapsed time: 1446m

configs tested: 90
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                   randconfig-001-20250322    gcc-10.5.0
arc                   randconfig-002-20250322    gcc-8.5.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250322    gcc-7.5.0
arm                   randconfig-002-20250322    gcc-7.5.0
arm                   randconfig-003-20250322    clang-21
arm                   randconfig-004-20250322    clang-19
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250322    clang-21
arm64                 randconfig-002-20250322    clang-21
arm64                 randconfig-003-20250322    gcc-8.5.0
arm64                 randconfig-004-20250322    clang-21
csky                  randconfig-001-20250322    gcc-14.2.0
csky                  randconfig-002-20250322    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250322    clang-21
hexagon               randconfig-002-20250322    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250322    clang-20
i386        buildonly-randconfig-002-20250322    gcc-12
i386        buildonly-randconfig-003-20250322    gcc-12
i386        buildonly-randconfig-004-20250322    clang-20
i386        buildonly-randconfig-005-20250322    clang-20
i386        buildonly-randconfig-006-20250322    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch             randconfig-001-20250322    gcc-14.2.0
loongarch             randconfig-002-20250322    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
nios2                 randconfig-001-20250322    gcc-6.5.0
nios2                 randconfig-002-20250322    gcc-10.5.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250322    gcc-5.5.0
parisc                randconfig-002-20250322    gcc-13.3.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc               randconfig-001-20250322    clang-21
powerpc               randconfig-002-20250322    gcc-8.5.0
powerpc               randconfig-003-20250322    clang-21
powerpc64             randconfig-001-20250322    clang-21
powerpc64             randconfig-002-20250322    gcc-8.5.0
powerpc64             randconfig-003-20250322    gcc-8.5.0
riscv                            allmodconfig    clang-21
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250322    gcc-8.5.0
riscv                 randconfig-002-20250322    clang-21
s390                             allmodconfig    clang-18
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250322    gcc-9.3.0
s390                  randconfig-002-20250322    gcc-6.5.0
sh                               allmodconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250322    gcc-10.5.0
sh                    randconfig-002-20250322    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                 randconfig-001-20250322    gcc-9.3.0
sparc                 randconfig-002-20250322    gcc-9.3.0
sparc64               randconfig-001-20250322    gcc-5.5.0
sparc64               randconfig-002-20250322    gcc-5.5.0
um                               allmodconfig    clang-19
um                               allyesconfig    gcc-12
um                    randconfig-001-20250322    clang-21
um                    randconfig-002-20250322    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250322    clang-20
x86_64      buildonly-randconfig-002-20250322    clang-20
x86_64      buildonly-randconfig-003-20250322    clang-20
x86_64      buildonly-randconfig-004-20250322    gcc-12
x86_64      buildonly-randconfig-005-20250322    clang-20
x86_64      buildonly-randconfig-006-20250322    gcc-12
x86_64                              defconfig    gcc-11
xtensa                randconfig-001-20250322    gcc-14.2.0
xtensa                randconfig-002-20250322    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
