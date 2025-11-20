Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F49C76A88
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 00:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C024741EE2;
	Thu, 20 Nov 2025 23:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDrwpC91Ic0U; Thu, 20 Nov 2025 23:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E59CF41EEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763682642;
	bh=vOM64z6SS0KZ6+SC4/+9JRTG03dSZFOFcsFgonqKRvU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4aHn0Vkw32YOd28lbW2xzeuXtQEADnbUG7dvllB4bZlPfjI4WSyqD5G4Nav63wV8M
	 s7LcbHL0k5TrFTEl+tp6xb4BKR63yefNnq6wsOxMCU792rnmzs70NohCQFqx4ZCDpR
	 VnnJY7YzdKwezskiyPynKnDXbBcuOHw1QzAyl0sCrwcBectRwAwinan6qWW+lQPA7r
	 NKjqfRXHv/ROUnncjiVWd0JndSxhuja/p5a87LQsEvKaPqUVtLLlDwVCUYIIHbR/HY
	 sk+x+fQgEeg9xGYcCASznLj+ATD6wzqD1orOGiA4Qcou7sQR4u795ep+svYIDmGcb2
	 9L7k55H0MXDtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E59CF41EEE;
	Thu, 20 Nov 2025 23:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DB277158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 23:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC9E084397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 23:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oFx79eJqQJcn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 23:50:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59BA884391
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59BA884391
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59BA884391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 23:50:39 +0000 (UTC)
X-CSE-ConnectionGUID: 2Lg5WtRoRqi4c6BNntN44w==
X-CSE-MsgGUID: nPM08ooVTse12ZHZJzbeYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="64960703"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="64960703"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 15:50:39 -0800
X-CSE-ConnectionGUID: 1jwEL8ruRlOmtDb+snk1gw==
X-CSE-MsgGUID: OP/IG9ihTUeSNzsPpSnpyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="192295982"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 20 Nov 2025 15:50:38 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vMEQ7-0004jF-2P
 for intel-wired-lan@lists.osuosl.org; Thu, 20 Nov 2025 23:50:35 +0000
Date: Fri, 21 Nov 2025 07:49:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511210749.4hN1HSzP-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763682640; x=1795218640;
 h=date:from:to:subject:message-id;
 bh=T0TbqT5lzsidCmAAJoom4nD/tQGmhvg430McINdjdlA=;
 b=gpHPEAzjGIoSySsEicp4JnBflHh5UBAEBUWdLD0GvJRAiSnGEza7vJoy
 cZ59InojXH4QOmiQybk7Jjzn92ydXT+Vf5g9q/Oj9jKUGzNqugJU1l50l
 m8Eu1HHxxidBUCBAYBH/c17TuAO8r93IPtwqyi1ELPdBcoJ2YGyOAmotz
 GJdGNUyG1cZ80FCqbzt9SypRYfS4PCvm4LXW60GZxSjRwy25s+WORTuVl
 SLldHGlRd9eIZrxfmc+jQsApLN8NvWrCxzUF/ABJ6bMn40cKmQlFbVrTE
 scP7ZUUIEkVPBapWSOmNKtwTXUzXG0okBwr0j6bhF69V7XHX8ziL9uNq4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gpHPEAzj
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c55ae77e512e9b1deeb947ec88035c2031a62e5e
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: c55ae77e512e9b1deeb947ec88035c2031a62e5e  i40e: fix src IP mask checks and memcpy argument names in cloud filter

elapsed time: 1762m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                              allnoconfig    gcc-15.1.0
arc                                allnoconfig    gcc-15.1.0
arc                    randconfig-001-20251120    gcc-15.1.0
arc                    randconfig-002-20251120    gcc-8.5.0
arc                            tb10x_defconfig    gcc-15.1.0
arm                                allnoconfig    clang-22
arm                          assabet_defconfig    clang-18
arm                    randconfig-001-20251120    gcc-13.4.0
arm                    randconfig-002-20251120    gcc-14.3.0
arm                    randconfig-003-20251120    clang-17
arm                    randconfig-004-20251120    clang-19
arm64                              allnoconfig    gcc-15.1.0
arm64                  randconfig-001-20251121    gcc-8.5.0
arm64                  randconfig-002-20251121    clang-22
arm64                  randconfig-003-20251121    gcc-8.5.0
arm64                  randconfig-004-20251121    gcc-10.5.0
csky                               allnoconfig    gcc-15.1.0
csky                   randconfig-001-20251121    gcc-14.3.0
csky                   randconfig-002-20251121    gcc-11.5.0
hexagon                            allnoconfig    clang-22
i386                               allnoconfig    gcc-14
i386         buildonly-randconfig-001-20251121    gcc-14
i386         buildonly-randconfig-002-20251121    gcc-14
i386         buildonly-randconfig-003-20251121    clang-20
i386         buildonly-randconfig-006-20251121    clang-20
i386                   randconfig-001-20251121    gcc-14
i386                   randconfig-002-20251121    clang-20
i386                   randconfig-003-20251121    gcc-14
i386                   randconfig-004-20251121    clang-20
i386                   randconfig-005-20251121    clang-20
i386                   randconfig-006-20251121    gcc-14
i386                   randconfig-007-20251121    gcc-14
i386                   randconfig-012-20251121    clang-20
i386                   randconfig-013-20251121    clang-20
loongarch                          allnoconfig    clang-22
loongarch                            defconfig    clang-19
loongarch             randconfig-6001-20251120    clang-20
m68k                               allnoconfig    gcc-15.1.0
m68k                                 defconfig    gcc-15.1.0
m68k                           sun3x_defconfig    gcc-15.1.0
microblaze                         allnoconfig    gcc-15.1.0
microblaze                           defconfig    gcc-15.1.0
mips                               allnoconfig    gcc-15.1.0
mips                          bigsur_defconfig    gcc-15.1.0
nios2                              allnoconfig    gcc-11.5.0
nios2                                defconfig    gcc-11.5.0
openrisc                           allnoconfig    gcc-15.1.0
openrisc                             defconfig    gcc-15.1.0
parisc                             allnoconfig    gcc-15.1.0
parisc                               defconfig    gcc-15.1.0
parisc                randconfig-6001-20251120    gcc-9.5.0
parisc                randconfig-6002-20251120    gcc-13.4.0
parisc64                             defconfig    gcc-15.1.0
powerpc                            allnoconfig    gcc-15.1.0
powerpc                     ge_imp3a_defconfig    gcc-15.1.0
powerpc                  mpc834x_itx_defconfig    clang-16
powerpc                   mpc885_ads_defconfig    clang-22
powerpc                       pasemi_defconfig    clang-22
powerpc               randconfig-6001-20251120    clang-19
powerpc               randconfig-6002-20251120    clang-22
powerpc64             randconfig-6001-20251120    gcc-11.5.0
powerpc64             randconfig-6002-20251120    clang-22
riscv                              allnoconfig    gcc-15.1.0
riscv                                defconfig    clang-22
riscv                  randconfig-001-20251120    gcc-8.5.0
riscv                  randconfig-002-20251120    clang-22
s390                               allnoconfig    clang-22
s390                                 defconfig    clang-22
s390                   randconfig-001-20251120    clang-22
s390                   randconfig-002-20251120    gcc-8.5.0
sh                                 allnoconfig    gcc-15.1.0
sh                                   defconfig    gcc-15.1.0
sh                     randconfig-001-20251120    gcc-12.5.0
sh                     randconfig-002-20251120    gcc-15.1.0
sparc                              allnoconfig    gcc-15.1.0
sparc                                defconfig    gcc-15.1.0
sparc                 randconfig-6001-20251120    gcc-13.4.0
sparc                 randconfig-6002-20251120    gcc-15.1.0
sparc64                              defconfig    clang-20
sparc64               randconfig-6001-20251120    clang-20
sparc64               randconfig-6002-20251120    gcc-13.4.0
um                                 allnoconfig    clang-22
um                                   defconfig    clang-22
um                              i386_defconfig    gcc-14
um                    randconfig-6001-20251120    gcc-14
um                    randconfig-6002-20251120    gcc-14
um                            x86_64_defconfig    clang-22
x86_64                             allnoconfig    clang-20
x86_64      buildonly-randconfig-6001-20251120    gcc-14
x86_64      buildonly-randconfig-6002-20251120    clang-20
x86_64      buildonly-randconfig-6003-20251120    clang-20
x86_64      buildonly-randconfig-6004-20251120    clang-20
x86_64                               defconfig    gcc-14
x86_64                 randconfig-001-20251121    gcc-14
x86_64                 randconfig-003-20251121    clang-20
x86_64                 randconfig-004-20251121    gcc-14
x86_64                 randconfig-011-20251120    clang-20
x86_64                 randconfig-012-20251120    gcc-13
x86_64                 randconfig-013-20251120    gcc-14
x86_64                 randconfig-014-20251120    gcc-14
x86_64                 randconfig-015-20251120    gcc-14
x86_64                 randconfig-016-20251120    clang-20
xtensa                             allnoconfig    gcc-15.1.0
xtensa                randconfig-6001-20251120    gcc-11.5.0
xtensa                randconfig-6002-20251120    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
