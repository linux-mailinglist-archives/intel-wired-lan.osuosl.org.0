Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 338E9B1F306
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Aug 2025 10:05:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27E6380DD2;
	Sat,  9 Aug 2025 08:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id twm3bHOdu4cy; Sat,  9 Aug 2025 08:04:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2C2A80D61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754726695;
	bh=uApjm86Bw77gllvB3KGkryGiLSuveSxdVzccLzvNOXc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wzkUI9oHzdp9G25CkLbE9fWW+JSq0J4m7F8uhYrFsKUt3y+ou152eeJ0vTSVyTE/D
	 Lj8+WfV/FvrLjI0Ad7oOeaHPG3L48SNggoM6fTo0FDHhQC8mfYRX+eHClK+6TpE5Ar
	 zM4rT3duiFhuGgWKtVYpwlisKYj7XFhuTlHc3ummgKzRJOhD7fsHRoms3YKstUQGgs
	 pB3svGRw4k1dP6CFN1Q2l2jhEEefcLiFUr2bEj5OkDbNapjdiTL4DAfDW8rne0DoZl
	 dZD6yCUKTUItG2aFsE4rfDPA3wAc5jHceYTob9xQkZNqbfLccrXejvOw9PMM2tBV92
	 DFBnAQauEGUyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2C2A80D61;
	Sat,  9 Aug 2025 08:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A8F021B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 08:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5135402C7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 08:04:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7u-001efBkqM for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Aug 2025 08:04:53 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 09 Aug 2025 08:04:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B309240283
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B309240283
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B309240283
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Aug 2025 08:04:52 +0000 (UTC)
X-CSE-ConnectionGUID: 8itloMG+SIC7vzZWQfstRQ==
X-CSE-MsgGUID: O1O9k0sIQ262PBXhR1NYSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="56963438"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56963438"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2025 00:57:44 -0700
X-CSE-ConnectionGUID: QTqhd/jXQ4iuJRkYHAVKzw==
X-CSE-MsgGUID: TUUW7t9kT/mwdVQXioV0uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="189197850"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 09 Aug 2025 00:57:43 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ukeSP-0004fa-0A
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Aug 2025 07:57:37 +0000
Date: Sat, 09 Aug 2025 15:57:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508091521.nQoLm1gq-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754726692; x=1786262692;
 h=date:from:to:subject:message-id;
 bh=BoZ0PJa0ZUoTOvuXmX6JG2RjHyk6FBWafBnNZtZ/4vA=;
 b=OHyi/UszkER3HamV62E96RGohv9yp0jDNNS/BA23CGG+A5z95ELMQ/f1
 eWEbO5N0DQuCz6J/FT93+SoP0pNCN+NEAeV1mT1oSF7w16G54BlVBtwZt
 IT2s1OrqKZtgoh0822y8FP8O4riUpM3tRzme9zFaeJ9jEJj/xFLUHLRnE
 4mkrKmlZyFXWZjgaNahH7L4EVWYidJVSIvYzi9bS0PidXX5mNvZuP8THW
 yPx4rHh9ZxXuSyqnb9AI2K6HUKI/VDyrIztv44VwSxnUBqkuCHr2BlCcG
 KGHRtli82angzBVJo1203YTAVUmrmndF5UAZfJxqzUDw/MuZAsyhCa3dG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OHyi/Usz
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 476af000096c8db58827d5e1414d59b6ce85d74d
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
branch HEAD: 476af000096c8db58827d5e1414d59b6ce85d74d  idpf: set mac type when adding and removing MAC filters

elapsed time: 919m

configs tested: 132
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250809    gcc-13.4.0
arc                   randconfig-002-20250809    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                       aspeed_g4_defconfig    clang-22
arm                                 defconfig    clang-22
arm                       netwinder_defconfig    gcc-15.1.0
arm                   randconfig-001-20250809    gcc-10.5.0
arm                   randconfig-002-20250809    clang-20
arm                   randconfig-003-20250809    gcc-8.5.0
arm                   randconfig-004-20250809    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250809    gcc-8.5.0
arm64                 randconfig-002-20250809    clang-22
arm64                 randconfig-003-20250809    clang-22
arm64                 randconfig-004-20250809    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250809    gcc-9.5.0
csky                  randconfig-002-20250809    gcc-9.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250809    clang-22
hexagon               randconfig-002-20250809    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250809    gcc-12
i386        buildonly-randconfig-002-20250809    clang-20
i386        buildonly-randconfig-003-20250809    gcc-12
i386        buildonly-randconfig-004-20250809    clang-20
i386        buildonly-randconfig-005-20250809    clang-20
i386        buildonly-randconfig-006-20250809    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250809    gcc-15.1.0
loongarch             randconfig-002-20250809    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        maltaup_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250809    gcc-11.5.0
nios2                 randconfig-002-20250809    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250809    gcc-8.5.0
parisc                randconfig-002-20250809    gcc-14.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                    gamecube_defconfig    clang-22
powerpc                       ppc64_defconfig    clang-22
powerpc               randconfig-001-20250809    gcc-10.5.0
powerpc               randconfig-002-20250809    clang-22
powerpc               randconfig-003-20250809    gcc-12.5.0
powerpc                 xes_mpc85xx_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250809    gcc-10.5.0
powerpc64             randconfig-002-20250809    clang-22
powerpc64             randconfig-003-20250809    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250809    clang-22
riscv                 randconfig-002-20250809    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250809    clang-22
s390                  randconfig-002-20250809    gcc-12.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                            hp6xx_defconfig    gcc-15.1.0
sh                    randconfig-001-20250809    gcc-10.5.0
sh                    randconfig-002-20250809    gcc-15.1.0
sh                             shx3_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250809    gcc-8.5.0
sparc                 randconfig-002-20250809    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250809    gcc-8.5.0
sparc64               randconfig-002-20250809    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250809    clang-22
um                    randconfig-002-20250809    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250809    gcc-12
x86_64      buildonly-randconfig-002-20250809    clang-20
x86_64      buildonly-randconfig-003-20250809    gcc-12
x86_64      buildonly-randconfig-004-20250809    clang-20
x86_64      buildonly-randconfig-005-20250809    gcc-12
x86_64      buildonly-randconfig-006-20250809    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250809    gcc-8.5.0
xtensa                randconfig-002-20250809    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
