Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B52966EA2C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 06:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C191427FD;
	Fri, 21 Apr 2023 04:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C191427FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682051248;
	bh=acZ01M9kZapLS5P5L4KmjIlcUy0nAR6R3BEGKefgqwA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TgIGvx4jmi24y+EXUVpU4mdRmXyPbbAAi15FL6Us2pmMeqFzuF+Mg+QvM51a1OsZp
	 yU5ytqkohgCsbAVQYZg0dhV0l0prd1rB8+mEnOM7aGb6cVPYLEPFSaMV/+DMds6cDT
	 7Vk+coNM4FoVEYEAql9g2MxquSqPSQgu6VGNLKBk0QylNIJnn8fua0u3m1+kiQ3YPj
	 WItRXzZAFxz4lkLtVX83Qq7o4LdEFH1PVGFUpr5IZzsd6kKkcma9vqsj89+vyYI2S9
	 bSYvUTKaC6VT0vIm9w9vOEdDTKQ/HHajcRaaVmTOoCoChte1DfFFp+pCdJ7poOT2Ro
	 4mn5dnUaemRQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2E6o9VvxHMu; Fri, 21 Apr 2023 04:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8D7D4281B;
	Fri, 21 Apr 2023 04:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8D7D4281B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6093D1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A16461388
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A16461388
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0AvmG87WlNf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 04:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DEE86136B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DEE86136B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 04:27:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="345929888"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="345929888"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 21:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866571109"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866571109"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2023 21:27:03 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ppiMQ-000gJC-1l;
 Fri, 21 Apr 2023 04:27:02 +0000
Date: Fri, 21 Apr 2023 12:26:39 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6442107f.88G2d7HnAwW6EDxB%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682051241; x=1713587241;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=g/2fxxQ5FAJDBP0sbCnAL/1UdH7zHeruUZQCMQm7b9g=;
 b=DyRVuC6/Bf4D8tsM/MRsDlZY3H4fm3dWH6bnwcJ1+H/cIWzxYyrfm4Us
 4qbayr01hoZz3cx8CjYIL/7DKEDdETWwco3QqzjYs416064tCWFOHxlGB
 6f0ZwOXDJ7dxyo/y/ioeo9LRDqpCWTHPBy0FimpBvvSrRWPHAsWp4cR/Q
 3IYstjmtxR8nLssHqFF5HR9aUByfX3x/pQjIfP8RcxgX4BA+rJziZTqSu
 nTjRcmMP+0Ci7BTaVs24vxdzldz5tEGEQOA9FQkkvL/ccZvDrv13+Qx44
 F2mPFKmBw+7x5JE6FwxVc5Ti+7oE6kfUHDjQcs6bMdTCCsDdXVGU7ynt3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DyRVuC6/
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 16000d55d0f21063d9837d798ef4820000a2e69a
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 16000d55d0f21063d9837d798ef4820000a2e69a  igc: Avoid transmit queue timeout for XDP

elapsed time: 722m

configs tested: 134
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230416   gcc  
alpha                randconfig-r001-20230420   gcc  
alpha                randconfig-r003-20230416   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230420   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230418   gcc  
arc                  randconfig-r022-20230417   gcc  
arc                  randconfig-r024-20230417   gcc  
arc                  randconfig-r043-20230416   gcc  
arc                  randconfig-r043-20230417   gcc  
arc                  randconfig-r043-20230419   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230420   clang
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230416   gcc  
arm                  randconfig-r015-20230416   clang
arm                  randconfig-r046-20230416   clang
arm                  randconfig-r046-20230417   gcc  
arm                  randconfig-r046-20230419   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230417   gcc  
arm64                randconfig-r016-20230416   gcc  
csky         buildonly-randconfig-r003-20230416   gcc  
csky         buildonly-randconfig-r005-20230416   gcc  
csky         buildonly-randconfig-r006-20230416   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r016-20230417   gcc  
hexagon              randconfig-r005-20230417   clang
hexagon              randconfig-r014-20230418   clang
hexagon              randconfig-r015-20230418   clang
hexagon              randconfig-r041-20230416   clang
hexagon              randconfig-r041-20230417   clang
hexagon              randconfig-r041-20230419   clang
hexagon              randconfig-r045-20230416   clang
hexagon              randconfig-r045-20230417   clang
hexagon              randconfig-r045-20230419   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r001-20230417   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230417   gcc  
i386                 randconfig-a002-20230417   gcc  
i386                 randconfig-a003-20230417   gcc  
i386                 randconfig-a004-20230417   gcc  
i386                 randconfig-a005-20230417   gcc  
i386                 randconfig-a006-20230417   gcc  
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
i386                 randconfig-r006-20230417   gcc  
i386                 randconfig-r013-20230417   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230417   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r021-20230417   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230417   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r001-20230420   gcc  
microblaze   buildonly-randconfig-r002-20230416   gcc  
microblaze           randconfig-r004-20230420   gcc  
microblaze           randconfig-r013-20230418   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2        buildonly-randconfig-r003-20230417   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r002-20230417   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230417   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230418   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230416   clang
riscv                randconfig-r042-20230416   gcc  
riscv                randconfig-r042-20230417   clang
riscv                randconfig-r042-20230419   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230420   clang
s390                 randconfig-r003-20230420   clang
s390                 randconfig-r044-20230416   gcc  
s390                 randconfig-r044-20230417   clang
s390                 randconfig-r044-20230419   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230417   gcc  
sh           buildonly-randconfig-r004-20230416   gcc  
sh                   randconfig-r004-20230417   gcc  
sh                   randconfig-r011-20230416   gcc  
sparc        buildonly-randconfig-r005-20230420   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230417   gcc  
sparc64              randconfig-r014-20230417   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64               randconfig-r011-20230417   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230417   gcc  
xtensa       buildonly-randconfig-r006-20230420   gcc  
xtensa               randconfig-r012-20230416   gcc  
xtensa               randconfig-r012-20230418   gcc  
xtensa               randconfig-r025-20230417   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
