Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 419CDAEBE8B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 19:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16A59844CE;
	Fri, 27 Jun 2025 17:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lfNT7ZS9fETM; Fri, 27 Jun 2025 17:44:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F16D7844BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751046274;
	bh=+R552wxAB//ei5p2+cgAL+RPpRstIfbdf8yRCj3W3Ck=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cEzgFmJzK0ycJStLOAAamRW/LU9JomLWMalh33j4YvdrfFEB2eSnAd+LtF901VOp/
	 95wk4DokOj4H9Vsjx3xXS6ssB0F68sxJ4JQN3bnHJ+/WSWg6LWGuFEAjx5h87lYqxW
	 K1AyrtQ+I6Xt7l5FRwm9GpFdYpCaJ1c8PEzP4pLO7AxhWBnfpcit1LASR8AetexMdW
	 rRkkJtL6QxtPB1+dAZ2tMkgepXCLCDR7/3FukTD1Ms2In4SaUWKqYmOb/VCm3lJlGN
	 3NUfxz6BcW+lUu8dN/4VWRxxQuVnbL1/pnxC2cezshmtuJA8fFdw1MnYq7OsC9U988
	 gwA9uuVQJ9Nfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F16D7844BF;
	Fri, 27 Jun 2025 17:44:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C50C2154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AADD741B66
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2bsMo1te141X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 17:44:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 986004197C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 986004197C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 986004197C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 17:44:30 +0000 (UTC)
X-CSE-ConnectionGUID: +zlOOHTjR7e4PbxzoyCXVA==
X-CSE-MsgGUID: c2CBNsPhSWaVgO7otcP6pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="63622963"
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="63622963"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 10:44:30 -0700
X-CSE-ConnectionGUID: U69RllJvTIa5v7MRQ4CnqQ==
X-CSE-MsgGUID: A/4cpabhRZKjlKHe8PAhBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="152962690"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 27 Jun 2025 10:44:29 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uVD7i-000WRA-33
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Jun 2025 17:44:26 +0000
Date: Sat, 28 Jun 2025 01:43:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506280126.OzXq3UcR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751046271; x=1782582271;
 h=date:from:to:subject:message-id;
 bh=3kUBzLwtpi8PJhLyMf/7cQZhRphaxb1/4uwU4/R084g=;
 b=X8miDaUE9WrQvlQ8jD5cYe6xqKgstZWmTtFkiqxkQS8q2Rajsx1omNcL
 GuHXBllP3W79QlX1IAdRDadsfXu/QjhaizTMc1cvAeHzp0kKMCPmFSzT4
 5fG6kmrJhmPRnVKihxkriOiiuyFGGYyi26okfScBOt4In/C02q0td9QcW
 pzTIdjbrWYxMfT1tZ1e+tOHtzymp9k++NhaAbq8ZQSqcPm+anHAJm7F8+
 6+F0m62tuyLqTS8sjRgT2e2WWMMZOspLVKAs55vErKW2hjoVtMsFuANx7
 LMHmThxzg+qAozpq60Me6UYa3bSBbnCNvs2L6QC2F2IxXtG0br+0Kx9Y2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X8miDaUE
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d65f824431cb41b073383279d0624a3ec21a9ae4
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
branch HEAD: d65f824431cb41b073383279d0624a3ec21a9ae4  ice: check correct pointer in fwlog debugfs

elapsed time: 1449m

configs tested: 114
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                      axs103_smp_defconfig    gcc-15.1.0
arc                     haps_hs_smp_defconfig    gcc-15.1.0
arc                 nsimosci_hs_smp_defconfig    gcc-15.1.0
arc                   randconfig-001-20250627    gcc-8.5.0
arc                   randconfig-002-20250627    gcc-12.4.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                           h3600_defconfig    gcc-15.1.0
arm                   randconfig-001-20250627    gcc-15.1.0
arm                   randconfig-002-20250627    gcc-10.5.0
arm                   randconfig-003-20250627    clang-21
arm                   randconfig-004-20250627    gcc-8.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250627    clang-17
arm64                 randconfig-002-20250627    gcc-10.5.0
arm64                 randconfig-003-20250627    gcc-12.3.0
arm64                 randconfig-004-20250627    clang-19
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250627    gcc-15.1.0
csky                  randconfig-002-20250627    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250627    clang-21
hexagon               randconfig-002-20250627    clang-21
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250627    gcc-12
i386        buildonly-randconfig-002-20250627    gcc-12
i386        buildonly-randconfig-003-20250627    gcc-12
i386        buildonly-randconfig-004-20250627    gcc-12
i386        buildonly-randconfig-005-20250627    clang-20
i386        buildonly-randconfig-006-20250627    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250627    gcc-15.1.0
loongarch             randconfig-002-20250627    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                       m5208evb_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250627    gcc-8.5.0
nios2                 randconfig-002-20250627    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250627    gcc-9.3.0
parisc                randconfig-002-20250627    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     asp8347_defconfig    clang-21
powerpc                 linkstation_defconfig    clang-20
powerpc               randconfig-001-20250627    gcc-15.1.0
powerpc               randconfig-002-20250627    clang-21
powerpc               randconfig-003-20250627    gcc-15.1.0
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20250627    gcc-12.4.0
powerpc64             randconfig-002-20250627    gcc-10.5.0
powerpc64             randconfig-003-20250627    gcc-8.5.0
riscv                             allnoconfig    gcc-15.1.0
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250627    gcc-8.5.0
riscv                 randconfig-002-20250627    gcc-13.3.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250627    clang-21
s390                  randconfig-002-20250627    clang-21
sh                               alldefconfig    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250627    gcc-9.3.0
sh                    randconfig-002-20250627    gcc-15.1.0
sh                   sh7724_generic_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250627    gcc-11.5.0
sparc                 randconfig-002-20250627    gcc-8.5.0
sparc64                          alldefconfig    gcc-15.1.0
sparc64               randconfig-001-20250627    gcc-11.5.0
sparc64               randconfig-002-20250627    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250627    gcc-12
um                    randconfig-002-20250627    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250627    clang-20
x86_64      buildonly-randconfig-002-20250627    clang-20
x86_64      buildonly-randconfig-003-20250627    clang-20
x86_64      buildonly-randconfig-004-20250627    clang-20
x86_64      buildonly-randconfig-005-20250627    gcc-12
x86_64      buildonly-randconfig-006-20250627    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250627    gcc-13.3.0
xtensa                randconfig-002-20250627    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
