Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E19A0823846
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 23:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04F68822B3;
	Wed,  3 Jan 2024 22:40:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04F68822B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704321620;
	bh=l7zGwCtycKqMa3+93eoe+m0g0PJfM3xY67MXDsdTSbY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=L289/rMlh9k8xI4cwYSdF4oY6fx5RtA/q8y0VLT7rU4W+1yaG+jrCuBLs/iTCg8P0
	 S5GlISdgqqgX+j1gXSHtE1H+p1mSKlAIJDW+a1T4IkIMU2P620ce/RLqZf+rzibHc+
	 bdM5SrzNnBhty3z0xixy83aie3wzLMY0TpwJKC+FssMlSAn2nArKGBNTxtk+wkylq1
	 CZdXIUMWSTHoLWQm2UFd1KqNNL/QVkr2o887/1EGmeH6kY4AIE7EgZ8CSXX1exrLrR
	 ZZDRUXlkpvKzdvylCCrhri3pf2AWjFFqWk2vfrFqtZWXE4qHcV7X597j3plS7mj+8f
	 NzAVQQAEQofUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ChM0gcc3b8tj; Wed,  3 Jan 2024 22:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A071F8214C;
	Wed,  3 Jan 2024 22:40:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A071F8214C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E77891BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 22:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B329982151
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 22:40:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B329982151
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zyfo6b_3W4FT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 22:40:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9B6582115
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 22:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9B6582115
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="382039970"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="382039970"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 14:40:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="14626685"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 03 Jan 2024 14:40:01 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rL9u2-000MdC-23
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Jan 2024 22:39:58 +0000
Date: Thu, 04 Jan 2024 06:39:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401040641.VviR8lVP-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704321610; x=1735857610;
 h=date:from:to:subject:message-id;
 bh=XPH/S8i8MliOCI8uFziWxrJOjzUh5JdKqa15x2KU08A=;
 b=cYX5zEt9G8oDG8ronK8uIusHqUZXXXb+uc+jorSx7DBDl0WH7RlYCGqr
 JqO94fTsT9w/+Futhhl2cQfGSexbGZhp+uGDtvZ+6HHNSpCRMnC1nKMoL
 N/8P7UE0jyyYaqfslbrry5JuOtxooThDlFf9egF3tNs2T2Cq61E75FXdX
 1Oq0jmdiw6uB/8aab1UbVwKradH0uiD+fl4c82/QMx3oAq5uB3AG0YRI7
 RKN90kaGo8CmHPTZtPvlq6uYWmbc6Q8CHjnw+xsSs4g2k2c++ux+iHHg0
 0c1DK4cMZEIpqA+E0WCa5ScVKsJulzGIZHKn/dP8L5Z+a4qxVpYIF5esu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cYX5zEt9
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 55f96e8bbea09afbd0ce95cc281ec2597ddafb81
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 55f96e8bbea09afbd0ce95cc281ec2597ddafb81  i40e: Avoid unnecessary use of comma operator

elapsed time: 1458m

configs tested: 166
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240103   gcc  
arc                   randconfig-002-20240103   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                   randconfig-001-20240103   clang
arm                   randconfig-002-20240103   clang
arm                   randconfig-003-20240103   clang
arm                   randconfig-004-20240103   clang
arm                        spear6xx_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240103   clang
arm64                 randconfig-002-20240103   clang
arm64                 randconfig-003-20240103   clang
arm64                 randconfig-004-20240103   clang
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240103   gcc  
csky                  randconfig-002-20240103   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240103   clang
hexagon               randconfig-002-20240103   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240103   clang
i386         buildonly-randconfig-002-20240103   clang
i386         buildonly-randconfig-003-20240103   clang
i386         buildonly-randconfig-004-20240103   clang
i386         buildonly-randconfig-005-20240103   clang
i386         buildonly-randconfig-006-20240103   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240103   clang
i386                  randconfig-002-20240103   clang
i386                  randconfig-003-20240103   clang
i386                  randconfig-004-20240103   clang
i386                  randconfig-005-20240103   clang
i386                  randconfig-006-20240103   clang
i386                  randconfig-011-20240103   gcc  
i386                  randconfig-012-20240103   gcc  
i386                  randconfig-013-20240103   gcc  
i386                  randconfig-014-20240103   gcc  
i386                  randconfig-015-20240103   gcc  
i386                  randconfig-016-20240103   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240103   gcc  
loongarch             randconfig-002-20240103   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                     loongson1b_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                         rt305x_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240103   gcc  
nios2                 randconfig-002-20240103   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240103   gcc  
parisc                randconfig-002-20240103   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 linkstation_defconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc               randconfig-001-20240103   clang
powerpc               randconfig-002-20240103   clang
powerpc               randconfig-003-20240103   clang
powerpc                     tqm8548_defconfig   gcc  
powerpc                     tqm8560_defconfig   gcc  
powerpc                         wii_defconfig   gcc  
powerpc64             randconfig-001-20240103   clang
powerpc64             randconfig-002-20240103   clang
powerpc64             randconfig-003-20240103   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                 randconfig-001-20240103   clang
riscv                 randconfig-002-20240103   clang
riscv                          rv32_defconfig   clang
s390                              allnoconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240103   gcc  
s390                  randconfig-002-20240103   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240103   gcc  
sh                    randconfig-002-20240103   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240103   gcc  
sparc64               randconfig-002-20240103   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240103   clang
um                    randconfig-002-20240103   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240103   clang
x86_64       buildonly-randconfig-002-20240103   clang
x86_64       buildonly-randconfig-003-20240103   clang
x86_64       buildonly-randconfig-004-20240103   clang
x86_64       buildonly-randconfig-005-20240103   clang
x86_64       buildonly-randconfig-006-20240103   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240103   gcc  
x86_64                randconfig-002-20240103   gcc  
x86_64                randconfig-003-20240103   gcc  
x86_64                randconfig-004-20240103   gcc  
x86_64                randconfig-005-20240103   gcc  
x86_64                randconfig-006-20240103   gcc  
x86_64                randconfig-011-20240103   clang
x86_64                randconfig-012-20240103   clang
x86_64                randconfig-013-20240103   clang
x86_64                randconfig-014-20240103   clang
x86_64                randconfig-015-20240103   clang
x86_64                randconfig-016-20240103   clang
x86_64                randconfig-071-20240103   clang
x86_64                randconfig-072-20240103   clang
x86_64                randconfig-073-20240103   clang
x86_64                randconfig-074-20240103   clang
x86_64                randconfig-075-20240103   clang
x86_64                randconfig-076-20240103   clang
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20240103   gcc  
xtensa                randconfig-002-20240103   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
