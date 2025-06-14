Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 754A8AD9FD5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 23:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19FD3406EE;
	Sat, 14 Jun 2025 21:15:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hUPtyAqpnbW; Sat, 14 Jun 2025 21:15:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 186BB4066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749935738;
	bh=Akr6R/0rVjA0Pdph85WKtO6p7aI1js00lmJzQJrKXx0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2spTwKK/g8Gd5Kf8ASdcYSpygZkDuGFSfu3DKXLuqd6OjaMp6ifbwHXmiwasaV24q
	 78rPLNpvPZJjHtaTDJvNQKn/Tmy2c2074BwqiaEUP9yXRNHgSjTfz4OP8NjBaD/mko
	 sb8GUzuOxo3q+1/qFgGp3vHPtWmXk7uIJL4JN0gtZxf0Pvjj8zbGQNirrcqty9iARF
	 TJPcHcWFDO4CBN4somsUzQPUQurifVz1KZhJqrcPbU4tEwkvzORZw51O6sjsoMYb1r
	 85bCvCiwXWep1sstXatti8BCVGqQ0rMrsdkG3P0wm19pKGmgLIjWJ2DmNgObhsul5q
	 v4JwzeXH1ca3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 186BB4066D;
	Sat, 14 Jun 2025 21:15:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A89D151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 21:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3113740589
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 21:15:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blxH7IxjbX-V for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 21:15:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 541BA405C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 541BA405C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 541BA405C3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 21:15:34 +0000 (UTC)
X-CSE-ConnectionGUID: Ij+S7AzaRAOoHXaWMMvc8Q==
X-CSE-MsgGUID: KRMkGG90SzGTHH8ef1+i0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11464"; a="51233849"
X-IronPort-AV: E=Sophos;i="6.16,237,1744095600"; d="scan'208";a="51233849"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2025 14:15:33 -0700
X-CSE-ConnectionGUID: 0TqvRwxLSaSHXeSgk2vdqw==
X-CSE-MsgGUID: VVk9N3IMR02IV39b1xC9EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,237,1744095600"; d="scan'208";a="153008522"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 14 Jun 2025 14:15:33 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uQYDq-000DsC-2v
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Jun 2025 21:15:30 +0000
Date: Sun, 15 Jun 2025 05:15:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506150511.uIr0dWox-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749935735; x=1781471735;
 h=date:from:to:subject:message-id;
 bh=dUPo1Oy/SWWiio/2RRVVuGUnQ9z1SaJpsdvxuZ1h5mY=;
 b=TPUsd90vrxzsVxaxzp6UOxJJ5GZlvd5Ou/G8EoSYBSHcpRs1ygopkU8p
 MFmxoF6wU3r+UcEB+/inusyko7V0gWjr+3AXLFIhZfU+2uGkOXU4P72qU
 wvemnT87x93VOPoqaKNBmKHyA/n1zLgGHEFwaOQ1BIbR7hg/ygtoJElwS
 ZTDK4E9SzVJSU6gfNPSzWjdblTxkp9hV6tLRXnwiENesSEiJMLlV3c9Ie
 splnCtM0kR0fQoKgEUExyr61WZz0UoKw9pmxdN7MP2FGCZ6RwuFsFjF8d
 SPvyOYDsDd6Fszjuo1Oxb8Lf0eTBIUham01ak8FLAclfVIG9xyAnJprxT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TPUsd90v
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0cc28b86eafe70109a764e03de0262f93b12d397
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
branch HEAD: 0cc28b86eafe70109a764e03de0262f93b12d397  igc: disable L1.2 PCI-E link substate to avoid performance issue

elapsed time: 1450m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20250614    gcc-8.5.0
arc                   randconfig-002-20250614    gcc-12.4.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                         at91_dt_defconfig    clang-21
arm                      integrator_defconfig    clang-21
arm                   randconfig-001-20250614    gcc-8.5.0
arm                   randconfig-002-20250614    clang-21
arm                   randconfig-003-20250614    clang-16
arm                   randconfig-004-20250614    clang-17
arm                         s3c6400_defconfig    gcc-15.1.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250614    clang-21
arm64                 randconfig-002-20250614    gcc-15.1.0
arm64                 randconfig-003-20250614    clang-21
arm64                 randconfig-004-20250614    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250614    gcc-13.3.0
csky                  randconfig-002-20250614    gcc-12.4.0
hexagon                          allmodconfig    clang-17
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250614    clang-21
hexagon               randconfig-002-20250614    clang-16
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250614    clang-20
i386        buildonly-randconfig-002-20250614    clang-20
i386        buildonly-randconfig-003-20250614    clang-20
i386        buildonly-randconfig-004-20250614    gcc-12
i386        buildonly-randconfig-005-20250614    clang-20
i386        buildonly-randconfig-006-20250614    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch             randconfig-001-20250614    gcc-15.1.0
loongarch             randconfig-002-20250614    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                          sun3x_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip22_defconfig    gcc-15.1.0
mips                           ip30_defconfig    gcc-15.1.0
mips                         rt305x_defconfig    clang-21
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250614    gcc-13.3.0
nios2                 randconfig-002-20250614    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250614    gcc-8.5.0
parisc                randconfig-002-20250614    gcc-11.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                    ge_imp3a_defconfig    gcc-15.1.0
powerpc                     mpc83xx_defconfig    clang-21
powerpc               randconfig-001-20250614    gcc-13.3.0
powerpc               randconfig-002-20250614    clang-21
powerpc               randconfig-003-20250614    gcc-12.4.0
powerpc64             randconfig-001-20250614    gcc-11.5.0
powerpc64             randconfig-002-20250614    clang-21
powerpc64             randconfig-003-20250614    gcc-12.4.0
riscv                            alldefconfig    gcc-15.1.0
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250614    clang-21
riscv                 randconfig-002-20250614    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250614    clang-21
s390                  randconfig-002-20250614    gcc-10.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                    randconfig-001-20250614    gcc-14.3.0
sh                    randconfig-002-20250614    gcc-12.4.0
sh                          rsk7203_defconfig    gcc-15.1.0
sh                           se7751_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250614    gcc-15.1.0
sparc                 randconfig-002-20250614    gcc-10.3.0
sparc64               randconfig-001-20250614    gcc-8.5.0
sparc64               randconfig-002-20250614    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250614    clang-21
um                    randconfig-002-20250614    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250614    clang-20
x86_64      buildonly-randconfig-002-20250614    clang-20
x86_64      buildonly-randconfig-003-20250614    gcc-12
x86_64      buildonly-randconfig-004-20250614    clang-20
x86_64      buildonly-randconfig-005-20250614    clang-20
x86_64      buildonly-randconfig-006-20250614    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250614    gcc-9.3.0
xtensa                randconfig-002-20250614    gcc-13.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
