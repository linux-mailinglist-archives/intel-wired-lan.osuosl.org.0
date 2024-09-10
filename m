Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A043A9744FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 23:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58BE8805A9;
	Tue, 10 Sep 2024 21:46:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PC2YLCxA1KiK; Tue, 10 Sep 2024 21:46:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7D7A80A97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726004783;
	bh=vObVX9gguJpr3QEu4PUm6q7yoq1QZMM7xZqhblsSKGc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GLtiGBmN9tmlPGvd/P8CbYhVSAR1Sf1zjkVTTUdFmFV+fO1eDlGrbtxWPqaZ1MOea
	 4tzZmOmfR3BYxeSA2gZA4/xHbq4oXndYn8PDfxvYcqcHt+OgOOvNf+PKDMz7NpmY8w
	 OqRiZRXDttf1AwCthoyxo785MTGM2DnhN9815tQgfmVhD9Njg7kX6yliN72U0/eL/Q
	 yNRApr6123bfYTtVgf7Xrx/nrbLXwYt6fkfv94/Gjy7H6Hw9CrJK/o6CifHRZogCTf
	 WPMUVyFvo3ZlZuChrOz15mQrA8JBshcVxz4IJgs81sgOikUoJ0fgZJ+ludaQf5eSbw
	 M0CUy9+CIbODw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7D7A80A97;
	Tue, 10 Sep 2024 21:46:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B9761BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 943BB4025C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:46:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SFlOa5IvYtOu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 21:46:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C135640231
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C135640231
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C135640231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:46:14 +0000 (UTC)
X-CSE-ConnectionGUID: HOmcoq0lQ5GQlQs3YjQr7w==
X-CSE-MsgGUID: xQdM+IFAQfSIUBhWN+Ddnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24274510"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="24274510"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 14:46:13 -0700
X-CSE-ConnectionGUID: CdKE6gaHT3qVWrX9sBGdgg==
X-CSE-MsgGUID: bNZbOwN/TbGTzS+zjT1vHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="67454579"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 10 Sep 2024 14:46:13 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1so8gc-0002kW-12
 for intel-wired-lan@lists.osuosl.org; Tue, 10 Sep 2024 21:46:10 +0000
Date: Wed, 11 Sep 2024 05:45:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409110526.ocORJLrD-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726004775; x=1757540775;
 h=date:from:to:subject:message-id;
 bh=Z7zy7tWBND+ikjKoN3q06v88UlXQFRjL3Z30ewebpSE=;
 b=Nt2LpokEeJFzMNu89zpG2s4Uhy6NAIGvhJEFcdnhIXVZmOfeySmhAIfu
 gmJPofSIIOJdKdqEAzxNsZnQlJsrvjowoGcYsBMjSjfZr4cj0TdfWaPkk
 e94qXlOkm3ZyfbbOgV1ZH5UDkhj7CcRgTtCmd70pYD3m0wLj41hySAUiQ
 e7H0mLbm70/p+yeVu45bVJfvBRi0OIikjIA6Wbh4CIaVSij0KLL3C4VrP
 odkD9B6zaw9lbxAZFfL6mw51+wq+ScwtKIhUq2T1QDQDDtARpRHYn/o2Q
 RNVW4nVBPB73oGuEml7/ihOrz0HTCNaPTauxiBMwjtdfvZ91yP3+McS30
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nt2LpokE
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 9c4a27da0ecc4080dfcd63903dd94f01ba1399dd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: 9c4a27da0ecc4080dfcd63903dd94f01ba1399dd  idpf: enable WB_ON_ITR

elapsed time: 1463m

configs tested: 138
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240910   gcc-13.2.0
arc                   randconfig-002-20240910   gcc-13.2.0
arm                               allnoconfig   gcc-14.1.0
arm                   randconfig-001-20240910   clang-20
arm                   randconfig-002-20240910   gcc-14.1.0
arm                   randconfig-003-20240910   gcc-14.1.0
arm                   randconfig-004-20240910   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240910   gcc-14.1.0
arm64                 randconfig-002-20240910   clang-20
arm64                 randconfig-003-20240910   gcc-14.1.0
arm64                 randconfig-004-20240910   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240910   gcc-14.1.0
csky                  randconfig-002-20240910   gcc-14.1.0
hexagon                           allnoconfig   gcc-14.1.0
hexagon               randconfig-001-20240910   clang-17
hexagon               randconfig-002-20240910   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240910   gcc-12
i386         buildonly-randconfig-001-20240911   gcc-12
i386         buildonly-randconfig-002-20240910   gcc-12
i386         buildonly-randconfig-002-20240911   gcc-12
i386         buildonly-randconfig-003-20240910   gcc-12
i386         buildonly-randconfig-003-20240911   gcc-12
i386         buildonly-randconfig-004-20240910   clang-18
i386         buildonly-randconfig-004-20240911   gcc-12
i386         buildonly-randconfig-005-20240910   clang-18
i386         buildonly-randconfig-005-20240911   gcc-12
i386         buildonly-randconfig-006-20240910   gcc-12
i386         buildonly-randconfig-006-20240911   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240910   gcc-12
i386                  randconfig-001-20240911   gcc-12
i386                  randconfig-002-20240910   gcc-12
i386                  randconfig-002-20240911   gcc-12
i386                  randconfig-003-20240910   gcc-12
i386                  randconfig-003-20240911   gcc-12
i386                  randconfig-004-20240910   gcc-12
i386                  randconfig-004-20240911   gcc-12
i386                  randconfig-005-20240910   gcc-12
i386                  randconfig-005-20240911   gcc-12
i386                  randconfig-006-20240910   clang-18
i386                  randconfig-006-20240911   gcc-12
i386                  randconfig-011-20240910   gcc-12
i386                  randconfig-011-20240911   gcc-12
i386                  randconfig-012-20240910   clang-18
i386                  randconfig-012-20240911   gcc-12
i386                  randconfig-013-20240910   clang-18
i386                  randconfig-013-20240911   gcc-12
i386                  randconfig-014-20240910   gcc-12
i386                  randconfig-014-20240911   gcc-12
i386                  randconfig-015-20240910   gcc-12
i386                  randconfig-015-20240911   gcc-12
i386                  randconfig-016-20240910   clang-18
i386                  randconfig-016-20240911   gcc-12
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240910   gcc-14.1.0
loongarch             randconfig-002-20240910   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240910   gcc-14.1.0
nios2                 randconfig-002-20240910   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc                randconfig-001-20240910   gcc-14.1.0
parisc                randconfig-002-20240910   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc               randconfig-001-20240910   clang-20
powerpc               randconfig-002-20240910   gcc-14.1.0
powerpc               randconfig-003-20240910   gcc-14.1.0
powerpc64             randconfig-001-20240910   clang-14
powerpc64             randconfig-002-20240910   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
riscv                 randconfig-001-20240910   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
s390                  randconfig-001-20240910   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                                allnoconfig   clang-17
um                                allnoconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240911   clang-18
x86_64       buildonly-randconfig-002-20240911   clang-18
x86_64       buildonly-randconfig-003-20240911   gcc-12
x86_64       buildonly-randconfig-004-20240911   gcc-12
x86_64       buildonly-randconfig-005-20240911   gcc-12
x86_64       buildonly-randconfig-006-20240911   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240911   gcc-12
x86_64                randconfig-002-20240911   gcc-12
x86_64                randconfig-003-20240911   clang-18
x86_64                randconfig-004-20240911   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
