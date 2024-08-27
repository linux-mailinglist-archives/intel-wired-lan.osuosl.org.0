Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 240C6961AA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 01:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8AD080F06;
	Tue, 27 Aug 2024 23:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BQIibrOJCFuK; Tue, 27 Aug 2024 23:31:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2721A80F09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724801489;
	bh=fbHCL0T8qoU1+Ka+sc72Y8BLqIPkBaEl3UShBbE/Ctc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GWFcZtY8kAS1m2AyP0S3YfalhaKcFN64C96PdaI8VhViwY9tfeO74SdoAivV83i7N
	 +sjTHY+JPSEhkxQ1qb5K6iSlTzE1o6Gq8JJU3Tqw6RIW5OdzdXIKA/W+uHA2WdDS7U
	 DXlTGk2sGeSWF+f5DuwBNPJm6jPygQ5nbglpD0dSt6wzLiUvybQnEVeVqznOWx+Gg7
	 fqetA35AwampezYLL7gK50NQm6bJHGvCZFkuCJVFpL8C+/n9FEl/eIPRw+MKQIBs0E
	 EMJml6BSzvCu2bctqR2V9GaLcmwxx5X/5BwRZ2aNlIzizsVP87JFIMt1LUB6vnizT7
	 Z+sP9jBJIkzvw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2721A80F09;
	Tue, 27 Aug 2024 23:31:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA39B1BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A55E040667
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W6kaD3WyIFVT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 23:31:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82A4B40275
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82A4B40275
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82A4B40275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 23:31:24 +0000 (UTC)
X-CSE-ConnectionGUID: rVCJ6kZAS9S5QmGUUf2hEA==
X-CSE-MsgGUID: Xn6kEtLERuileRtpmZaeHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="34716174"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="34716174"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 16:31:24 -0700
X-CSE-ConnectionGUID: 2S4n+wvhTTqTHe3ZZoYb3g==
X-CSE-MsgGUID: Gu7AG0vHRqi2mHFuILGvUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="93824125"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 27 Aug 2024 16:31:21 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sj5eh-000KCs-1J
 for intel-wired-lan@lists.osuosl.org; Tue, 27 Aug 2024 23:31:19 +0000
Date: Wed, 28 Aug 2024 07:30:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408280749.N4hxzjOQ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724801486; x=1756337486;
 h=date:from:to:subject:message-id;
 bh=fiOW/8hcBOWm4NSErzbnCPjVc+OAud5sHfoQ17MjP8g=;
 b=bnkadx5tgxDXZ+0RFb5l9V5Xq1NvSZQNMMyAHfxhgDzgpixHBFGEKFJN
 6IQrxdLAV6qhQBad0Ab5WwkTJ0oon34jxsgylEwXNErelzxz270aT6mTy
 9M+GND+GyndvCQR2oCZYUY0La1/03eQXFA+9pNfE2E4t7/76LTKEZJEt2
 i4YzXTbPZ/D6gXS7e6x09k1/p07tmlTDGroo4GAPWdtRDl1oFmVl1jIfA
 YBpXV2hFOD1Ppjq+vWX/HJnwJ0TDYXvmFDgIMICxSuWvlQNuMtk+/v4fl
 A8ZaCSs6Y26/SuRSiC+YYOTRW5Ks1v4ByIEL9IEniLwG+Sx9h7icxZxt6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bnkadx5t
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 62fdaf9e8056e9a9e6fe63aa9c816ec2122d60c6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 62fdaf9e8056e9a9e6fe63aa9c816ec2122d60c6  ice: Adjust over allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()

elapsed time: 1463m

configs tested: 181
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240827   gcc-13.2.0
arc                   randconfig-002-20240827   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                      footbridge_defconfig   clang-20
arm                         nhk8815_defconfig   clang-20
arm                           omap1_defconfig   clang-20
arm                   randconfig-001-20240827   gcc-13.2.0
arm                   randconfig-002-20240827   gcc-13.2.0
arm                   randconfig-003-20240827   gcc-13.2.0
arm                   randconfig-004-20240827   gcc-13.2.0
arm                         s5pv210_defconfig   clang-20
arm                          sp7021_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240827   gcc-13.2.0
arm64                 randconfig-002-20240827   gcc-13.2.0
arm64                 randconfig-003-20240827   gcc-13.2.0
arm64                 randconfig-004-20240827   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240827   gcc-13.2.0
csky                  randconfig-002-20240827   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240827   gcc-12
i386         buildonly-randconfig-002-20240827   clang-18
i386         buildonly-randconfig-002-20240827   gcc-12
i386         buildonly-randconfig-003-20240827   gcc-12
i386         buildonly-randconfig-004-20240827   clang-18
i386         buildonly-randconfig-004-20240827   gcc-12
i386         buildonly-randconfig-005-20240827   clang-18
i386         buildonly-randconfig-005-20240827   gcc-12
i386         buildonly-randconfig-006-20240827   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240827   gcc-12
i386                  randconfig-002-20240827   gcc-12
i386                  randconfig-003-20240827   gcc-12
i386                  randconfig-004-20240827   gcc-12
i386                  randconfig-005-20240827   gcc-12
i386                  randconfig-006-20240827   clang-18
i386                  randconfig-006-20240827   gcc-12
i386                  randconfig-011-20240827   clang-18
i386                  randconfig-011-20240827   gcc-12
i386                  randconfig-012-20240827   clang-18
i386                  randconfig-012-20240827   gcc-12
i386                  randconfig-013-20240827   clang-18
i386                  randconfig-013-20240827   gcc-12
i386                  randconfig-014-20240827   gcc-12
i386                  randconfig-015-20240827   gcc-12
i386                  randconfig-016-20240827   clang-18
i386                  randconfig-016-20240827   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240827   gcc-13.2.0
loongarch             randconfig-002-20240827   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                           ci20_defconfig   clang-20
mips                  maltasmvp_eva_defconfig   clang-20
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240827   gcc-13.2.0
nios2                 randconfig-002-20240827   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240827   gcc-13.2.0
parisc                randconfig-002-20240827   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                        cell_defconfig   clang-20
powerpc                        icon_defconfig   clang-20
powerpc               randconfig-001-20240827   gcc-13.2.0
powerpc               randconfig-002-20240827   gcc-13.2.0
powerpc               randconfig-003-20240827   gcc-13.2.0
powerpc                     sequoia_defconfig   clang-20
powerpc64             randconfig-001-20240827   gcc-13.2.0
powerpc64             randconfig-002-20240827   gcc-13.2.0
powerpc64             randconfig-003-20240827   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240827   gcc-13.2.0
riscv                 randconfig-002-20240827   gcc-13.2.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240827   gcc-13.2.0
s390                  randconfig-002-20240827   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240827   gcc-13.2.0
sh                    randconfig-002-20240827   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240827   gcc-13.2.0
sparc64               randconfig-002-20240827   gcc-13.2.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240827   gcc-13.2.0
um                    randconfig-002-20240827   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240827   clang-18
x86_64       buildonly-randconfig-002-20240827   clang-18
x86_64       buildonly-randconfig-003-20240827   clang-18
x86_64       buildonly-randconfig-004-20240827   clang-18
x86_64       buildonly-randconfig-005-20240827   clang-18
x86_64       buildonly-randconfig-006-20240827   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240827   clang-18
x86_64                randconfig-002-20240827   clang-18
x86_64                randconfig-003-20240827   clang-18
x86_64                randconfig-004-20240827   clang-18
x86_64                randconfig-005-20240827   clang-18
x86_64                randconfig-006-20240827   clang-18
x86_64                randconfig-011-20240827   clang-18
x86_64                randconfig-012-20240827   clang-18
x86_64                randconfig-013-20240827   clang-18
x86_64                randconfig-014-20240827   clang-18
x86_64                randconfig-015-20240827   clang-18
x86_64                randconfig-016-20240827   clang-18
x86_64                randconfig-071-20240827   clang-18
x86_64                randconfig-072-20240827   clang-18
x86_64                randconfig-073-20240827   clang-18
x86_64                randconfig-074-20240827   clang-18
x86_64                randconfig-075-20240827   clang-18
x86_64                randconfig-076-20240827   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240827   gcc-13.2.0
xtensa                randconfig-002-20240827   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
