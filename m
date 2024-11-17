Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D339D0595
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Nov 2024 20:50:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 918EA614A7;
	Sun, 17 Nov 2024 19:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5EPJJL6OPSNm; Sun, 17 Nov 2024 19:50:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 910A760773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731873016;
	bh=i9vcGdkRjlqTybv4kSX8Yej5kteoCC4XMiPr6wtBYMk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0eYFqKZ9L873sYdHK8VFvCuCJt9mIPiYOuovzzIWnZ5spj6Vs54li2qHh9HYWD81L
	 zOY8fho3m7Ye1LD2H7tDLjSdRvd7Y0PTfSTaPhIsIfD+/7VFAJWLrVyPWsGsHtLmPm
	 OAq9GY7dtEnfHPrmbu6fqQ3dSmOkn9O0lOGqDHTp5eQeo5z5XFaqeXKXco9Tj/GnjL
	 8TDAZHDuqcWW1+utGp1EJ51H2vAr7pYtFqI4GwfBNkxtADrK05J9KtIVmA6tRVqeSy
	 4X07ZWjFpXGV6UCllj0YBvofwPShOHPU/v9GbqChsx3w036woyaalkyfnuaEbWCopk
	 0gBWapbBqlRCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 910A760773;
	Sun, 17 Nov 2024 19:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 63FCADB3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 19:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51F79606EC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 19:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xRvR8ZTATvyF for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Nov 2024 19:50:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CE66A606D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE66A606D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE66A606D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Nov 2024 19:50:12 +0000 (UTC)
X-CSE-ConnectionGUID: 01QuQ/+VSfufwNQu++54Jw==
X-CSE-MsgGUID: wjcTaeJXRmiohkCXhqW0tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="35740485"
X-IronPort-AV: E=Sophos;i="6.12,162,1728975600"; d="scan'208";a="35740485"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 11:50:11 -0800
X-CSE-ConnectionGUID: fdEfyr79QI+k7XFQ51roPg==
X-CSE-MsgGUID: P03S6PRJRbi7wk5GaWzfKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,162,1728975600"; d="scan'208";a="88614003"
Received: from lkp-server01.sh.intel.com (HELO 1e3cc1889ffb) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 17 Nov 2024 11:50:10 -0800
Received: from kbuild by 1e3cc1889ffb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tClHc-00021L-0u
 for intel-wired-lan@lists.osuosl.org; Sun, 17 Nov 2024 19:50:08 +0000
Date: Mon, 18 Nov 2024 03:49:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411180315.zX8CUbza-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731873013; x=1763409013;
 h=date:from:to:subject:message-id;
 bh=hBE9Px0BOP8Ah+3ZW9SWfdAvZAyx88f48AajnamE5jE=;
 b=n9uKckuGaQyWno1+LGdzn6awzq9gg6mZiRi1O/FoHrwAE+2vhAbrwjtP
 duY13Oefc5NBZJ4olvp81nmGPwtBGXq75QaqOJnYao5SrVzxnHtZn2fly
 4BnFsUyLyJBtnruuVQ4rO4fLK9spEgTrUKSmhMuE7MvST66CWZALFT7u5
 3PvImMKNrfv7/0IvswcZj3032yiyTExUxHIWiihXNVrb1SWYPzkUxeB4b
 VbjUrFpXwLL3mLNSVJrcbhKcuxTfdqe1jM19jfdh0ugKyF8kflomqeHQA
 m078MaHAXFAEu4OKoW27Gkz9fObjphIMn2SDdSxnmsVn4btgu3Z59ywiw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n9uKckuG
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a18be307bc543be28a9c2882e9acecbb8ff9f096
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
branch HEAD: a18be307bc543be28a9c2882e9acecbb8ff9f096  idpf: add lock class key

elapsed time: 1684m

configs tested: 128
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arm                               allnoconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                       imx_v4_v5_defconfig    gcc-14.2.0
arm                       imx_v6_v7_defconfig    gcc-14.2.0
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241117    clang-19
i386        buildonly-randconfig-002-20241117    clang-19
i386        buildonly-randconfig-002-20241117    gcc-12
i386        buildonly-randconfig-003-20241117    clang-19
i386        buildonly-randconfig-003-20241117    gcc-12
i386        buildonly-randconfig-004-20241117    clang-19
i386        buildonly-randconfig-005-20241117    clang-19
i386        buildonly-randconfig-005-20241117    gcc-12
i386        buildonly-randconfig-006-20241117    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241117    clang-19
i386                  randconfig-002-20241117    clang-19
i386                  randconfig-003-20241117    clang-19
i386                  randconfig-003-20241117    gcc-12
i386                  randconfig-004-20241117    clang-19
i386                  randconfig-005-20241117    clang-19
i386                  randconfig-006-20241117    clang-19
i386                  randconfig-011-20241117    clang-19
i386                  randconfig-011-20241117    gcc-12
i386                  randconfig-012-20241117    clang-19
i386                  randconfig-013-20241117    clang-19
i386                  randconfig-014-20241117    clang-19
i386                  randconfig-015-20241117    clang-19
i386                  randconfig-015-20241117    gcc-12
i386                  randconfig-016-20241117    clang-19
i386                  randconfig-016-20241117    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    gcc-14.2.0
mips                          eyeq6_defconfig    gcc-14.2.0
mips                           gcw0_defconfig    gcc-14.2.0
mips                           ip30_defconfig    gcc-14.2.0
mips                          rb532_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           alldefconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        edosk7705_defconfig    gcc-14.2.0
sh                               j2_defconfig    gcc-14.2.0
sh                           se7705_defconfig    gcc-14.2.0
sh                        sh7785lcr_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241117    gcc-12
x86_64      buildonly-randconfig-002-20241117    gcc-12
x86_64      buildonly-randconfig-003-20241117    gcc-12
x86_64      buildonly-randconfig-004-20241117    gcc-12
x86_64      buildonly-randconfig-005-20241117    gcc-12
x86_64      buildonly-randconfig-006-20241117    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241117    gcc-12
x86_64                randconfig-002-20241117    gcc-12
x86_64                randconfig-003-20241117    gcc-12
x86_64                randconfig-004-20241117    gcc-12
x86_64                randconfig-005-20241117    gcc-12
x86_64                randconfig-006-20241117    gcc-12
x86_64                randconfig-011-20241117    gcc-12
x86_64                randconfig-012-20241117    gcc-12
x86_64                randconfig-013-20241117    gcc-12
x86_64                randconfig-014-20241117    gcc-12
x86_64                randconfig-015-20241117    gcc-12
x86_64                randconfig-016-20241117    gcc-12
x86_64                randconfig-071-20241117    gcc-12
x86_64                randconfig-072-20241117    gcc-12
x86_64                randconfig-073-20241117    gcc-12
x86_64                randconfig-074-20241117    gcc-12
x86_64                randconfig-075-20241117    gcc-12
x86_64                randconfig-076-20241117    gcc-12
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  cadence_csp_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
