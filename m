Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E21A05445
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 08:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CB70606EA;
	Wed,  8 Jan 2025 07:08:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jGZ9ueXyWbHt; Wed,  8 Jan 2025 07:08:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E375960726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736320084;
	bh=TBQOlzchMbRlNPpBmf6Wh4yFowN7PF5GCsWN97rbSSs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gIQi6DCEGYGs/0B1iH/3tOmAl1fUYsdEDM7YPyQYQV6vNq4/GIJzSR0OtLS9IFovd
	 2rlAAJ+4EhevbU4X4UzaE0ssec48Lc7JzNNXBuk0Pv5054fCCF4SuVAM0uYs0a6fSO
	 ip7EXNFq+G+V3hWrB0PvzCbfR2xaKm5ROFwo/l5C4lg8he3PdKAPAx1MgMK5MKyYf2
	 NwlYmnzbjUg37swxHLARnklzmWoMYKhd+jBAC7NbJVzgYkgQW05K35hu5AWH8HuDMy
	 7A8CwGD5IOFXCwRMWn3EfkvnPk6dkDTgYabZ0CV+DqRYmRaem6QV7ZDTvXwCX115zJ
	 fbZ1edm+hzkwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E375960726;
	Wed,  8 Jan 2025 07:08:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E24D1EB8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 07:08:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39CFB80CD4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 07:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FEnNTTHC2Z1t for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 07:08:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E58380CF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E58380CF2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E58380CF2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 07:07:59 +0000 (UTC)
X-CSE-ConnectionGUID: QSwGrgDWTe6pQTRWe1TP7Q==
X-CSE-MsgGUID: fvWbj9t9TFePGGCLL0D+xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47107103"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="47107103"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 23:07:59 -0800
X-CSE-ConnectionGUID: WZZ0g9McTAysZemruzSlOQ==
X-CSE-MsgGUID: GKqIhTAHSpa+pQUv294IWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108107147"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 07 Jan 2025 23:07:58 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tVQAV-000FjR-2g
 for intel-wired-lan@lists.osuosl.org; Wed, 08 Jan 2025 07:07:55 +0000
Date: Wed, 08 Jan 2025 15:07:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501081519.JzMmZDsj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736320080; x=1767856080;
 h=date:from:to:subject:message-id;
 bh=g3LzBxV0GttAHfDg+YRbG7D4QuuSfBwUIUsb6d0q0AI=;
 b=hSvbqikUZpHWXkS4yQULtcz5hQ01NqMj36YISi6FS+aCgtdrbvGR3qBJ
 3YGwimyOkTupBcnz2Zd5pvX0ILZy42Zk7ZvboljCLHGe395VfmOPDfr/b
 137e17iXMxqzScvDoa/n02m4H8tHsYQaVeUWlqwK874f8L3c/tVggb/+6
 CW76pc/L+ulvTPO/mOnkRhJH4YgwqP1eOeb0oCiseZekjOZPcjVPGTYZH
 iiin6eY2qFbUJmORoAIY7C0GSZar1TYD6SvJFuq55sqQlVCgTf7JkJkIe
 aFlgy9mkPsSdeJS7wDP9Z16O94b5onYNt0TDqZpitVbMw5VlsYihm5u8a
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hSvbqikU
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 a1942da8a38717ddd9b4c132f59e1657c85c1432
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
branch HEAD: a1942da8a38717ddd9b4c132f59e1657c85c1432  bridge: Make br_is_nd_neigh_msg() accept pointer to "const struct sk_buff"

elapsed time: 969m

configs tested: 106
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250108    gcc-13.2.0
arc                   randconfig-002-20250108    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250108    gcc-14.2.0
arm                   randconfig-002-20250108    gcc-14.2.0
arm                   randconfig-003-20250108    clang-20
arm                   randconfig-004-20250108    clang-18
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250108    gcc-14.2.0
arm64                 randconfig-002-20250108    clang-20
arm64                 randconfig-003-20250108    gcc-14.2.0
arm64                 randconfig-004-20250108    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250108    gcc-14.2.0
csky                  randconfig-002-20250108    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250108    clang-20
hexagon               randconfig-002-20250108    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250108    clang-19
i386        buildonly-randconfig-002-20250108    gcc-12
i386        buildonly-randconfig-003-20250108    gcc-12
i386        buildonly-randconfig-004-20250108    gcc-12
i386        buildonly-randconfig-005-20250108    gcc-12
i386        buildonly-randconfig-006-20250108    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250108    gcc-14.2.0
loongarch             randconfig-002-20250108    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250108    gcc-14.2.0
nios2                 randconfig-002-20250108    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250108    gcc-14.2.0
parisc                randconfig-002-20250108    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc               randconfig-001-20250108    clang-16
powerpc               randconfig-002-20250108    gcc-14.2.0
powerpc               randconfig-003-20250108    gcc-14.2.0
powerpc64             randconfig-001-20250108    clang-18
powerpc64             randconfig-002-20250108    clang-16
powerpc64             randconfig-003-20250108    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20250108    gcc-14.2.0
riscv                 randconfig-002-20250108    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250108    gcc-14.2.0
s390                  randconfig-002-20250108    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250108    gcc-14.2.0
sh                    randconfig-002-20250108    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250108    gcc-14.2.0
sparc                 randconfig-002-20250108    gcc-14.2.0
sparc64               randconfig-001-20250108    gcc-14.2.0
sparc64               randconfig-002-20250108    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250108    gcc-12
um                    randconfig-002-20250108    clang-16
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250108    clang-19
x86_64      buildonly-randconfig-002-20250108    gcc-11
x86_64      buildonly-randconfig-003-20250108    clang-19
x86_64      buildonly-randconfig-004-20250108    gcc-12
x86_64      buildonly-randconfig-005-20250108    gcc-12
x86_64      buildonly-randconfig-006-20250108    clang-19
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250108    gcc-14.2.0
xtensa                randconfig-002-20250108    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
