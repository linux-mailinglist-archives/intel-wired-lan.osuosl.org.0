Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D905CC03821
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 23:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1475C412DF;
	Thu, 23 Oct 2025 21:15:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h7Nu2ozZaIuB; Thu, 23 Oct 2025 21:15:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ACF0412EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761254126;
	bh=y7VPoW4Fqrw5IzUub0ZoqOdUWEFtkhYCIvtb4f/ATpQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5/NcRKfDWALB/NQ1NrJ0jTqfSeZNLAOhCsMhYbAf7LGQadYwOEHBjY28RCIOU+UXo
	 WBkN2mVqa9pZYE5/Myru+fZkU/Siv1NN5kJFj4IZgZwn5sJTkc8S4SU0U6AP3Fcbwp
	 FmQShYUwm1/XNAEdQJCBa3LfV7jP0Ia7s8MIhiey8lji6w7dNGQZ3u/t0DJvuAQXLq
	 jiJwPPfizIENqYi+QD9zB9Z8ZriehBifgVNR0+kvYdVHIH5LbVIC4dF25UC2L7UURR
	 hiHpMWeTHAsamUNgNb0ZQXsdwcewqXaufohKv9c2Ng4k3m+9RFmkga97ffJHk+RZYI
	 QoxYA/LTYkIEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ACF0412EE;
	Thu, 23 Oct 2025 21:15:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BC5E319D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 21:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1A5D412DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 21:15:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qBF1zHMvrM7g for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 21:15:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B2E1C412CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2E1C412CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2E1C412CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 21:15:23 +0000 (UTC)
X-CSE-ConnectionGUID: 5BKj/lroSkioBEQxiwxXJA==
X-CSE-MsgGUID: Emxg43ibQ+Owlk2EhN9xMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63340009"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63340009"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 14:15:23 -0700
X-CSE-ConnectionGUID: aRZm74w+RGiPS0Hxj4sUOg==
X-CSE-MsgGUID: lan2y/uDT32x9MiPAgr3sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="184157424"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by orviesa007.jf.intel.com with ESMTP; 23 Oct 2025 14:15:23 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vC2eO-000Dsq-2d
 for intel-wired-lan@lists.osuosl.org; Thu, 23 Oct 2025 21:15:14 +0000
Date: Fri, 24 Oct 2025 05:14:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510240553.qfyFi0KD-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761254123; x=1792790123;
 h=date:from:to:subject:message-id;
 bh=MwVKqsFAL5X7d2sqe4dmcqKRh45PGroq+pPVhKy3V2I=;
 b=SlQI4Moi6i90v3XBZ3xj77vDPGbK1Wcuoq9eiR9GHgIRAwzJd0yIetA7
 A7NB3K5+2B/+mvd5Upo4GzEiHTjgqEoQZlomEovdyxgf2hPEuKQc184xw
 PbG02PzbT12eHiOvm3vcxIxhGjS23lj28WePrQWfJwdSUY6ZOsEBGFh1u
 xzZBVAyKeZaHTu1tn7543rLFTbgbNAOCwM7kvxmrbmbrVFSyg284kX6N8
 pgMUN8wgwb4jfRLs8cl+I5b41+7pkN7P2WzBFN3gTDFCtAegeYg5dksBh
 QubBjwGeKXV+sC5fClC415b8v5WmEA75o+aDq8PLNlbO0+dY1bkLK18SJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SlQI4Moi
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 aed9b2f07a5f45466c6d10e8f4ff95eba93bd71c
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
branch HEAD: aed9b2f07a5f45466c6d10e8f4ff95eba93bd71c  idpf: add support for IDPF PCI programming interface

elapsed time: 1454m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20251023    gcc-8.5.0
arc                   randconfig-002-20251023    gcc-8.5.0
arm                              alldefconfig    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                          gemini_defconfig    clang-20
arm                           h3600_defconfig    gcc-15.1.0
arm                        multi_v7_defconfig    gcc-15.1.0
arm                   randconfig-001-20251023    clang-22
arm                   randconfig-002-20251023    clang-19
arm                   randconfig-003-20251023    gcc-8.5.0
arm                   randconfig-004-20251023    gcc-8.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251023    clang-22
arm64                 randconfig-002-20251023    gcc-8.5.0
arm64                 randconfig-003-20251023    gcc-8.5.0
arm64                 randconfig-004-20251023    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251023    gcc-11.5.0
csky                  randconfig-002-20251023    gcc-13.4.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251023    clang-22
hexagon               randconfig-002-20251023    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251023    clang-20
i386        buildonly-randconfig-002-20251023    clang-20
i386        buildonly-randconfig-003-20251023    gcc-14
i386        buildonly-randconfig-004-20251023    clang-20
i386        buildonly-randconfig-005-20251023    clang-20
i386        buildonly-randconfig-006-20251023    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20251023    clang-22
loongarch             randconfig-002-20251023    clang-18
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        stmark2_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          eyeq5_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251023    gcc-8.5.0
nios2                 randconfig-002-20251023    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251023    gcc-9.5.0
parisc                randconfig-002-20251023    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20251023    gcc-12.5.0
powerpc               randconfig-002-20251023    clang-22
powerpc               randconfig-003-20251023    clang-22
powerpc64             randconfig-001-20251023    clang-22
powerpc64             randconfig-002-20251023    gcc-10.5.0
powerpc64             randconfig-003-20251023    gcc-10.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20251023    gcc-8.5.0
riscv                 randconfig-002-20251023    gcc-14.3.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251023    clang-19
s390                  randconfig-002-20251023    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                             espt_defconfig    gcc-15.1.0
sh                    randconfig-001-20251023    gcc-15.1.0
sh                    randconfig-002-20251023    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251023    gcc-12.5.0
sparc                 randconfig-002-20251023    gcc-8.5.0
sparc64               randconfig-001-20251023    clang-22
sparc64               randconfig-002-20251023    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                    randconfig-001-20251023    gcc-13
um                    randconfig-002-20251023    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251023    clang-20
x86_64      buildonly-randconfig-002-20251023    gcc-13
x86_64      buildonly-randconfig-003-20251023    clang-20
x86_64      buildonly-randconfig-004-20251023    gcc-14
x86_64      buildonly-randconfig-005-20251023    clang-20
x86_64      buildonly-randconfig-006-20251023    gcc-14
x86_64                              defconfig    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251023    gcc-8.5.0
xtensa                randconfig-002-20251023    gcc-13.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
