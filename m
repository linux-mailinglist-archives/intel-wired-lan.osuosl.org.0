Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B70B18F0E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 15:58:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9940841253;
	Sat,  2 Aug 2025 13:58:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRwSvu6Xj0vm; Sat,  2 Aug 2025 13:58:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EDED4124B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754143096;
	bh=oFawtqFeq9jEj/GqCTLOdi6DCDlwtCdeu6bbnuoG6cw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c1TJHebBlxydCNg91qdFWXpUogo8b4KzxUsZgHRHCg3Czg+YvtrTQErvR7IcTK2V5
	 Qi5kAXCFFAPZSPOJH4AV6GiNCmYuXa547ZvbJq31H7ODScTt/PxZV4JV/urtOZRKfI
	 GUvVbxq58mCMv3Ni+cg0ZYRCNaxNB+cSNim4I6F2AtB5ZeCzpPLsSrZm/reKYyVEOI
	 5eFZ8dpHFvUYocxuOwge+EASbTvqSbLGspDKrhYuYZqAZdhyuY3/vV0q5pk85tvvym
	 voMgFViZ7BdDiduM+Gt/MEhffAncC52UGjBvVoBvhsZMSlIxAgSiQzTb3bdOwMv0iR
	 ecRocmLVvx9/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EDED4124B;
	Sat,  2 Aug 2025 13:58:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C74EF160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 13:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8DEA40406
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 13:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N5KgtNqRkhi4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 13:58:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A843C40328
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A843C40328
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A843C40328
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 13:58:13 +0000 (UTC)
X-CSE-ConnectionGUID: hIMh3BsFQfaBj/BhoekGIA==
X-CSE-MsgGUID: 7YnMrs1fSDGYtTXREVKh0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11510"; a="66739164"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="66739164"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 06:58:13 -0700
X-CSE-ConnectionGUID: IHiu3eWEQcWUzPk+PS/LiA==
X-CSE-MsgGUID: T3viukepT/6b8yFXNDK6HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163066200"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 02 Aug 2025 06:58:11 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uiCkR-0005Ox-32
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Aug 2025 13:58:07 +0000
Date: Sat, 02 Aug 2025 21:57:45 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508022136.w64bR8Ce-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754143094; x=1785679094;
 h=date:from:to:subject:message-id;
 bh=flE4pz/+QSZeAtxEQq+fm3r58spwjY6IHyoqVl9nICA=;
 b=iyOEB0ORMBSlGsiNTYn34BkEWs103nZ0sDRIopkOZbAQH83M9WmVusmv
 vrdIULAlrFvqywckv9sg4KEZTO050Spy0LENKonpykhp3XdPAyBAcKupb
 8M0yWKtE4e1RkD2Ba2lc4fTXtoCIzMvM9uQV5u8umANviC5VOPp5IFib8
 SFb2ihSAd6tgej4VGyiusUzVUcy9EWlFdxoYfMMAki9sZHbxY6usNeRw1
 FchgOS1LoM5KcZcZvcZ5nTOvr1orW2otOgI0Z5W7iHeRzCRb33tisOVom
 n5b4+TvBu8yQJrB/TgkqZ+sHpoVgwHKxleKQY7c11YwkTzV/g8w1HpoNQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iyOEB0OR
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dfc2efdee6179dfcef9bab3c26b8663ca9d22bf0
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
branch HEAD: dfc2efdee6179dfcef9bab3c26b8663ca9d22bf0  ice: use fixed adapter index for E825C embedded devices

elapsed time: 851m

configs tested: 113
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250802    gcc-11.5.0
arc                   randconfig-002-20250802    gcc-14.3.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                       netwinder_defconfig    gcc-15.1.0
arm                   randconfig-001-20250802    gcc-10.5.0
arm                   randconfig-002-20250802    clang-22
arm                   randconfig-003-20250802    clang-18
arm                   randconfig-004-20250802    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250802    gcc-12.5.0
arm64                 randconfig-002-20250802    gcc-8.5.0
arm64                 randconfig-003-20250802    clang-22
arm64                 randconfig-004-20250802    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250802    gcc-15.1.0
csky                  randconfig-002-20250802    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250802    clang-22
hexagon               randconfig-002-20250802    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250802    gcc-12
i386        buildonly-randconfig-002-20250802    gcc-12
i386        buildonly-randconfig-003-20250802    clang-20
i386        buildonly-randconfig-004-20250802    gcc-12
i386        buildonly-randconfig-005-20250802    clang-20
i386        buildonly-randconfig-006-20250802    clang-20
i386                                defconfig    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250802    clang-18
loongarch             randconfig-002-20250802    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                         rt305x_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250802    gcc-9.5.0
nios2                 randconfig-002-20250802    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250802    gcc-8.5.0
parisc                randconfig-002-20250802    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          g5_defconfig    gcc-15.1.0
powerpc               randconfig-001-20250802    gcc-8.5.0
powerpc               randconfig-002-20250802    clang-20
powerpc               randconfig-003-20250802    gcc-10.5.0
powerpc64             randconfig-001-20250802    clang-16
powerpc64             randconfig-002-20250802    gcc-8.5.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250802    gcc-10.5.0
riscv                 randconfig-002-20250802    gcc-9.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250802    clang-22
s390                  randconfig-002-20250802    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250802    gcc-15.1.0
sh                    randconfig-002-20250802    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250802    gcc-8.5.0
sparc                 randconfig-002-20250802    gcc-8.5.0
sparc64               randconfig-001-20250802    gcc-8.5.0
sparc64               randconfig-002-20250802    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250802    clang-22
um                    randconfig-002-20250802    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250802    gcc-12
x86_64      buildonly-randconfig-002-20250802    clang-20
x86_64      buildonly-randconfig-003-20250802    clang-20
x86_64      buildonly-randconfig-004-20250802    clang-20
x86_64      buildonly-randconfig-005-20250802    clang-20
x86_64      buildonly-randconfig-006-20250802    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250802    gcc-13.4.0
xtensa                randconfig-002-20250802    gcc-9.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
