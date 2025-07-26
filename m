Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A524B12968
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jul 2025 09:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA55A8291A;
	Sat, 26 Jul 2025 07:20:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WjCYTpRD4Qhs; Sat, 26 Jul 2025 07:20:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8319382897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753514452;
	bh=U6si1bcnQBYc5cGMAeEpC5lGKIwBnRO6+SpQ4AfxFB4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ikfkyj7Y2Z+oFE+V0NAGtIjBxjpCFh6P6nDQhZ1zbXu1+DA+dl88ivP0IEzTiqE3c
	 wHLRlA83GjawmbbI0AWN5lDjEBVKdFw8bzqIecjAG9MluHr/p87jWnkYdOwe1udHPo
	 zIVJ9tDji7TzNS94hsS7yYXr9iYgV6buGGyL67uAkUVVd+28ENA0ysO9YJCtkbMlR0
	 IeyigfjLFELwzpqywT0uEw8GT62rvQqQD6EeMpZF0i7zRHbvl3MTBKxRUzgu0f9xIU
	 d89cuICEtjgj97w8wB2Ys3cwJ+kE1vKBrySEqiP3U3PmESD4q2G1+CFd8iPwTMXClv
	 Zyj/p+PcMYEpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8319382897;
	Sat, 26 Jul 2025 07:20:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E7061D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 07:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9068940025
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 07:20:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZqTOK1m2sOYZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jul 2025 07:20:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7402940024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7402940024
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7402940024
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 07:20:50 +0000 (UTC)
X-CSE-ConnectionGUID: B54sPa5YTCCNQxwvNAWvjQ==
X-CSE-MsgGUID: 5ybpqRktRf2KB3WUkdCntQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="81284602"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="81284602"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2025 00:20:49 -0700
X-CSE-ConnectionGUID: WHeV86PhRVKptSnSyZ36ZQ==
X-CSE-MsgGUID: x2VuCSlyS6OkK22YtkRBDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="165635602"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 26 Jul 2025 00:20:48 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ufZD4-000LlD-1E
 for intel-wired-lan@lists.osuosl.org; Sat, 26 Jul 2025 07:20:46 +0000
Date: Sat, 26 Jul 2025 15:20:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507261516.5JgqpeAb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753514451; x=1785050451;
 h=date:from:to:subject:message-id;
 bh=UB5KZsZxt4JnM4dBJxSkk/5cl0egv6UrTUonrD4QBlc=;
 b=aPA1N8SrZwI6LGzvfE+qu1sWJI5Wy36sZmjyL6z+skxgEozUH1vaQ2td
 kqjYFBj0t4V0qdLhoU4SudcO4lnd/BkVWBFldNS3prguP2UMUugcrneDW
 rcB4hAxRqHb2mctaxEfudI6Tg5qrcECDquPKMP0Ig1KrCZT8V0cApw4bq
 0i0mj7xBAqHsY2aGi+2Nsoza7slhouqJmkFWs1Iw8QBzbPQmZcrdKXVhC
 AoALwKHuQEEow4L1M4xg/UcrukQJr9c1wyEXkhPcgGKK7pYSM+94Pak86
 GOjbXVP9ofEQIsLanSmUtBguQczNFsf5GO1QNrFl38ZKN+NNXV4FVYLCN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aPA1N8Sr
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 c8f13134349b4385ae739f1efe403d5d3949ef92
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: c8f13134349b4385ae739f1efe403d5d3949ef92  Merge branch 'selftests-drv-net-tso-fix-issues-with-tso-selftest'

elapsed time: 1733m

configs tested: 100
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250726    gcc-14.3.0
arc                   randconfig-002-20250726    gcc-12.5.0
arm                              allmodconfig    gcc-15.1.0
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250726    gcc-8.5.0
arm                   randconfig-002-20250726    gcc-10.5.0
arm                   randconfig-003-20250726    gcc-10.5.0
arm                   randconfig-004-20250726    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                 randconfig-001-20250726    gcc-8.5.0
arm64                 randconfig-002-20250726    clang-22
arm64                 randconfig-003-20250726    gcc-12.5.0
arm64                 randconfig-004-20250726    clang-22
csky                  randconfig-001-20250726    gcc-15.1.0
csky                  randconfig-002-20250726    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250726    clang-22
hexagon               randconfig-002-20250726    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250726    gcc-12
i386        buildonly-randconfig-002-20250726    gcc-12
i386        buildonly-randconfig-003-20250726    clang-20
i386        buildonly-randconfig-004-20250726    gcc-12
i386        buildonly-randconfig-005-20250726    clang-20
i386        buildonly-randconfig-006-20250726    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch             randconfig-001-20250726    gcc-15.1.0
loongarch             randconfig-002-20250726    gcc-14.3.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20250726    gcc-8.5.0
nios2                 randconfig-002-20250726    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                randconfig-001-20250726    gcc-8.5.0
parisc                randconfig-002-20250726    gcc-8.5.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250726    clang-16
powerpc               randconfig-002-20250726    gcc-11.5.0
powerpc               randconfig-003-20250726    gcc-8.5.0
powerpc64             randconfig-001-20250726    clang-22
powerpc64             randconfig-002-20250726    gcc-10.5.0
powerpc64             randconfig-003-20250726    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250726    gcc-11.5.0
riscv                 randconfig-002-20250726    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250726    clang-22
s390                  randconfig-002-20250726    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250726    gcc-12.5.0
sh                    randconfig-002-20250726    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250726    gcc-8.5.0
sparc                 randconfig-002-20250726    gcc-15.1.0
sparc64               randconfig-001-20250726    clang-22
sparc64               randconfig-002-20250726    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250726    gcc-12
um                    randconfig-002-20250726    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250726    gcc-12
x86_64      buildonly-randconfig-002-20250726    gcc-12
x86_64      buildonly-randconfig-003-20250726    gcc-12
x86_64      buildonly-randconfig-004-20250726    clang-20
x86_64      buildonly-randconfig-005-20250726    clang-20
x86_64      buildonly-randconfig-006-20250726    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250726    gcc-8.5.0
xtensa                randconfig-002-20250726    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
