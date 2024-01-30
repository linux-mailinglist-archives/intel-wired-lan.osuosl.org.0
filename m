Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4AA841C72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 08:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 671CA61008;
	Tue, 30 Jan 2024 07:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 671CA61008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706599187;
	bh=hcIAdIULIfy2zB1MEIZchC21diHwkdJ6CbEXdYiyXc0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=r4inQcjZSxWrfGwtGwnMtCz52qcMMCfyWAKqxc4q3qMzq3MThSY7EQOSNQwhC0/IJ
	 nIwu0aszsb+uzLAvhDuXWolQg0LOBqrBQjIj2CS21248unNXI625HR9AuaeotGVQr0
	 5tHkaDkSabMvfiF/CTT6eYAVPuaM9QI1Mdb6R03ogd9Ji0c7VyNdpVULXCOJ23g6HF
	 /ck6PQpKYlgH614MC03tT6uob7Xg2CenJNpmkSgltnUFEgGgaTZrE+ddaHnvV1Djhh
	 IdSS7uevbB7aFkraYtO8ULTN91ISXvz+MT1N50lqQwwSkSszRd0VBCemLhE4RtQ0DT
	 6HuUGgsNC6idw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uIWtUo26yIWW; Tue, 30 Jan 2024 07:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1495F60FF3;
	Tue, 30 Jan 2024 07:19:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1495F60FF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83BE21BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 07:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AB6F4188D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 07:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AB6F4188D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRYKeg68XjYe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 07:19:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5830E41753
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 07:19:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5830E41753
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="3026783"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3026783"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 23:19:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931347798"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="931347798"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jan 2024 23:19:28 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rUiP0-00005c-1C
 for intel-wired-lan@lists.osuosl.org; Tue, 30 Jan 2024 07:19:26 +0000
Date: Tue, 30 Jan 2024 15:18:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401301540.xC5DrfBj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706599180; x=1738135180;
 h=date:from:to:subject:message-id;
 bh=8fZBt/Jgli0rzB46GD8zDLs/bC8zKuN4eTF09zGrQr4=;
 b=FKUAY284iGjG8QD8ezD4BHY6O0x8Fr/coZFMmstT3/KAdYDOq+SVlEXo
 Yr8Lh89OcTj+dAuqbbNHjKiAtOEA9b9Jv6eyurICcKNbb6fP9cWWBILUO
 IFx06U9LnmR6fLf5F5AFR/8Je2lButIWYX4pEAyVW+SYdxoRBx15eTjwx
 xf8PIjReJmiyScQRC1FGO7XxXYAqu8tESRZGkh02b6p3tEvHOm68/AKPc
 /c49/rpukUCEic/wImJPC0yfqL3Ooz49WBA7J2V6ZiIT8BkDbFPrgetqW
 V/ZWYHqcR+ABHLvYFRBA+/7C8Doj5FgLZCo8MPuOwAaVKkMXzcP4Cfy30
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FKUAY284
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 f2aae2089368d8e5abb4ec01542c31bc4d011a74
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
branch HEAD: f2aae2089368d8e5abb4ec01542c31bc4d011a74  igc: Unify filtering rule fields

elapsed time: 729m

configs tested: 163
configs skipped: 3

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
arc                   randconfig-001-20240130   gcc  
arc                   randconfig-002-20240130   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240130   gcc  
arm                   randconfig-002-20240130   gcc  
arm                   randconfig-003-20240130   gcc  
arm                   randconfig-004-20240130   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240130   gcc  
arm64                 randconfig-002-20240130   gcc  
arm64                 randconfig-003-20240130   gcc  
arm64                 randconfig-004-20240130   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240130   gcc  
csky                  randconfig-002-20240130   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240130   clang
hexagon               randconfig-002-20240130   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240130   gcc  
i386         buildonly-randconfig-002-20240130   gcc  
i386         buildonly-randconfig-003-20240130   gcc  
i386         buildonly-randconfig-004-20240130   gcc  
i386         buildonly-randconfig-005-20240130   gcc  
i386         buildonly-randconfig-006-20240130   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20240130   gcc  
i386                  randconfig-002-20240130   gcc  
i386                  randconfig-003-20240130   gcc  
i386                  randconfig-004-20240130   gcc  
i386                  randconfig-005-20240130   gcc  
i386                  randconfig-006-20240130   gcc  
i386                  randconfig-011-20240130   clang
i386                  randconfig-012-20240130   clang
i386                  randconfig-013-20240130   clang
i386                  randconfig-014-20240130   clang
i386                  randconfig-015-20240130   clang
i386                  randconfig-016-20240130   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240130   gcc  
loongarch             randconfig-002-20240130   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240130   gcc  
nios2                 randconfig-002-20240130   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240130   gcc  
parisc                randconfig-002-20240130   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240130   gcc  
powerpc               randconfig-002-20240130   gcc  
powerpc               randconfig-003-20240130   gcc  
powerpc64             randconfig-001-20240130   gcc  
powerpc64             randconfig-002-20240130   gcc  
powerpc64             randconfig-003-20240130   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240130   gcc  
riscv                 randconfig-002-20240130   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240130   clang
s390                  randconfig-002-20240130   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240130   gcc  
sh                    randconfig-002-20240130   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240130   gcc  
sparc64               randconfig-002-20240130   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240130   gcc  
um                    randconfig-002-20240130   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240130   gcc  
x86_64       buildonly-randconfig-002-20240130   gcc  
x86_64       buildonly-randconfig-003-20240130   gcc  
x86_64       buildonly-randconfig-004-20240130   gcc  
x86_64       buildonly-randconfig-005-20240130   gcc  
x86_64       buildonly-randconfig-006-20240130   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240130   clang
x86_64                randconfig-002-20240130   clang
x86_64                randconfig-003-20240130   clang
x86_64                randconfig-004-20240130   clang
x86_64                randconfig-005-20240130   clang
x86_64                randconfig-006-20240130   clang
x86_64                randconfig-011-20240130   gcc  
x86_64                randconfig-012-20240130   gcc  
x86_64                randconfig-013-20240130   gcc  
x86_64                randconfig-014-20240130   gcc  
x86_64                randconfig-015-20240130   gcc  
x86_64                randconfig-016-20240130   gcc  
x86_64                randconfig-071-20240130   gcc  
x86_64                randconfig-072-20240130   gcc  
x86_64                randconfig-073-20240130   gcc  
x86_64                randconfig-074-20240130   gcc  
x86_64                randconfig-075-20240130   gcc  
x86_64                randconfig-076-20240130   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240130   gcc  
xtensa                randconfig-002-20240130   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
