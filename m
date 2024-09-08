Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4B797074C
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Sep 2024 14:15:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2FB36065C;
	Sun,  8 Sep 2024 12:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kHiEF-Z_VDUt; Sun,  8 Sep 2024 12:15:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81E0F6065F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725797715;
	bh=DUlHCO3a/8iqZyJYjNuzLXaSXax9u1j1qTCO0BGW78A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7hrvqTFRwPeYqD3BiY8pNEurUYbmx1MkS7zDZysIzYyhxKHamOitFtJlWyeBi1W1Q
	 9olZBvzlEzgsFUMb7McngX7gvDeRhMajIX+i99v+JKMTOfxiA8amnxksO8tNnYnT6V
	 vJRy7VfNoPb8VjHN+fXZbfzQRrJO4GYji7v9s1TNhueKd4CsZ0IltsJv6MSLUsUarw
	 3NNLc4U0wsbvk0wmQIyy5NrKDuk6MA0MCDA5SfiBy/xhjj25emuClXbzqLh6SxCcpm
	 s0JtMns3+vjg2FcwAjDeQXXWhglKSDf1ecUGKuIUynqPElhp6sBhtmeYK0KAzeDHK7
	 1z4KPDlIuJNBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81E0F6065F;
	Sun,  8 Sep 2024 12:15:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAE81BF393
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 12:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71C1640628
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 12:15:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EzYveariCSr9 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Sep 2024 12:15:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F37D404EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F37D404EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F37D404EE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 12:15:11 +0000 (UTC)
X-CSE-ConnectionGUID: q6AAnZFiQK2daMqN+VDrhg==
X-CSE-MsgGUID: 1LCVuxOxRxmqM5q9wcxArA==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24657830"
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; d="scan'208";a="24657830"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 05:15:11 -0700
X-CSE-ConnectionGUID: neOODriyQkeBpo939mmv3Q==
X-CSE-MsgGUID: WapxS6E+RnOHq7DwLU0oTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; d="scan'208";a="97193541"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 08 Sep 2024 05:15:10 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1snGot-000DVf-2Y
 for intel-wired-lan@lists.osuosl.org; Sun, 08 Sep 2024 12:15:07 +0000
Date: Sun, 08 Sep 2024 20:14:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409082026.stfyisOv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725797712; x=1757333712;
 h=date:from:to:subject:message-id;
 bh=dUlzQOMLs5weBJRyd0qEkGSwrELIvZ8Ro/Pa8dP1U2c=;
 b=elPyzJxi0j43o9D7g+YatM2BcDpUujKjuqmhYvSxkR8h3GJoxpORESYO
 6qL6Nwfz3ZHVi1EOnUiTs8WJDUCfozcKjG99hIH/YfLeItEy7bo1U3Zv2
 FD+ZX4a3mLImLNapOlZJW6WUH/Q4PNf/BOxEkRtiNQzDF/klAsh6HovMX
 2u/Bi5V2uQp+56lxkrHbcgSyNxr3aB1tzBhGfy4F8U+d4YCRMcyjbmGgw
 bjBCP/B3Q7vlpCaXZB53+pTB5kP3Q1zhNMBvYqyfC0neRwSMR/NN8wZoW
 kSXbOWuVTlow4iRTCkGn1G4V+PhRxg7v4yFORxVKF+j0we3fMQ/Am8BKP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=elPyzJxi
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 4b18064883a7755854c4472dcad9cf9f5f3291da
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
branch HEAD: 4b18064883a7755854c4472dcad9cf9f5f3291da  idpf: enable WB_ON_ITR

elapsed time: 2498m

configs tested: 104
configs skipped: 2

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
arc                   randconfig-001-20240908   gcc-13.2.0
arc                   randconfig-002-20240908   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                   randconfig-001-20240908   gcc-14.1.0
arm                   randconfig-002-20240908   clang-20
arm                   randconfig-003-20240908   clang-17
arm                   randconfig-004-20240908   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240908   clang-20
arm64                 randconfig-002-20240908   gcc-14.1.0
arm64                 randconfig-003-20240908   clang-20
arm64                 randconfig-004-20240908   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240908   gcc-14.1.0
csky                  randconfig-002-20240908   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240908   clang-14
hexagon               randconfig-002-20240908   clang-14
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240907   clang-18
i386         buildonly-randconfig-002-20240907   gcc-12
i386         buildonly-randconfig-003-20240907   gcc-12
i386         buildonly-randconfig-004-20240907   clang-18
i386         buildonly-randconfig-005-20240907   clang-18
i386         buildonly-randconfig-006-20240907   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240907   clang-18
i386                  randconfig-002-20240907   clang-18
i386                  randconfig-003-20240907   clang-18
i386                  randconfig-004-20240907   gcc-12
i386                  randconfig-005-20240907   gcc-12
i386                  randconfig-006-20240907   gcc-12
i386                  randconfig-011-20240907   clang-18
i386                  randconfig-012-20240907   gcc-12
i386                  randconfig-013-20240907   clang-18
i386                  randconfig-014-20240907   clang-18
i386                  randconfig-015-20240907   clang-18
i386                  randconfig-016-20240907   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240908   gcc-14.1.0
loongarch             randconfig-002-20240908   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240908   gcc-14.1.0
nios2                 randconfig-002-20240908   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240908   gcc-14.1.0
parisc                randconfig-002-20240908   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc64             randconfig-001-20240908   clang-15
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240908   gcc-12
x86_64       buildonly-randconfig-002-20240908   gcc-12
x86_64       buildonly-randconfig-003-20240908   clang-18
x86_64       buildonly-randconfig-004-20240908   gcc-12
x86_64       buildonly-randconfig-005-20240908   clang-18
x86_64       buildonly-randconfig-006-20240908   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240908   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
