Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9A482D0CB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jan 2024 15:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC88340972;
	Sun, 14 Jan 2024 14:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC88340972
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705240904;
	bh=0R/Og10sKaLgB+zzhI5wBT540lDOS8aCVqYEyL/l0EY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DOkvzlduezkemVaZgGxXnNR9FNVrRn+f3GRGzxzvb8y9x7OzQB/QCLUNWY9ZSu+eo
	 2cV1mgZCXwJGS31LBSPCMTRdoxtQkcezsWYhGOuu8BiG0OdMHA8a53Oj8Iqtmj/n1p
	 cyCfnM7B0pfPFVRP5nK9HkLi98rbetf64vjPBNZNhJHkWKwewBkK0R+WGSmwvncYd0
	 W5utxK/VFhKzLKtCuda78Tw8IZSGM35YLpnNy2W9B3dzjryGhR++8ZRtk5ncMP9+TM
	 7q9mTBlRQuDJvOQvNaFbVFkpbh5uJIk28Hskv41XBVcRS1sRxH67F/9D0d/f8k+XIe
	 QeT62cyfl/nUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxtI5Nonn7JW; Sun, 14 Jan 2024 14:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 665814054B;
	Sun, 14 Jan 2024 14:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 665814054B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CF211BF372
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jan 2024 14:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DB454054B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jan 2024 14:01:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DB454054B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1yGGud9w4Mr for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jan 2024 14:01:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 931DB40466
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jan 2024 14:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 931DB40466
X-IronPort-AV: E=McAfee;i="6600,9927,10952"; a="6830552"
X-IronPort-AV: E=Sophos;i="6.04,194,1695711600"; 
   d="scan'208";a="6830552"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2024 06:01:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10952"; a="733063029"
X-IronPort-AV: E=Sophos;i="6.04,194,1695711600"; d="scan'208";a="733063029"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 14 Jan 2024 06:01:34 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rP13M-000BYE-1n
 for intel-wired-lan@lists.osuosl.org; Sun, 14 Jan 2024 14:01:32 +0000
Date: Sun, 14 Jan 2024 22:01:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401142206.DAFt5prc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705240897; x=1736776897;
 h=date:from:to:subject:message-id;
 bh=+2h2INAPqGVWySmG7DzaOiTSJlmEXE2szMc1Z4ZPJmM=;
 b=fUPAruF39O6DfrQIdnvhmHB6PEzGkyvcRhJR6Jbc/EDbrrQmd1Aj9GZM
 taZ+qIHzbjZbbNYcl1rwfi9yitkbhoMDKsXK2gBQhhZb9UPWFT40Km3sC
 ehONPdk72fmMcjhUtX5/7kyDddyVdcZokwpl34TrGWb0qJQLX6fyX4dtm
 g9OfllkIxM1rv6PSNkOkgdvN+pZ5YWRdkxA0RkuJKYxX1ppRdJEMdd2E+
 Fuo7HzJ9f3kH4f4iKFiJDhcqKQqNNx4gtFeLI7RGEwmqSK1OiSTuCGHh0
 b9S6BqnW8SFcx1RcLjAGJHxVKxScC5Be4/1Jh10FhSOadyUDYembq7N8F
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fUPAruF3
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 227fb90808ad708d1e9cd890d51be1b52db74673
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 227fb90808ad708d1e9cd890d51be1b52db74673  i40e: Include types.h to some headers

elapsed time: 2507m

configs tested: 113
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
arc                               allnoconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20240114   gcc  
arc                   randconfig-002-20240114   gcc  
arm                               allnoconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                   randconfig-001-20240114   clang
arm                   randconfig-002-20240114   clang
arm                   randconfig-003-20240114   clang
arm                   randconfig-004-20240114   clang
arm                        vexpress_defconfig   clang
arm64                             allnoconfig   gcc  
arm64                 randconfig-001-20240114   clang
arm64                 randconfig-002-20240114   clang
arm64                 randconfig-003-20240114   clang
arm64                 randconfig-004-20240114   clang
csky                              allnoconfig   gcc  
csky                  randconfig-001-20240114   gcc  
csky                  randconfig-002-20240114   gcc  
hexagon                           allnoconfig   clang
hexagon               randconfig-001-20240114   clang
hexagon               randconfig-002-20240114   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240114   clang
i386         buildonly-randconfig-002-20240114   clang
i386         buildonly-randconfig-003-20240114   clang
i386         buildonly-randconfig-004-20240114   clang
i386         buildonly-randconfig-005-20240114   clang
i386         buildonly-randconfig-006-20240114   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240114   clang
i386                  randconfig-002-20240114   clang
i386                  randconfig-003-20240114   clang
i386                  randconfig-004-20240114   clang
i386                  randconfig-005-20240114   clang
i386                  randconfig-006-20240114   clang
i386                  randconfig-011-20240114   gcc  
i386                  randconfig-012-20240114   gcc  
i386                  randconfig-013-20240114   gcc  
i386                  randconfig-014-20240114   gcc  
i386                  randconfig-015-20240114   gcc  
i386                  randconfig-016-20240114   gcc  
loongarch                        allmodconfig   gcc  
loongarch             randconfig-001-20240114   gcc  
loongarch             randconfig-002-20240114   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                       allyesconfig   gcc  
mips                             allyesconfig   gcc  
mips                 decstation_r4k_defconfig   gcc  
mips                           jazz_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                 randconfig-001-20240114   gcc  
nios2                 randconfig-002-20240114   gcc  
openrisc                         allyesconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                randconfig-001-20240114   gcc  
parisc                randconfig-002-20240114   gcc  
powerpc                          allmodconfig   clang
powerpc                     ksi8560_defconfig   gcc  
powerpc               randconfig-001-20240114   clang
powerpc               randconfig-002-20240114   clang
powerpc               randconfig-003-20240114   clang
powerpc64             randconfig-001-20240114   clang
powerpc64             randconfig-002-20240114   clang
powerpc64             randconfig-003-20240114   clang
riscv                    nommu_k210_defconfig   gcc  
riscv                 randconfig-001-20240114   clang
riscv                 randconfig-002-20240114   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20240114   gcc  
s390                  randconfig-002-20240114   gcc  
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                    randconfig-001-20240114   gcc  
sh                    randconfig-002-20240114   gcc  
sh                          sdk7780_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20240114   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20240114   clang
um                    randconfig-002-20240114   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240114   clang
x86_64       buildonly-randconfig-002-20240114   clang
x86_64       buildonly-randconfig-003-20240114   clang
x86_64       buildonly-randconfig-004-20240114   clang
x86_64       buildonly-randconfig-005-20240114   clang
x86_64       buildonly-randconfig-006-20240114   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240114   gcc  
x86_64                randconfig-002-20240114   gcc  
x86_64                randconfig-003-20240114   gcc  
x86_64                randconfig-005-20240114   gcc  
x86_64                randconfig-006-20240114   gcc  
x86_64                          rhel-8.3-rust   clang

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
