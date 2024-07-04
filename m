Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFF7927BBD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jul 2024 19:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 400E481EA2;
	Thu,  4 Jul 2024 17:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zFBnWbp9ipyP; Thu,  4 Jul 2024 17:14:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C081681EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720113290;
	bh=Agw/hW5jEGLsNuIQLbAzueJhJ6aM39yZSni9FBe/2hM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8e4B5MEx9H6LGqrBkRKRcT/dfSws4UxCqncIUBpRGSPXjBa7y238Rg0mRRAaDw9kf
	 zQekB2x24FuFqNW3WpAxiW3d7fFzaSEOWlaOO0NkLcVWDCnBgbsvI20RExYY6appOm
	 vhYY8suUyUHxBlpP6W48YMi3LMjn5S5fSJtk5CKQ1UE90kM5DnHgKRojk8gTXuayKn
	 acvINqIXU2VrdvswR6I3KJGjxmCr57jlcGSzY4iI/BwkMVPlCSrZPUpD99ofqOUbWd
	 QEjAKVoEWJFedbxf+e1r8r/KLmjsf8SztDFFMDS+yLPV+4qN+MzM87BfTlptnUEFQw
	 R8pdnXuKuTBsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C081681EE9;
	Thu,  4 Jul 2024 17:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF38B1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 17:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A933440735
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 17:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zsz8uKKO-cDQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2024 17:14:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DE29406B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DE29406B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DE29406B2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2024 17:14:45 +0000 (UTC)
X-CSE-ConnectionGUID: FLN/tCf0Sb+w6gsXPaXoEw==
X-CSE-MsgGUID: flTTQR0FTPWe9jL0xq0Xng==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="20310538"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="20310538"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 10:14:45 -0700
X-CSE-ConnectionGUID: it6rZ6ySQMGaTc9A/z6ooQ==
X-CSE-MsgGUID: WmgSWs1YSHGG2DwrvJJv7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="46621092"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 04 Jul 2024 10:14:45 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sPQ2c-000REg-1D
 for intel-wired-lan@lists.osuosl.org; Thu, 04 Jul 2024 17:14:42 +0000
Date: Fri, 05 Jul 2024 01:14:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407050125.G2Oxgp5I-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720113287; x=1751649287;
 h=date:from:to:subject:message-id;
 bh=hX4eFR+2Ymad9ms+fX08iUPg3B/+Bs6XxrLFkiHtCbo=;
 b=JA1qEhI0sg5DKPvs2avoJbhoVCIT8h782Gl4AHnw0ug4DNXbZkOpqg/M
 MzUhJCTsL30wmHAkt/irKZelz5O5znGKR7bX90fW0z7MUqRl5SGUka6S8
 ZvE0QFUG2KQbJV/48qUG9q99+HVEBLVZnoXAAluqET6nOrAOUkXjxdBik
 DxVG/DM2zLTBNe5Fh7KyznFZx8jWkgsEbcaNAyGzcngMTEsJolHmEYNCw
 ppT8HnwXzcFrdMgqXQOq1ACwpyl63izlvEOiJpTHA/BSIZb+hyRMIAlM3
 7uEFT2rqxFSu9qkfbWwftp1CXMyp3WKi+MsecGgJwg2RlPUb1BXxSrbI5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JA1qEhI0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 dce381f2a79cfac343a18e874b317d2d9541c77b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: dce381f2a79cfac343a18e874b317d2d9541c77b  ice: Fix recipe read procedure

elapsed time: 1445m

configs tested: 113
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240704   gcc-13.2.0
arc                   randconfig-002-20240704   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                   randconfig-001-20240704   gcc-13.2.0
arm                   randconfig-002-20240704   gcc-13.2.0
arm                   randconfig-003-20240704   clang-19
arm                   randconfig-004-20240704   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240704   clang-19
arm64                 randconfig-002-20240704   gcc-13.2.0
arm64                 randconfig-003-20240704   clang-19
arm64                 randconfig-004-20240704   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                  randconfig-001-20240704   gcc-13.2.0
csky                  randconfig-002-20240704   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240704   clang-19
hexagon               randconfig-002-20240704   clang-19
i386         buildonly-randconfig-001-20240704   clang-18
i386         buildonly-randconfig-002-20240704   gcc-13
i386         buildonly-randconfig-003-20240704   gcc-13
i386         buildonly-randconfig-004-20240704   gcc-12
i386         buildonly-randconfig-005-20240704   gcc-12
i386         buildonly-randconfig-006-20240704   gcc-12
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
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240704   gcc-13.2.0
nios2                 randconfig-002-20240704   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240704   gcc-13.2.0
parisc                randconfig-002-20240704   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-001-20240704   gcc-13.2.0
powerpc               randconfig-002-20240704   gcc-13.2.0
powerpc               randconfig-003-20240704   clang-19
powerpc64             randconfig-001-20240704   gcc-13.2.0
powerpc64             randconfig-002-20240704   gcc-13.2.0
powerpc64             randconfig-003-20240704   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240704   clang-19
riscv                 randconfig-002-20240704   clang-16
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240704   clang-19
s390                  randconfig-002-20240704   gcc-13.2.0
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                    randconfig-001-20240704   gcc-13.2.0
sh                    randconfig-002-20240704   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240704   gcc-13.2.0
sparc64               randconfig-002-20240704   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240704   gcc-10
um                    randconfig-002-20240704   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
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
x86_64                randconfig-016-20240704   gcc-13
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240704   gcc-13.2.0
xtensa                randconfig-002-20240704   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
