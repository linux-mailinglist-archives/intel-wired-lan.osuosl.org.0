Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E67686F0AC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 15:22:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F015C60A8F;
	Sat,  2 Mar 2024 14:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pwEVVs408IPh; Sat,  2 Mar 2024 14:21:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B47F60A74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709389317;
	bh=yb20VBLgAn0vRf0A6Xiy+CiY5ZD0doYVInOv8cPCLfk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ts8YBHodoWQ8JtrJrZt8/Qxr/xWFD8XHjBCb6NgVMEKX0iQIhQgPl5MxRCyYQEE9Q
	 OV2XIvGE8cuV3v8eUW3y0LTyyUl3q49GTdt3tTILe/uLeMUpjM810xqUKO1OtAv2G+
	 lhspucS3gNlbLtE25YuVXE3ZEJLx800ejIAYpN8Ar8tLZBW0vO4f1/PtA+XacAzycQ
	 mcWvkXEalgBT99X+yZbMzJ2Mneys/XnumTXThCuaB86tHNnSn5zydv28V5AC4qkbx3
	 HHU/llxWWm774s1Wfbr7oF1wMQ1EX9TJb5outnJiUShjLb7WVlgjtwaDrX3L2GNqrV
	 K89oAx1wzMPTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B47F60A74;
	Sat,  2 Mar 2024 14:21:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 253FA1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 14:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1128140185
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 14:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vUAG05LO_ur for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 14:21:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B8E3D4011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8E3D4011A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B8E3D4011A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 14:21:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11001"; a="4096060"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="4096060"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2024 06:21:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="9060015"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 02 Mar 2024 06:21:50 -0800
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rgQFI-00003S-1E
 for intel-wired-lan@lists.osuosl.org; Sat, 02 Mar 2024 14:21:48 +0000
Date: Sat, 02 Mar 2024 22:21:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202403022204.kiP8QWSG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709389313; x=1740925313;
 h=date:from:to:subject:message-id;
 bh=2e8eU3XC9jC0e4IrQuwjqEpotBqZoOtNvvbKMco+6HU=;
 b=B1VFZ8qkWO8aR5k+0hb8gwjG4qoRSn/QjadDInarC6ppWF/EiI/2gYoI
 Y4JnRWgKZu/UOBhfrvLnJJUYC4eZeJzTnAdEXE9p4Zxplqr80Yu7ZpM7b
 M2diGiKO3TCFIERBxBpBENPYvhcdO1g19W3PsGFlz4/1kvFk5Kmkv33FT
 9Padrx/ZVfV6/SIu4P4AyW1qXLL+OfPn8cf3vFPUyO3QAjVKVPA7+Rd5P
 5AuY5HvhTuCiVWVXb4UfVRLcRhSYPleeOfEqUVqCQyMv3W0Y2Q/7LJrov
 hcolXWY06iq4AMSkFrj81kbqldEdXgehFcmVHlqAqIIiSSAYycS1y8Hhv
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B1VFZ8qk
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 dfd54c3666e17ed2830868770b2d4b9c2e54ad1c
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
branch HEAD: dfd54c3666e17ed2830868770b2d4b9c2e54ad1c  ice: fix uninitialized dplls mutex usage

elapsed time: 1104m

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
arc                   randconfig-001-20240302   gcc  
arc                   randconfig-002-20240302   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240302   gcc  
arm                   randconfig-002-20240302   gcc  
arm                   randconfig-003-20240302   gcc  
arm                   randconfig-004-20240302   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240302   gcc  
arm64                 randconfig-002-20240302   gcc  
arm64                 randconfig-003-20240302   clang
arm64                 randconfig-004-20240302   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240302   gcc  
csky                  randconfig-002-20240302   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240302   clang
hexagon               randconfig-002-20240302   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240302   clang
i386         buildonly-randconfig-002-20240302   gcc  
i386         buildonly-randconfig-003-20240302   gcc  
i386         buildonly-randconfig-004-20240302   clang
i386         buildonly-randconfig-005-20240302   gcc  
i386         buildonly-randconfig-006-20240302   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240302   clang
i386                  randconfig-002-20240302   gcc  
i386                  randconfig-003-20240302   clang
i386                  randconfig-004-20240302   gcc  
i386                  randconfig-005-20240302   gcc  
i386                  randconfig-006-20240302   clang
i386                  randconfig-011-20240302   gcc  
i386                  randconfig-012-20240302   gcc  
i386                  randconfig-013-20240302   gcc  
i386                  randconfig-014-20240302   gcc  
i386                  randconfig-015-20240302   clang
i386                  randconfig-016-20240302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240302   gcc  
loongarch             randconfig-002-20240302   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240302   gcc  
nios2                 randconfig-002-20240302   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240302   gcc  
parisc                randconfig-002-20240302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240302   clang
powerpc               randconfig-002-20240302   clang
powerpc               randconfig-003-20240302   gcc  
powerpc64             randconfig-001-20240302   clang
powerpc64             randconfig-002-20240302   gcc  
powerpc64             randconfig-003-20240302   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240302   gcc  
riscv                 randconfig-002-20240302   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240302   gcc  
s390                  randconfig-002-20240302   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240302   gcc  
sh                    randconfig-002-20240302   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240302   gcc  
sparc64               randconfig-002-20240302   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240302   gcc  
um                    randconfig-002-20240302   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240302   clang
x86_64       buildonly-randconfig-002-20240302   clang
x86_64       buildonly-randconfig-003-20240302   gcc  
x86_64       buildonly-randconfig-004-20240302   gcc  
x86_64       buildonly-randconfig-005-20240302   gcc  
x86_64       buildonly-randconfig-006-20240302   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240302   clang
x86_64                randconfig-002-20240302   gcc  
x86_64                randconfig-003-20240302   gcc  
x86_64                randconfig-004-20240302   clang
x86_64                randconfig-005-20240302   gcc  
x86_64                randconfig-006-20240302   clang
x86_64                randconfig-011-20240302   clang
x86_64                randconfig-012-20240302   clang
x86_64                randconfig-013-20240302   gcc  
x86_64                randconfig-014-20240302   gcc  
x86_64                randconfig-015-20240302   clang
x86_64                randconfig-016-20240302   gcc  
x86_64                randconfig-071-20240302   clang
x86_64                randconfig-072-20240302   clang
x86_64                randconfig-073-20240302   clang
x86_64                randconfig-074-20240302   gcc  
x86_64                randconfig-075-20240302   clang
x86_64                randconfig-076-20240302   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240302   gcc  
xtensa                randconfig-002-20240302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
