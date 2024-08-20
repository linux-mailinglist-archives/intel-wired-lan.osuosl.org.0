Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68437958D98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 19:45:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C12B40B03;
	Tue, 20 Aug 2024 17:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjCTJYffwRg6; Tue, 20 Aug 2024 17:45:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CA3E40B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724175952;
	bh=mN6RZkBZ1kddvdHE7Lnw/Rxoi0U3ziS+nx1eVn0VeBM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=w1ZNNu+MzsgY1/RpLiwiC+dVZEdaYDraxEdSX5ebw+JtYckhXOK+9kFmXM0vDpl4y
	 0tkv/59P3ZKZOmpyC8udSfdAjAy0Xuz47ZEeEUxJIEJ/oENPp/7/bhEqrvghPXAahb
	 uYrRRsIv2mSUsCL6q73b91p3L69jXYsncJ+ztbSRj2ArGn0mgT9kI7zi9zsZxe0bXE
	 MnOil71JXZgZhrUQj4TRRO3huVlsv/AhPDTSTS86+tgzbF9MX4gmKVzTin7zOMHAGd
	 KOnwBZ3rZt200p/VKGwWYSgMLvYDFqNARlGq0qsrqmANjgwnPjiIBO+CBYN/gingen
	 cxjOfBZzzaTfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CA3E40B01;
	Tue, 20 Aug 2024 17:45:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 166211BF37C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 17:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E7E580E65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 17:45:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VXqpdQ9jyMBW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 17:45:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C125480E28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C125480E28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C125480E28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 17:45:48 +0000 (UTC)
X-CSE-ConnectionGUID: 39p+xgHpSoqOIsUSgpLcUA==
X-CSE-MsgGUID: GEm8SDEmRVOK4HFqfKcGIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22681856"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22681856"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 10:45:48 -0700
X-CSE-ConnectionGUID: 3Mt2hfMOQbGnb2odhL6coA==
X-CSE-MsgGUID: LDjWGmSFR8SysKTwDMbDnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="60862386"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 20 Aug 2024 10:45:47 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sgSvQ-000ASu-32
 for intel-wired-lan@lists.osuosl.org; Tue, 20 Aug 2024 17:45:44 +0000
Date: Wed, 21 Aug 2024 01:45:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408210129.Fk8lLNXS-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724175949; x=1755711949;
 h=date:from:to:subject:message-id;
 bh=A42f+INAOgWB21vLzqb6+Hq56FBt3iADm1jmtbFXVEo=;
 b=fkSDxZV5DL2R1ou8d/Ja6RsyKH5Co5VN21LHNE/rBuftGd6xWtsNwoSU
 /h+2N6DoJaF9lieiOCLh/7RMPaxIiVtnxYzwdoSVcs7Wb0bngTrpma7ix
 lYbdi15WamCBEuRBR20T+v9xOPEYLklcZCPLot9FDKwMLF89bAJ4T4snB
 pnPd2oYw0vckeS6bWw3VqRemyecX42ARvSKrAhyCm6RzTfKGcyASOiIk3
 5e4/upXW+GkLlLppS4CIiWdbQBXCVhh5ScvBHwfm9ZN01CySdLIGK5T4H
 FNjAFbHC2eJBSFfKl6R9yYZvBGxEfGtuLaFJlVmhVGodYk1u0GWUH7bNm
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fkSDxZV5
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 845a2d94da6d0bf09e250d456dc95ed3f53a79a6
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
branch HEAD: 845a2d94da6d0bf09e250d456dc95ed3f53a79a6  idpf: switch to libeth generic statistics

elapsed time: 1206m

configs tested: 148
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240820   gcc-13.2.0
arc                   randconfig-002-20240820   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                            mps2_defconfig   clang-20
arm                        multi_v5_defconfig   gcc-14.1.0
arm                             mxs_defconfig   clang-20
arm                   randconfig-001-20240820   clang-20
arm                   randconfig-002-20240820   clang-20
arm                   randconfig-003-20240820   clang-20
arm                   randconfig-004-20240820   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240820   clang-20
arm64                 randconfig-002-20240820   clang-20
arm64                 randconfig-003-20240820   gcc-14.1.0
arm64                 randconfig-004-20240820   clang-20
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240820   gcc-14.1.0
csky                  randconfig-002-20240820   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240820   clang-20
hexagon               randconfig-002-20240820   clang-20
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240820   clang-18
i386         buildonly-randconfig-002-20240820   clang-18
i386         buildonly-randconfig-003-20240820   clang-18
i386         buildonly-randconfig-004-20240820   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240820   clang-18
i386                  randconfig-002-20240820   clang-18
i386                  randconfig-003-20240820   clang-18
i386                  randconfig-004-20240820   clang-18
i386                  randconfig-005-20240820   clang-18
i386                  randconfig-006-20240820   clang-18
i386                  randconfig-011-20240820   gcc-11
i386                  randconfig-012-20240820   gcc-12
i386                  randconfig-013-20240820   gcc-12
i386                  randconfig-014-20240820   gcc-12
i386                  randconfig-015-20240820   gcc-12
i386                  randconfig-016-20240820   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240820   gcc-14.1.0
loongarch             randconfig-002-20240820   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                        stmark2_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                          ath79_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240820   gcc-14.1.0
nios2                 randconfig-002-20240820   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240820   gcc-14.1.0
parisc                randconfig-002-20240820   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-003-20240820   clang-20
powerpc64             randconfig-001-20240820   gcc-14.1.0
powerpc64             randconfig-002-20240820   clang-20
powerpc64             randconfig-003-20240820   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240820   clang-20
riscv                 randconfig-002-20240820   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240820   gcc-14.1.0
s390                  randconfig-002-20240820   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240820   gcc-14.1.0
sh                    randconfig-002-20240820   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240820   gcc-14.1.0
sparc64               randconfig-002-20240820   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240820   gcc-12
um                    randconfig-002-20240820   clang-20
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240820   clang-18
x86_64       buildonly-randconfig-002-20240820   gcc-11
x86_64       buildonly-randconfig-003-20240820   clang-18
x86_64       buildonly-randconfig-004-20240820   clang-18
x86_64       buildonly-randconfig-005-20240820   clang-18
x86_64       buildonly-randconfig-006-20240820   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240820   gcc-12
x86_64                randconfig-002-20240820   gcc-12
x86_64                randconfig-003-20240820   clang-18
x86_64                randconfig-004-20240820   gcc-12
x86_64                randconfig-005-20240820   clang-18
x86_64                randconfig-006-20240820   gcc-12
x86_64                randconfig-011-20240820   clang-18
x86_64                randconfig-012-20240820   gcc-12
x86_64                randconfig-013-20240820   clang-18
x86_64                randconfig-014-20240820   clang-18
x86_64                randconfig-015-20240820   gcc-12
x86_64                randconfig-016-20240820   clang-18
x86_64                randconfig-071-20240820   gcc-12
x86_64                randconfig-072-20240820   gcc-12
x86_64                randconfig-073-20240820   gcc-12
x86_64                randconfig-074-20240820   clang-18
x86_64                randconfig-075-20240820   clang-18
x86_64                randconfig-076-20240820   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240820   gcc-14.1.0
xtensa                randconfig-002-20240820   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
