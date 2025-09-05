Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98211B44C98
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 06:09:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35FAE407CA;
	Fri,  5 Sep 2025 04:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ZupS4cE_Tc7; Fri,  5 Sep 2025 04:09:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E1FB40A49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757045365;
	bh=vALwfGCxgI6ADwqjyrA0PiRqWZY/dewpWLAlXQfFA1k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z/6PxsQkrbqN2fAX5YRqg/JYQ5GkGJZj36RtVSaRU1x8bhivXrTn+8JUE0LJM4O31
	 CdIQ82LXuBYT0Sie+qLLIsytpQtNC9q4NDZXLQ3Xi6uEoTl+XaRpdATcluJsWyn8La
	 UxIhEhZSFaNPjyg3NBc2bryz7DMB3rvy1PJB+AVJscjrrOspjGrx74B0O3ItjTtcEi
	 hQiVUh7F7kjipUHi2bP2lO0Aoy5gpZDSJpXsdwkPrawNsDtJM6gSSHa1HIsW+pLyWo
	 Hh/EWf/ZfaOrbFWvyIBwSjOPu06iDHFnZHWhMUw+hDofnp62DAY++T/S8Weucx4cfl
	 54nnJ17BOqsDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E1FB40A49;
	Fri,  5 Sep 2025 04:09:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ED1C111
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 04:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E421809BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 04:09:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ESgQoiNpuwEY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 04:09:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8322F806C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8322F806C4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8322F806C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 04:09:22 +0000 (UTC)
X-CSE-ConnectionGUID: KeWcfic7QMOC3/qeKl4vTA==
X-CSE-MsgGUID: 5rUtCI2SR2WNNI8VzUP8zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="77004366"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="77004366"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 21:09:21 -0700
X-CSE-ConnectionGUID: POK6ZCUMSbiTWTWeqNAWSw==
X-CSE-MsgGUID: R0795nGjRRe9a1hHDzbL/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="171358559"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 04 Sep 2025 21:09:20 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uuNlG-00001f-0P
 for intel-wired-lan@lists.osuosl.org; Fri, 05 Sep 2025 04:09:18 +0000
Date: Fri, 05 Sep 2025 12:09:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509051205.UIprG6Xt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757045362; x=1788581362;
 h=date:from:to:subject:message-id;
 bh=Owu81rxCQdroolU+TlXAVGRmryW8s2x6zyUDkTJol/0=;
 b=m/3/dmDqMVyH1+QyxQrhOo3CnNdOtShuofQregeaV83vYkYDJb+XiNsy
 BZ3KfxbIXsWLsBDwBYWzEXkxiBg52B+DZdXOE1j2eAVu9DgNxBllehMWM
 hQvixX5iGbRQciNtaw7eQOPMo/qFEvj1OrJnskS2y2L30EHxZ+86Z5qbY
 w1KFLnB+5ECe84SqCHTCRJeftVavW78C0MudHMHzzgvRWnkBTbXliUjYh
 86Mjvfxj29wPsE3gf/15yuGIBUS3zimT5Qn4Y40Y3A5QSoX0zTTZRZkdD
 j/YWIWhuESiDiXaMYp9zmSl8s8MpkNjIYlLsnVqmUOn/WMcVLYfTOIWnL
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m/3/dmDq
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 396a788bca86ebef419471c73debdc46227972b5
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
branch HEAD: 396a788bca86ebef419471c73debdc46227972b5  ixgbe: drop unnecessary casts to u16 / int

elapsed time: 1873m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20250904    gcc-9.5.0
arc                   randconfig-002-20250904    gcc-11.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250904    gcc-10.5.0
arm                   randconfig-002-20250904    gcc-13.4.0
arm                   randconfig-003-20250904    gcc-8.5.0
arm                   randconfig-004-20250904    gcc-13.4.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250904    gcc-8.5.0
arm64                 randconfig-002-20250904    gcc-8.5.0
arm64                 randconfig-003-20250904    clang-22
arm64                 randconfig-004-20250904    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250904    gcc-15.1.0
csky                  randconfig-002-20250904    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250904    clang-22
hexagon               randconfig-002-20250904    clang-20
i386                             allmodconfig    gcc-13
i386                              allnoconfig    gcc-13
i386        buildonly-randconfig-001-20250904    clang-20
i386        buildonly-randconfig-002-20250904    gcc-12
i386        buildonly-randconfig-003-20250904    gcc-13
i386        buildonly-randconfig-004-20250904    gcc-13
i386        buildonly-randconfig-005-20250904    clang-20
i386        buildonly-randconfig-006-20250904    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250904    gcc-15.1.0
loongarch             randconfig-002-20250904    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        bcm63xx_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250904    gcc-11.5.0
nios2                 randconfig-002-20250904    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250904    gcc-8.5.0
parisc                randconfig-002-20250904    gcc-11.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250904    clang-19
powerpc               randconfig-002-20250904    gcc-13.4.0
powerpc               randconfig-003-20250904    clang-22
powerpc64             randconfig-001-20250904    gcc-15.1.0
powerpc64             randconfig-002-20250904    clang-22
powerpc64             randconfig-003-20250904    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250904    gcc-8.5.0
riscv                 randconfig-002-20250904    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250904    gcc-10.5.0
s390                  randconfig-002-20250904    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250904    gcc-12.5.0
sh                    randconfig-002-20250904    gcc-10.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250904    gcc-11.5.0
sparc                 randconfig-002-20250904    gcc-15.1.0
sparc64               randconfig-001-20250904    gcc-12.5.0
sparc64               randconfig-002-20250904    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-13
um                    randconfig-001-20250904    gcc-13
um                    randconfig-002-20250904    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250904    gcc-12
x86_64      buildonly-randconfig-002-20250904    clang-20
x86_64      buildonly-randconfig-003-20250904    gcc-13
x86_64      buildonly-randconfig-004-20250904    gcc-13
x86_64      buildonly-randconfig-005-20250904    gcc-13
x86_64      buildonly-randconfig-006-20250904    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250904    gcc-10.5.0
xtensa                randconfig-002-20250904    gcc-11.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
