Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B807EB27AC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 10:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D2F460DB0;
	Fri, 15 Aug 2025 08:19:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vgG6dT_vEOkM; Fri, 15 Aug 2025 08:19:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6196960DAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755245980;
	bh=usTm5PKF76LCTACIKoVGST4o7jQ8fCg54V7CJ5ZotUs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FRrXVnWyBnZxsT8Nen25SIJdY4CpeBsYIqAO/3eHkwezWb7XsN+AfXCxklI13FrJN
	 ZL746gCuLBQykrqL2ffh2I9rixqLc4xSVgwi3ZxZUiAJJNy89BJDTMigG1TaxfrMf0
	 ASzP2YLarCbsqcEz6Cvy5TzpkoOkedga9U7Ofyefx3jXXPqZbY0ROgFfsyJ8nFbfbc
	 rHw9XzrHmL1V+ImcoyqT5/xGPT3En5619o7hQYs50I1JFHqUITC7FpgCPqI/ddEar1
	 21yEVm0ebT/BpEvMSfbgxZ6THv8HksT8EQ0xzDXMJaKMLZXBXebnnl1/fZ19uFyQCl
	 k/HAb9Fwt2YpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6196960DAD;
	Fri, 15 Aug 2025 08:19:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 52622228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 08:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4425540AD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 08:19:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SGR3kcG682ru for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 08:19:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5CDEC40AC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CDEC40AC8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CDEC40AC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 08:19:37 +0000 (UTC)
X-CSE-ConnectionGUID: rTvBG8HST9+p+9lv7fEtFA==
X-CSE-MsgGUID: SykHWsq2SMGdHS+CN07rQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="67839095"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="67839095"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:19:36 -0700
X-CSE-ConnectionGUID: DRvkAmuqRqWzC9/+0sfdqg==
X-CSE-MsgGUID: uKLrO5wHToG+Wn/b+oEg8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="204149740"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 15 Aug 2025 01:19:36 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1umpev-000Bjc-2i
 for intel-wired-lan@lists.osuosl.org; Fri, 15 Aug 2025 08:19:33 +0000
Date: Fri, 15 Aug 2025 16:19:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508151656.cRvDZqV5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755245977; x=1786781977;
 h=date:from:to:subject:message-id;
 bh=6JO9XFtNdT0cLJDaxmW3lSCUiSXLvZrd2m775cuDGsc=;
 b=CLy5aKShT2jVQEfpwkab7Rl+AlW1FmkJugg6iwHzRmuahsmO0kpbrRgm
 BNc6GngqpB86zTK7K0daFv6WQrxTyIsjYl8o+fYaZrBG10mUve4W0ixHB
 K5tEu9UVDFME2ZSn+XduVq8Q+e7COMyke2RRENm5rPoZmbZpBrNqZxxJs
 SW/P+GdIusZSg6yrtWQ7PPpoqWEWcMZgLA53oHJ2djhfL8YnxFGuAydOI
 o7WC1BKJUCxEhdRyN9UZMkiajvL9i1X3A3P9J1E8HNKsmhpV7AjrcUNMQ
 1f0+LP6NQbDjqWB2DjS0wy2UF95z0aQ7Qf13I/W8OuesCvHmPj3mxoA/y
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CLy5aKSh
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 4faff70959d51078f9ee8372f8cff0d7045e4114
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
branch HEAD: 4faff70959d51078f9ee8372f8cff0d7045e4114  net: usb: asix_devices: add phy_mask for ax88772 mdio bus

elapsed time: 1321m

configs tested: 112
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250815    gcc-8.5.0
arc                   randconfig-002-20250815    gcc-9.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   randconfig-001-20250815    clang-16
arm                   randconfig-002-20250815    clang-18
arm                   randconfig-003-20250815    gcc-14.3.0
arm                   randconfig-004-20250815    gcc-8.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250815    gcc-8.5.0
arm64                 randconfig-002-20250815    gcc-8.5.0
arm64                 randconfig-003-20250815    clang-22
arm64                 randconfig-004-20250815    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250815    gcc-15.1.0
csky                  randconfig-002-20250815    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250815    clang-22
hexagon               randconfig-002-20250815    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250815    gcc-12
i386        buildonly-randconfig-002-20250815    clang-20
i386        buildonly-randconfig-003-20250815    clang-20
i386        buildonly-randconfig-004-20250815    clang-20
i386        buildonly-randconfig-005-20250815    clang-20
i386        buildonly-randconfig-006-20250815    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250815    clang-22
loongarch             randconfig-002-20250815    clang-20
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250815    gcc-11.5.0
nios2                 randconfig-002-20250815    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250815    gcc-8.5.0
parisc                randconfig-002-20250815    gcc-14.3.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250815    gcc-11.5.0
powerpc               randconfig-002-20250815    clang-19
powerpc               randconfig-003-20250815    gcc-11.5.0
powerpc64             randconfig-001-20250815    gcc-14.3.0
powerpc64             randconfig-002-20250815    gcc-10.5.0
powerpc64             randconfig-003-20250815    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250815    gcc-12.5.0
riscv                 randconfig-002-20250815    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250815    gcc-8.5.0
s390                  randconfig-002-20250815    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250815    gcc-11.5.0
sh                    randconfig-002-20250815    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250815    gcc-11.5.0
sparc                 randconfig-002-20250815    gcc-13.4.0
sparc64               randconfig-001-20250815    clang-22
sparc64               randconfig-002-20250815    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                    randconfig-001-20250815    gcc-12
um                    randconfig-002-20250815    clang-19
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250815    clang-20
x86_64      buildonly-randconfig-002-20250815    gcc-12
x86_64      buildonly-randconfig-003-20250815    gcc-12
x86_64      buildonly-randconfig-004-20250815    clang-20
x86_64      buildonly-randconfig-005-20250815    clang-20
x86_64      buildonly-randconfig-006-20250815    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250815    gcc-8.5.0
xtensa                randconfig-002-20250815    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
