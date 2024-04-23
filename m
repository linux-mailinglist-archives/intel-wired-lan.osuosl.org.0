Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1778AF659
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 20:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3C6E81F24;
	Tue, 23 Apr 2024 18:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pEBnzB9P7EGU; Tue, 23 Apr 2024 18:12:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F1AF81D73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713895970;
	bh=6t8t6uYENlxJWSN4qn9sypquMfdnpU2/gASWarJoigo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=taVxPQqDyJkqDNXh/ORZ7l0qXwok5p8feNV8FSfSTC+/vfEvDW8kggHx5Rr0+s5WW
	 iVqLYYFVqPdCjZkloAd+o/r8a6v2c7dCyVI/Ze+KGCd2uz+KSDAd8WCxIuKlgjUvH9
	 Xq0gFsQpwEMF9rkLNqrJNmFZrhCML8KQsNDAnsAq13JSPv/IrqrC5fmCsq+FGq3M21
	 6xl9lMEmKc/zfcOgFZBDKtKtq5i2tyoPvP8CpSS27SdPnRCtn51iOl0ewu7be0dIKY
	 eghS+RNbX0oeOAsoZc11SiOl7ZQCXcvhcvXryM9UjGdNeVXWb5ZVonsM+soq11uisT
	 ivu9DVUqtNIUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F1AF81D73;
	Tue, 23 Apr 2024 18:12:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33D171BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 18:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F26481D16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 18:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0asdwDbFNGxV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 18:12:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD4AF81B70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD4AF81B70
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD4AF81B70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 18:12:43 +0000 (UTC)
X-CSE-ConnectionGUID: /Tm5UwQmSiig/wFcgcvrNw==
X-CSE-MsgGUID: jLFP5+6ZSQy36BoZt+T19Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9348931"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9348931"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 11:12:42 -0700
X-CSE-ConnectionGUID: pmi7QEaBQZ2oEXj4TcQWbQ==
X-CSE-MsgGUID: TlnxUjhxQkSpRM5J+9UQ9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="29253616"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 23 Apr 2024 11:12:41 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rzKdC-0000QU-2w
 for intel-wired-lan@lists.osuosl.org; Tue, 23 Apr 2024 18:12:38 +0000
Date: Wed, 24 Apr 2024 02:12:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404240226.XhbiwTJi-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713895963; x=1745431963;
 h=date:from:to:subject:message-id;
 bh=3Ao26i4QRmP3D84nu6PPi0KROHjC48OEGaPcAzo9syw=;
 b=nzgLbmNFQHbp1Fwf+0XzLVNWyfN6psjkEyb/ZjB20SuHOrvGhw6QDiSl
 EjxByARBaQ4yx5e0idv9hrUg5FTAIlRVSL90K/cC1r1zPRmN2c0wRJnM1
 HRC7WszlE63wHiOIj6jjeoELclCtLyn925TSloYO35tboKkHAXs0oVp7s
 JSmvWhKKiXOA9P0CV0BfYMmh36XvzxiYZxaNjtR+s6u/m1xQ63X6MW64i
 XE29OkPFOcNI6RovPtUMiU7uHpd7aq7cbZXufqnJxJNDa3TWIZQL8Ppm6
 xnMapgorYJNkUqxoWS9aMapFby0/hZ+HveTnSfDWDsxw2q6gRxH4XJodL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nzgLbmNF
Subject: [Intel-wired-lan] [tnguy-net-queue:1GbE] BUILD SUCCESS
 ddab364b39698e97b156200d1e8dcc791a1ee15a
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 1GbE
branch HEAD: ddab364b39698e97b156200d1e8dcc791a1ee15a  igc: Fix LED-related deadlock on driver unbind

elapsed time: 1260m

configs tested: 183
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig   gcc  
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240423   gcc  
arc                   randconfig-002-20240423   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                        multi_v7_defconfig   gcc  
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20240423   clang
arm                   randconfig-002-20240423   clang
arm                   randconfig-003-20240423   clang
arm                   randconfig-004-20240423   gcc  
arm64                            alldefconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240423   clang
arm64                 randconfig-002-20240423   gcc  
arm64                 randconfig-003-20240423   clang
arm64                 randconfig-004-20240423   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240423   gcc  
csky                  randconfig-002-20240423   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240423   clang
hexagon               randconfig-002-20240423   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240423   clang
i386         buildonly-randconfig-002-20240423   clang
i386         buildonly-randconfig-003-20240423   gcc  
i386         buildonly-randconfig-004-20240423   clang
i386         buildonly-randconfig-005-20240423   clang
i386         buildonly-randconfig-006-20240423   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240423   gcc  
i386                  randconfig-002-20240423   gcc  
i386                  randconfig-003-20240423   clang
i386                  randconfig-004-20240423   gcc  
i386                  randconfig-005-20240423   clang
i386                  randconfig-006-20240423   clang
i386                  randconfig-011-20240423   gcc  
i386                  randconfig-012-20240423   clang
i386                  randconfig-013-20240423   clang
i386                  randconfig-014-20240423   gcc  
i386                  randconfig-015-20240423   gcc  
i386                  randconfig-016-20240423   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240423   gcc  
loongarch             randconfig-002-20240423   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                          malta_defconfig   gcc  
mips                       rbtx49xx_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240423   gcc  
nios2                 randconfig-002-20240423   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240423   gcc  
parisc                randconfig-002-20240423   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        icon_defconfig   gcc  
powerpc               randconfig-001-20240423   gcc  
powerpc               randconfig-002-20240423   gcc  
powerpc               randconfig-003-20240423   clang
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64             randconfig-001-20240423   gcc  
powerpc64             randconfig-002-20240423   clang
powerpc64             randconfig-003-20240423   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240423   gcc  
riscv                 randconfig-002-20240423   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240423   clang
s390                  randconfig-002-20240423   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20240423   gcc  
sh                    randconfig-002-20240423   gcc  
sh                             sh03_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240423   gcc  
sparc64               randconfig-002-20240423   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240423   gcc  
um                    randconfig-002-20240423   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240423   clang
x86_64       buildonly-randconfig-002-20240423   clang
x86_64       buildonly-randconfig-003-20240423   gcc  
x86_64       buildonly-randconfig-004-20240423   gcc  
x86_64       buildonly-randconfig-005-20240423   clang
x86_64       buildonly-randconfig-006-20240423   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240423   clang
x86_64                randconfig-002-20240423   gcc  
x86_64                randconfig-003-20240423   gcc  
x86_64                randconfig-004-20240423   gcc  
x86_64                randconfig-005-20240423   gcc  
x86_64                randconfig-006-20240423   gcc  
x86_64                randconfig-011-20240423   gcc  
x86_64                randconfig-012-20240423   gcc  
x86_64                randconfig-013-20240423   clang
x86_64                randconfig-014-20240423   clang
x86_64                randconfig-015-20240423   clang
x86_64                randconfig-016-20240423   gcc  
x86_64                randconfig-071-20240423   clang
x86_64                randconfig-072-20240423   clang
x86_64                randconfig-073-20240423   clang
x86_64                randconfig-074-20240423   gcc  
x86_64                randconfig-075-20240423   gcc  
x86_64                randconfig-076-20240423   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                randconfig-001-20240423   gcc  
xtensa                randconfig-002-20240423   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
