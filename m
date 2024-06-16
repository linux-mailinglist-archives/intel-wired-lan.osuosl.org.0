Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7951F909BF1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jun 2024 08:43:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E01F56064B;
	Sun, 16 Jun 2024 06:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFID8M56jdi7; Sun, 16 Jun 2024 06:43:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B8B7606A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718520218;
	bh=M7lhQC8E1KriLmRk/mhq+aM6OBqMPGrEMwTv9Ap9NwI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e0W0WSoeGz7IfnkxL606eZZcIsYdgg8hGlbG8oLtsCgb8AT9Cgo+mwjOvxJM3YZQR
	 qKM4IlYeBRJAv3SmslmjMWb699tY8zRAzUtcvWYEc8M+ubuf+QwO9vatK2SAdF5ufa
	 4wVX9qRbPSQNXpETTe/zsukzQrj38PelIMoWb9b3Jl5n2Xusisd9qKpBf307VKqE+Y
	 OqOg4eInwXyJ35InO4s3fIBHrdCTXmHpKc/wgo2EDlWhrEXjZcC5robOS/9XTY75Ma
	 9ewsOQk43No8rTxBYV8LG/WgYmbsF5vKdp49fLipj89oiPUM8wV3i4IClBwAjEva1N
	 sZahRIYzFhIGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B8B7606A8;
	Sun, 16 Jun 2024 06:43:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AC951BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 06:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27380401E1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 06:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oEcZtxnoHw8B for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Jun 2024 06:43:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8B6F5401B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B6F5401B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B6F5401B1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jun 2024 06:43:35 +0000 (UTC)
X-CSE-ConnectionGUID: 1yCevkoCRyerDYCWAbF/lA==
X-CSE-MsgGUID: qI+S/1FgT/+dfIW07iz+oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11104"; a="19154826"
X-IronPort-AV: E=Sophos;i="6.08,241,1712646000"; d="scan'208";a="19154826"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2024 23:43:35 -0700
X-CSE-ConnectionGUID: Q7I73QAKRaGBUHAMjmh+Gg==
X-CSE-MsgGUID: HERfOmYqSkKETKKreDSJ3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,241,1712646000"; d="scan'208";a="41382998"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 15 Jun 2024 23:43:35 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIjbv-0001Pk-29
 for intel-wired-lan@lists.osuosl.org; Sun, 16 Jun 2024 06:43:31 +0000
Date: Sun, 16 Jun 2024 14:43:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406161410.EVNVSIgZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718520216; x=1750056216;
 h=date:from:to:subject:message-id;
 bh=HvD0MMrv+S2lRTDN8YT+f+hPU06HQtIGYOxI5gshwFk=;
 b=iSJ9ew/nJSPTY8PEn1JUKYqfA6v8ERdw2GdTYWvL3DPnv4v9kXZFdc2F
 sikEgGrurO7MBeDHwKPHsuKUURIkOO2oRFD+kjgTV+0I3axRgrWdyUsIF
 hFX1mPqztogA7BvkSMyo8NrKKnKkrYPq2Nx0vkv4jtjaIyPn8Vc+RDq+c
 3hBo0ftl8jQO5TH98KNW0kFqC9PF8g7FHdSpKZaEWyMtd4wbY3JGQ8uG8
 T2QrZtL+022lfMbosacX+JXxZ02OOXM96LOthQxamD6jriQIxJFEnP7bu
 QYa5kQ7OfomtCtnnN7gLvcI1OLfCLrLpACQMczxJmo6fzj8FHisc4ky4r
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iSJ9ew/n
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 dea9bffd24e4d556bb05511d60ae78c302e66b4f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: dea9bffd24e4d556bb05511d60ae78c302e66b4f  e1000e: Fix S0ix residency on corporate systems

elapsed time: 2185m

configs tested: 117
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
arc                        nsimosci_defconfig   gcc-13.2.0
arc                   randconfig-001-20240615   gcc-13.2.0
arc                   randconfig-002-20240615   gcc-13.2.0
arm                          ep93xx_defconfig   clang-14
arm                          gemini_defconfig   clang-19
arm                   randconfig-001-20240615   clang-19
arm                   randconfig-002-20240615   clang-19
arm                   randconfig-003-20240615   gcc-13.2.0
arm                   randconfig-004-20240615   gcc-13.2.0
arm                           u8500_defconfig   gcc-13.2.0
arm64                 randconfig-001-20240615   clang-19
arm64                 randconfig-002-20240615   gcc-13.2.0
arm64                 randconfig-003-20240615   clang-17
arm64                 randconfig-004-20240615   gcc-13.2.0
csky                  randconfig-001-20240615   gcc-13.2.0
csky                  randconfig-002-20240615   gcc-13.2.0
hexagon               randconfig-001-20240615   clang-19
hexagon               randconfig-002-20240615   clang-19
i386         buildonly-randconfig-001-20240615   clang-18
i386         buildonly-randconfig-002-20240615   gcc-9
i386         buildonly-randconfig-003-20240615   gcc-7
i386         buildonly-randconfig-004-20240615   clang-18
i386         buildonly-randconfig-005-20240615   clang-18
i386         buildonly-randconfig-006-20240615   gcc-13
i386                  randconfig-001-20240615   clang-18
i386                  randconfig-002-20240615   gcc-13
i386                  randconfig-003-20240615   clang-18
i386                  randconfig-004-20240615   clang-18
i386                  randconfig-005-20240615   clang-18
i386                  randconfig-006-20240615   clang-18
i386                  randconfig-011-20240615   clang-18
i386                  randconfig-012-20240615   gcc-12
i386                  randconfig-013-20240615   gcc-13
i386                  randconfig-014-20240615   clang-18
i386                  randconfig-015-20240615   clang-18
i386                  randconfig-016-20240615   gcc-13
loongarch             randconfig-001-20240615   gcc-13.2.0
loongarch             randconfig-002-20240615   gcc-13.2.0
mips                 decstation_r4k_defconfig   gcc-13.2.0
mips                           rs90_defconfig   gcc-13.2.0
nios2                 randconfig-001-20240615   gcc-13.2.0
nios2                 randconfig-002-20240615   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240615   gcc-13.2.0
parisc                randconfig-002-20240615   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                      acadia_defconfig   clang-19
powerpc                           allnoconfig   gcc-13.2.0
powerpc                 mpc8313_rdb_defconfig   gcc-13.2.0
powerpc                      obs600_defconfig   clang-14
powerpc                      pcm030_defconfig   clang-19
powerpc               randconfig-001-20240615   clang-19
powerpc               randconfig-002-20240615   clang-19
powerpc               randconfig-003-20240615   clang-19
powerpc                      walnut_defconfig   gcc-13.2.0
powerpc                        warp_defconfig   gcc-13.2.0
powerpc64             randconfig-001-20240615   clang-19
powerpc64             randconfig-002-20240615   clang-19
powerpc64             randconfig-003-20240615   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240615   clang-19
riscv                 randconfig-002-20240615   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
s390                  randconfig-001-20240615   clang-16
s390                  randconfig-002-20240615   clang-19
sh                               alldefconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                         ap325rxa_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                         ecovec24_defconfig   gcc-13.2.0
sh                    randconfig-001-20240615   gcc-13.2.0
sh                    randconfig-002-20240615   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240615   gcc-13.2.0
sparc64               randconfig-002-20240615   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240615   gcc-7
um                    randconfig-002-20240615   gcc-11
um                           x86_64_defconfig   clang-15
x86_64       buildonly-randconfig-001-20240615   gcc-9
x86_64       buildonly-randconfig-002-20240615   clang-18
x86_64       buildonly-randconfig-003-20240615   clang-18
x86_64       buildonly-randconfig-004-20240615   clang-18
x86_64       buildonly-randconfig-005-20240615   gcc-9
x86_64       buildonly-randconfig-006-20240615   clang-18
x86_64                randconfig-001-20240615   gcc-13
x86_64                randconfig-002-20240615   gcc-8
x86_64                randconfig-003-20240615   gcc-13
x86_64                randconfig-004-20240615   gcc-13
x86_64                randconfig-005-20240615   gcc-13
x86_64                randconfig-006-20240615   gcc-8
x86_64                randconfig-011-20240615   clang-18
x86_64                randconfig-012-20240615   gcc-13
x86_64                randconfig-013-20240615   clang-18
x86_64                randconfig-014-20240615   clang-18
x86_64                randconfig-015-20240615   clang-18
x86_64                randconfig-016-20240615   clang-18
x86_64                randconfig-071-20240615   clang-18
x86_64                randconfig-072-20240615   clang-18
x86_64                randconfig-073-20240615   gcc-7
x86_64                randconfig-074-20240615   gcc-13
x86_64                randconfig-075-20240615   clang-18
x86_64                randconfig-076-20240615   gcc-13
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240615   gcc-13.2.0
xtensa                randconfig-002-20240615   gcc-13.2.0
xtensa                         virt_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
