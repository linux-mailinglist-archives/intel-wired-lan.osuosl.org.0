Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E779EBDE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 23:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F121681E84;
	Tue, 10 Dec 2024 22:34:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jBiFo37ZorsV; Tue, 10 Dec 2024 22:34:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACBE981EED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733870048;
	bh=V1D9VykqxSjkbMBLk8tPVHwuNpLzQvzS39r5NBeINrw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bB37Aea/NsWRtwSBPU3QHk8AyFFNfPTqrAkXTEJfSLGk1lIGn6Z0y63VSVrGd+A/5
	 s7fszThPVFMcjY3V7G3r5RjC1lE76QlB27fzeTKqOL7NfoTC9O2njhYWnYoSTPBvrF
	 RbhjHCMaGhhe4X6cDN/fNSGtCNWjIPI9ACiDMFCPNZEhUeV6dVdv3BHpgGFaaXdQqj
	 c866d8vUW+DAoYeem1MjTwxr0s3y2Pnn6oJ05uDkdyrkkI9kevqwqrytpu0Rb5kgIo
	 ALDCRHG/r3mcUO2lXdcZoMc2dQJ3V9lhyv4Don/nVEkBdZiiALWlPk2CxaMdxB4w1K
	 yJSxPGmF9mVHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACBE981EED;
	Tue, 10 Dec 2024 22:34:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD9766F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 22:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9816740909
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 22:34:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FSwFSEPUf0qw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 22:34:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 363A3408B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 363A3408B3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 363A3408B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 22:34:04 +0000 (UTC)
X-CSE-ConnectionGUID: 9ydSF/KuSwuSnu604YmJ2g==
X-CSE-MsgGUID: RA+txiTYR7ehheeohOoEfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34376274"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="34376274"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 14:34:04 -0800
X-CSE-ConnectionGUID: F8ru6cVXTdKIUcbijeXJAg==
X-CSE-MsgGUID: Xw42kvyDS7W4bTS/KNYJ6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="126460051"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 10 Dec 2024 14:34:03 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tL8no-00061J-2c
 for intel-wired-lan@lists.osuosl.org; Tue, 10 Dec 2024 22:34:00 +0000
Date: Wed, 11 Dec 2024 06:33:05 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412110659.df4rCoq2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733870045; x=1765406045;
 h=date:from:to:subject:message-id;
 bh=LpNc71iNl2FQ9U6LO3liS2VxI1zjQsPcqd6Ku6bYFro=;
 b=ew+JsS+az+LUfHP5q/BY25HsigCBUkhupc/5WWKNUXXuSge0tNx739Yb
 2sVCkOkTrFBGaAUPsqY+bYE81Dfhtiipc8BQQJ6VQYfWRH1uP9KPjLqRe
 pU8zyrN2BqKsz3RaAlDJ458L5ssNz0ifiPYLzB69+NQrp3INpJRo8kr4g
 RPXhQiYbO2Ovc+YsRrXuBoKZyGOMO0asx4ZQAzn2vb2ie6o7B8btYBsWv
 xkDKAT6z9GwzFyRnsxm78I81SSNkebsk8xaN626YigpBuxrj4jQm3u/LU
 RvMacUUPxSW3l2a8ojkdPE9NJGEiTwl2oCRa9igj9oGh0sRFI8AGP+Vao
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ew+JsS+a
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f6128cabd95eabba970e0be603e6502dafba2d09
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
branch HEAD: f6128cabd95eabba970e0be603e6502dafba2d09  ice: Extend ethtool reset support

elapsed time: 1449m

configs tested: 110
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241210    gcc-13.2.0
arc                   randconfig-002-20241210    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20241210    clang-20
arm                   randconfig-002-20241210    gcc-14.2.0
arm                   randconfig-003-20241210    clang-20
arm                   randconfig-004-20241210    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241210    clang-20
arm64                 randconfig-002-20241210    clang-20
arm64                 randconfig-003-20241210    clang-20
arm64                 randconfig-004-20241210    clang-20
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241210    gcc-14.2.0
csky                  randconfig-002-20241210    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20241210    clang-16
hexagon               randconfig-002-20241210    clang-14
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20241210    gcc-12
i386        buildonly-randconfig-002-20241210    clang-19
i386        buildonly-randconfig-003-20241210    gcc-12
i386        buildonly-randconfig-004-20241210    clang-19
i386        buildonly-randconfig-005-20241210    clang-19
i386        buildonly-randconfig-006-20241210    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241210    gcc-14.2.0
loongarch             randconfig-002-20241210    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          hp300_defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         bigsur_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    clang-16
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241210    gcc-14.2.0
nios2                 randconfig-002-20241210    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241210    gcc-14.2.0
parisc                randconfig-002-20241210    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                    amigaone_defconfig    gcc-14.2.0
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241210    clang-20
powerpc               randconfig-002-20241210    clang-20
powerpc               randconfig-003-20241210    clang-20
powerpc64             randconfig-001-20241210    gcc-14.2.0
powerpc64             randconfig-002-20241210    gcc-14.2.0
powerpc64             randconfig-003-20241210    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241210    clang-19
riscv                 randconfig-002-20241210    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241210    gcc-14.2.0
s390                  randconfig-002-20241210    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20241210    gcc-14.2.0
sh                    randconfig-002-20241210    gcc-14.2.0
sparc                            alldefconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241210    gcc-14.2.0
sparc                 randconfig-002-20241210    gcc-14.2.0
sparc64               randconfig-001-20241210    gcc-14.2.0
sparc64               randconfig-002-20241210    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20241210    clang-20
um                    randconfig-002-20241210    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241210    gcc-12
x86_64      buildonly-randconfig-002-20241210    clang-19
x86_64      buildonly-randconfig-003-20241210    clang-19
x86_64      buildonly-randconfig-004-20241210    gcc-12
x86_64      buildonly-randconfig-005-20241210    gcc-12
x86_64      buildonly-randconfig-006-20241210    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241210    gcc-14.2.0
xtensa                randconfig-002-20241210    gcc-14.2.0
xtensa                         virt_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
