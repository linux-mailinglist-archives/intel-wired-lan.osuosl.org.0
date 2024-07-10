Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 734B992DB3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 23:48:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D73860A5F;
	Wed, 10 Jul 2024 21:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RQm9jWlMxH27; Wed, 10 Jul 2024 21:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78D5760A61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720648133;
	bh=0qZo128PNXAf4/yxxYSuYiDmKnEUpJaEyLyZO8fxZPg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7MT5coo81lXR/fjJXsgc+Z+uvTKVaGVelUmXh204D7qBlK5UnRGtq405BRBLiepJl
	 z1bWWvrL++7+7MHkTuABHPISTak+LmOi9h5OZeH02RNLiDA6xhWc1cjFd8/5wqMXbf
	 tM3Rd7EVdMsrpF27t3eVNgxRdVWVP+V90gdUHGWij8xbdsuUfv28YtTGSg/OztCAtX
	 /80ax7vTCBORSdx97I/0+n0qMA6Pld/QO6aBV2n3W+8Iapp+5oIfs0wRCi703Mh9tR
	 ZOCtTGjw0OGWH8+94/cxo7MrCiDU8+z40kVA9cDwdzOkIhdcwIEafVhsgvO8KAm0L8
	 gU8E0FFnYJ70w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78D5760A61;
	Wed, 10 Jul 2024 21:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D41BD1BF292
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 21:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFA54404FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 21:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PbdB_tMg1kKO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 21:48:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1231640126
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1231640126
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1231640126
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 21:48:49 +0000 (UTC)
X-CSE-ConnectionGUID: Rw0SS18HRVmDTuxEWHtelw==
X-CSE-MsgGUID: 74wW88e2St+zlOB6igPpbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="17870425"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="17870425"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 14:48:49 -0700
X-CSE-ConnectionGUID: i7/CR5tqR2Ozx01wCI9S1Q==
X-CSE-MsgGUID: JOHBU6MjSq+4VBcGxF6Shg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="85849308"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 10 Jul 2024 14:48:48 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sRfB7-000YKu-33
 for intel-wired-lan@lists.osuosl.org; Wed, 10 Jul 2024 21:48:45 +0000
Date: Thu, 11 Jul 2024 05:48:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407110512.HZCg0PJ3-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720648130; x=1752184130;
 h=date:from:to:subject:message-id;
 bh=3MuodxLMtC0YliY7LJNysecAXvWU03QQRh7+Jah0Tc4=;
 b=dDyjs0ptXDwXVwI3DHezrK8uXIqI+0JFUr9M2iDCPDH9Xs28FebgfjxS
 msNxEqYEC26GValzVQ3Y6GAWr7u0nn78kqzkYjyJc9m5D0v1fke8Esu6g
 Q/hdymJ08QXznalRPGriK0EF1P1y4m0V3H2sDhsYnc2vR0To5GL9jmPJk
 1FV5FcQpl/S43H6FMoeJzj1zdMlOI6zfvM6eJgoV9b80Xl/qqPyG2FzCW
 7fJlsZX+tXt7QNRc6lGG+kDAK4QS3qbSIcrxiQtBxj9kqFr0LN8kJYxp9
 Mb9n2A8jI6sn57+VaXNdJzUoMZa0j0w806n1H+gBuGcdrIA/IzrKeK8Vw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dDyjs0pt
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 fcfec1114f48ac1a73f68c3a60c2dddbd3ba3902
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
branch HEAD: fcfec1114f48ac1a73f68c3a60c2dddbd3ba3902  i40e: fix: remove needless retries of NVM update

elapsed time: 1390m

configs tested: 205
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240710   gcc-13.2.0
arc                   randconfig-002-20240710   gcc-13.2.0
arm                              allmodconfig   gcc-13.3.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.3.0
arm                         assabet_defconfig   clang-15
arm                                 defconfig   gcc-13.2.0
arm                        keystone_defconfig   gcc-13.3.0
arm                   randconfig-001-20240710   clang-19
arm                   randconfig-002-20240710   gcc-13.3.0
arm                   randconfig-003-20240710   clang-19
arm                   randconfig-004-20240710   gcc-13.3.0
arm                        vexpress_defconfig   gcc-13.3.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240710   clang-19
arm64                 randconfig-002-20240710   clang-19
arm64                 randconfig-003-20240710   clang-17
arm64                 randconfig-004-20240710   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.3.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240710   gcc-13.3.0
csky                  randconfig-002-20240710   gcc-13.3.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240710   clang-19
hexagon               randconfig-002-20240710   clang-19
i386                             alldefconfig   gcc-13
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240710   clang-18
i386         buildonly-randconfig-001-20240711   gcc-13
i386         buildonly-randconfig-002-20240710   gcc-13
i386         buildonly-randconfig-002-20240711   gcc-13
i386         buildonly-randconfig-003-20240710   gcc-11
i386         buildonly-randconfig-003-20240711   gcc-13
i386         buildonly-randconfig-004-20240710   gcc-11
i386         buildonly-randconfig-004-20240711   gcc-13
i386         buildonly-randconfig-005-20240710   clang-18
i386         buildonly-randconfig-005-20240711   gcc-13
i386         buildonly-randconfig-006-20240710   clang-18
i386         buildonly-randconfig-006-20240711   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240710   clang-18
i386                  randconfig-001-20240711   gcc-13
i386                  randconfig-002-20240710   gcc-11
i386                  randconfig-002-20240711   gcc-13
i386                  randconfig-003-20240710   gcc-13
i386                  randconfig-003-20240711   gcc-13
i386                  randconfig-004-20240710   clang-18
i386                  randconfig-004-20240711   gcc-13
i386                  randconfig-005-20240710   clang-18
i386                  randconfig-005-20240711   gcc-13
i386                  randconfig-006-20240710   clang-18
i386                  randconfig-006-20240711   gcc-13
i386                  randconfig-011-20240710   gcc-13
i386                  randconfig-011-20240711   gcc-13
i386                  randconfig-012-20240710   gcc-12
i386                  randconfig-012-20240711   gcc-13
i386                  randconfig-013-20240710   gcc-12
i386                  randconfig-013-20240711   gcc-13
i386                  randconfig-014-20240710   gcc-13
i386                  randconfig-014-20240711   gcc-13
i386                  randconfig-015-20240710   gcc-8
i386                  randconfig-015-20240711   gcc-13
i386                  randconfig-016-20240710   clang-18
i386                  randconfig-016-20240711   gcc-13
loongarch                        allmodconfig   gcc-13.2.0
loongarch                        allmodconfig   gcc-13.3.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.3.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-13.3.0
loongarch             randconfig-001-20240710   gcc-13.3.0
loongarch             randconfig-002-20240710   gcc-13.3.0
m68k                             allmodconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-13.3.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.3.0
m68k                             allyesconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.3.0
m68k                                defconfig   gcc-13.2.0
m68k                        m5307c3_defconfig   gcc-13.3.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.3.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.3.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.3.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.3.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240710   gcc-13.3.0
nios2                 randconfig-002-20240710   gcc-13.3.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.3.0
openrisc                            defconfig   gcc-13.3.0
parisc                           allmodconfig   gcc-13.3.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.3.0
parisc                              defconfig   gcc-13.3.0
parisc                randconfig-001-20240710   gcc-13.3.0
parisc                randconfig-002-20240710   gcc-13.3.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.3.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   clang-19
powerpc                     kilauea_defconfig   clang-19
powerpc                     kmeter1_defconfig   gcc-13.3.0
powerpc                 mpc8315_rdb_defconfig   clang-19
powerpc                      obs600_defconfig   clang-14
powerpc               randconfig-001-20240710   gcc-13.3.0
powerpc               randconfig-002-20240710   clang-19
powerpc               randconfig-003-20240710   gcc-13.3.0
powerpc64             randconfig-001-20240710   gcc-13.3.0
powerpc64             randconfig-002-20240710   clang-15
powerpc64             randconfig-003-20240710   clang-19
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                    nommu_virt_defconfig   clang-19
riscv                 randconfig-001-20240710   clang-19
riscv                 randconfig-002-20240710   clang-19
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240710   gcc-13.2.0
s390                  randconfig-002-20240710   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.3.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.3.0
sh                          kfr2r09_defconfig   gcc-13.3.0
sh                    randconfig-001-20240710   gcc-13.3.0
sh                    randconfig-002-20240710   gcc-13.3.0
sh                              ul2_defconfig   gcc-13.3.0
sparc                            allmodconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.3.0
sparc64               randconfig-001-20240710   gcc-13.3.0
sparc64               randconfig-002-20240710   gcc-13.3.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240710   gcc-13
um                    randconfig-002-20240710   clang-19
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240710   clang-18
x86_64       buildonly-randconfig-002-20240710   clang-18
x86_64       buildonly-randconfig-003-20240710   clang-18
x86_64       buildonly-randconfig-004-20240710   clang-18
x86_64       buildonly-randconfig-005-20240710   gcc-13
x86_64       buildonly-randconfig-006-20240710   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240710   gcc-13
x86_64                randconfig-002-20240710   clang-18
x86_64                randconfig-003-20240710   gcc-12
x86_64                randconfig-004-20240710   clang-18
x86_64                randconfig-005-20240710   clang-18
x86_64                randconfig-006-20240710   gcc-13
x86_64                randconfig-011-20240710   clang-18
x86_64                randconfig-012-20240710   clang-18
x86_64                randconfig-013-20240710   clang-18
x86_64                randconfig-014-20240710   clang-18
x86_64                randconfig-015-20240710   clang-18
x86_64                randconfig-016-20240710   gcc-13
x86_64                randconfig-071-20240710   gcc-13
x86_64                randconfig-072-20240710   clang-18
x86_64                randconfig-073-20240710   clang-18
x86_64                randconfig-074-20240710   gcc-7
x86_64                randconfig-075-20240710   clang-18
x86_64                randconfig-076-20240710   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-13.3.0
xtensa                randconfig-001-20240710   gcc-13.3.0
xtensa                randconfig-002-20240710   gcc-13.3.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
