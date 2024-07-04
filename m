Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7382D927F2B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 01:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B9D460B9C;
	Thu,  4 Jul 2024 23:35:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJ6dEMOjsB0H; Thu,  4 Jul 2024 23:35:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02FC960B6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720136103;
	bh=KGsBTXnEHQqwi5qL3os2FpT8a5dZiJLoN2jp0R22P/Q=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4GqdpN/PW+1xL6nyx7i1SR4UaWB45DsBl+W06qqfmtxm3RBjACvTkhLEZD682EiZh
	 l15ILdcofo6GRPIQwRffWXP/N5gQIPW97d7EDW9y8iVr4lMA+XqgmkWwEMJz4aZcBR
	 UmLr6Wd2xrBvRYcJnSO3iOiNgXyTmYxeQK74anw2tOHf/yRbL+ZExrw7/I8+QCCXbo
	 BETqPZ9vf3UllveLi1b7eXRloO12PufMWo5VSD58Ka7pkiZzOt2omCODdoLRXPa31W
	 Tizx9jEbPvn19yAtbE9oXOxNChHygvb4HeQKenub6d/gm47osi9UvgSRmGU4lfd3jk
	 1B4aF3SQMNisA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02FC960B6B;
	Thu,  4 Jul 2024 23:35:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8691C1BF982
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 23:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70569408B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 23:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EKCPpWrDmBsq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2024 23:34:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA64040025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA64040025
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA64040025
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 23:34:58 +0000 (UTC)
X-CSE-ConnectionGUID: yVUQyaHsS46OjhxotRiJ6Q==
X-CSE-MsgGUID: lJKzLRydR8K2jxrdAosl+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="28097433"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="28097433"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 16:34:58 -0700
X-CSE-ConnectionGUID: 4yJrWhR9RbWlm/22mB56Ew==
X-CSE-MsgGUID: 5uv8/lKJRe+TAh6FvmWfwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46781503"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 04 Jul 2024 16:34:57 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sPVyY-000Rdh-3A
 for intel-wired-lan@lists.osuosl.org; Thu, 04 Jul 2024 23:34:54 +0000
Date: Fri, 05 Jul 2024 07:34:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407050720.sf8EH2Mz-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720136099; x=1751672099;
 h=date:from:to:subject:message-id;
 bh=dzfFedt4gpPeeob1QQ63o/HRWsWX6qtKNqVpBQz0gLg=;
 b=XePzDeKAPuEzlaJG3NFRjASzFiIHQavJvW0iXz7Q1L66Q+HejNUOHvZ6
 4gesBTIWxqYbslNRrnJFb6j1IE3OtaPv97CrH/MB+KSEImhnw5OnzhSHI
 xZb/F7kpU47KDnkrX5OT0+57vZCfGXfHjYYCKso7/YIe0w4DIjJfQPKXh
 nqC7bh3aOQAer+AjV9JZ+irWx5NmZW1TSA7rtkJviCQSuukLzcFH0eZCs
 dWBRO6bW9Eq6i0bOT1obFV5v72Aip3qhTQCoqWnVRv8dcl12p/u6vRu3Z
 CcCKiKY74XPh8+Q3kJ7oDM/mp/v66LhdoenJoljkrcWPoc04tf3ZhoITu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XePzDeKA
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d051d5283b530af3f9627c8e600aa581bc6c1958
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
branch HEAD: d051d5283b530af3f9627c8e600aa581bc6c1958  ice: Enable 1PPS out from CGU for E825C products

elapsed time: 1453m

configs tested: 138
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                     haps_hs_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240704   gcc-13.2.0
arc                   randconfig-002-20240704   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-13.2.0
arm                   randconfig-001-20240704   gcc-13.2.0
arm                   randconfig-002-20240704   gcc-13.2.0
arm                   randconfig-003-20240704   clang-19
arm                   randconfig-004-20240704   gcc-13.2.0
arm                           u8500_defconfig   gcc-13.2.0
arm                         vf610m4_defconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240704   clang-19
arm64                 randconfig-002-20240704   gcc-13.2.0
arm64                 randconfig-003-20240704   clang-19
arm64                 randconfig-004-20240704   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240704   gcc-13.2.0
csky                  randconfig-002-20240704   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240704   clang-19
hexagon               randconfig-002-20240704   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240704   clang-18
i386         buildonly-randconfig-002-20240704   gcc-13
i386         buildonly-randconfig-003-20240704   gcc-13
i386         buildonly-randconfig-004-20240704   gcc-12
i386         buildonly-randconfig-005-20240704   gcc-12
i386         buildonly-randconfig-006-20240704   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240704   clang-18
i386                  randconfig-002-20240704   gcc-13
i386                  randconfig-003-20240704   clang-18
i386                  randconfig-004-20240704   gcc-13
i386                  randconfig-005-20240704   clang-18
i386                  randconfig-006-20240704   gcc-12
i386                  randconfig-011-20240704   gcc-13
i386                  randconfig-012-20240704   clang-18
i386                  randconfig-013-20240704   clang-18
i386                  randconfig-014-20240704   clang-18
i386                  randconfig-015-20240704   clang-18
i386                  randconfig-016-20240704   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240704   gcc-13.2.0
loongarch             randconfig-002-20240704   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                  decstation_64_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240704   gcc-13.2.0
nios2                 randconfig-002-20240704   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                randconfig-001-20240704   gcc-13.2.0
parisc                randconfig-002-20240704   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          g5_defconfig   gcc-13.2.0
powerpc                    ge_imp3a_defconfig   gcc-13.2.0
powerpc                 mpc8313_rdb_defconfig   gcc-13.2.0
powerpc               mpc834x_itxgp_defconfig   clang-14
powerpc                      pcm030_defconfig   clang-19
powerpc                     ppa8548_defconfig   gcc-13.2.0
powerpc                       ppc64_defconfig   clang-19
powerpc               randconfig-001-20240704   gcc-13.2.0
powerpc               randconfig-002-20240704   gcc-13.2.0
powerpc               randconfig-003-20240704   clang-19
powerpc64             randconfig-001-20240704   gcc-13.2.0
powerpc64             randconfig-002-20240704   gcc-13.2.0
powerpc64             randconfig-003-20240704   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                 randconfig-001-20240704   clang-19
riscv                 randconfig-002-20240704   clang-16
s390                              allnoconfig   clang-19
s390                  randconfig-001-20240704   clang-19
s390                  randconfig-002-20240704   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                    randconfig-001-20240704   gcc-13.2.0
sh                    randconfig-002-20240704   gcc-13.2.0
sh                   rts7751r2dplus_defconfig   gcc-13.2.0
sh                          urquell_defconfig   gcc-13.2.0
sparc64               randconfig-001-20240704   gcc-13.2.0
sparc64               randconfig-002-20240704   gcc-13.2.0
um                                allnoconfig   clang-17
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240704   gcc-10
um                    randconfig-002-20240704   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240704   clang-18
x86_64       buildonly-randconfig-002-20240704   gcc-12
x86_64       buildonly-randconfig-003-20240704   clang-18
x86_64       buildonly-randconfig-004-20240704   gcc-13
x86_64       buildonly-randconfig-005-20240704   gcc-12
x86_64       buildonly-randconfig-006-20240704   gcc-13
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240704   clang-18
x86_64                randconfig-002-20240704   gcc-11
x86_64                randconfig-003-20240704   clang-18
x86_64                randconfig-004-20240704   clang-18
x86_64                randconfig-005-20240704   gcc-13
x86_64                randconfig-006-20240704   clang-18
x86_64                randconfig-011-20240704   gcc-13
x86_64                randconfig-012-20240704   gcc-10
x86_64                randconfig-013-20240704   gcc-13
x86_64                randconfig-014-20240704   clang-18
x86_64                randconfig-015-20240704   clang-18
x86_64                randconfig-016-20240704   gcc-13
x86_64                randconfig-071-20240704   gcc-12
x86_64                randconfig-072-20240704   gcc-13
x86_64                randconfig-073-20240704   clang-18
x86_64                randconfig-074-20240704   gcc-12
x86_64                randconfig-075-20240704   clang-18
x86_64                randconfig-076-20240704   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                       common_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240704   gcc-13.2.0
xtensa                randconfig-002-20240704   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
